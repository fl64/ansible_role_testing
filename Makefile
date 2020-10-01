.PHONY: init venv vagrant_up vagrant_destroy molecule_test

init:
	python3 -m venv .venv
	. .venv/bin/activate
	pip install yamllint ansible molecule ansible-lint testinfra --user

venv:
	. .venv/bin/activates
vagrant_up:
	vagrant up

vagrant_destroy:
	vagrant destroy -f

molecule_test:
	molecule test

test: molecule_test
