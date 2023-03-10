# Generated by Django 4.1.3 on 2022-12-09 20:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0009_alter_event_recurrence'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='recurrence',
            field=models.CharField(choices=[('NONE', 'NONE'), ('DAILY', 'DAILY'), ('WEEKLY', 'WEEKLY'), ('YEARLY', 'YEARLY')], default='NONE', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='event',
            name='store_link',
            field=models.URLField(blank=True, null=True),
        ),
    ]
