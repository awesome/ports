# $OpenBSD: Makefile,v 1.18 2016/04/25 08:13:10 jasper Exp $

COMMENT=	convenience library for the geocoding

GNOME_VERSION=	3.20.1
GNOME_PROJECT=	geocode-glib

SHARED_LIBS +=	geocode-glib         0.0      # 0.0

CATEGORIES=	geo

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 json-glib-1.0
WANTLIB += lzma m pcre pthread soup-2.4 sqlite3 xml2 z

LIB_DEPENDS=	devel/json-glib>=1.0.0 \
		devel/libsoup

MODGNOME_TOOLS += gobject-introspection gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

PORTHOME=	${WRKDIST}

.include <bsd.port.mk>
