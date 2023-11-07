Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BB47E8556
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zlc-0005AB-1Y;
	Fri, 10 Nov 2023 22:14:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1r0MO3-0000NB-1m for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 07 Nov 2023 13:44:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/5gC05e4XMKulFisOTxjnxNVi6Py98899nGmP/7FMrY=; b=HwIfEhvLOkRYzqSbv/h683x7n2
 3gOCMwSUzJoKUoOMnt5zlXm4Wg46rqRfxo0RTx4Wv29Jnq1QDAkjrJM19bOll1a6g1Lv1YBDwU+EA
 eKfh6LnD5/Pn60QF8gm1cvIgDJdyjK8PFpe8oKe2GCktgWo+GEu27KK01WuUvqxIgp/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/5gC05e4XMKulFisOTxjnxNVi6Py98899nGmP/7FMrY=; b=Q36nJCss33akzQxl4xWI+oJOnm
 zTs3ybNKD4Vmdsjeyd5RIZq77WXJsS9IvfqMG/K9vQKxV9UUuK6tOVX6VihG3Ej9WMXQ0pWsv+RsR
 rUJkrl02dc45uO2psSJmGXUycTRhtH8fSR/EUC+B1xkg8swJkO3Xij+hy9VEpRtQxCkw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0MNy-00A4Dh-PQ for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 07 Nov 2023 13:44:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CED3561204;
 Tue,  7 Nov 2023 13:44:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C744C433CC;
 Tue,  7 Nov 2023 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699364686;
 bh=oGAuwTicPekfqewJ5UASm1lSeWTImG5/jlwpiQOtNH4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=dlXsqceIaRjkuA5IeJHu+LQu++YmsXVE3wOhks2vu6pwQW2Yuf8y3fuqcGTDezhrh
 nLIn/Wct44n580U3lOHF++guKLo57NBlrLcH+CP8dKEVLZ7TvYqaScDG5YrvoJRlcF
 QgPdHEVU+DDWMpO0z/+MCEtZHfqSGC/yF8neQyIq+b23aVDal8cEH+L4fAKBF9V1t4
 cmYfhjd0G/XQ0kFMpKXwcp70TJIBGNrkZ8IQvIBRH32uQuYnIFVy55l62OUBQvZyJX
 7fYSb8VX8Bikhd65TQJy/X1zRGf2dQSPireqCR6fcSnCtrafJhV8meTgijuZW9O2fr
 kaneABMaHl3sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 876D6C4332F;
 Tue,  7 Nov 2023 13:44:46 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Tue, 07 Nov 2023 14:44:23 +0100
MIME-Version: 1.0
Message-Id: <20231107-jag-sysctl_remove_empty_elem_fs-v1-4-7176632fea9f@samsung.com>
References: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
In-Reply-To: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
To: Luis Chamberlain <mcgrof@kernel.org>, willy@infradead.org, 
 josh@joshtriplett.org, Kees Cook <keescook@chromium.org>, 
 David Howells <dhowells@redhat.com>, 
 Alexander Viro <viro@zeniv.linux.org.uk>, 
 Christian Brauner <brauner@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>, 
 Eric Biederman <ebiederm@xmission.com>, 
 Trond Myklebust <trond.myklebust@hammerspace.com>, 
 Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, 
 Jeff Layton <jlayton@kernel.org>, Neil Brown <neilb@suse.de>, 
 Olga Kornievskaia <kolga@netapp.com>, Dai Ngo <Dai.Ngo@oracle.com>, 
 Tom Talpey <tom@talpey.com>, Jan Kara <jack@suse.cz>, 
 Amir Goldstein <amir73il@gmail.com>, Matthew Bobrowski <repnop@google.com>, 
 Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>, 
 Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, 
 Joseph Qi <joseph.qi@linux.alibaba.com>, Iurii Zaikin <yzaikin@google.com>, 
 Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, 
 Chandan Babu R <chandan.babu@oracle.com>, 
 "Darrick J. Wong" <djwong@kernel.org>, Jan Harkes <jaharkes@cs.cmu.edu>, 
 coda@cs.cmu.edu
X-Mailer: b4 0.13-dev-86aa5
X-Developer-Signature: v=1; a=openpgp-sha256; l=826; i=j.granados@samsung.com; 
 h=from:subject:message-id;
 bh=EW/W6zZslOuVBpUJvlaE+2AnAGMLV/WhhzCxxx+6aVM=; 
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlSj9MEeSJSagXc2LHP4reG5okoVcP5ennQM0zz
 fLKCMA3zM2JAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZUo/TAAKCRC6l81St5ZB
 T+MEC/4ngnTz5jsk7DKSLQFBRxoyRmnmgQuCFEm3xLruOFhQ58fFGc3jLVQ4SRKcyMbZVYLnA/7
 92Pua+W916xF0apdkWSutPgZSVFWhE7LqCQB7OANStgZhAKgHWrkjFB8/KPiCDUTdrzG1jdHBd7
 qmw+js8kBekSLH5uC319PDTNTNRfVmu6Si2XVh4HdvnLe4xaz5yzzquq8kaZOcJEbVlPnVXBo3E
 CAy3CAkgj3SWfAzXFyi+Q3xPTvEdBH0vnOqRGR9mIcACCxTVTBlK/TyANrw989cT0ksz8sPCcvE
 MgG8c3gs8wYgbfHMjfQUURrWfZHWTUBhYBXrmma7XkJ2wabGHM5JWzXasay7RGMldjFLEAGwtTj
 Su3+/SkuiwYTpDZc5V8iLd1ewA6g1MSpAWHBJs0BBIMYPu2w52V9pE3e8/bK3QVeSs5NqBeZtYp
 qsORxK78HHwjx16fR/OQVoFLy3Nllnz0WIJoDHWKSbERarg3ey4XX+y7unPjuDW8RiLOk=
X-Developer-Key: i=j.granados@samsung.com; a=openpgp;
 fpr=F1F8E46D30F0F6C4A45FF4465895FAAC338C6E77
X-Endpoint-Received: by B4 Relay for j.granados@samsung.com/default with
 auth_id=70
X-Original-From: Joel Granados <j.granados@samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Joel Granados <j.granados@samsung.com> This commit
 comes
 at the tail end of a greater effort to remove the empty elements at the end
 of the ctl_table arrays (sentinels) which will reduce the overall build time
 size of the kernel and run ti [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0MNy-00A4Dh-PQ
X-Mailman-Approved-At: Fri, 10 Nov 2023 22:14:18 +0000
Subject: [Linux-ntfs-dev] [PATCH 4/4] coda: Remove the now superfluous
 sentinel elements from ctl_table array
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
Reply-To: j.granados@samsung.com
Cc: fsverity@lists.linux.dev, linux-aio@kvack.org, linux-nfs@vger.kernel.org,
 Joel Granados <j.granados@samsung.com>, ocfs2-devel@lists.linux.dev,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 codalist@coda.cs.cmu.edu, linux-xfs@vger.kernel.org, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Joel Granados <j.granados@samsung.com>

This commit comes at the tail end of a greater effort to remove the
empty elements at the end of the ctl_table arrays (sentinels) which
will reduce the overall build time size of the kernel and run time
memory bloat by ~64 bytes per sentinel (further information Link :
https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)

Remove empty sentinel from coda_table

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 fs/coda/sysctl.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/coda/sysctl.c b/fs/coda/sysctl.c
index a247c14aaab7..9f2d5743e2c8 100644
--- a/fs/coda/sysctl.c
+++ b/fs/coda/sysctl.c
@@ -36,7 +36,6 @@ static struct ctl_table coda_table[] = {
 		.mode		= 0600,
 		.proc_handler	= proc_dointvec
 	},
-	{}
 };
 
 void coda_sysctl_init(void)

-- 
2.30.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
