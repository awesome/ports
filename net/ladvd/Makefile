# $OpenBSD: Makefile,v 1.18 2015/10/05 16:29:02 sthen Exp $

COMMENT =		link advertisement (LLDP/CDP etc) daemon

DISTNAME =		ladvd-1.0.4
REVISION =		3
CATEGORIES =		net

HOMEPAGE =		http://blinkenlights.nl/software/ladvd/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

AUTOCONF_VERSION =	2.65
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--with-user=_ladvd --with-chroot-dir=/var/empty

WANTLIB =		c event pcap

# enables regression tests;  GNU configure script enables them
# only if devel/check is available at build time
BUILD_DEPENDS =		devel/check

.include <bsd.port.mk>
