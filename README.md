<img src="https://backstage.io/logo_assets/svg/Icon_Gradient.svg" alt="backstage" width="100"/> &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; <img src="https://github.com/heroku/backstage-button/blob/main/heroku.png" alt="backstage" width="100"/>

# [Backstage](https://backstage.io) on [Heroku](https://heroku.com)

Use this button to bootstrap a fresh Backstage app on Heroku from [backstage/create-app@latest](https://www.npmjs.com/package/@backstage/create-app):

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

After the app is created, the `BASE_URL` needs to be configured:

```sh
$ heroku domains -a <your-app>
<your-app-123>.herokuapp.com

$ heroku config:set BASE_URL=https://<your-app-123>.herokuapp.com -a <your-app>
```

To make changes, clone this repo and push to your Heroku app:

```sh
$ git clone https://github.com/heroku/backstage-button.git <your-app>/
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
