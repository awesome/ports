# $OpenBSD: Makefile,v 1.130 2017/01/08 01:59:49 bluhm Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

ONLY_FOR_ARCHS = ${LLVM_ARCHS}

DPB_PROPERTIES = parallel

MULTI_PACKAGES =	-main -python
COMMENT-main =	modular, fast C/C++/ObjC compiler, static analyzer and tools
COMMENT-python =	Python bindings for Clang

LLVM_V =	3.9.1
REVISION-main =	0
DISTNAME =	llvm-${LLVM_V}.src
PKGNAME =	llvm-${LLVM_V}
PKGNAME-main =	llvm-${LLVM_V}
PKGNAME-python =	py-llvm-${LLVM_V}
CATEGORIES =	devel
DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		cfe-${LLVM_V}.src${EXTRACT_SUFX} \
		lld-${LLVM_V}.src${EXTRACT_SUFX}
MASTER_SITES =	http://www.llvm.org/releases/${LLVM_V}/
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS =	clang		4.0 \
		LTO		1.0

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m pthread z

MODULES =	devel/cmake \
		lang/python \
		gcc4

MODGCC4_LANGS = c c++
MODGCC4_ARCHS = *

TEST_DEPENDS =		devel/dejagnu \
			shells/bash \
			lang/gcc/${MODGCC4_VERSION},-c++
BUILD_DEPENDS +=	textproc/py-sphinx
RUN_DEPENDS +=		devel/gtest \
			lang/gcc/${MODGCC4_VERSION},-c++

# clang python module loads libclang.so dynamically with cdll.LoadLibrary()
WANTLIB-python =	clang
RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS}
LIB_DEPENDS-python =	${BUILD_PKGPATH},-main

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DLLVM_ENABLE_TERMINFO:Bool=False \
			-DLLVM_REQUIRES_RTTI:Bool=True \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2:Bool=True \
			-DGO_EXECUTABLE=GO_EXECUTABLE-NOTFOUND

# Workaround relocation overflow
#
# Have the build disable PIE to workaround breakage that was
# introduced when PIE was enabled
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="-Wl,--relax -nopie"
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="-Wl,--relax -nopie"
.endif

TEST_TARGET =		check

# XXX sync
GCC_VER =		4.9.4
.if ${MACHINE_ARCH} == "amd64"
GCC_CONFIG =		x86_64-unknown-openbsd${OSREV}
.else
GCC_CONFIG =		${MACHINE_ARCH}-unknown-openbsd${OSREV}
.endif
CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V GCC_VER GCC_CONFIG

post-extract:
	mv ${WRKDIR}/cfe-${LLVM_V}.src ${WRKSRC}/tools/clang
	mv ${WRKDIR}/lld-${LLVM_V}.src ${WRKSRC}/tools/lld

.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "powerpc"
PKG_ARGS += -Dlld=1
.else
PKG_ARGS += -Dlld=0

post-patch:
	rm -r ${WRKSRC}/tools/lld
.endif

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/lib/Driver/ToolChains.cpp \
	    ${WRKSRC}/tools/clang/lib/Driver/Tools.cpp
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC}/docs && make -f Makefile.sphinx man
	cd ${WRKSRC}/tools/clang/docs && make -f Makefile.sphinx man

post-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/clang
	${INSTALL_DATA} ${WRKSRC}/tools/clang/bindings/python/clang/* \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/clang
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/clang
	${INSTALL_DATA} ${WRKSRC}/docs/_build/man/* \
	    ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/tools/clang/docs/_build/man/clang.1 \
	    ${PREFIX}/man/man1
	# lit and FileCheck are not installed
	@rm ${PREFIX}/man/man1/lit.1
	@rm ${PREFIX}/man/man1/FileCheck.1

.include <bsd.port.mk>
