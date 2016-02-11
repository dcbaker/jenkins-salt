/home/jenkins/.ssh/authorized_keys:
    file.managed:
        - source: salt://slave/files/authorized_keys
        - user: jenkins
        - group: jenkins
        - mode: 600
