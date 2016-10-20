# Docker-powered NGINX with HTTP/2 load balancing two Tomcat servers

This is a demonstration [Docker](https://www.docker.com/) build not intended for production use (e.g. it uses self-signed HTTPS certificates).  It will show:

* a test page delivered over HTTPS to an HTTP/2 capable browser (see http://caniuse.com/#feat=http2). This page has > 200 assets so this will demonstrate adequately the HTTP pipelinging feature of [HTTP/2](https://en.wikipedia.org/wiki/HTTP/2), for example.
* the same test page delivered over HTTP using HTTP/1.1
* Tomcat session clustering

Usage

 1. Clone the Repository
 2. In the cloned folder, enter ```docker-compose up```
 3. Try out by browsing to:
  - [https://localhost:8443/](https://localhost:8443/) for testing with HTTP/2
  - [http://localhost:8080/](http://localhost:8080/) for testing with HTTP/1.1
 4. You might want to slow things down; to do that you could use [throttle the bandwidth using the native Chrome tool](https://developers.google.com/web/tools/chrome-devtools/profile/network-performance/network-conditions?hl=en).

Credits to:

* Ramki for his [Blog](http://www.ramkitech.com/2015/10/docker-tomcat-clustering.html) demonstrating Tomcat clustering
* Dylan Wang for his NGINX build with HTTP/2 enabled: [ehekatl/docker-nginx-http2](https://hub.docker.com/r/ehekatl/docker-nginx-http2/).  Note that the standard build of NGINX does not enable HTTP/2 by default
* Evan Brown for demontrating how to enable HTTPS [ployst/docker-nginx-ssl-proxy](https://github.com/ployst/docker-nginx-ssl-proxy) - including instructions on [refreshing certificates](https://github.com/ployst/docker-nginx-ssl-proxy#generating-test-certificates)
* GoSquared for the flag images https://www.gosquared.com/resources/flag-icons/
