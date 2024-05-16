
promts to create k8s manifests with kubectl-ai


| Name                  | Prompt                                                    | Description                | Example  |
|-----------------------|-----------------------------------------------------------|----------------------------|----------|
| POD | Provide Pod manifest from image gcr.io/k8s-k3s/demo:v1.0.0. Open port 8080 | | [app.yaml](yaml/app.yaml) |
| Liveness Probe |  Provide Pod manifest with liveness probe from image gcr.io/k8s-k3s/demo:v1.0.0. Open port 8080 | | [app-livenessProbe.yaml](yaml/app-livenessProbe.yaml)
| Readiness Probe | Provide Pod manifest with readiness probe for the container from image gcr.io/k8s-k3s/demo:v1.0.0. Open port 8080 | | [app-readinessProbe.yaml](yaml/app-readinessProbe.yaml) |
| Volume Mounts | Provide Pod manifest with liveness and readiness probes. Use image gcr.io/k8s-k3s/demo:v1.0.0. Add volume mount to data path on filesystem. Open port 8080 | | [app-volumeMounts.yaml](yaml/app-volumeMounts.yaml) |
| Cron job | Provide CronJob manifest. it should log "hello" each 5 seconds. Use busybox image | | [app-cronjob.yaml](yaml/app-cronjob.yaml) |
| Job | Provide job manifest.  use google/cloud-sdk:275.0.0-alpine image. add volume mount to gcePersistentDisk | | [app-job.yaml](yaml/app-job.yaml) |
| Multicontainer | provide pod manifest with 2 containers - debian and nginx. mount html folder to ngix container. write in infinite loop to same folder from debian contaimer | | [app-multicontainer.yaml](yaml/app-multicontainer.yaml) |
| Limit resources | provide pod manifest with readiness and liveness probes, add resource block with limit and requests |  | [app-resources.yaml](yaml/app-resources.yaml) |
| Secret env | provide pod manifest with readis image, add secrets username and password from Secret" | | [app-secret-env.yaml](yaml/app-secret-env.yaml) |


