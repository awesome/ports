# $OpenBSD: Makefile,v 1.22 2016/03/23 09:50:00 sthen Exp $

COMMENT=	premier dockable radio tuner

DISTNAME=	wmtune-1.1c
REVISION=	5
CATEGORIES=	audio x11 x11/windowmaker

HOMEPAGE=	http://www.soren.org/linux/wmtune/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}dl/

MAKE_ENV=		CC="${CC}"

FLAVORS=		zoltrix
FLAVOR?=

WRKDIST=		${WRKDIR}/wmtune-1.0.1-combined/

post-extract:
	@cp ${FILESDIR}/wmtune.1 ${WRKDIST}

NO_TEST=		Yes

.include <bsd.port.mk>
