# $OpenBSD: Makefile,v 1.21 2016/05/28 21:19:16 tim Exp $

COMMENT =		audio codec for lossless, lossy and hybrid compression

DISTNAME =		wavpack-4.80.0
CATEGORIES =		audio

HOMEPAGE =		http://www.wavpack.com/

MAINTAINER =		Tim van der Molen <tim@openbsd.org>

SHARED_LIBS +=		wavpack		0.1	# 2.8

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c iconv m

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		converters/libiconv

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-tests
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/bin/wvtest

do-test:
	${WRKBUILD}/cli/wvtest --default

.include <bsd.port.mk>
