# Kubernetes Command Cheatsheet
# Operations:
1. Create
2. Read/View
3. Update
4. Delete

There are three types of commands. Refer https://kubernetes.io/docs/concepts/overview/object-management-kubectl/overview/

# Imperative commands:

kubectl run <name> --image <image_name>

kubectl create <type> [<subtype>] <name> --image <image_name>

kubectl expose <type> <existing_name> --port=<port> --name=<name>

kubectl scale <type> <name> [--replicas=<number>]

### other commands:
autoscale, label, annotate, set

# Imperative object configuration:

kubectl <create/replace/delete/get> -f <file_name>

useful option -o <yaml> --> gives yaml of created service

# Declarative object configuration:

kubectl <create/replace/delete/get> -f <directory>

# Other useful commands:

- Delete command:
*kubectl delete -f <filename>* (or) *kubectl apply -f <directory/> --prune -l your=label*

- To mark a node unschedulable:
*kubectl cordon $NODENAME*

- To delete a ReplicationController without affecting any of its pods:
--cascade=false option to kubectl delete

- To edit deployment:
*kubectl edit deployment.v1.apps/nginx-deployment*
(or)
*kubectl set image deployment.v1.apps/nginx-deployment nginx=nginx:1.91 --record=true*

- To check the rollout status after deployment:
*kubectl rollout status deployment.v1.apps/nginx-deployment*

- To check the revisions of the deployment:
*kubectl rollout history deployment.v1.apps/nginx-deployment*

- To further see the details of each revision:
*kubectl rollout history deployment.v1.apps/nginx-deployment --revision=2*

- To rollback to previouos revision:
*kubectl rollout undo deployment.v1.apps/nginx-deployment --to-revision=2*

- To make the controller report lack of progress for a Deployment after 10 minutese
*kubectl patch deployment.v1.apps/nginx-deployment -p '{"spec":{"progressDeadlineSeconds":600}}'*
