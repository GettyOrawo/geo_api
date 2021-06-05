# GeoApi

**Welcome to GeoWorld where all your location details are kept secure and accessible to you anytime you'd need them**

## Installation

THis project specifically is a REST API that consumes the geo_world library, you can check out how to use `geo_world` (https://github.com/GettyOrawo/geo_world.git) and install the package
To start let's get our docker image setup. Run the following commands on your terminal


```elixir
sudo docker-compose build 
```
#to build the project, fetch dependencies if any

```elixir
sudo docker-compose up 
```
#to start our docker container, setup our database as well as get the server running

The database configuration is already setup on `config/config.exs` hence you should be able to create your database locally. please note that the database name & passwords might not match yours.


You're all set! Now start the server, our server should be listening on port 4000!

To access the geolocation info for your ip address, call this endpoint replacing the provided IP address with yours:

```
/geolocation/201.123.32.22
```
or on your terminal:

```curl
curl --location --request GET 'http://localhost:4000/status' --header 'Content-Type: application/json'
```

If you experienced any issues on the setup or need to inquire about anything, feel free to reach out.

:)

