# $OpenBSD: Makefile,v 1.2 2015/09/25 12:50:08 sthen Exp $

PKG_ARCH =		*

COMMENT =		advanced Unicode font for medievalists
DISTNAME =		junicode-0-7-8
PKGNAME =		junicode-0.7.8
REVISION =		0
EXTRACT_SUFX =		.zip
CATEGORIES =		fonts

HOMEPAGE =		http://junicode.sourceforge.net/
MAINTAINER =		George Rosamond <george@nycbug.org>

# OFL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=junicode/}

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/junicode
FONTDIR =		${PREFIX}/share/fonts/junicode
DOCDIR =		${PREFIX}/share/doc/junicode

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/* ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/util/* ${DOCDIR}

.include <bsd.port.mk>
