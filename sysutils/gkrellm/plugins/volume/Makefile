# $OpenBSD: Makefile,v 1.23 2015/06/26 18:08:40 ajacoutot Exp $

COMMENT=	volume dial for Gkrellm2

V=		2.1.13
DISTNAME=	gkrellm-volume-${V}
PKGNAME=	gkrellmvolume-${V}
REVISION=	10
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/volume.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

EXTRA_WANTLIB=	gthread-2.0 ossaudio

MAKE_FLAGS=	SYSLIB="-lossaudio"
WRKDIST=	${WRKDIR}/gkrellm-volume
PLUGIN=		${WRKSRC}/volume.so

.include <bsd.port.mk>
