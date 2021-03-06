# $OpenBSD: Makefile,v 1.21 2016/10/12 11:56:53 sthen Exp $

COMMENT=		manage and configure devices that support IPMI

DISTNAME=		ipmitool-1.8.18
CATEGORIES=		sysutils

HOMEPAGE=		http://ipmitool.sourceforge.net/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m ncurses edit crypto c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ipmitool/}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS+=	--enable-intf-lan \
			--disable-intf-usb \
			--enable-intf-lanplus \
			--enable-intf-serial \
			--disable-intf-free \
			--disable-intf-imb \
			--disable-intf-lipmi \
			--disable-intf-bmc \
			--disable-intf-dummy

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--enable-intf-open
.else
CONFIGURE_ARGS+=	--disable-intf-open
.endif

pre-configure:
	cd ${WRKSRC}/contrib; sed -i 's,^#!/bin/bash,#!/bin/sh,' bmclanconf *.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipmitool/
	${INSTALL_DATA} ${WRKSRC}/contrib/README ${PREFIX}/share/ipmitool/
	cd ${WRKSRC}/contrib && ${INSTALL_SCRIPT} bmclanconf collect_data.sh \
	    create_rrds.sh create_webpage.sh create_webpage_compact.sh \
	    oem_ibm_sel_map ${PREFIX}/share/ipmitool/

.include <bsd.port.mk>
