.PHONY: All init init_vagrant run clean

All: init


init: init_vagrant

init_vagrant:
	vagrant up

run:
	vagrant up

# remove vm.
clean:
	vagrant destroy

