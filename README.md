# [Backstage](https://backstage.io) on [Heroku](https://heroku.com)

Use this button to create a new Backstage app on Heroku:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/chap/backstage-button)

After the app is created, the `BASE_URL` needs to be configured:

```sh
$ heroku domains -a <your-app>
<your-app-123>.herokuapp.com

$ heroku config:set BASE_URL=https://<your-app-123>.herokuapp.com -a <your-app>
```

To make changes, clone this repo and push to your Heroku app:

```sh
$ git clone https://github.com/chap/backstage-button.git <your-app>/
$ cd <your-app>/
$ heroku remote:add -a <your-app>
$ git push heroku main
```

You should also push to a canonical git repo:
```sh
$ git remote set-url origin https://github.com/<your-app>.git
$ git push origin main
```

The included GitHub action runs once a day and overwrites the file from the latest Backstage release. You probably don\'t want that:
```sh
$ rm .github/workflows/overwrite-backstage-latest.yaml
```
