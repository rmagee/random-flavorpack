# Installation
You must have some cursory knowledge of the [Django](http://djangoproject.com)
and [Django Rest Framework](http://django-rest-framework.org) in order to install 
and troubleshoot SerialBox and the Random FlavorPack.

## Modify Your settings.py

### Add random_flavorpack To INSTALLED_APPS

Make sure to add it after the `serialbox` application entry.

### Note on the example settings.py SECRTE_KEY
Make sure you change the SECRET_KEY in the example settings.py included
in this project if you intend on using it.  

#### Example
    INSTALLED_APPS = [
        'django.contrib.admin',
        'django.contrib.auth',
        'django.contrib.contenttypes',
        'django.contrib.sessions',
        'django.contrib.messages',
        'django.contrib.staticfiles',
        'serialbox',
        'rest_framework',
        'random_flavorpack'
    ]

### Run Migrations

Make your migrations and run them from the command line:

    python manage.py makemigrations
    python manage.py migrate
    
### Run the Unit Tests

    python manage.py test serialbox random_flavorpack
    
### Navigate to Your Root API Page 
Depending on how you have configured your Django application settings, navigate
to the root URL for the SerialBox framework and verify that the 
`randomized_regions` API is visible in the list.  Your return value should 
look something like this:

    HTTP 200 OK
    Allow: GET, HEAD, OPTIONS
    Content-Type: application/json
    Vary: Accept
    
    {
        "pool-list": "http://localhost:8000/pools/",
        "randomized-region-list": "http://localhost:8000/randomized-regions/",
        "pool-create": "http://localhost:8000/pool-create/",
        "sequential-region-list": "http://localhost:8000/sequential-regions/",
        "allocate": "http://localhost:8000/allocate/"
    }