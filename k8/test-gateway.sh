export GATEWAY=$(oc get route istio-ingressgateway -n istio-system -o template --template '{{ .spec.host }}')

echo "ingress-gateway route:"
echo $GATEWAY 

curl $GATEWAY
echo ""
echo "HTTP response code:"
curl -o /dev/null -s -w "%{http_code}\n" $GATEWAY
