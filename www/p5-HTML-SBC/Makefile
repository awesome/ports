# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:18 naddy Exp $

COMMENT =	simple blog code for valid (X)HTML

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	HTML-SBC-0.15
REVISION =	1
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

# actually TEST_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
