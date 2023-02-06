from django.db import models
from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField
from home.models import ALL_FEATURES
from wagtail_headless_preview.models import HeadlessMixin


class AboutPage(HeadlessMixin, Page):
    page_description = "Use this page to describe Black Moon Games to the public."

    page_header = RichTextField(features=ALL_FEATURES, blank=True)
    location = RichTextField(features=ALL_FEATURES, blank=True)
    hours = RichTextField(features=ALL_FEATURES, blank=True)
    map_widget_url = models.URLField(max_length=1028, blank=True)
    about_header = RichTextField(features=ALL_FEATURES, blank=True)
    about_text = RichTextField(features=ALL_FEATURES, blank=True)
    about_image = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('page_header'),
        FieldPanel('location'),
        FieldPanel('hours'),
        FieldPanel('map_widget_url'),
        FieldPanel('about_header'),
        FieldPanel('about_text'),
        FieldPanel('about_image'),
    ]

    api_fields = [
        APIField('page_header'),
        APIField('location'),
        APIField('hours'),
        APIField('map_widget_url'),
        APIField('about_header'),
        APIField('about_text'),
        APIField('image', serializer=ImageRenditionField('fill-128x128', source='about_image')),
    ]
