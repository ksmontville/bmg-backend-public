# Generated by Django 4.1.3 on 2022-12-05 23:48

from django.db import migrations
import wagtail.blocks
import wagtail.fields
import wagtail.images.blocks


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0006_rename_product_newproducts_product_1_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='newproducts',
            name='product_1',
        ),
        migrations.RemoveField(
            model_name='newproducts',
            name='product_2',
        ),
        migrations.RemoveField(
            model_name='newproducts',
            name='product_3',
        ),
        migrations.RemoveField(
            model_name='newproducts',
            name='product_4',
        ),
        migrations.AddField(
            model_name='newproducts',
            name='new_product',
            field=wagtail.fields.StreamField([('product', wagtail.blocks.StructBlock([('description', wagtail.blocks.RichTextBlock(blank=True, features=['h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'bold', 'italic', 'ol', 'ul', 'hr', 'link', 'document-link', 'image', 'embed', 'superscript', 'subscript', 'strikethrough', 'blockquote'], null=True, required=False)), ('image', wagtail.images.blocks.ImageChooserBlock(blank=True, null=True, required=False)), ('url', wagtail.blocks.URLBlock(blank=True, null=False, required=False))]))], blank=True, use_json_field=True),
        ),
    ]
