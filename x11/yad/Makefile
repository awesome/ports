# $OpenBSD: Makefile,v 1.14 2016/08/27 14:30:06 jca Exp $

COMMENT=		display graphical dialogs from shell scripts or command line

DISTNAME=		yad-0.37.0
REVISION=		0
CATEGORIES=		x11

HOMEPAGE=		http://sourceforge.net/projects/yad-dialog/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=yad-dialog/}
EXTRACT_SUFX=		.tar.xz

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl pango-1.0 pangocairo-1.0
WANTLIB += pthread

MODULES=		textproc/intltool

USE_GMAKE=		Yes

LIB_DEPENDS=		devel/gettext \
			x11/gtk+3
RUN_DEPENDS=		x11/gtk+3,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gtk=gtk3 \
			--disable-html \
			--with-rgb=${X11BASE}/share/X11/rgb.txt
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
