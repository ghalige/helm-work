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
environment: {{ .Values.labels.environment | default "prod" }}
{{- end }}

{{/*
Generate the container image
*/}}
{{- define "nginx.image" -}}
{{ .Values.image.repository }}:{{ .Values.image.tag }}
{{- end }}
