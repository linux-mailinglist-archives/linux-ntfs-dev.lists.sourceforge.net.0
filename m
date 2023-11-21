Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4517B804D4D
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  5 Dec 2023 10:12:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rARTE-0005xc-PP;
	Tue, 05 Dec 2023 09:12:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1r5P2g-0005oi-5V for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 21 Nov 2023 11:35:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tx3BEBR3CN94z3gLDjAIrZEqxqUbEbzHGOCVB/Wa6F8=; b=QX16TYRzVa2L2slSwpPmjpC6o2
 5YzZNga1NW6+MpQ1az2IwC8ww+Eq1q06rrizC7vbLVYFVxAiOaBt+Bbafs4gGt+lJ8IPIviFOQsqS
 grVbIOnTdnx0VW2sikwN9XywAlW+h5UtrLDVS8/It/o+RAYYYtAYmmeZJvsQOEUCAslk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tx3BEBR3CN94z3gLDjAIrZEqxqUbEbzHGOCVB/Wa6F8=; b=O7FmYz0O62yBbhKpShZrPuSpL2
 TTBjqEpRg3KlfEdQITNN/8Or9QNkN799NRNmmnOqESOyIr9RD6+Ht6I/afSkQYhGX0qmMaDIB4xkv
 yu05lqLM2QEhXMRxt3BVj8hj6frkA8/PyIjChqcgG5k8FRpe89qNnasGwRLOmqZKPv+Q=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r5P2a-000380-Os for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 21 Nov 2023 11:35:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2986161862;
 Tue, 21 Nov 2023 11:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D49DC433C8;
 Tue, 21 Nov 2023 11:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1700566534;
 bh=jp5zupYC3dqga+xgTeyhYepRQqFBsm6KYR9/rvlBnN0=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=dIZji/dplIWVDXMi5aBydWZfQhkFwV/nQTmfrcl5/mRjnQ8IwILaUeQ8UPm68icfC
 BsNwKKAwD4Mt8tE9ffWVfx1acO6caUc3cLcE1auhL942JCo1YnOknjqMijgAQ3md2l
 ipf6nYQyBGaPajGL8CPKy5nivCYpEgv3R+OvqSc4pFVWR5zaU/RJAxRIvw9VtWyJm+
 moul2uap0yKQviiDETrNBqVLLbDy/7dCgoamJCUOROKkRWe69TcFLVcHavj5SmRmNq
 2J/fEQslz4sF4ShNOxte6T7bRzX7xXuGTALwkaLpxH9Id+yqFjnoxOcJGJnEMHeB6e
 ugUfPIxZsvl3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED04C61D92;
 Tue, 21 Nov 2023 11:35:34 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Tue, 21 Nov 2023 12:35:11 +0100
MIME-Version: 1.0
Message-Id: <20231121-jag-sysctl_remove_empty_elem_fs-v2-1-39eab723a034@samsung.com>
References: <20231121-jag-sysctl_remove_empty_elem_fs-v2-0-39eab723a034@samsung.com>
In-Reply-To: <20231121-jag-sysctl_remove_empty_elem_fs-v2-0-39eab723a034@samsung.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=923; i=j.granados@samsung.com; 
 h=from:subject:message-id;
 bh=SGTnhgVPbRkVEntdcKFq1I6E3blB6PSwrb9JaawnFFQ=; 
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlXJYE8Ks+z491/DTBZVtz2um8J4jG1nLsD8a3B
 DRhcSRgUfiJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZVyWBAAKCRC6l81St5ZB
 T4IADACOW9MROZFdSM+dnh5/wed5cgaNXnrVn0LBPeHAVDiTQemiyGOrKQAda+vo5Xdn9YTJKCa
 PoC+nOKAf7TcIW5+lSdngPBDLY10Rc+onNncfJVs/pcfUcS7fvUdAe7Oii7yRE0pWXLEO8Yi/bl
 ZQddbvSPByuXt05zL+cFNSFJ6o75hORSBWUkTFgcExgCr6JtZHXh8JGoupxp+6NYOo7KGwZQCir
 gkJt7LSjyMQBBxQiG1wv3Oj3xAGIHT0r5K6FbTYG2CKIShmPRQDSLhCwjGE/Yk5oTfToxFyfUZR
 wtRrWYjHIRxQ2NkgszSSTyHULK6/XiQNiTOBISGnR4JeKsg6f2GnYke60yAYM9PEXCijJqfHNpb
 XP4426A5j7PtMZusLfCzoo/RiIvU0lLYYLW4JMuIj6tCKXVpBnxubPiW+7/0D2mysQGJzwu1Q1h
 2BdXU/cbiWKRzPziKe1iPiDUEN1EizspV1wiEqbmZV51Sz42b2uFSBfcXRFn/uWc0eKXs=
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r5P2a-000380-Os
X-Mailman-Approved-At: Tue, 05 Dec 2023 09:11:59 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 1/4] cachefiles: Remove the now
 superfluous sentinel element from ctl_table array
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

This commit comes at the tail end of a greater effort to remove the empty
elements at the end of the ctl_table arrays (sentinels) which will reduce the
overall build time size of the kernel and run time memory bloat by ~64 bytes
per sentinel (further information Link :
https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)

Remove sentinel from cachefiles_sysctls

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 fs/cachefiles/error_inject.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/cachefiles/error_inject.c b/fs/cachefiles/error_inject.c
index 18de8a876b02..1715d5ca2b2d 100644
--- a/fs/cachefiles/error_inject.c
+++ b/fs/cachefiles/error_inject.c
@@ -19,7 +19,6 @@ static struct ctl_table cachefiles_sysctls[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_douintvec,
 	},
-	{}
 };
 
 int __init cachefiles_register_error_injection(void)

-- 
2.30.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
