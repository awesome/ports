# $OpenBSD: Makefile,v 1.5 2016/03/20 19:57:16 naddy Exp $

COMMENT =	thumbnail plugin for p5-Dancer

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Dancer-Plugin-Thumbnail-0.12
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-Dancer \
		devel/p5-lib-abs \
		graphics/p5-GD \
		graphics/p5-Image-Size \
		converters/p5-JSON-Any \
		devel/p5-Object-Signature

#cpanplus installs them otherwise..
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
