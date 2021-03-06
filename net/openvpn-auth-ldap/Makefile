# $OpenBSD: Makefile,v 1.9 2016/11/12 21:18:05 jca Exp $

COMMENT =		LDAP authentication plugin for OpenVPN 2.x

VERSION =		2.0.3
REVISION =		3
DISTNAME =		auth-ldap-${VERSION}
PKGNAME =		openvpn-${DISTNAME}
CATEGORIES =		net security

HOMEPAGE =		https://github.com/threerings/openvpn-auth-ldap

MAINTAINER =		Joel Sing <jsing@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB =		lber ldap objc

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=openvpn-auth-ldap/}

RUN_DEPENDS =		net/openvpn
LIB_DEPENDS =		databases/openldap
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/check \
			devel/re2c

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS += --prefix=${LOCALBASE} \
		  --with-check=${LOCALBASE} \
		  --with-openldap=${LOCALBASE} \
		  --with-openvpn=${LOCALBASE}/include/openvpn

TEST_TARGET =		test

SAMPLES_DIR =		${PREFIX}/share/examples/openvpn-auth-ldap

post-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/auth-ldap.conf ${SAMPLES_DIR}/auth-ldap.conf

.include <bsd.port.mk>
