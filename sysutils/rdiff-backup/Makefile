#	$OpenBSD: Makefile,v 1.20 2015/08/24 10:01:10 sthen Exp $

COMMENT = 	incremental backup

MODPY_EGG_VERSION =	1.2.8
DISTNAME =	rdiff-backup-${MODPY_EGG_VERSION}
REVISION =	7
CATEGORIES =	sysutils

HOMEPAGE = 	http://www.nongnu.org/rdiff-backup/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB +=		rsync pthread ${MODPY_WANTLIB}

LIB_DEPENDS += 		net/librsync

MASTER_SITES = 		${MASTER_SITE_SAVANNAH:=rdiff-backup/}

MODULES	= 		lang/python

USE_GROFF =		Yes
NO_TEST = 		Yes

.include <bsd.port.mk>
