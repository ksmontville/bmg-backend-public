# Generated by Django 4.1.3 on 2022-12-09 17:53

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0006_alter_event_recurrence'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='event',
            name='google_link',
        ),
    ]
