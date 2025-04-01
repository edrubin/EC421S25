# Options and directories ------------------------------------------------------
# Option for R
R_OPTS=--vanilla

# Name targets -----------------------------------------------------------------
syllabus: syllabus/syllabus.pdf
lec01 : notes/01-intro/slides.html notes/01-intro/slides.pdf
lec02 : notes/02-review/slides.html notes/02-review/slides.pdf
lec03 : notes/03-review/slides.html notes/03-review/slides.pdf
lec04 : notes/04-heteroskedasticity/slides.html notes/04-heteroskedasticity/slides.pdf
lec05 : notes/05-heteroskedasticity/slides.html notes/05-heteroskedasticity/slides.pdf
lec06 : notes/06-consistency/slides.html notes/06-consistency/slides.pdf
lec07 : notes/07-time-series/slides.html notes/07-time-series/slides.pdf
lec08 : notes/08-autocorrelation/slides.html notes/08-autocorrelation/slides.pdf
lec09 : notes/09-nonstationarity/slides.html notes/09-nonstationarity/slides.pdf
lec10 : notes/10-causality/slides.html notes/10-causality/slides.pdf
lec11 : notes/11-iv/slides.html notes/11-iv/slides.pdf
lec12 : notes/12-ml/slides.html notes/12-ml/slides.pdf

# Define individual links ------------------------------------------------------
# Build syllabus
syllabus/syllabus.pdf : syllabus/syllabus.tex
	tectonic syllabus/syllabus.tex
# Lecture 01
notes/01-intro/slides.html : notes/01-intro/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/01-intro/slides.pdf : notes/01-intro/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 02
notes/02-review/slides.html : notes/02-review/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/02-review/slides.pdf : notes/02-review/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 03
notes/03-review/slides.html : notes/03-review/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/03-review/slides.pdf : notes/03-review/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 04
notes/04-heteroskedasticity/slides.html : notes/04-heteroskedasticity/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/04-heteroskedasticity/slides.pdf : notes/04-heteroskedasticity/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 05
notes/05-heteroskedasticity/slides.html : notes/05-heteroskedasticity/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/05-heteroskedasticity/slides.pdf : notes/05-heteroskedasticity/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 06
notes/06-consistency/slides.html : notes/06-consistency/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/06-consistency/slides.pdf : notes/06-consistency/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 07
notes/07-time-series/slides.html : notes/07-time-series/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/07-time-series/slides.pdf : notes/07-time-series/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 08
notes/08-autocorrelation/slides.html : notes/08-autocorrelation/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/08-autocorrelation/slides.pdf : notes/08-autocorrelation/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 09
notes/09-nonstationarity/slides.html : notes/09-nonstationarity/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/09-nonstationarity/slides.pdf : notes/09-nonstationarity/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 10
notes/10-causality/slides.html : notes/10-causality/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/10-causality/slides.pdf : notes/10-causality/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 11
notes/11-iv/slides.html : notes/11-iv/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/11-iv/slides.pdf : notes/11-iv/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 12
notes/12-ml/slides.html : notes/12-ml/slides.rmd
	Rscript -e "rmarkdown::render('$<')"
notes/12-ml/slides.pdf : notes/12-ml/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"

# Global targets ---------------------------------------------------------------
lec-all: lec01 lec02 lec03 lec04 lec05 lec06 lec07 lec08 lec09 lec10 lec11 lec12
all: lec-all syllabus
# Define clean
clean:
	rm -f lec-all
