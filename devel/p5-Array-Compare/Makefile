# $OpenBSD: Makefile,v 1.19 2016/09/02 22:31:12 ajacoutot Exp $

COMMENT=	Perl module for comparing arrays

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Array-Compare-2.12
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	DAVECROSS

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-NoWarnings
RUN_DEPENDS=	devel/p5-Moo \
		devel/p5-Type-Tiny

TEST_DEPENDS=	devel/p5-Test-NoWarnings

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
