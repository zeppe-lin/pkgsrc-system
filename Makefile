# This Makefile is for automated checking of this pkgsrc collection
# for various programmatic and stylistic errors.

include ${CURDIR}/../pkgsrc-core/Makefile

# Check Pkgfiles for misdeclared dependencies:
# dependencies that are outside of this collection and/or outside of
# collections that this collection depends on or are completely
# missing.
check-deps:
	@${PKGMAN} --root= --no-std-config                           \
		--config-append="pkgsrcdir ${CURDIR}"                \
		--config-append="pkgsrcdir ${CURDIR}/../pkgsrc-core" \
		list-orphans -v | grep '(required by .*)' >&2 ||:

# vim: cc=72 tw=70
# End of file.
