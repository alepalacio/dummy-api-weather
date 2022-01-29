from urllib import request
import requests
from pprint import pprint
from decouple import config

API_key = config('API_key')

city = input('Enter a city: ')

base_url = config('BASE_URL')

absolute_url = f"{base_url}?appid={API_key}&q={city}"

weather_data = requests.get(base_url).json()

print(weather_data)