from django.db import models
from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField

features = ['h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'bold', 'italic', 'ol', 'ul', 'hr', 'link',
            'document-link', 'image', 'embed', 'superscript', 'subscript', 'strikethrough', 'blockquote']


class LandingPage(Page):
    page_description = "Use this page to convert users."

    hero_text = RichTextField(features=features, blank=True)
    sub_text_one = RichTextField(features=features, blank=True)
    sub_text_two = RichTextField(features=features, blank=True)
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
        FieldPanel('hero_image'),
    ]

    api_fields = [
        APIField('hero_text'),
        APIField('sub_text_one'),
        APIField('sub_text_two'),
        APIField('image', serializer=ImageRenditionField('fill-200x200', source='hero_image')),
    ]
