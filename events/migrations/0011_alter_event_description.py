# Generated by Django 4.1.3 on 2022-12-20 13:57

from django.db import migrations
import wagtail.fields


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0010_alter_event_recurrence_alter_event_store_link'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='description',
            field=wagtail.fields.RichTextField(blank=True, null=True),
        ),
    ]
