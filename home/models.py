from django.db import models
from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField


class HomePage(Page):
    page_description = "Home page for Black Moon Games."

    banner_text = RichTextField(features=['h1'], blank=True, null=True)
    banner_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('banner_text'),
        FieldPanel('banner_image'),
    ]

    api_fields = [
        APIField('banner_text'),
        APIField('banner_img', serializer=ImageRenditionField('fill-48x48', source='banner_image')),
    ]

