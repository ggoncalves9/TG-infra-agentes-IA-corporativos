up:          ## Builda e sobe os containers
	docker compose up -d --build

down:        ## Para e remove os containers + volumes anônimos
	docker compose down -v

logs:        ## Segue logs de todos os serviços
	docker compose logs -f --tail=100

ps:          ## Lista containers
	docker compose ps
