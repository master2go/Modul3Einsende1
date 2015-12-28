BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/Stoff
OUTPUTDIR=$(BASEDIR)/Fertig
TEMPLATEDIR=$(BASEDIR)/Zeugs
STYLEDIR=$(BASEDIR)/style

SRC = Einleitung.md kap1.md
all: tex pdf
	@echo "Inge ist cool"
tex:
	pandoc --biblatex -s --template="$(TEMPLATEDIR)/ingestemplate.latex" -o "$(OUTPUTDIR)/inge.tex" "$(INPUTDIR)"/*.md
pdf:
	sh "$(TEMPLATEDIR)"/shellpdf.txt
