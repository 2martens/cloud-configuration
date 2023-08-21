# Template Helm Chart

This helm chart is a library chart that does most of the heavy
lifting for your application chart.

## Usage

1. Copy the values into your own application chart.
2. In your application chart templates folder create the following
   files. This allows you to use the values to configure most things and,
   more importantly, allows the users of your chart to overwrite
   things. Furthermore, that way you can benefit from improvements
   in the templates of this library chart by simply updating the
   version under dependencies in your chart.

deployment.yaml
```yaml
{{- include "template.deployment" . -}}
```

hpa.yaml
```yaml
{{- include "template.hpa" . -}}
```

ingress.yaml
```yaml
{{- include "template.ingress" . -}}
```

NOTES.txt
```text
1. Get the application URL by running these commands:
{{- if .Values.ingress.enabled }}
{{- range $host := .Values.ingress.hosts }}
  {{- range .paths }}
  http{{ if $.Values.ingress.tls }}s{{ end }}://{{ $host.host }}{{ .path }}
  {{- end }}
{{- end }}
{{- else if contains "NodePort" .Values.service.type }}
  export NODE_PORT=$(kubectl get --namespace {{ .Release.Namespace }} -o jsonpath="{.spec.ports[0].nodePort}" services {{ include "template.fullname" . }})
  export NODE_IP=$(kubectl get nodes --namespace {{ .Release.Namespace }} -o jsonpath="{.items[0].status.addresses[0].address}")
  echo http://$NODE_IP:$NODE_PORT
{{- else if contains "LoadBalancer" .Values.service.type }}
     NOTE: It may take a few minutes for the LoadBalancer IP to be available.
           You can watch the status of by running 'kubectl get --namespace {{ .Release.Namespace }} svc -w {{ include "template.fullname" . }}'
  export SERVICE_IP=$(kubectl get svc --namespace {{ .Release.Namespace }} {{ include "template.fullname" . }} --template "{{"{{ range (index .status.loadBalancer.ingress 0) }}{{.}}{{ end }}"}}")
  echo http://$SERVICE_IP:{{ .Values.service.port }}
{{- else if contains "ClusterIP" .Values.service.type }}
  export POD_NAME=$(kubectl get pods --namespace {{ .Release.Namespace }} -l "app.kubernetes.io/name={{ include "template.name" . }},app.kubernetes.io/instance={{ .Release.Name }}" -o jsonpath="{.items[0].metadata.name}")
  export CONTAINER_PORT=$(kubectl get pod --namespace {{ .Release.Namespace }} $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl --namespace {{ .Release.Namespace }} port-forward $POD_NAME 8080:$CONTAINER_PORT
{{- end }}
```

secret.yaml:
If you want to use external secrets, you MUST NOT include the secret
template but implement it yourself. 
```yaml
{{- include "template.secret" . -}}
```

service.yaml
```yaml
{{- include "template.service" . -}}
```

serviceaccount.yaml
```yaml
{{- include "template.serviceAccount" . -}}
```

tests/test-connection.yaml
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: "{{ include "template.fullname" . }}-test-connection"
  labels:
    {{- include "template.labels" . | nindent 4 }}
  annotations:
    "helm.sh/hook": test
spec:
  containers:
    - name: wget
      image: busybox
      command: ['wget']
      args: ['{{ include "template.fullname" . }}:{{ .Values.service.port }}']
  restartPolicy: Never
```
