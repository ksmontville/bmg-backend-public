# Generated by Django 4.1.3 on 2022-11-28 16:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0005_landingpage_image'),
    ]

    operations = [
        migrations.RenameField(
            model_name='landingpage',
            old_name='image',
            new_name='banner_image',
        ),
    ]
