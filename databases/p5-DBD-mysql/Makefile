# $OpenBSD: Makefile,v 1.50 2016/12/01 08:36:28 giovanni Exp $

COMMENT=		MySQL drivers for the Perl DBI

DISTNAME=		DBD-mysql-4.041
CATEGORIES=		databases

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

MODULES=		cpan databases/mariadb
CPAN_AUTHOR=		MICHIELB

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m perl pthread ssl z

BUILD_DEPENDS=		databases/p5-DBI>=1.08
RUN_DEPENDS=		databases/p5-DBI>=1.08
LIB_DEPENDS=		databases/mariadb
TEST_DEPENDS=		databases/mariadb,-server \
			devel/p5-Test-Deep \
			sysutils/p5-Proc-ProcessTable
TEST_ENV=		EXTENDED_TESTING=1
WANTLIB +=		lib/mysql/mysqlclient

.include <bsd.port.mk>
