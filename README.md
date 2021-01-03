# Keycloak Docker Image (Using A Seperate Base Path)

## Build
```bash
docker build --build-arg CUSTOM_PATH=sso -t proxy-kc .
```
> Change the value for CUSTOM_PATH variable according to your requirement

## Run
```bash
docker run -p 8080:8080 -e PROXY_ADDRESS_FORWARDING=true --rm proxy-kc
```

## Verify
- Open your browser and navigate to `http://localhost:8080/sso` (replace `sso` with your own specified path)

## TODO
- Attempt setting custom path on container runtime instead of build time