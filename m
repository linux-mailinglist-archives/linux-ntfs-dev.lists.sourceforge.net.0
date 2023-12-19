Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7F2818627
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Dec 2023 12:17:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rFY5x-0007ed-VN;
	Tue, 19 Dec 2023 11:17:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1rFS7g-0001XJ-Ry
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Dec 2023 04:54:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YEGuvprQ3dTZw1JyhXzIpAPhUvuaG4lj/1PCwJqLmsU=; b=MI2wNy3RNpis28cPFE59b11C1s
 oY6FhXoe9wO+ZfcFYwLAsApkpxgFmI9O2PGJDM8lDALoSS3y9J2MqwEymDHx0wB/yCMPc9LDShxe7
 VySY5u7OtPb8XjgDScQDVxV3f98VT3xYnNo1y5JVnRy4OtJsTTD4+bAeJgmgLYUfo84o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YEGuvprQ3dTZw1JyhXzIpAPhUvuaG4lj/1PCwJqLmsU=; b=c
 DruIE7Znvd3pcQeiC6oNLS3X1Kn+2Mq7TTvlVIF/i/+Ns9v/YwTgAZxuPV0amP+zeL9VmUB5WHtRI
 D/znHAmQ7/Jd0DDCmCAx8yNjMX4m3FenJ9RZJ5lMggftdqmJYLDBNOdIwzIMHETxlvngqN9LdaZmN
 5SzL07iqmI6DJc+w=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFS7g-00049U-9L for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Dec 2023 04:54:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=YEGuvprQ3dTZw1JyhXzIpAPhUvuaG4lj/1PCwJqLmsU=; b=E9SpQ03xB6fI5bC3pH27Slea9p
 X6RbEVvKPJKL0aO9jpblnfckeZQU75LiYMUWUxROTZ0zyZWSOc7Yjc7QAzzFf/VUzMcqpFuCjpbrM
 LysbfQvcP2Ig8PFMcGSUI5loo+zSszL3FcP+QvwonBF8Y+WUamOel8leVVo6A+q2a/e46KlukfuEo
 0jlbNR478vdlxsq9PIDM7WRQv6mwN6pH7xc2Fwa1ApW+aY7GKed9QcxMAK6Q01tpJ2uS0GjfYw67Q
 aMNMVKidLv/r3nC1iMLF8eg1PtmwXd9luExg058pO8vgrx4eMmXPqGd07f8PUytnyOtLAMiPR498O
 8sHo4XWA==;
Received: from [50.53.46.231] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1rFS7T-00CqDi-0v; Tue, 19 Dec 2023 04:54:15 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 18 Dec 2023 20:54:14 -0800
Message-ID: <20231219045414.24670-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Correct the kernel-doc function parameter warnings for
 function
 ntfs_dir_fsync() to prevent the following kernel-doc warnings: dir.c:1489:
 warning: Function parameter or member 'start' not described in
 'ntfs_dir_fsync'
 dir.c:1489: warning: Function parameter or member 'end' not described in
 'ntfs_dir_fsync' dir.c:1489: warnin [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFS7g-00049U-9L
X-Mailman-Approved-At: Tue, 19 Dec 2023 11:17:03 +0000
Subject: [Linux-ntfs-dev] [PATCH] ntfs: dir.c: fix kernel-doc function
 parameter warnings
X-BeenThere: linux-ntfs-dev@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "Discussion related to Linux NTFS development."
 <linux-ntfs-dev.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux-ntfs-dev>, 
 <mailto:linux-ntfs-dev-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux-ntfs-dev>
List-Post: <mailto:linux-ntfs-dev@lists.sourceforge.net>
List-Help: <mailto:linux-ntfs-dev-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev>, 
 <mailto:linux-ntfs-dev-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Correct the kernel-doc function parameter warnings for function
ntfs_dir_fsync() to prevent the following kernel-doc warnings:

dir.c:1489: warning: Function parameter or member 'start' not described in 'ntfs_dir_fsync'
dir.c:1489: warning: Function parameter or member 'end' not described in 'ntfs_dir_fsync'
dir.c:1489: warning: Excess function parameter 'dentry' description in 'ntfs_dir_fsync'

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: Namjae Jeon <linkinjeon@kernel.org>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: Andrew Morton <akpm@linux-foundation.org>
---
 fs/ntfs/dir.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff -- a/fs/ntfs/dir.c b/fs/ntfs/dir.c
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -1462,7 +1462,8 @@ static int ntfs_dir_open(struct inode *v
 /**
  * ntfs_dir_fsync - sync a directory to disk
  * @filp:	directory to be synced
- * @dentry:	dentry describing the directory to sync
+ * @start:	offset in bytes of the beginning of data range to sync
+ * @end:	offset in bytes of the end of data range (inclusive)
  * @datasync:	if non-zero only flush user data and not metadata
  *
  * Data integrity sync of a directory to disk.  Used for fsync, fdatasync, and


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
