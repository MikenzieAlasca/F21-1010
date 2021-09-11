
PP=`pwd`
FN=Lect-08
#FN1=lab-word-count
#FN2=git
DIR=../../../
IMG=
PY= \
	feet_to_inches.py

all: setup all2

setup:
	./mk_all_nu.sh

all2: ${FN}.html 

#${FN1}.html ${FN2}.html 

%.html: %.raw.md
	./mk_html.sh $< $@ 

#%.pdf: %.md
#	~/bin/md-to-pdf.sh $<
#
#%.md: %.raw.md $(PY) $(IMG)
#	m4 -P $< >$@
#
#%.html: %.md
#	blackfriday-tool ./$< $@
#	echo cat ./${DIR}/css/md.css $@ >/tmp/$@
#	cat ./${DIR}/css/pre ./${DIR}/css/markdown.css ./${DIR}/css/post ./${DIR}/css/md.css ./${DIR}/css/hpre $@ ./${DIR}/css/hpost >/tmp/$@
#	mv /tmp/$@ ./$@
#	echo "file://${PP}/$@" >>open.1
