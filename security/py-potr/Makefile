# $OpenBSD: Makefile,v 1.2 2017/01/03 19:26:14 landry Exp $

COMMENT =		pure Python Off-The-Record encryption

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		python-potr-${MODPY_EGG_VERSION}
PKGNAME =		py-potr-${MODPY_EGG_VERSION}
CATEGORIES =		security net
REVISION =		0

MAINTAINER =		Daniel Jakots <obsd@chown.me>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		security/py-crypto${MODPY_FLAVOR}

.include <bsd.port.mk>
