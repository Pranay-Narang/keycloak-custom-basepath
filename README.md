# Keycloak Docker Image (Using A Seperate Base Path)

The [Dockerfile](Dockerfile) in this repository hardcodes the custom path to /keycloak

## Build
```bash
docker build -t proxy-kc .
```

## Run
```bash
docker run -p 8080:8080 -e PROXY_ADDRESS_FORWARDING=true --rm proxy-kc
```

## Verify
- Open your browser and navigate to http://localhost:8080/keycloak
- It should cause a redirect to `http://localhost:8080/keycloak/auth`

## TODO
- Add an option to change custom base path to user requirement instead of hardcoding `/keycloak`