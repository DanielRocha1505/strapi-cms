# Strapi CMS POC

## Dump user:

```
username: devopsbr@mirumagency.com
password: Mirum@2024
```

## Local domains:

```bash
127.0.0.1   strapi.local
127.0.0.1   web.local
```

## Troubleshooting NPM Packages

If the environment shows issues related to NPM packages after container restarts (e.g., due to broken packages), follow these steps:

1. Navigate to the project directory and remove the `node_modules` folder:

   ```bash
   rm -rf node_modules