#	from: @(#)Makefile	5.7 (Berkeley) 4/1/91
#	$OpenBSD: Makefile,v 1.47 2012/01/05 23:03:57 schwarze Exp $

.include <bsd.own.mk>

SUBDIR=	comsat fingerd ftpd getty identd lockspool \
	mail.local rpc.rquotad rpc.rstatd rpc.rusersd \
	rpc.rwalld rpc.sprayd security spamd spamlogd spamd-setup rshd \
	talkd tcpd tftp-proxy tftpd uucpd

SUBDIR+=login_passwd login_skey login_reject login_chpass \
	login_lchpass login_token login_radius login_tis

.if (${YP:L} == "yes")
SUBDIR+=rpc.yppasswdd
.endif

.if (${ELF_TOOLCHAIN:L} == "yes")
SUBDIR+=ld.so
.endif

.if (${KERBEROS5:L} == "yes")
SUBDIR+=login_krb5 login_krb5-or-pwd
.endif

.include <bsd.subdir.mk>
