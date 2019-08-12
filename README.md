Kitchen test using terraform

Simple kitchen test code for checking ami image
pre-requirements

    Install Vagrant
        Download and install accordingly to your OS as described here : https://www.vagrantup.com/downloads.html

How to run the code

    Open Command Line Interpreter:

OS system 	Operation
Windows 	Start menu -> Run and type cmd
Linux 	Start terminal
macOS 	Press Command - spacebar to launch Spotlight and type "Terminal," then double-click the search result.

    Pupulate variables in testing.tfvars

    git clone https://github.com/yaroslav-007/app-hello-php.git
    cd app-hello-php

Start vagrant

    vagrant up

Access http://localhost:8000 from your browser.
