# $OpenBSD: Makefile,v 1.19 2015/11/24 09:11:05 jasper Exp $

COMMENT =	Tcl implementation for the CLR

V =		1.0
P =		5749.32588
DISTNAME =	eagle-${V}
PKGNAME =	${DISTNAME}-beta34
CATEGORIES =	lang lang/tcl
HOMEPAGE =	http://eagle.to/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=eagle/} \
		${HOMEPAGE:=releases/${V}.${P}/} \
		https://distfiles.nl/
DISTFILES =	EagleBinaryMonoOnUnix${V}.${P}.rar
EXTRACT_CASES =	*.rar) ${LOCALBASE}/bin/unrar x -idq ${DISTDIR}/$$archive;;

MODULES =	lang/mono
MODMONO_DEPS =	No

BUILD_DEPENDS =	archivers/unrar
RUN_DEPENDS =	${MODMONO_RUN_DEPENDS}
TEST_DEPENDS =	${MODMONO_RUN_DEPENDS}

TEST_IS_INTERACTIVE = X11

NO_BUILD =	Yes
WRKSRC =	${WRKDIR}/Eagle

EAGLE_DIR =	libdata/Eagle
EAGLE_INS_DIR = ${PREFIX}/${EAGLE_DIR}
EAGLE_BIN_DIR =	${EAGLE_INS_DIR}/bin
EAGLE_LIB_DIR =	${EAGLE_INS_DIR}/lib/Eagle${V}
EAGLE_BIN =	${PREFIX}/bin/eagle

# Skip tests that are too timing-sensitive to succeed everywhere
EAGLE_TEST_FLAGS = -notFile 'benchmark.eagle perf*.eagle'

# Skip tests that may hang or fail due to pthread and/or Mono issues
EAGLE_TEST_FLAGS += -skip 'interp-1.72 object-8.108 object-10.* socket-2.2'

do-install:
	${INSTALL_DATA_DIR} ${EAGLE_BIN_DIR} ${EAGLE_LIB_DIR}
.for SRC GLOB DEST in \
		bin		*		${EAGLE_BIN_DIR} \
		lib/Eagle${V}	*		${EAGLE_LIB_DIR} \
		.		license.terms	${EAGLE_INS_DIR}

	${INSTALL_DATA} ${WRKSRC}/${SRC}/${GLOB} ${DEST}
.endfor
	echo '#! /bin/sh' > ${EAGLE_BIN}
	echo 'exec mono ${TRUEPREFIX}/${EAGLE_DIR}/bin/EagleShell.exe $${1+"$$@"}' >> ${EAGLE_BIN}
	chown ${BINOWN}:${BINGRP} ${EAGLE_BIN}
	chmod ${BINMODE} ${EAGLE_BIN}
	rm ${EAGLE_BIN_DIR}/EagleShell32.exe

# "-namespaces 1" enables namespace tests
# "set no(bigLists) 1" avoids oom problems
# "set no(exec) 1; set no(compileCSharp) 1" is needed to work around Mono bugs
# "set test_log {}" disables logging test results to a file
# "set test_(all_)path {...}" work around Eagle test bugs
do-test:
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
	${LOCALBASE}/bin/mono ${WRKSRC}/bin/EagleShell.exe \
	-namespaces 1 \
	-preInitialize 'set no(bigLists) 1; set no(exec) 1; set no(compileCSharp) 1; set test_log {}' \
	-preInitialize 'set test_path {${WRKSRC}/Tests}; set test_all_path {${WRKSRC}/lib/Test1.0}' \
	-file ${WRKSRC}/Tests/all.eagle \
	${EAGLE_TEST_FLAGS}

.include <bsd.port.mk>
