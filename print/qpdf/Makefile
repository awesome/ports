# $OpenBSD: Makefile,v 1.16 2016/03/11 19:59:16 naddy Exp $

COMMENT=	PDF transformation and inspection utility

DISTNAME=	qpdf-6.0.0

SHARED_LIBS +=  qpdf                 3.0      # 17.0

CATEGORIES=	print graphics

HOMEPAGE=	http://qpdf.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Artistic License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pcre stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qpdf/}

USE_GMAKE=	Yes

SUBST_VARS=	MAKE_PROGRAM

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
