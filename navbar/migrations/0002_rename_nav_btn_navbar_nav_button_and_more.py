# Generated by Django 4.1.3 on 2022-12-02 16:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('navbar', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='navbar',
            old_name='nav_btn',
            new_name='nav_button',
        ),
        migrations.RenameField(
            model_name='navbar',
            old_name='nav_img',
            new_name='nav_image',
        ),
    ]
