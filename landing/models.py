from django.db import models
from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField
from home.models import ALL_FEATURES
from wagtail_headless_preview.models import HeadlessMixin


class LandingPage(HeadlessMixin, Page):
    page_description = "Use this page to convert users."

    hero_text = RichTextField(features=ALL_FEATURES, blank=True)
    sub_text_one = RichTextField(features=ALL_FEATURES, blank=True)
    sub_text_two = RichTextField(features=ALL_FEATURES, blank=True)
    whats_new_header = RichTextField(features=ALL_FEATURES, blank=True)
    whats_new_text = RichTextField(features=ALL_FEATURES, blank=True)
    hero_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('hero_text'),
        FieldPanel('sub_text_one'),
        FieldPanel('sub_text_two'),
        FieldPanel('whats_new_header'),
        FieldPanel('whats_new_text'),
        FieldPanel('hero_image'),
    ]

    api_fields = [
        APIField('hero_text'),
        APIField('sub_text_one'),
        APIField('sub_text_two'),
        APIField('whats_new_header'),
        APIField('whats_new_text'),
        APIField('hero_image'),
    ]
