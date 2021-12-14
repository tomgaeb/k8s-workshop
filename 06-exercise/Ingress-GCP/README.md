# Übungen 2


## Hosting a Website
Im Ordner befinden sich
* `hello-world-one-deployment.yaml`
* `hello-world-one-service.yaml`
* `hello-world-two-deployment.yaml`
* `hello-world-two-service.yaml`

### Helm installieren
```
$ curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
$ chmod 700 get_helm.sh
$ ./get_helm.sh
```


### Ingress einrichten
* Erstelle einen Namespace `ingress-basic` für deine Deplyments
* Setze den Current-Context deiner kubectl config auf diesen Namespace (siehe Übung 1)

* Erstelle mit helm einen ingress Controller



```
NAMESPACE=ingress-basic

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install ingress-nginx ingress-nginx/ingress-nginx --create-namespace --namespace $NAMESPACE 

```


### Hello App
* Apply die hello-world Ressourcen in dem angelegten Namespace


### Ingress konfigurieren
* Erstell die Ingress Rules aus `hello-world-ingress.yaml`

### Testen
Ruf die erste Applikation unter der IP des Ingress Controllers aus. Die zweite Applikation ist unter `/hello-world-two` erreichbar.

