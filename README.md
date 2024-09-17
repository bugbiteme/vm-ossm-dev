# vm-ossm-dev
developement of non-template resources to be integrated with RHDH at a later time

## Prereqs
1. Service Mesh has been installed and control plane has been deployed `istio-system`
2. RHDH pipelines have been run to create the VM template with the backend app
3. Ingress gateway has been set up `demo-gateway` (`ingress-gateway.yaml`)
4. web-puller is cofigured with `demo-vm-ossm` namespace (`web-puller.yaml`)

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

### Deploy Back End VM
- Make sure the config map has been created   
`oc apply -f k8/vm/dotnet-iis-app-vm-cm.yaml`  

- Deploy VM components

