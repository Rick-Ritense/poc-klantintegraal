#!/bin/sh
configfile="/usr/share/nginx/html/config.js"
echo "Start replacing env vars in $configfile"

if [ ! -z "$KEYCLOAK_URL" ]; then
    sed -i -r "s|(KEYCLOAK_URL = ').*(')|\1$KEYCLOAK_URL\2|g" $configfile
fi

if [ ! -z "$KEYCLOAK_REALM" ]; then
    sed -i -r "s|(KEYCLOAK_REALM = ').*(')|\1$KEYCLOAK_REALM\2|g" $configfile
fi

if [ ! -z "$KEYCLOAK_CLIENT_ID" ]; then
    sed -i -r "s|(KEYCLOAK_CLIENT_ID = ').*(')|\1$KEYCLOAK_CLIENT_ID\2|g" $configfile
fi

if [ ! -z "$KEYCLOAK_REDIRECT_URI" ]; then
    sed -i -r "s|(KEYCLOAK_REDIRECT_URI = ').*(')|\1$KEYCLOAK_REDIRECT_URI\2|g" $configfile
fi

if [ ! -z "$FORM_NAME" ]; then
    sed -i -r "s|(OPEN_FORMS_FORM_ID = ').*(')|\1$FORM_NAME\2|g" $configfile
fi

if [ ! -z "$GRAPHQL_URI" ]; then
    sed -i -r "s|(GRAPHQL_URI = ').*(')|\1$GRAPHQL_URI\2|g" $configfile
fi

if [ ! -z "$REST_URI" ]; then
    sed -i -r "s|(REST_URI = ').*(')|\1$REST_URI\2|g" $configfile
fi

echo "Done replacing env vars in $configfile"
