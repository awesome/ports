# $OpenBSD: Makefile,v 1.2 2017/01/03 19:27:51 landry Exp $

COMMENT=		terminal session recorder

MODPY_EGG_VERSION=	1.3.0

# MODPY_PI does not work
GH_PROJECT=		asciinema
GH_ACCOUNT=		asciinema
GH_TAGNAME=		v${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/asciinema.1 ${PREFIX}/man/man1/

do-test:
	cd ${WRKSRC} && nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
