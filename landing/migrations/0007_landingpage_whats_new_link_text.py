# Generated by Django 4.1.3 on 2022-12-21 13:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('landing', '0006_landingpage_whats_new_link'),
    ]

    operations = [
        migrations.AddField(
            model_name='landingpage',
            name='whats_new_link_text',
            field=models.CharField(blank=True, max_length=56, null=True),
        ),
    ]
