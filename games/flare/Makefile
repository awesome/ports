# $OpenBSD: Makefile,v 1.6 2015/03/27 08:41:05 ajacoutot Exp $

COMMENT =		free/libre action roleplaying engine

V =			0.19
PKGNAME =		flare-${V}
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://flarerpg.org

# code GPLv3+, data CC BY-SA 3.0+
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

WANTLIB +=		SDL SDL_image SDL_mixer SDL_ttf c m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=flare-game/}
DISTFILES =		flare-engine.${V}.tar.gz \
			flare-game.${V}.tar.gz

MODULES =		devel/cmake
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_ARGS =	-DBINDIR=bin \
			-DDATADIR=share/flare \
			-DMANDIR=man

WRKSRC =		${WRKDIR}/flare-engine.${V}

NO_TEST =		Yes

post-install:
	cp -R ${WRKDIR}/flare-game.${V}/mods/* \
		${PREFIX}/share/flare/default/mods

.include <bsd.port.mk>
