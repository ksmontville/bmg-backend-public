# Generated by Django 4.1.3 on 2022-12-15 17:40

from django.db import migrations
import wagtail.fields


class Migration(migrations.Migration):

    dependencies = [
        ('landing', '0002_rename_sub_text_landingpage_sub_text_one_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='landingpage',
            name='whats_new_text',
            field=wagtail.fields.RichTextField(blank=True),
        ),
    ]
