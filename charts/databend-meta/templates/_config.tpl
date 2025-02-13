{{- define "common.metaConfig" -}}
admin_api_address = "0.0.0.0:{{ .Values.service.ports.admin }}"
grpc_api_address = "0.0.0.0:{{ .Values.service.ports.grpc }}"

[log]
[log.stderr]
  on = {{ .Values.config.log.stderr.enabled }}
  level = {{ .Values.config.log.stderr.level | quote }}
  format = {{ .Values.config.log.stderr.format | quote }}
[log.file]
  on = {{ .Values.config.log.file.enabled }}
  level = {{ .Values.config.log.file.level | quote }}
  format = {{ .Values.config.log.file.format | quote }}
  dir = {{ .Values.config.log.file.dir | quote }}
  prefix_filter = {{ .Values.config.log.file.prefixFilter | quote }}

[raft_config]
  cluster_name = {{ .Values.config.clusterName | quote }}
  raft_dir = {{ .Values.config.raft.dir | quote }}
  raft_listen_host = "0.0.0.0"
  raft_api_port = {{ .Values.service.ports.raft }}
  max_applied_log_to_keep = 102400
  install_snapshot_timeout = 60000
{{- end }}
