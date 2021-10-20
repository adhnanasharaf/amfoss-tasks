import requests
import json

from requests.models import Response

date = input()
rovername = input("a")
def req(date,rovername):
    if(date,rovername):
        # print(rovername)
        response = requests.get("https://api.nasa.gov/mars-photos/api/v1/rovers/"+rovername+"/photos?earth_date="+date+"&api_key=mn45IIPQlKrN2AlyuwaJS1SCPeIPC4yuc56i4pC0")
    else:
        print("no data")

    print(response.status_code)
    print(response.json())


req(date,rovername)    
