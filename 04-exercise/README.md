# Übungen 1

## (a) _Deployment_ der hello-app

Deploye die hello-app in diesem Verzeichnis

* Ändere das Image im Deplyment auf gcr.io/google-samples/hello-app:1.0

* Einen _Namespace_ erstellen mit Namen `hello-04`
* Deploye das _Deployment_ aus den beiden .yaml Dateien aus diesem Verzeichnis in diesen _Namespace_:
    * `helloweb-deployment.yaml`
    * `helloweb-service.yaml`
    * In den Objekten ist der neue _Namespace_ nicht konfiguriert. Um sie im _Namespace_ `hello-04` zu deployen muss Du entweder den _Namespace_ bei jedem Befehl angeben `kubectl -n <namespace>` oder den Context für alle kubectl Befehle auf einen _Namespace_ setzen: `kubectl config set-context --current --namespace=<namespace>` (empfohlen)
    
* Erkunde die erstelten Kubernetes Objekte (Pods,Deployment,ReplicaSet,Service)



## (b) LoadBalancer Service
* Ändere das _Service_ Manifest, so dass eine _Service_ vom Typ `LoadBalancer` erstellt wird
* Deploye die Änderung im Cluster
* Ermittle die externe IP des Loadbalancers
* Greife direkt mit dem Browser auf die externe IP des Service zu.

* !! Der Service in dem Image läuft auf Port 8080 !!

## (d) Scaling / _Deployment_
* Scaliere das _Deployment_ auf 3 Pods
* Ändere den Container im _Deployment_ auf das Tag `2.0` im yaml File
* Deploye die Änderung
* Beobachte das _Deployment_

## Cleanup
* Lösche am Ende der Übung den _Namespace_ `hello-04` 
* (siehe auch das Script `cleanup.sh`) 

