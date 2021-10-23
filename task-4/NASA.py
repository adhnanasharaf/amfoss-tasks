import requests
import json



date = input()
rovername = input("a")
api_key = "mn45IIPQlKrN2AlyuwaJS1SCPeIPC4yuc56i4pC0"
url = "https://api.nasa.gov/mars-photos/api/v1/rovers/Curiosity/photos/img_src"
def req(date,rovername,url,api_key):
    if(date,rovername):
        # print(rovername)
        response = requests.get(url,params={'earth_date':date,'api_key':api_key,'rover':rovername})
    else:
        print("no data")

   
    wjdata = response.json()
    print(wjdata[0])


req(date,rovername,url,api_key)    
