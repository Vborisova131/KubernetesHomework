{{- define "env.templateFromSecrets" }}
- name: {{ .env }}
  valueFrom:
    secretKeyRef:
      name: {{ .name }}-secret
      key: {{ .env }}
{{- end }}

{{- define "env.templateRabbit" }}
- name: {{ .env.name }}
  valueFrom:
    secretKeyRef:
      name: {{ .name }}-secret
      key: {{ .env.key }}
{{- end }}

{{- define "env.templateFromConfig" }}
- name: {{ .env }}
  valueFrom:
    configMapKeyRef:
      name: {{ .name }}-config
      key: {{ .env }}
{{- end }}