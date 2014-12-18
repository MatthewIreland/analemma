

all:
	perl src/mkscript.pl
	chmod 755 analemma_capture.sh
	perl src/mkcron.pl

install:
	mv analemma_capture.sh /usr/local/bin
	sudo -u matthew crontab -r
	sudo -u matthew crontab crons.txt
	rm crons.txt

