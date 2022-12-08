from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from .forms import EventForm
from .models import Event


def index(request):
    if request.method == "POST":
        form = EventForm(request.POST)
        if form.is_valid():
            new_event = form.save(commit=True)
            new_event.create_event()

            return redirect('created')

    else:
        form = EventForm()
    return render(request, 'events/events_manager.html', {'form': form})


def created(request):
    return render(request, 'events/created.html')
