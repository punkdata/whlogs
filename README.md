whlogs
==========================================
twitter bot that White House Log entries


**Create config.json**

```
{
  "CONSUMER_KEY":"twitter consumer key",
  "CONSUMER_SECRET":"twitter consumer secret",
  "ACCESS_KEY":"twitter access key", 
  "ACCESS_SECRET":"twitter access secret",
  "MONGO_URI":"MongoDB Connection String",
  "WH_LOGS_SOURCE":"source urls which you need to figure out",
  "TWITTER_TARGETS":[
   "List of Twitter IDs to capture"
  ],
  "RESPONSE_TARGETS":[
    "List of Twitter IDs to target & respond to"
  ]
}
```

**Docker Build Command**

`$ docker build --rm=true -t whlogs .`


**References:**

Tweet Reference information Tweet Object field guide: https://dev.twitter.com/overview/api/tweets