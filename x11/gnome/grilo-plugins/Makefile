# $OpenBSD: Makefile,v 1.63 2016/11/04 11:35:21 sthen Exp $

# XXX: PORTROACH overriden at end of this file.

TRACKER_API=	1.0

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.3.3
REVISION=	0

API=		0.3
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += bz2 crypto curl dbus-1 expat ffi gck-1 gcr-base-3 gcrypt
WANTLIB += gdata gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += goa-1.0 gobject-2.0 gpg-error grilo-0.3 grlnet-0.3
WANTLIB += grlpls-0.3 gthread-2.0 iconv icudata icui18n icuuc
WANTLIB += intl json-glib-1.0 kvm lz4 lzma lzo2 m mediaart-2.0
WANTLIB += nghttp2 nspr4 nss3 oauth p11-kit pcre plc4 plds4 png
WANTLIB += pthread smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 totem-plparser
WANTLIB += uuid xml2 z
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

MODULES=	x11/gnome

LIB_DEPENDS=	devel/libgdata \
		mail/gmime \
		security/nss \
		x11/gnome/grilo>=0.3.0 \
		x11/gnome/libmediaart \
		x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=	net/dleyna/server

MODGNOME_TOOLS=	yelp

post-install:
	rm ${PREFIX}/lib/grilo-${API}/*.{a,la}

.include <bsd.port.mk>

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=      #empty
