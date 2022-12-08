from wagtail.admin.forms.models import WagtailAdminModelForm
from .models import Event
from django.forms import ModelForm


class EventForm(ModelForm):
    class Meta:
        model = Event
        fields = '__all__'
        help_texts = {
            'start_date': "(YYYY-MM-DD)",
            'start_time': "(HH:MM:SS)",
            'end_date': "(YYYY-MM-DD)",
            'end_time': "(HH:MM:SS)",
            'recurrence': "(Daily, Weekly, Yearly)"
        }
