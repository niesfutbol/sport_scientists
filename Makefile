all:

reports/dummy_report.pdf: reports/dummy_report.tex
	$(renderLatex)

reports/dummy_report.tex: reports/non-tabular/results.json
	jinja-render \
	--report-name "dummy_report" \
	--summary-path "reports/non-tabular/results.json"

reports/non-tabular/results.json:
	$(checkDirectories)
	echo '{"A":2 , "B":3 , "total":5}' > reports/non-tabular/results.json

.PHONY: \
		all \
		check \
		clean \
		format \
		init \
		linter \
		setup \
		tests

define checkDirectories
	mkdir --parents $(@D)
endef

define lint
	pylint \
        --disable=bad-continuation \
        --disable=missing-class-docstring \
        --disable=missing-function-docstring \
        --disable=missing-module-docstring \
        ${1}
endef

define renderLatex
	cd $(<D) && pdflatex $(<F)
	cd $(<D) && pdflatex $(<F)
endef

check:
	@echo "🤖💄 Nothing to check. If we add a python file check Black, mypy and flake 8."

clean:
	rm --force --recursive reports/*.aux
	rm --force --recursive reports/*.log
	rm --force --recursive reports/*.out
	rm --force --recursive reports/*.pdf
	rm --force --recursive reports/*.tex
	rm --force --recursive reports/non-tabular/results.json

format:
	black --line-length 100 src

init: setup tests

linter:
	$(call lint, src)

setup: clean
	shellspec --init

tests:
	shellspec
