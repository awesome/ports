# $OpenBSD: Makefile,v 1.5 2016/06/30 11:51:06 espie Exp $

COMMENT =	backup mysql database directly from drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	backup_migrate-7.x-2.8
PKGNAME =	drupal7-backup-migrate-2.8
REVISION =	0

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
