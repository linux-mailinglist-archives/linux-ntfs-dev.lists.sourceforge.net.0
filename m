Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC168895B1
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Mar 2024 09:36:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rofoM-0006kE-EV;
	Mon, 25 Mar 2024 08:36:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rofoK-0006k5-L8
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 08:36:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W0r/8cf1iCkg5zZdAXmA1f1BX70r4KS8n2VERnGmmrE=; b=gzg8fPsHygV6qL6C3M+z+1zH3+
 nQrtycfHp43/OfkLX50FpAtvLQrwXMai496LI+7FHtJEoemoEFT+2aCPqMYDn3W2mMXs0Z4Ax6kNG
 b+rOzb1+xIaDSvoc4ckYmF6j4/HpIhUsjoYuCJHEYK7/T7phXHAvEhABDTzY3LG5T8FI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W0r/8cf1iCkg5zZdAXmA1f1BX70r4KS8n2VERnGmmrE=; b=aco7XBocZl8+rulw0+Y+r2I+RJ
 WZw2NIA5sLvz9yJISf9eOzLLh7mdXdhU1DE9uv4Hzacmmk669LMKCoClu8gwK3NarcgXemU5WK839
 yy2EJYCLVB6urIjA9Kxu8rpZWHR0mGQxdJLTL8fnVwEBR2ET3gHEoQRINXLQKSRYr9e0=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rofoF-0005Db-Dl for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 08:36:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EF435CE0AFE;
 Mon, 25 Mar 2024 08:35:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E063DC433F1;
 Mon, 25 Mar 2024 08:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711355747;
 bh=D/cqShrDInb29DCswvll5FkJaDOerwFsZiddIswk7hA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=skM8ZPd1xsYf1kc26gj+77gFY84PiOgZcsWUHAdT38x6TMO4cY9uMQ5TR83dtZiEu
 XJDzWhl2vntb3ZxzrT/fl8gh0yrcg6gYuLl746cRuwtImpeI2c0HzumjeKWUx+Y2bS
 UOvxQw8aYAZ2UT8z0jDEBk89d7WEhI5UuLWIXS9y63SjelDULhJ9aeU7+W6AS69GrB
 1WcSbtmFJz4K/y/Vvi17ZezjSqinVh/qagpwUDZ9c8PSkt1Ps4rSYb0Tl+1aifa/So
 I7HnDIhRvMMSMjkEx088X0nztc1RJxsJicv026uLqYcN1H9JIFcXPZiGGRdbC4tEzQ
 +IgnBAkJaJzvg==
From: Christian Brauner <brauner@kernel.org>
To: Johan Hovold <johan@kernel.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>,
 ntfs3@lists.linux.dev
Date: Mon, 25 Mar 2024 09:34:38 +0100
Message-ID: <20240325-faucht-kiesel-82c6c35504b3@brauner>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=987; i=brauner@kernel.org;
 h=from:subject:message-id; bh=D/cqShrDInb29DCswvll5FkJaDOerwFsZiddIswk7hA=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaQxmstJK0fN4gtVX16YfEHrgUTJunn3k4/8Nu1qu+3Uc
 +P+6RCujlIWBjEuBlkxRRaHdpNwueU8FZuNMjVg5rAygQxh4OIUgInwKzMynJrnGXTn+sXH1oF8
 d/oU2U3eflZS2LclfFbQU17TQ4+/azD8j3bLPc995SOnWXCLIu+ZiZJbVTX0C7ws7szgfbjv9Po
 XTAA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This causes visible changes for users that rely on ntfs3 to
 serve as an alternative for the legacy ntfs driver. Print statements such
 as this should probably be made conditional on a debug config opti [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rofoF-0005Db-Dl
Subject: [Linux-ntfs-dev] [PATCH 2/2] ntfs3: remove warning
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
Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 Christian Brauner <brauner@kernel.org>, regressions@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This causes visible changes for users that rely on ntfs3 to serve as an
alternative for the legacy ntfs driver. Print statements such as this
should probably be made conditional on a debug config option or similar.

Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: Johan Hovold <johan@kernel.org>
Link: https://lore.kernel.org/r/Zf2zPf5TO5oYt3I3@hovoldconsulting.com
Signed-off-by: Christian Brauner <brauner@kernel.org>
---
 fs/ntfs3/inode.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
index eb7a8c9fba01..8cc94a6a97ed 100644
--- a/fs/ntfs3/inode.c
+++ b/fs/ntfs3/inode.c
@@ -424,7 +424,6 @@ static struct inode *ntfs_read_mft(struct inode *inode,
 
 	if (names != le16_to_cpu(rec->hard_links)) {
 		/* Correct minor error on the fly. Do not mark inode as dirty. */
-		ntfs_inode_warn(inode, "Correct links count -> %u.", names);
 		rec->hard_links = cpu_to_le16(names);
 		ni->mi.dirty = true;
 	}
-- 
2.43.0



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
