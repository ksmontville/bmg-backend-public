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

    item_1 = StreamField([
        ('description', blocks.RichTextBlock(features=ALL_FEATURES, required=False, blank=True, null=True)),
        ('image', ImageChooserBlock('item_1_image')),
        ('url', blocks.URLBlock(required=False, null=True, help_text="Link to store page here (optional)."))
    ], use_json_field=True, blank=True, null=True)

    item_1_text = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    item_2_text = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    item_3_text = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    item_4_text = RichTextField(features=ALL_FEATURES, blank=True, null=True)

    item_1_img = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    item_2_img = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    item_3_img = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    item_4_img = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('item_1'),
        FieldPanel('item_1_text',),
        FieldPanel('item_1_img'),
        FieldPanel('item_2_text'),
        FieldPanel('item_2_img'),
        FieldPanel('item_3_text'),
        FieldPanel('item_3_img'),
        FieldPanel('item_4_text'),
        FieldPanel('item_4_img'),
    ]

    api_fields = [
        APIField('item_1'),
        APIField('item_1_text'),
        APIField('item_1_image', serializer=ImageRenditionField('fill-128x128', source='item_1_img')),
        APIField('item_2_text'),
        APIField('item_2_image', serializer=ImageRenditionField('fill-128x128', source='item_2_img')),
        APIField('item_3_text'),
        APIField('item_3_image', serializer=ImageRenditionField('fill-128x128', source='item_3_img')),
        APIField('item_4_text'),
        APIField('item_4_image', serializer=ImageRenditionField('fill-128x128', source='item_4_img')),
    ]
