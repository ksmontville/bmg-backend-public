from django.urls import path, reverse
from wagtail.admin.menu import MenuItem
from wagtail import hooks

from .views import index, created


@hooks.register('register_admin_urls')
def register_events_url():
    return [
        path('events/', index, name='events'),
    ]


@hooks.register('register_admin_urls')
def register_created_url():
    return [
        path('events/created', created, name='created')
    ]

@hooks.register('register_admin_menu_item')
def register_events_menu_item():
    return MenuItem('Events', reverse('events'), icon_name='plus')

