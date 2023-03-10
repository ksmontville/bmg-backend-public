# Generated by Django 4.1.3 on 2022-12-08 00:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('wagtailimages', '0024_index_image_file_hash'),
    ]

    operations = [
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField()),
                ('image', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='wagtailimages.image')),
            ],
        ),
    ]
