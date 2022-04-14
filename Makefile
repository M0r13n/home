test:
	yamllint .
	ansible-lint .

install:
	python3 -m pip install yamllint ansible-lint ansible
	ansible-galaxy collection install -r requirements.yml
