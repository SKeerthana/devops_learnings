Istio installation steps:
--------------------------

> minikube delete;minikube start --memory=8192 --cpus=4

> kubectl apply -f istio-1.0.2/install/kubernetes/helm/istio/templates/crds.yaml

> kubectl apply -f istio-1.0.2/install/kubernetes/helm/helm-service-account.yaml

> helm init --service-account tiller # wait for sometime for the tiller pod to comeup

> helm install istio-1.0.2/install/kubernetes/helm/istio --name istio --namespace istio-system

> kubectl label namespace default istio-injection=enabled
 or enable in pod sidecar.istio.io/inject: "true" 
