encrypt:
	ansible-vault encrypt ansible/vault.yml --vault-password-file ./vault-pass.yml

decrypt:
	ansible-vault decrypt ansible/vault.yml --vault-password-file ./vault-pass.yml