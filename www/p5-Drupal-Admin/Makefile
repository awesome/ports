# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:17 naddy Exp $

COMMENT = 		screen scraping Perl API to some Drupal admin functions

DISTNAME =		Drupal-Admin-0.04
REVISION =		2
CATEGORIES =		www devel
MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-WWW-Mechanize-TreeBuilder \
			devel/p5-Moose>=2.1204 \
			devel/p5-MooseX-Role-Parameterized \
			devel/p5-MooseX-Log-Log4perl

BUILD_DEPENDS =		${RUN_DEPENDS}

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
