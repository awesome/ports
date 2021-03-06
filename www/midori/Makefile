# $OpenBSD: Makefile,v 1.76 2016/11/04 10:00:21 landry Exp $

COMMENT =	lightweight web browser

XFCE_VERSION =	0.5.11
XFCE_GOODIE =	midori
DISTNAME =	midori_0.5.11_all_
WRKDIST =	${WRKDIR}/${PKGNAME}
REVISION =	0

HOMEPAGE =	http://www.midori-browser.org
MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	www
SHARED_LIBS +=	midori-core 0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4 devel/cmake
MASTER_SITES =	http://midori-browser.org/downloads/

MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE =	Yes
NO_TEST =	Yes

FLAVORS =	gtk3
FLAVOR ?=

CONFIGURE_ARGS = -DUSE_ZEITGEIST:Bool=No

.if ${FLAVOR:Mgtk3}
CONFIGURE_ARGS += -DUSE_GTK3:Bool=Yes
LIB_DEPENDS =	www/webkit,gtk3>=2.4.8p3v1 \
		x11/gnome/gcr
WANTLIB += cairo-gobject gcr-ui-3 gdk-3 gtk-3 javascriptcoregtk-3.0 webkitgtk-3.0

.else
LIB_DEPENDS =	www/webkit>=1.8.1v0
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 javascriptcoregtk-1.0
WANTLIB += webkitgtk-1.0 pangoft2-1.0 freetype fontconfig z

.endif

LIB_DEPENDS +=	devel/libsoup>=2.28.0

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

BUILD_DEPENDS =	lang/vala \
		x11/gnome/librsvg

WANTLIB += X11 Xss atk-1.0 c cairo
WANTLIB += gdk_pixbuf-2.0 pangocairo-1.0 intl
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pango-1.0 xml2 gck-1 gcr-base-3 p11-kit
WANTLIB += soup-2.4 sqlite3 soup-gnome-2.4

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
