# $OpenBSD: Makefile,v 1.16 2016/10/01 11:54:14 naddy Exp $

COMMENT=	open-source electronics prototyping platform

V=		1.0.2
PKGNAME=	arduino-${V}
# Arduino uses the ARDUINO macro to control the renaming scheme they did
# on 1.0.x, from WProgram.h to Arduino.h, this is defined in files/Makefile.
# If updating the port, check whether this needs to be adjusted.
DISTNAME=	arduino-${V}-src
EPOCH=		0
REVISION =	5
CATEGORIES=	devel
HOMEPAGE=	http://www.arduino.cc/

# arduino core + libraries: LGPLv2.1
# frontend application: GPLv2 (not shipped yet)
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=arduino/}

RUN_DEPENDS=	devel/avr/binutils \
		devel/avr/gcc \
		devel/avr/libc \
		devel/avrdude

BUILD_DEPENDS=	archivers/unzip

NO_BUILD=       Yes
NO_TEST=     Yes
PKG_ARCH=       *
WRKDIST=	${WRKDIR}/arduino-${V}

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc,examples}/arduino
	@${SUBST_CMD} -m ${BINMODE} -c ${FILESDIR}/arduinoboot \
                ${PREFIX}/bin/arduinoboot
	@${SUBST_CMD} -m ${BINMODE} -c ${FILESDIR}/arduinoproject \
                ${PREFIX}/bin/arduinoproject
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*
	@chmod ${BINMODE} ${PREFIX}/bin/*
	@${SUBST_CMD} -m 444 -c ${FILESDIR}/Makefile \
                ${PREFIX}/share/examples/arduino/Makefile
	@${SUBST_CMD} -m 444 -c ${FILESDIR}/template.ino \
                ${PREFIX}/share/examples/arduino/template.ino
	@chmod	a+r ${PREFIX}/share/examples/arduino/*
	@cp -r	${WRKSRC}/build/shared/examples/* \
		${PREFIX}/share/examples/arduino
	@cp -r	${WRKSRC}/hardware/arduino/* \
		${PREFIX}/share/arduino
	@cp -r	${WRKSRC}/libraries \
		${PREFIX}/share/arduino
	@cp -r	${WRKSRC}/{license,readme,todo}.txt \
		${PREFIX}/share/doc/arduino
	@unzip	-qnd ${PREFIX}/share/doc/arduino \
		${WRKSRC}/build/shared/reference.zip
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	@find ${PREFIX} -type f -name \*.orig -exec rm '{}' \;

.include <bsd.port.mk>
