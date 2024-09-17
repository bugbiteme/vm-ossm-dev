# vm-ossm-dev
developement of non-template resources to be integrated with RHDH at a later time

## Prereqs
1. Service Mesh has been installed and control plane has been deployed
2. RHDH pipelines have been run to create the VM template with the backend app
3. Ingress gateway has been set up `demo-gateway`
4. web-puller is cofigured with `demo-vm-ossm` namespace (as in this file)

## Steps
### Create Namespace
`oc create -f k8/namespace.yaml`

### Deploy Service Mesh Member
`oc create -f k8/servicemeshmember-default.yaml`  

**Note:** Once you do this, a `route` will no longer work, and a 
`virtualservice` + `gateway` will be required

### Deploy Front End (may switch this with VM when done)
`oc create -f k8/container/`

### Test gateway is working
`sh ./test-gateway.sh`
