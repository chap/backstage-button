# [Backstage](https://backstage.io) on [Heroku](https://heroku.com)

Use this button to create a new Backstage app on Heroku:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/chap/backstage-button)

After the app is created, the `BASE_URL` needs to be configured:

```sh
$ heroku domains -a <your-app>
<your-app-123>.herokuapp.com

$ heroku config:set BASE_URL=https://<your-app-123>.herokuapp.com
```
