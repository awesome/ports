# $OpenBSD: Makefile,v 1.19 2015/02/16 22:57:08 naddy Exp $

COMMENT=	fast anagram generator

V=		0.95
DISTNAME=	an_${V}.orig
PKGNAME=	an-${V}
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/a/an/}

# GPL - LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

WRKDIST=	${WRKDIR}/an-${V}

NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,/usr/dict/words,/usr/share/dict/words,g' \
		${WRKSRC}/an.6

do-build:
	cd ${WRKBUILD} && \
	${CC} ${CFLAGS} an.c gan_qsort.c -o an ${LDFLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/an ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/an.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
