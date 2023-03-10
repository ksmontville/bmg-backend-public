# Generated by Django 4.1.3 on 2022-12-06 00:00

from django.db import migrations
import products.models
import wagtail.blocks
import wagtail.fields


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0009_rename_new_product_newproducts_new_products'),
    ]

    operations = [
        migrations.AlterField(
            model_name='newproducts',
            name='new_products',
            field=wagtail.fields.StreamField([('product', wagtail.blocks.StructBlock([('description', wagtail.blocks.RichTextBlock(blank=True, features=['h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'bold', 'italic', 'ol', 'ul', 'hr', 'link', 'document-link', 'image', 'embed', 'superscript', 'subscript', 'strikethrough', 'blockquote'], null=True, required=False)), ('image', products.models.ImageChooserBlock(blank=True, null=True, required=False)), ('url', wagtail.blocks.URLBlock(blank=True, null=False, required=False)), ('alt', wagtail.blocks.CharBlock(required=True))]))], blank=True, use_json_field=True),
        ),
    ]
