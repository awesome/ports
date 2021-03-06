# $OpenBSD: Makefile,v 1.27 2017/01/08 09:06:50 ajacoutot Exp $

COMMENT=		code assistance services for GNOME

GNOME_PROJECT=		gnome-code-assistance
GNOME_VERSION=		3.16.1
REVISION=		3

CATEGORIES=		devel

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl pcre pthread vala-0.34 z

MODULES=		devel/dconf \
			lang/clang \
			lang/python \
			lang/ruby \
			x11/gnome

MODGNOME_TOOLS +=	vala
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/llvm>=${MODCLANG_VERSION} \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/ruby-dbus,${MODRUBY_FLAVOR}>=0.11.0 \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gnome/gjs

LIB_DEPENDS=		devel/libgee \
			lang/vala

CONFIGURE_ENV=		RUBY="${RUBY}"

# deps/src/github.com/guelfey/go.dbus/transport_unixcred.go:12: undefined: syscall.Ucred
# deps/src/github.com/guelfey/go.dbus/transport_unixcred.go:13: undefined: syscall.UnixCredentials
CONFIGURE_ARGS +=	--disable-go

# python3 vs. python3.3
post-extract:
	sed -i 's,PYTHON_VERSION_MAJOR,PYTHON_VERSION,g' ${WRKSRC}/backends/*/*.in

.include <bsd.port.mk>
