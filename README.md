# Deploy dlib C++ with Ansible on Ubuntu 14.04

1. Need minimun memory requirment is 4GB during installation.
2. Run local lab with Vagrant, Ansible and Make.


## Run

### Local (Vagrant)

It's setting with `Vagrantfile`, just run `vagrant up`.

    $ make init
    
Just run the init script & Ansible with `vagrant provision`.

    $ make

### Remote (Real environment)

1. Modify configure of `ansible.cfg`, `hosts`.
2. Run Playbook, see more with [Ansible official website](https://www.ansible.com).

        $ ansible-playbook deploy-dlib-playbook.yml --ask-sudo-pass

## Result

This is a result with [Vagrant](https://www.vagrantup.com). 

    ......
    PLAY [deploy dlib] *************************************************************
    
    TASK [setup] *******************************************************************
    ok: [default]
    
    TASK [install apt packages] ****************************************************
    ok: [default] => (item=[u'libboost-python1.55-dev', u'python3-pip', u'build-essential', u'cmake'])
    
    TASK [modify FindPythonInterp.cmake] *******************************************
    ok: [default]
    
    TASK [modify FindPythonInterp.cmake] *******************************************
    ok: [default]
    
    TASK [install dlib with pip3] **************************************************
    ok: [default]
    
    TASK [test] ********************************************************************
    changed: [default]
    
    TASK [print result] ************************************************************
    ok: [default] => {
        "msg": {
            "changed": true,
            "cmd": [
                "python3",
                "-c",
                "import dlib"
            ],
            "delta": "0:00:00.028397",
            "end": "2016-03-12 10:32:52.419128",
            "rc": 0,
            "start": "2016-03-12 10:32:52.390731",
            "stderr": "",
            "stdout": "",
            "stdout_lines": [],
            "warnings": []
        }
    }
    
    PLAY RECAP *********************************************************************
    default                    : ok=7    changed=1    unreachable=0    failed=0

## Reference

* [dlib C++ Library - How to compile](http://dlib.net/compile.html)
* [Ansible Lab | chusiang](https://github.com/chusiang/sandbox/tree/develop/ansible)