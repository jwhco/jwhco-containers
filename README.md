# Container Registry for JWHCO MicroK8S

**THIS IS A PUBLIC REPO -- DO NOT STORE PASSWORDS**

## Purpose

- Make available configurations that may shared across projects. 
- As a demonstration portfolio. Models and templates, not client work.
- A practice of risk management. Make sure repo is sanitized.

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

- When possible, clone GitHub into `/workspace/` to be persitent about local copies. This will help reloads be faster because directory can be refreshed.
- The `/home/` directory for where users live. It's okay to clone here, however, this is primary for running scripts and may not have as much space as *workspace*.


## Wishlist

- [Graphana](https://grafana.com/), Dashboarding and reporting platform. Visualization.
- [N8N](https://n8n.io/). Workflow automation and engagement with component level nodes. 

Copyright &copy; 2023-2025 [JWH Consolidated LLC](https://www.jwhco.com/), All rights reserved.

