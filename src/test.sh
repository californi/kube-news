watingPods=0
while [ $watingPods = 0 ]; do
  watingPods=$(kubectl get pods | grep web | grep -c Running)
  echo "Waiting to test. 2"
  :
done
minikube service list
minikube service web --url
echo -n "------------------opening the service------------------"
curl $(minikube service web --url)/metrics
