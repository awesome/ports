# $OpenBSD: Makefile,v 1.45 2015/12/20 15:40:17 naddy Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc sparc64

COMMENT =		ANSI Common Lisp implementation

DISTNAME=		clisp-2.49
CATEGORIES=		lang
HOMEPAGE=		http://clisp.cons.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

LIB_DEPENDS =		devel/libsigsegv \
			devel/ffcall>=1.10p1
WANTLIB =		avcall c callback m ncurses readline sigsegv

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=		.tar.bz2

USE_GMAKE=		Yes
USE_GROFF =		Yes

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=		--fsstnd=openbsd \
			--disable-mmap \
			--with-gettext \
			--mandir=${PREFIX}/man \
			--docdir=${PREFIX}/share/doc/clisp \
			--elispdir=${PREFIX}/share/emacs/site-lisp \
			--vimdir=${PREFIX}/share/doc/clisp \
			--srcdir=${WRKSRC} ${WRKBUILD} \
			--without-dynamic-modules

CONFIGURE_ENV =		ac_cv_prog_DVIPDF='' \
			ac_cv_prog_PS2PDF=''

.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=		-DSAFETY=2 -DNO_ASM -mcmodel=medany
.endif

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--with-gmalloc
CFLAGS +=		-fno-pie -nopie
LDFLAGS +=		-nopie
.else
CONFIGURE_ARGS +=	--without-gmalloc
.endif

pre-build:
	ln -sf ${LOCALBASE}/bin/gmake ${WRKDIR}/bin/make

.include <bsd.port.mk>
