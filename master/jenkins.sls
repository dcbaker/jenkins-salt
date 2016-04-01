#python-apt:
    #pkg.installed: []

#jenkins-repo:
    #pkgrepo.managed:
        #- humanname: jenkins-ci
        #- name: deb http://pkg.jenkins-ci.org/debian binary
        #- dist: jenkins
        #- key_url: http://jenkins-ci.org/debian/jenkins-ci.org.key
        #- file: /etc/apt/sources.list.d/jenkins.list
        #- refresh_db: true
        #- requires:
            #- pkg: python-apt

#jenkins:
    #pkg.installed:
        #- fromrepo: jenkins

#jenkins-service:
    #service.running:
        #- name: jenkins
        #- enable: True
        #- reload: true
        #- require:
            #- pkg: jenkins
            #- file: /etc/systemd/system/jenkins.service
        #- watch:
            #- file: /etc/default/jenkins
            #- file: /etc/systemd/system/jenkins.service

/etc/default/jenkins:
     file.managed:
         - source: salt://master/files/jenkins/default.conf
         - user: root
         - group: root
         - mode: 644
         - require:
             - pkg: jenkins

/etc/systemd/system/jenkins.service:
    file.managed:
        - source: salt://master/files/jenkins/jenkins.serivce
        - user: root
        - group: root
        - mode: 644
