from django.db import models
from wagtail import blocks
from wagtail.models import Page
from wagtail.fields import RichTextField, StreamField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField
from home.models import ALL_FEATURES
from wagtail.images.blocks import ImageChooserBlock as DefaultImageChooserBlock
from wagtail_headless_preview.models import HeadlessMixin


class ImageChooserBlock(DefaultImageChooserBlock):
    def get_api_representation(self, value, context=None):
        if value:
            return {
                'id': value.id,
                'title': value.title,
                'large': value.get_rendition('width-1000').attrs_dict,
                'thumbnail': value.get_rendition('fill-128x128').attrs_dict,
            }


class SinglesPage(HeadlessMixin, Page):
    page_description = "Section for converting users to the Magic singles external store."

    # singles = StreamField([
    #     ('header', blocks.RichTextBlock(features=ALL_FEATURES, required=False,)),
    #     ('text', blocks.RichTextBlock(features=ALL_FEATURES, required=False)),
    #     ('sub_text_one', blocks.RichTextBlock(features=ALL_FEATURES, required=False)),
    #     ('sub_text_two', blocks.RichTextBlock(features=ALL_FEATURES, required=False)),
    #
    # ])

    header = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    text = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    sub_text_one = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    sub_text_two = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    # logo_1 = ImageChooserBlock(required=False, blank=True, null=True)
    # logo_2 = ImageChooserBlock(required=False, blank=True, null=True)
    # logo_3 = ImageChooserBlock(required=False, blank=True, null=True)
    logo_1 = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    logo_2 = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    logo_3 = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('title'),
        FieldPanel('header'),
        FieldPanel('text'),
        FieldPanel('sub_text_one'),
        FieldPanel('sub_text_two'),
        FieldPanel('logo_1'),
        FieldPanel('logo_2'),
        FieldPanel('logo_3'),
    ]

    api_fields = [
        APIField('title'),
        APIField('header'),
        APIField('text'),
        APIField('sub_text_one'),
        APIField('sub_text_two'),
        APIField('logo_1'),
        APIField('logo_2'),
        APIField('logo_3'),
        # APIField('image_1', serializer=ImageRenditionField('fill-128x128', source='logo_1')),
        # APIField('image_2', serializer=ImageRenditionField('fill-128x128', source='logo_2')),
        # APIField('image_3', serializer=ImageRenditionField('fill-128x128', source='logo_3')),
    ]
