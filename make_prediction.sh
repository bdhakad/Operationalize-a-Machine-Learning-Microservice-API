#!/usr/bin/env bash

PORT=80
echo "Port: $PORT"

# POST method predict
curl -d '{  
   "CHAS":{  
      "0":0
   },
   "RM":{  
      "0":6.575
   },
   "TAX":{  
      "0":296.0
   },
   "PTRATIO":{  
      "0":15.3
   },
   "B":{  
      "0":396.9
   },
   "LSTAT":{  
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://a2a2d61eebd8943e6a893e90abb6cbc0-825878017.us-east-1.elb.amazonaws.com/predict
