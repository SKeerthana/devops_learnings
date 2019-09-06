### Issues faced when we enabled istio sidecar:

1. Istio verifies the host header of HTTP request to be same as request URL. 

2. Multiple JWT Authorization headers concatenated into single header by Istio.

3. Once sidecar is enabled, inorder to make calls to any external service we need ServiceEntry with the list of hostnames but adding the hostnames did not work. Calls were made via Nginx so in the service entry we had to add Nginx machine IP.

4. In Jaeger we were not able to find any tracing information.  Istio expects kubernetes service port name of the form http-<TEXT> but we had it as as tcp-<TEXT>. Once we changed it in all our kubernetes services we were able to find tracing information.

5. To enable mtls, we had to add default policy and destinationrule for each namespace - to enforce mtls for services in this namespace.
