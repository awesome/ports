# $OpenBSD: Makefile,v 1.39 2016/05/17 23:51:06 bluhm Exp $

COMMENT =		BSD process resource limit and priority functions

DISTNAME =		BSD-Resource-1.2910

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0 or LGPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
