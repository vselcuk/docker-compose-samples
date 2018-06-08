Nifi-with-monitoring contains the following containers: 
* Apache Nifi
* Apache Nifi-Registry
* Prometheus
* Prometheus Pushgateway 
* Grafana

### How to run
```
docker-compose up
```

### Urls

#### Nifi
[http://localhost:8080/nifi/](http://localhost:8080/nifi/)

* Nifi-Registry is added as a registry client.

#### Nifi-Registry
[http://localhost:18080/nifi-registry/](http://localhost:18080/nifi-registry/)

#### Prometheus Pushgateway
[http://localhost:9091/](http://localhost:9091/)

#### Prometheus
* Prometheus Pushgateway is added as a target

#### Grafana
[http://localhost:3000/](http://localhost:3000/)

* Default username & password is `admin`
* Prometheus is added as the default datasource.

