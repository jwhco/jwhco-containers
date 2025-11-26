# Sharing SMB with Kubernetes

## Establishing `smbcreds` Secret

```bash
kubectl create secret generic smbcreds --from-literal username=hittjw --from-literal password="xxx" --from-literal mountOptions="dir_mode=0777,file_mode=0777,uid=1001,gid=1001,vers=1.0,noserverino"
```


