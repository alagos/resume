.PHONY: resume

CC = xelatex
RESUME_DIR = ./
COVER_DIR = cover_letters/

resume: resume.tex
	$(CC) -output-directory=$(RESUME_DIR) $< && make clean DIR=$(RESUME_DIR)

cover/%: $(COVER_DIR)/%.tex
	$(CC) -output-directory=$(COVER_DIR) $< && make clean DIR=$(COVER_DIR)

clean:
	-rm $(DIR)*.aux $(DIR)*.log $(DIR)*.out
