# Helm Wordpress AKS

Repo hinzufügen und installieren
```
helm repo add azure-marketplace https://marketplace.azurecr.io/helm/v1/repo
helm install my-release azure-marketplace/wordpress

```

Installation aus einem Verzeichnis
```
helm pull --untar azure-marketplace/wordpress
cd wordpress
helm install my-wordpress .
```

Helm Release deinstallieren
```
helm uninstall my-wordpress
```

