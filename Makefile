all:
	@echo "Do 'make upload' or 'make clean'"
upload: *.html
	s3cmd put --acl-public *.html s3://haskell-cf-errs/
clean:
	rm -f *~
