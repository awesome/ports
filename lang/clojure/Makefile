# $OpenBSD: Makefile,v 1.28 2016/01/30 09:31:59 jasper Exp $

COMMENT =		Lisp-1 dialect for the Java Virtual Machine

GH_ACCOUNT =		clojure
GH_PROJECT =		clojure
GH_TAGNAME =		${GH_PROJECT}-1.8.0
REVISION =		0
DISTNAME =		${GH_TAGNAME}

PKG_ARCH =		*

CATEGORIES =		lang

HOMEPAGE =		http://www.clojure.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Eclipse Public License EPL 1.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		java
MODJAVA_VER =		1.6+
MODJAVA_BUILD = 	ant
MODJAVA_BUILD_TARGET_NAME =	jar
MODJAVA_JRERUN = 	Yes

WRKDIST =		${WRKDIR}/clojure-${DISTNAME}/

RUN_DEPENDS =		java/javaPathHelper \
			misc/rlwrap

# Tests fail to compile (and need JAX-WS)
NO_TEST =		Yes

CLOJURE_HOME =		${PREFIX}/clojure

# Maintainer target to generate completions file
completions: install
	${LOCALBASE}/bin/clojure ${FILESDIR}/clj_completions.clj

do-install:
	${INSTALL_DATA_DIR} ${CLOJURE_HOME}
	${INSTALL_DATA} ${WRKSRC}/clojure.jar ${CLOJURE_HOME}
	@${SUBST_PROGRAM} ${FILESDIR}/clojure \
		${PREFIX}/bin/clojure
	cd ${WRKDIST} && tar -cf - src | tar -C ${CLOJURE_HOME} -xf -
	chown -R ${SHAREOWN}:${SHAREGRP} ${CLOJURE_HOME}/src
	chmod -R a+r ${CLOJURE_HOME}/src
	${INSTALL_DATA} ${FILESDIR}/clj_completions ${CLOJURE_HOME}

.include <bsd.port.mk>
