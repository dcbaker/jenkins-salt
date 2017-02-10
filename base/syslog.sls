syslog-socket:
  service.disabled:
    - name: syslog.socket

rsyslog-stop:
  service.dead:
    - name: rsyslog

rsyslog-disable:
  service.disabled:
    - name: rsyslog
