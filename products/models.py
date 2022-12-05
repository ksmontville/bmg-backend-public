from django.db import models
from wagtail import blocks
from wagtail.models import Page
from wagtail.fields import RichTextField, StreamField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField
from home.models import ALL_FEATURES
from wagtail.images.blocks import ImageChooserBlock as DefaultImageChooserBlock


class ImageChooserBlock(DefaultImageChooserBlock):
    def get_api_representation(self, value, context=None):
        if value:
            return {
                'id': value.id,
                'title': value.title,
                'large': value.get_rendition('width-1000').attrs_dict,
                'thumbnail': value.get_rendition('fill-128x128').attrs_dict,
            }


class NewProducts(Page):
    page_description = "Describe about new products and upload images here."

    new_products = StreamField([
        ('product', blocks.StructBlock([
            ('description', blocks.RichTextBlock(features=ALL_FEATURES, required=False, blank=True, null=True)),
            ('image', ImageChooserBlock(required=False, blank=True, null=True)),
            ('url', blocks.URLBlock(required=False, blank=True, null=False)),
        ])),
    ], use_json_field=True, blank=True, null=False)

    content_panels = Page.content_panels + [
        FieldPanel('new_products'),
    ]

    api_fields = [
        APIField('new_products'),
    ]
