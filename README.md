# cy-deploy

Command to up container:
```bash
docker compose up --build -d
```

Command to down container:
```bash
docker compose down -v ; rm -r postgrest_data
```