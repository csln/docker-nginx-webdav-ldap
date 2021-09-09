# Nginx ldap
[![Build Status](https://travis-ci.org/pando85/docker-nginx-ldap.svg?branch=master)](https://travis-ci.org/pando85/docker-nginx-ldap) [![](https://images.microbadger.com/badges/image/pando85/docker-nginx-ldap.svg)](https://microbadger.com/images/pando85/nginx-ldap) [![](https://images.microbadger.com/badges/version/pando85/docker-nginx-ldap.svg)](https://microbadger.com/images/pando85/nginx-ldap) [![License](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/pando85/docker-nginx-ldap/blob/master/LICENSE)

Official NGINX Docker image compiled with [LDAP authentication module](https://github.com/kvspb/nginx-auth-ldap).

Also include a minimal version for my own usage:

## Minimal version

Custom NGINX Docker Image with modules:
- [LDAP authentication module](https://github.com/kvspb/nginx-auth-ldap).
- http_ssl_module
- http_v2_module
- http_stub_status_module
- stream
- http_auth_request_module
