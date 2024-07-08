#
# package.json changes
jq '.scripts.build = "yarn build:backend --config ../../app-config.yaml --config ../../app-config.production.yaml"' package.json > tmp.json && mv tmp.json package.json
jq '.cacheDirectories = ["node_modules", "packages/app/node_modules", "packages/backend/node_modules"]' package.json > tmp.json && mv tmp.json package.json

#
# app-config.production.yaml changes
yq eval '.app.baseUrl = "${BASE_URL}"' -i app-config.production.yaml
yq eval '.backend.baseUrl = "${BASE_URL}"' -i app-config.production.yaml
yq eval '.backend.listen = {"port": {"$env": "PORT"}}' -i app-config.production.yaml
yq eval '.backend.database = {"client": "pg", "pluginDivisionMode": "schema", "ensureExists": false, "ensureSchemaExists": true, "connection": "${DATABASE_URL}"}' -i app-config.production.yaml

#
# README.md changes
cp .heroku/README.md README.md
