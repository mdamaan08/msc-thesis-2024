from django.http import HttpResponse
from django.shortcuts import render

@require_http_methods(["GET", "POST"])
def index(request):
    return render(request, 'demo_site.html')
