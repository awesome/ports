# $OpenBSD: Makefile,v 1.15 2016/08/20 11:59:50 ajacoutot Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.3.4
CATEGORIES=	textproc
MASTER_SITES=	http://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	ebml	3.0

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m stdc++

USE_GMAKE=	Yes
USE_LIBTOOL=	gnu
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
