all:
	@echo "Do 'make upload' or 'make clean'"
upload: *.html
	s3cmd put *.html s3://haskell-cf-errs/
clean:
	rm -f *~
