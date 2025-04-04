from django.shortcuts import render

def login_view(request):
    return render(request, 'loginPage/loginPage.html')  # or any template you use
