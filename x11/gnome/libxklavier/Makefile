# $OpenBSD: Makefile,v 1.53 2016/04/28 09:37:23 jasper Exp $

COMMENT=		utility library for XKB

GNOME_PROJECT=		libxklavier
GNOME_VERSION=		5.3
REVISION=		3

SHARED_LIBS +=  xklavier             17.0     # .19.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/LibXklavier

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi ffi glib-2.0 gobject-2.0 lzma m pcre
WANTLIB += pthread xcb xkbfile xml2 z iconv intl

MODULES=		x11/gnome

MODGNOME_TOOLS +=	gobject-introspection
BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes
LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

CONFIGURE_ARGS+=	--with-xkb-base="${X11BASE}/share/X11/xkb/" \
			--with-xkb-bin-base="${X11BASE}/bin/" \
			--with-xmodmap-base="/usr/share/xmodmap"
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
