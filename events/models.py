from __future__ import print_function

from django.db import models
from wagtail.models import Page
from wagtail.admin.panels import FieldPanel
from wagtail.api import APIField
from wagtail.signals import page_published

# Google functionality imports
import datetime
import os.path
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError

# CalendarID for Black Moon Games Event Calendar and scopes for permissions
SCOPES = ['https://www.googleapis.com/auth/calendar']
CALENDAR_ID = '3bfcac92ab15cf839d111cfa132668bb18c22473b8f19a318f5fb22a178c56a1@group.calendar.google.com'

recurrence_choices = [
    ('DAILY', 'DAILY'),
    ('WEEKLY', 'WEEKLY'),
    ('YEARLY', 'YEARLY')
]


class Event(Page):
    name = models.CharField(max_length=50, null=True, blank=True)
    location = models.CharField(max_length=50, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    start_date = models.DateField()
    start_time = models.TimeField(null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)
    end_time = models.TimeField(null=True, blank=True)
    recurrence = models.CharField(max_length=50, choices=recurrence_choices, default='DAILY', null=True)
    google_link = models.CharField(max_length=150, null=True, blank=True)
    store_link = models.URLField(max_length=150, null=True, blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('name'),
        FieldPanel('location'),
        FieldPanel('description'),
        FieldPanel('start_date'),
        FieldPanel('start_time'),
        FieldPanel('end_date'),
        FieldPanel('end_time'),
        FieldPanel('recurrence'),
        FieldPanel('google_link'),
        FieldPanel('store_link'),
    ]

    api_fields = [
        APIField('name'),
        APIField('location'),
        APIField('description'),
        APIField('start_date'),
        APIField('start_time'),
        APIField('end_date'),
        APIField('end_time'),
        APIField('recurrence'),
        APIField('google_link'),
        APIField('store_link'),
        APIField('store_link')
    ]

    # def save(self, **kwargs):
    #     """
    #     Custom save() method for overriding CharField behavior.
    #     """
    #     self.create_event()
    #     super(Event, self).save(**kwargs)

    def create_event(self):
        """Returns Google API OAuth2 credentials."""
        creds = None
        # The file token.json stores the user's access and refresh tokens, and is
        # created automatically when the authorization flow completes for the first
        # time.
        if os.path.exists('token.json'):
            creds = Credentials.from_authorized_user_file('token.json', SCOPES)
        # If there are no (valid) credentials available, let the user log in.
        if not creds or not creds.valid:
            if creds and creds.expired and creds.refresh_token:
                creds.refresh(Request())
            else:
                flow = InstalledAppFlow.from_client_secrets_file(
                    'credentials.json', SCOPES)
                creds = flow.run_local_server(port=0)
            # Save the credentials for the next run
            with open('token.json', 'w') as token:
                token.write(creds.to_json())

        new_event = {
            'summary': self.title,
            'location': self.location,
            'description': self.description,
            'start': {
                'dateTime': datetime.datetime.combine(
                    self.start_date, self.start_time).isoformat(),
                'timeZone': 'America/New_York',
            },
            'end': {
                'dateTime': datetime.datetime.combine(
                    self.end_date, self.end_time).isoformat(),
                'timeZone': 'America/New_York',
            },
            'recurrence': [
                f'RRULE:FREQ={self.recurrence}'
            ],
        }

        service = build('calendar', 'v3', credentials=creds)

        service.events().insert(
            calendarId=f'{CALENDAR_ID}',
            body=new_event).execute()

        print('Event created: %s' % (new_event.get(f'{self.store_link}')))


def event_created(sender, instance, **kwargs):
    instance.create_event()


page_published.connect(event_created, sender=Event)