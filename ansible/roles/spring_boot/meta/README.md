# Spring Boot role

### Dependencies
These dependencies are not explicitly configured to allow
usage of role for deployment scenarios where server state
itself is predictable and stable.

- nginx
- letsencrypt
- docker

#### Optional

If the Spring application uses Kafka, the kafka
role has to be used in a play before this role 
is used.
