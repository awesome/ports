# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:57 naddy Exp $

COMMENT =		PoCo::IRC Plugin that provides RSS Headline retrieval

DISTNAME =		POE-Component-IRC-Plugin-RSS-Headlines-1.08
REVISION =		0
CATEGORIES =		net www

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =	net/p5-POE-Component-IRC \
		net/p5-POE-Component-Client-HTTP>=0.73 \
		textproc/p5-XML-RSS>1.1

MAKE_ENV+=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
