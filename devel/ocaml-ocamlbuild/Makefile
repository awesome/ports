# $OpenBSD: Makefile,v 1.2 2016/07/06 21:31:53 sthen Exp $

COMMENT =	ocamlbuild
CATEGORIES =	devel

V =		0.9.2
GH_ACCOUNT =	ocaml
GH_PROJECT =	ocamlbuild
GH_TAGNAME =	${V}
DISTNAME =	${GH_PROJECT}-${V}
REVISION =	1

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MODULES =		lang/ocaml

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
MAKE_ENV += OCAML_NATIVE=true
.else
MAKE_ENV += OCAML_NATIVE=false
.endif


USE_GMAKE =		Yes

post-install:
	${INSTALL_DATA} \
		${WRKSRC}/man/ocamlbuild.1 \
		${PREFIX}/man/man1/

.include <bsd.port.mk>
