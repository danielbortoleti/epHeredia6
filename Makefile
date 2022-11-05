.PYTHON: run

run: main
	python funcao.py

main: funcao.c
	gcc -fPIC -shared -o -libfuncao.so funcao.c
	sudo cp libfuncao.so /usr/local/lib
	sudo mv funcao.conf /etc/ld.so.conf.d/
	sudo ldconfig

