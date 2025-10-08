# Container Registry for JWHCO MicroK8S

## Reference

-   Working with the Container registry. https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry

## Deployment

```bash
# Build and save the image
docker build -t vsc-ubuntu:latest .
# QA, Check runtime, then
docker save vsc-ubuntu:latest -o vsc-ubuntu-latest.tar

# Tag and push
docker tag vsc-ubuntu:latest hittjw/vsc-ubuntu:latest
docker push hittjw/vsc-ubuntu:latest

# Update dep-vsc-ubuntu.yml image to the fully-qualified name (or patch)
# Example patch:
kubectl set image deployment/vsc-ubuntu vsc-ubuntu=hittjw/vsc-ubuntu:latest

# Apply and rollout
kubectl apply -f dep-vsc-ubuntu.yml
kubectl rollout status deployment/vsc-ubuntu
kubectl get pods -o wide
```

/EOF/
