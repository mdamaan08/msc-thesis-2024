{{/*
Return the full name of the application
*/}}
{{- define "nginx-app.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{/*
Return the application name
*/}}
{{- define "nginx-app.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{/*
Generate standard labels for resources
*/}}
{{- define "nginx-app.labels" -}}
app.kubernetes.io/name: {{ include "nginx-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | default .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
