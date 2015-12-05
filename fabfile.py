# -*- coding: utf-8 -*-

from fabric import api

api.env.user = 'ubuntu'
api.env.hosts = ['erock.io']
api.env.use_ssh_config = True

def deploy():
    with api.cd("/srv/sites/erockio"):
        api.run("git pull origin master")
