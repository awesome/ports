# $OpenBSD: Makefile,v 1.88 2016/09/06 11:26:07 jasper Exp $

PORTROACH=	limit:^2

COMMENT=	Ruby library for retrieving facts from operating systems

VERSION=	2.4.6
REVISION =	1
DISTNAME=	facter-${VERSION}
PKGSPEC=	facter->=2.0,<3.0
CATEGORIES=	sysutils

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

HOMEPAGE=	http://puppetlabs.com/puppet/related-projects/facter/
MASTER_SITES=	https://downloads.puppetlabs.com/facter/

# Apachev2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

NO_BUILD=	Yes
BUILD_DEPENDS=	lang/ruby/${MODRUBY_REV}
PKG_ARCH=	*

MODRUBY_REV =	2.2

#TEST_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR}
#BUILD_DEPENDS=	${MODRUBY_BUILD_DEPENDS}
#MODRUBY_TEST=	rake rspec3

pre-configure:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKSRC}/lib/facter/util/config.rb \
		${WRKSRC}/spec/unit/util/config_spec.rb

FAKE_FLAGS += HOME=${WRKDIR}/home

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-facter
	@cd ${WRKSRC} && \
		${ALL_FAKE_FLAGS} ${RUBY} install.rb --destdir=${WRKINST}
	${INSTALL_DATA} ${WRKSRC}/etc/facter.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-facter
	cd ${PREFIX}/man/man8 && gunzip facter.8.gz

.include <bsd.port.mk>
