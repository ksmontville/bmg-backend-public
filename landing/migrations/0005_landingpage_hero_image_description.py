# Generated by Django 4.1.3 on 2022-12-15 17:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('landing', '0004_landingpage_whats_new_header'),
    ]

    operations = [
        migrations.AddField(
            model_name='landingpage',
            name='hero_image_description',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]