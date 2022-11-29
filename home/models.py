from django.db import models
from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.images.api.fields import ImageRenditionField


class HomePage(Page):
    page_description = "Home page for Black Moon Games."

    hero_text = RichTextField(blank=True)
    sub_text = RichTextField(blank=True)
    hero_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    nav_brand = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('hero_text'),
        FieldPanel('sub_text'),
        FieldPanel('hero_image'),
        FieldPanel('nav_brand'),
    ]

    api_fields = [
        APIField('hero_text'),
        APIField('sub_text'),
        APIField('image', serializer=ImageRenditionField('fill-200x200', source='hero_image')),
        APIField('logo', serializer=ImageRenditionField('fill-24x24', source='nav_brand'))
    ]

