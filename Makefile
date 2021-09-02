include .env

LIQUIBASE=docker-compose run --rm liquibase

preview:
	$(LIQUIBASE) updateSQL

update:
	$(LIQUIBASE) update

generate:
	$(LIQUIBASE) generateChangeLog

rollback:
	@read -p  "How many migrations to rollback?" COUNT; \
	$(LIQUIBASE) rollbackCount $$COUNT

drop-all:
	$(LIQUIBASE) dropAll

.PHONY: preview update generate rollback drop-all