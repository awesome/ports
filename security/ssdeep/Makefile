# $OpenBSD: Makefile,v 1.1.1.1 2016/03/25 01:11:40 lteo Exp $

COMMENT =		fuzzy hashing program and library

DISTNAME =		ssdeep-2.13

CATEGORIES =		security

SHARED_LIBS =		fuzzy	0.0 # 3.0

HOMEPAGE =		http://ssdeep.sourceforge.net/

MAINTAINER =		Lawrence Teo <lteo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ssdeep/}

CONFIGURE_STYLE =	gnu

NO_TEST =		yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ssdeep
	${INSTALL_DATA} ${WRKSRC}/sample.c ${PREFIX}/share/examples/ssdeep
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ssdeep
.for file in AUTHORS ChangeLog FILEFORMAT INSTALL NEWS README
	${INSTALL_DATA} ${WRKSRC}/${file} \
		${PREFIX}/share/doc/ssdeep
.endfor

.include <bsd.port.mk>
