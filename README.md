# AWS Terraform Modules

## public-ip (work-in-progress)
This module usages [http://ipecho.net/plain]() to get you public ip address

In order for the ```public_ip``` address variable to be update Makefile ```./public_ip/Makefile``` should be called before ```terraform plan``` or ```terraform apply``` commands.

e.g. Makefile ```update``` target: -

~~~
update:
	terraform get -update
	for i in $$(ls .terraform/modules/*/Makefile); do i=$$(dirname $$i); make -C $$i clean; done
	for i in $$(ls .terraform/modules/*/Makefile); do i=$$(dirname $$i); make -C $$i; done
~~~

