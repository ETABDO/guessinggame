README_FILE=README.md
SCRIPT_FILE=guessinggame.sh
TITLE="Projet: Jeu de devinette de fichiers"

all: $(README_FILE)

$(README_FILE):
	@echo "# $(TITLE)" > $(README_FILE)
	@echo "" >> $(README_FILE)
	@echo "Date et heure d'exécution de make: $$(date)" >> $(README_FILE)
	@echo "" >> $(README_FILE)
	@echo "Nombre de lignes dans $(SCRIPT_FILE): $$(wc -l < $(SCRIPT_FILE))" >> $(README_FILE)
