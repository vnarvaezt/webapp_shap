# webapp_shap

Build docker image 
```bash
docker build -t streamlit .
```

Run docker
```bash
docker run -p 8501:8501 streamlit
```

Lancer un pod avec une image Docker
kubectl run pod-test --image=vnarvaezt/streamlit

Curl command to retrieved the HTML content from the Streamlit app
```bash
kubectl exec pod-test -t -- curl -o - http://localhost:8501

```

Port-forwarding to your local machine: You can use Kubernetes port-forwarding to access your Streamlit app on your local machine. Run the following command to forward the port:
```bash
kubectl port-forward pod-test 8501:8501

```

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl exec my-app-6888f6886b-lhk26 -t -- curl -o - http://10.244.0.30:8501
```

# upnext: 
- Improve app. Only one button for downloading ppt
- test app with kubernetes = configure pods