#	from: @(#)Makefile	5.7 (Berkeley) 4/1/91
#	$OpenBSD: Makefile,v 1.44 2007/05/18 16:08:12 deraadt Exp $

.include <bsd.own.mk>

SUBDIR=	comsat fingerd ftpd getNAME getty identd lockspool \
	mail.local makewhatis rpc.rquotad rpc.rstatd rpc.rusersd \
	rpc.rwalld rpc.sprayd spamd spamlogd spamd-setup rshd \
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
