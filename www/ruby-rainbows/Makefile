# $OpenBSD: Makefile,v 1.16 2016/01/03 16:43:47 jeremy Exp $

COMMENT =	ruby-unicorn for sleepy apps and slow clients

DISTNAME =	rainbows-5.0.0
CATEGORIES =	www

HOMEPAGE =	http://rainbows.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-kgio,${MODRUBY_FLAVOR}>=2.5,<3.0 \
		www/ruby-unicorn,${MODRUBY_FLAVOR}>=5.0,<6.0 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.1.0,<2.0

CONFIGURE_STYLE = ruby gem

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man/man1 && \
		mv rainbows.1 ${WRKINST}/${LOCALBASE}/man/man1/rainbows${GEM_MAN_SUFFIX}.1
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

.include <bsd.port.mk>
