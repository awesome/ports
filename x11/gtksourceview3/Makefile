# $OpenBSD: Makefile,v 1.58 2016/11/27 11:39:34 jasper Exp $

COMMENT=		text widget that extends the GTK3 GtkTextView widget

GNOME_PROJECT=		gtksourceview
GNOME_VERSION=		3.22.2
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS +=	gtksourceview-3.0    3.4      # .8.0
CATEGORIES=		x11

MAJOR_VERSION=		3.0
SUBST_VARS=		MAJOR_VERSION

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz epoxy
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z lzma

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		textproc/itstool
LIB_DEPENDS=		textproc/libxml \
			x11/gtk+3

MODGNOME_TOOLS +=	gobject-introspection vala

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
