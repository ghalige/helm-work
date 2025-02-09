{{/*
Generate a fully qualified app name
*/}}
{{- define "nginx.fullname" -}}
{{ .Release.Name }}-nginx
{{- end }}

{{/*
Define common labels
*/}}
{{- define "nginx.labels" -}}
app: nginx
release: {{ .Release.Name }}
environment: {{ .Values.global.environment | default "dev" }}
managedBy: {{ .Values.global.labels.managedBy }}
{{- end }}
