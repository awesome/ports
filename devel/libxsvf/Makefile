# $OpenBSD: Makefile,v 1.4 2015/11/24 09:11:04 jasper Exp $

COMMENT=	library and tools for creating SVF and XSVF JTAG players

# svn rev 62
DISTNAME=	libxsvf-0.0.62
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	http://www.clifford.at/libxsvf/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://distfiles.nl/

WANTLIB += c ftdi pthread readline termcap usb

LIB_DEPENDS=	devel/libftdi

USE_GMAKE=	Yes

MAKE_FLAGS+=	EXTRA_LDFLAGS+="-L${LOCALBASE}/lib/ -ltermcap -pthread" \
		EXTRA_CFLAGS+="-I${LOCALBASE}/include/"

NO_TEST=	Yes

XPCU_DOC=	README *.sh *.ihx *.inc *.v *.ucf *.svf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xsvftool-{bp,ft2232h,gpio,xpcu} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libxsvf/
	${INSTALL_DATA} ${WRKSRC}/xsvftool-{bp,ft2232h,gpio}.c \
		${PREFIX}/share/examples/libxsvf/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libxsvf/xsvftool-xpcu/
.for d in ${XPCU_DOC}
	${INSTALL_DATA} ${WRKSRC}/xsvftool-xpcu.src/$d \
		${PREFIX}/share/doc/libxsvf/xsvftool-xpcu/
.endfor
	${INSTALL_DATA} ${WRKSRC}/libxsvf.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libxsvf.a ${PREFIX}/lib

.include <bsd.port.mk>
