# Routing Assistant API

This chart installs the Routing Assistant API
into the Kubernetes cluster.

## Configuration

* by default, it expects a Spring Boot config server running inside the cluster, available under
  http://configserver:8888/config
  ```yaml
  application:
    configserver:
      host: configserver
      port: 8888
      prefix: /config
      scheme: http
  ```
* configure Keycloak
  ```yaml
  application:
    keycloak:
      url: https://yourKeycloak
      realm: yourRealm
  ```
* configure secrets (the application expects these values to be set)
  ```yaml
  secrets:
    MONGODB_CONNECTION_STRING: mongoDBConnectionString
    CLIENT_SECRET: keycloakClientSecret
  ```
  Should you want to use, for example, an external secret provider,
  then you are currently out of luck. The chart does not support that,
  yet.