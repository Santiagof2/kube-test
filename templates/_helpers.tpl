{{/*
Create a default fully-qualified app name.
*/}}
{{- define "kube-test.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels.
*/}}
{{- define "kube-test.labels" -}}
app: {{ include "kube-test.fullname" . }}
chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
release: {{ .Release.Name }}
heritage: {{ .Release.Service }}
{{- end -}}