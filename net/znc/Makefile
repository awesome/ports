# $OpenBSD: Makefile,v 1.30 2016/03/18 23:12:19 naddy Exp $

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-1.6.3
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://znc.in/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pthread ssl z

MODULES=	gcc4

MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

MAKE_FLAGS=	VERBOSE=1

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-charset \
		--disable-optimization
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_GNUMAKE=gmake

NO_TEST=	Yes

.include <bsd.port.mk>
