# $OpenBSD: Makefile,v 1.51 2016/11/07 10:44:15 ajacoutot Exp $

COMMENT=		color profile manager for GNOME

GNOME_PROJECT=		gnome-color-manager
GNOME_VERSION=		3.22.2

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 colord
WANTLIB += colord-gtk colordprivate dbus-1 epoxy exif exiv2 expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz hogweed iconv idn intl jpeg
WANTLIB += lcms2 ltdl m nettle ogg p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pcre2-8 pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ tasn1 tiff vorbis vorbisfile vte-2.91 xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/vte3 \
			graphics/colord-gtk \
			graphics/exiv2 \
			graphics/libexif

RUN_DEPENDS=		graphics/argyll \
			graphics/shared-color-targets

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

# XXX gcm-calibrate.sgml:1: parser error : StartTag: invalid element name
CONFIGURE_ENV +=	ac_cv_path_DOCBOOK2MAN=no

# our old gcc does not handle some of the warning flags
MAKE_FLAGS=		WARNINGFLAGS_C=

pre-configure:
	sed -i -e 's,/usr/share,${LOCALBASE}/share,g' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/src/{gcm-calibrate.c,gcm-calibrate-argyll.c,gcm-picker.c,gcm-calibrate-main.c}

.include <bsd.port.mk>
