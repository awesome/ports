# $OpenBSD: Makefile,v 1.15 2016/03/11 19:59:13 naddy Exp $

COMMENT=		wrapper class around the pcre library

DISTNAME=		pcre++-0.9.5
PKGNAME=		${DISTNAME}
REVISION=		4
SHARED_LIBS=		pcre++ 1.0

CATEGORIES=		devel
HOMEPAGE=		http://www.daemon.de/PCRE

MASTER_SITES=		http://www.daemon.de/idisk/Apps/pcre++/

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes

# XXX doesn't seem to actually link against libpcre?
LIB_DEPENDS =		devel/pcre
WANTLIB =		pcre m stdc++

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=      	Yes
USE_GROFF =		Yes

do-test:
	@cd ${WRKBUILD}/test && ./test testinput

.include <bsd.port.mk>
