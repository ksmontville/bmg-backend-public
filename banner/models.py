from django.db import models
from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField
from home.models import ALL_FEATURES


class Banner(Page):
    page_description = "Sticky banner for announcements and advertisements."

    banner_text = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    banner_subtext = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    banner_link = RichTextField(features=ALL_FEATURES, blank=True, null=True)
    banner_image = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('banner_text'),
        FieldPanel('banner_subtext'),
        FieldPanel('banner_link'),
        FieldPanel('banner_image'),
    ]

    api_fields = [
        APIField('banner_text'),
        APIField('banner_subtext'),
        APIField('banner_link'),
        APIField('image', serializer=ImageRenditionField('fill-100x100', source='banner_image')),
    ]
