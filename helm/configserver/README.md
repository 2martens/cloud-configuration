# Configserver

This chart installs a minimal Spring Boot configserver into 
the Kubernetes cluster.

## Configuration

* by default, it expects a Kafka running inside the cluster, available under 
  kafka:9092
    ```yaml
    application:
      kafka:
        host: kafka
        port: 9092
    ```
* change Git repository used to fetch configuration
  ```yaml
  application:
    repositoryPath: yourPath
  ```
* if necessary, adjust search path within repository
 ```yaml
  application:
    searchPath: yourPath
  ```
* if necessary, adjust prefix of config server
 ```yaml
  application:
    prefix: /config
  ```
* if necessary, adjust ports
 ```yaml
  application:
    port: 8888
    actuatorPort: 13000
  service:
    port: 8888
    actuatorPort: 13000
  ```