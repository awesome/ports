# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:58 naddy Exp $

COMMENT=	Perl module to authenticate against a RADIUS server

MODULES=	cpan
PKG_ARCH=	*
V=		0.22
DISTNAME=	RadiusPerl-$V
PKGNAME=	p5-Authen-Radius-$V
CATEGORIES=	security

REVISION=	0

MAINTAINER=	Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Authen/}
WRKDIST=	${WRKDIR}/Authen-Radius-$V

RUN_DEPENDS=	security/p5-MD5>=1.7 \
		devel/p5-Data-HexDump>=0.02
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_IS_INTERACTIVE=	Yes

pre-configure:
	perl -pi -e \
	    s,/etc/raddb,${WRKINST}/${PREFIX}/share/examples/p5-Authen-Radius, \
	    ${WRKSRC}/install-radius-db.PL

do-test:
	cd ${WRKSRC} && (echo localhost; echo secret; echo username; \
	    echo password) | perl test.pl

.include <bsd.port.mk>
