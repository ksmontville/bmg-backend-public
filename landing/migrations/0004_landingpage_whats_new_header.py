# Generated by Django 4.1.3 on 2022-12-15 17:50

from django.db import migrations
import wagtail.fields


class Migration(migrations.Migration):

    dependencies = [
        ('landing', '0003_landingpage_whats_new_text'),
    ]

    operations = [
        migrations.AddField(
            model_name='landingpage',
            name='whats_new_header',
            field=wagtail.fields.RichTextField(blank=True),
        ),
    ]