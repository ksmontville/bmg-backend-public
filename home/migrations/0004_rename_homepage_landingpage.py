# Generated by Django 4.1.3 on 2022-11-27 15:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0078_referenceindex'),
        ('home', '0003_homepage_hero_text_homepage_sub_text'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='HomePage',
            new_name='LandingPage',
        ),
    ]
