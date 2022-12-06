from django.db import models
from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField
from wagtail_headless_preview.models import HeadlessMixin

ALL_FEATURES = ['h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'bold', 'italic', 'ol', 'ul', 'hr', 'link',
                'document-link', 'image', 'embed', 'superscript', 'subscript', 'strikethrough', 'blockquote']


class HomePage(Page, HeadlessMixin):
    page_description = "Home page for Black Moon Games."

    banner_text = RichTextField(features=ALL_FEATURES, blank=True, null=True)
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

