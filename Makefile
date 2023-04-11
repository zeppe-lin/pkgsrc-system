include ${CURDIR}/../pkgsrc-core/Makefile

# Check Pkgfiles for misdeclared dependencies:
# dependencies that are outside of this collection and/or outside of
# collections that this collection depends on or are completely
# missing.
check-deps:
	@pkgman --root= --no-std-config                              \
		--config-append="pkgsrcdir ${CURDIR}"                \
		--config-append="pkgsrcdir ${CURDIR}/../pkgsrc-core" \
		list-orphans -v | grep '(required by .*)' ||:

# vim: cc=72:tw=70
# End of file.
