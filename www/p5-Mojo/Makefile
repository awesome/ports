# $OpenBSD: Makefile,v 1.28 2016/03/20 19:57:21 naddy Exp $

COMMENT =	next generation web framework for Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Mojolicious-6.24
CATEGORIES =	www

MAINTAINER =	Mark Patruck <mark@wrapped.cx>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

HOMEPAGE =	http://mojolicio.us/

CPAN_AUTHOR =	SRI

RUN_DEPENDS =	devel/p5-EV \
		security/p5-IO-Socket-SSL>=1.94

MAKE_ENV += TEST_CACHING=Yes
MAKE_ENV += TEST_EV=Yes
MAKE_ENV += TEST_HYPNOTOAD=Yes
MAKE_ENV += TEST_MORBO=Yes
MAKE_ENV += TEST_POD=Yes
MAKE_ENV += TEST_PREFORK=Yes

# see pkg/README for certificate handling
post-install:
	rm -rf ${PREFIX}/${P5SITE}/Mojo/IOLoop/certs/

.include <bsd.port.mk>
