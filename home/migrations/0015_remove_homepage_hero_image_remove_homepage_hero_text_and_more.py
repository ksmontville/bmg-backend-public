# Generated by Django 4.1.3 on 2022-11-29 15:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0014_remove_homepage_nav_brand'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='homepage',
            name='hero_image',
        ),
        migrations.RemoveField(
            model_name='homepage',
            name='hero_text',
        ),
        migrations.RemoveField(
            model_name='homepage',
            name='sub_text',
        ),
    ]
