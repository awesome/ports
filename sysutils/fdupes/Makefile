# $OpenBSD: Makefile,v 1.9 2014/10/17 19:56:45 sthen Exp $

COMMENT=	identify or delete duplicates

V=		1.51
DISTNAME=	fdupes-$V
CATEGORIES=	sysutils

HOMEPAGE=	http://netdial.caribe.net/~adrian2/fdupes.html
MASTER_SITES=	https://github.com/adrianlopezroche/fdupes/archive/
WRKDIST=	${WRKDIR}/fdupes-fdupes-$V

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

NO_TEST=	Yes

ALL_TARGET=
MAKE_FLAGS=	COMPILER_OPTIONS="-Wall ${CFLAGS}" CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fdupes ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/fdupes.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdupes
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdupes/

.include <bsd.port.mk>
