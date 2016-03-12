.PHONY: All init run provision clean

All: provision

# init & run.
run:
	vagrant up

# only run init script & ansible.
provision:
	vagrant provision

# remove vm (guest os).
clean:
	vagrant destroy

