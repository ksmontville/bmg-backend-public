from django.db import models
from wagtail import blocks
from wagtail.models import Page
from wagtail.fields import RichTextField, StreamField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField
from home.models import ALL_FEATURES
from wagtail_headless_preview.models import HeadlessMixin


class SinglesPage(HeadlessMixin, Page):
    page_description = "Section for converting users to the Magic singles external store."

    header = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    text = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    sub_text = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    logo = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('header'),
        FieldPanel('text'),
        FieldPanel('sub_text'),
        FieldPanel('logo'),
    ]

    api_fields = [
        APIField('title'),
        APIField('text'),
        APIField('sub_text'),
        APIField('image', serializer=ImageRenditionField('fill-256x256', source='logo')),
    ]
