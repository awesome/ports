# $OpenBSD: Makefile,v 1.9 2017/01/03 19:19:49 landry Exp $

COMMENT =		cross-version byte-code disassembler and marshal routines

MODPY_EGG_VERSION =	3.2.4
DISTNAME =		xdis-${MODPY_EGG_VERSION}
PKGNAME =		py-xdis-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/rocky/python-xdis/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/pydisasm ${PREFIX}/bin/pydisasm${MODPY_BIN_SUFFIX}

do-test:
	cd ${WRKSRC} && \
	    ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} --first-package-wins

.include <bsd.port.mk>
