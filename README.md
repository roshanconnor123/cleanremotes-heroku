# cleanremotes-heroku
Executes cleanremotes script periodically in heroku. https://github.com/88lex/cleanremotes <br>

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/ssnjrthegr8/cleanremotes-heroku)
<br>

Go to 
1. https://kaffeine.herokuapp.com/ and put in your app name. This wont work otherwise. If you are setting
the bedtime make sure it doesn't conflict with your cron job time.
2. `https://dashboard.heroku.com/apps/` `yourappname` `/resources` and turn on `worker /bin/sh -c bash\ start.sh`
<br><br>
Now open your app and view the logs on your heroku dashboard to see the current status of your app:<br>
> `https://dashboard.heroku.com/apps/` `yourappname` `/logs`
