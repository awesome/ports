# $OpenBSD: Makefile,v 1.58 2015/04/21 18:33:48 sthen Exp $

PORTROACH=		limit:^2\.28

COMMENT=		Python bindings for glib2 gobject (deprecated)

GNOME_PROJECT=		pygobject
GNOME_VERSION=		2.28.6
EXTRACT_SUFX=		.tar.bz2

PKGNAME=		py-gobject-${GNOME_VERSION}
EPOCH=			0
REVISION=		6

CATEGORIES=		devel

SHARED_LIBS +=  pyglib-2.0-python${MODPY_VERSION} 2.0      # .0.0

HOMEPAGE=		http://www.pygtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 pcre
WANTLIB += pthread z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_IS_INTERACTIVE=	x11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/pygobject/2.0/codegen

.include <bsd.port.mk>
