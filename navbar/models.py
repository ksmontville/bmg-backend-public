from django.db import models
from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField
from home.models import ALL_FEATURES
from wagtail_headless_preview.models import HeadlessMixin


class Navbar(HeadlessMixin, Page):
    page_description = "Tools for editing the navbar."

    nav_text = RichTextField(features=ALL_FEATURES, blank=True)
    nav_button = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    logo = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('nav_text'),
        FieldPanel('nav_button'),
        FieldPanel('logo'),
    ]

    api_fields = [
        APIField('nav_text'),
        APIField('button', serializer=ImageRenditionField('fill-12x12', source='nav_button')),
        APIField('logo'),
    ]
