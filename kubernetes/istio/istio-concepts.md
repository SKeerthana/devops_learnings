### Major features in Istio

1. Traffic management

	- Enable sidecar
	- Add serviceentry for external calls (if it goes via proxy server ensure to add proxy ip in serviceentry) 

2. Policies & Security

	- Enable mtls (add default policy and destination with istio_mutual mtls)
    - Enable RBAC (to control service communication)

3. Observability

	- Enable Jaeger(uses Zipkin internally) and Kiali


TODO:
1. Add about control and data plane components
2. Add some examples
