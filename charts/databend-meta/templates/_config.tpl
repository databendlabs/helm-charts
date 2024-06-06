{{- define "common.metaConfig" -}}
admin_api_address = "0.0.0.0:{{ .Values.service.ports.admin }}"
grpc_api_address = "0.0.0.0:{{ .Values.service.ports.grpc }}"

[log]
[log.stderr]
  on = true
  level = {{ .Values.config.stdLogLevel | quote }}
[log.file]
  level = {{ .Values.config.logLevel | quote }}
  format = "json"
  dir = "{{ .Values.config.logDir | quote }}"

[raft_config]
  cluster_name = {{ .Values.config.clusterName | quote }}
  raft_dir = "{{ .Values.config.raft.dir }}"
  raft_listen_host = "0.0.0.0"
  raft_api_port = 28004
  max_applied_log_to_keep = 102400
  install_snapshot_timeout = 60000
{{- end }}
