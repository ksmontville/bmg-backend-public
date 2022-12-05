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
    page_description = "Write about new products and display images here."

    product_1 = StreamField([
        ('description', blocks.RichTextBlock(features=ALL_FEATURES, required=False, blank=True, null=True)),
        ('image', ImageChooserBlock('item_1_image')),
        ('url', blocks.URLBlock(required=False, null=True, help_text="Link to store page here (optional)."))
    ], use_json_field=True, blank=True, null=True)

    product_2 = StreamField([
        ('description', blocks.RichTextBlock(features=ALL_FEATURES, required=False, blank=True, null=True)),
        ('image', ImageChooserBlock('item_2_image')),
        ('url', blocks.URLBlock(required=False, null=True, help_text="Link to store page here (optional)."))
    ], use_json_field=True, blank=True, null=True)

    product_3 = StreamField([
        ('description', blocks.RichTextBlock(features=ALL_FEATURES, required=False, blank=True, null=True)),
        ('image', ImageChooserBlock('item_3_image')),
        ('url', blocks.URLBlock(required=False, null=True, help_text="Link to store page here (optional)."))
    ], use_json_field=True, blank=True, null=True)

    product_4 = StreamField([
        ('description', blocks.RichTextBlock(features=ALL_FEATURES, required=False, blank=True, null=True)),
        ('image', ImageChooserBlock('item_4_image')),
        ('url', blocks.URLBlock(required=False, null=True, help_text="Link to store page here (optional)."))
    ], use_json_field=True, blank=True, null=True)

    content_panels = Page.content_panels + [
        FieldPanel('product_1'),
        FieldPanel('product_2'),
        FieldPanel('product_3'),
        FieldPanel('product_4'),
    ]

    api_fields = [
        APIField('product_1'),
        APIField('product_2'),
        APIField('product_3'),
        APIField('product_4'),
    ]
