Reasons why node could go to NotReady state and fix:
====================================================

1.  Kubelet stopped posting node status and sshd doesn't work
    
    Probelm : memory utilization went up

    How to debug the problem:
    1. kubectl describe node 
    2. kubelet stopped posting node status
    3. Look for signs of high utilization
    4. Search through kernel messages if suspecting for OOM kills
    5. dmesg -HT => shows OOM kills and page allocation stalls => memory was not 100% utilized => when you are gonna allocate a page of RAM kernel looks for it. It may need to perform memory compaction and if memory utilization is very high it may take time and none of your applications are running because its frozen.

    Fix:
    1. Setting eviction thresholds (https://kubernetes.io/docs/tasks/administer-cluster/out-of-resource/)
    2. Reserve compute resources for system Daemons (https://kubernetes.io/docs/tasks/administer-cluster/reserve-compute-resources/)

2.  Half of the nodes where in NodeNotReadyState
    
    Problem: 50% / 33% Nodes goto not ready state at the same time and come back to its state at the same time after 15 mins

    How to debug the problem:
    1. kubectl describe node 
    2. kubelet stopped posting node status
    3. Look for signs of high utilization - No its not utilized
    4. Is there a networking issue ?
    5. Check for kubelet logs
    6. Check for API server logs 

    Fix: ELB issue but should not happen after 1.2 kubernetes
