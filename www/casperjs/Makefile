# $OpenBSD: Makefile,v 1.4 2016/07/30 21:22:46 sthen Exp $

COMMENT=	navigation scripting and testing utility for PhantomJS

GH_ACCOUNT=	casperjs
GH_PROJECT=	casperjs
GH_TAGNAME=	1.1.3

CATEGORIES=	www

HOMEPAGE=	http://casperjs.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_ADJ_FILES= bin/casperjs

BUILD_DEPENDS=	textproc/py-sphinx
RUN_DEPENDS=	www/phantomjs
TEST_DEPENDS=	www/phantomjs

TEST_TARGET=	test

do-build:
	cd ${WRKSRC}/docs; make build

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/casperjs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/casperjs
	cd ${WRKSRC}; pax -rw ./[A-Z]* ./package.json ./bin ./modules ./samples ${PREFIX}/share/casperjs/
	mv ${PREFIX}/share/casperjs/samples ${PREFIX}/share/examples/casperjs
	cd ${WRKSRC}/docs/_build; pax -rw * ${PREFIX}/share/doc/casperjs/
	${INSTALL_SCRIPT} ${WRKSRC}/bin/casperjs ${PREFIX}/share/casperjs/bin/
	ln -s ../share/casperjs/bin/casperjs ${PREFIX}/bin/casperjs

pre-test:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
