import requests
import json
import sys

url = sys.argv[1]
#get a bearer if the args2 is not empty
bearer = ""
if len(sys.argv) > 2:
    bearer =  sys.argv[2]

#serverless with s3, sqs, MQTTP
#url = "https://jsonplaceholder.typicode.com/comments" 
headers = {
    "Authorization": f"Bearer {bearer}"
}

# Send the GET request with the headers
response = requests.get(url, headers=headers)
comments = response.json() 
json_comments = json.dumps(comments)
# Print the JSON string
print(json_comments) 