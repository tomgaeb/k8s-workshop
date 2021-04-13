# Create GKE cluster

Login to Google Cloud Console
https://console.cloud.google.com/

Open Cloud Shell

Note: Please change the name of the cluster!!

```
gcloud config set compute/zone europe-west3-c
gcloud config set compute/region europe-west3
gcloud container clusters create gke-tom --num-nodes=1
```

