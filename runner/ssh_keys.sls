/home/jenkins/.ssh:
    file.directory:
        - user: jenkins
        - group: jenkins
        - mode: 755

/home/jenkins/.ssh/authorized_keys:
    file.managed:
        - source: salt://slave/files/authorized_keys
        - user: jenkins
        - group: jenkins
        - mode: 600
        - require:
            - file: /home/jenkins/.ssh
