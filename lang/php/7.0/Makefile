# $OpenBSD: Makefile,v 1.24 2016/12/19 20:35:47 martijn Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.14

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
