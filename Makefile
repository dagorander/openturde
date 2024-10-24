

make get:
	./retriever

make install:
	./installcfgs
	./installpkgs

clean:
	rm -rf backup*
