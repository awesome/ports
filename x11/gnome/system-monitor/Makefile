# $OpenBSD: Makefile,v 1.68 2016/11/08 18:04:59 jasper Exp $

COMMENT=		sytem monitor for GNOME

GNOME_PROJECT=		gnome-system-monitor
GNOME_VERSION=		3.22.2

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atkmm-1.6
WANTLIB += atspi c cairo cairo-gobject cairomm-1.0 croco-0.6 dbus-1
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtkmm-3.0 gtop-2.0
WANTLIB += harfbuzz kvm m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 sigc-2.0 xcb xcb-render xcb-shm xml2
WANTLIB += z epoxy lzma intl iconv

MODULES=		devel/dconf \
			x11/gnome

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

LIB_DEPENDS=		devel/libgtop2>=2.30.0 \
			x11/gnome/librsvg \
			x11/gtk3mm

# share/polkit-1/actions/org.gnome.gnome-system-monitor.policy
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_ARGS=		--disable-systemd

.include <bsd.port.mk>
