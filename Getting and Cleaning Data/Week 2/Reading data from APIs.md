# Application programming interfaces
- Many sites have public APIs that you can access

# Creating an application
- https://dev.twitter.com/apps
- First, create an account. This usually means a developer account, beyond or in addition to a user account. Then you create an application
- My notes on creating an application:
  - The Name must be unique across all Twitter users. So if you try “Test”, that won't work.
  - The description must be at least 10 characters.
  - After your app is created, click the “API Keys” tab", and click on the “Create token access” button. It may take a little while, but eventually this page will show “Access token” and “Access token secret” fields.

- After account is created, the settings are a bit different from the video (at least for me).
  - The four values you want are under the “API Keys” tab of your application.
  - The video's “consumer key” is “Access token”
  - The video's “consumer secret” is “Access token secret
```R
> myapp = oauth_app("twitter", key="yourAccessToken",secret="yourAccessTokenSecret")
> sig = sign_oauth1.0(myapp, token="yourAPIKey", token_secret="yourAPISecret")
```
-The following loads the content of homeTL into json1, but the result is created using the fromJSON function from the “R JSON IO” package (that's what video says), which returns a structured R object that is not very easy to read. So the jsonlite's fromJSON and toJSON functions are used to create a more user-friendly representation of the data (it is put into a data frame).
- Note that there is an error in the video. It uses jsonlite::fromJSON, in order to avoid having to load the jsonlite library first, but then it references the toJSON function with prepending it with jsonlite:: which indicates that when the author made the video, he must have already had the json lite library loaded. So I've simply loaded it in the following snippet.
```R
> library(jsonlite)
> homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)
> json1 = content(homeTL)
> json2 = fromJSON(toJSON(json1))
> json2[1, 1:4]
 created_at        id             id_str
 1 Sun May 11 14:41:25 +0000 2014 4.655e+17 465501937341706240
                                                                                                                                    text
 1 Separatist referendum in #Ukraine. Vote yes, you get roses. Vote no, Molotov cocktails. http://t.co/LZD1BZOIak http://t.co/33ycqSsdR7
```

# How did I know what URL to use?
- https://dev.twitter.com/docs/api/1.1/get/search/tweets
- Look at the “Resource URL” line on this page.
  - NOTE: When I do this, the URL I see is:
- https://api.twitter.com/1.1/search/tweets.json
  - But note: The screenshot in the video has a URL of:
- https://dev.twitter.com/docs/api/1.1/get/statuses/home_timeline
- There are actually several different URLs you can use, listed at:
- https://dev.twitter.com/docs/api/1.1
- Also note that, whichever URL you choose, the docs page will list other parameters you can send with your request, for example, to determine how many tweets to return.

# In general look at the documentation
- https://dev.twitter.com/docs/api/1.1/overview
  - httr allows GET, POST, PUT, DELETE requests if you are authorized
  - You can authenticate with a user name or a password
  - Most modern APIs use something like oauth (tokens)
  - httr works well with Facebook, Google, Twitter, Github etc.
  
# Resources
-https://rstudio-pubs-static.s3.amazonaws.com/16815_e9607bbe2eb140278f4146a2560d83e7.html
## GIT Resources
-[Working with Advanced Formatting](https://help.github.com/en/github/writing-on-github/working-with-advan
