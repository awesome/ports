# $OpenBSD: Makefile,v 1.40 2016/11/09 14:53:00 jca Exp $

COMMENT=	image manipulation library

DISTNAME=	imlib2-1.4.9
SHARED_LIBS=	Imlib2	6.0	# .5.9
CATEGORIES=	graphics

HOMEPAGE=	http://www.enlightenment.org/p.php?p=about/libs/imlib2&l=en

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

WANTLIB=	X11 Xext c freetype m xcb z \
		jpeg>=62 gif>=5 png>=2 tiff>=35 bz2 id3tag>=3
LIB_DEPENDS+=	graphics/jpeg \
		graphics/giflib \
		graphics/png \
		graphics/tiff \
		archivers/bzip2 \
		audio/libid3tag

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/lib/imlib2/filters/*.la ${PREFIX}/lib/imlib2/loaders/*.la

.include <bsd.port.mk>
