goStatic
----------------
A simple webserver to host static files over http.

Run Reference
------------
```bash
docker run -d -p 3000:80 -v ~/:/data:ro --name gostatic gostatic
```
