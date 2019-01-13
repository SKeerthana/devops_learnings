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

kubectl delete -f <filename> (or) kubectl apply -f <directory/> --prune -l your=label

To mark a node unschedulable:
kubectl cordon $NODENAME

