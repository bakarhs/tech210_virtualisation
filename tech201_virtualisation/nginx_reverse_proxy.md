#

## What are Ports?

Ports are the communication endpoints of a computer's network connection. They are used to identify a specific process or service and route data to the correct application. Each computer has 65,535 ports, numbered from 0 to 65,535, and each port is associated with a specific network service, such as a web server, email server, or remote desktop service.

## What is a reverse Proxy?
A reverse proxy is a server that acts as an intermediary for requests from clients seeking resources from servers that provide those resources. The reverse proxy sits between the client and the server, forwarding client requests to the server and returning the server's response to the client. A reverse proxy is typically used to improve security, performance, and reliability.

## What is a Proxy?
A proxy is a server that acts as an intermediary for requests from clients seeking resources from servers. The client connects to the proxy server, which then establishes a connection to the requested resource. The proxy returns the resource to the client, acting as a middleman between the client and the server.

## Proxy Vs. reverse proxy

![img.png](img.png)

The main difference between a reverse proxy and a regular proxy is the direction of the request. A regular proxy handles requests from the client to the server, while a reverse proxy handles requests from the server to the client. Additionally, reverse proxies are typically used for specific purposes, such as load balancing, security, and performance optimization, while regular proxies are used for general purposes, such as anonymity and bypassing restrictions.

## How to find nginx default

`sudo nano /etc/nginx/sites-available/default`

## Setting up a reverse proxy on nginx

1. You want to start by using `sudo nano /etc/nginx/sites-available/example.com` in your ssh to make a nano file, this is just an example version. After this you want to specify the location and port.

```
server {
...
    location /app {
        proxy_pass http://localhost:3000/;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
...
}

```

Make sure to specify the location and port. we are using `app` and `3000`

2. Now we want to go straight into the app when we search the ip. We do this by entering the nginx's defaults using `sudo nano /etc/nginx/sites-available/default` and what we want to do is replace our location to be `proxy_pass http://localhost:3000/;`

3. All we have to do now id restart nginx by using `sudo systemctl restart nginx` and this should make sure we are placed straight into the app when we search the ip address




