Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A28C177A68D
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 13 Aug 2023 15:37:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qVBHj-0007At-Oc;
	Sun, 13 Aug 2023 13:37:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qV4A4-0003yU-V2
 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 13 Aug 2023 06:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TLM5KpkpD4gWxC6Oek1rSBQnlEYGRzxn9MLl0BpU5F0=; b=dBK1MrEsmZcLLy2qP04m4xOtBQ
 gtWMi7/LfbELQVn+PyIJQcoaLlv936kDJie2Ypi8Uj+qyHxeCKrO6MqKCjx8BCUxH85Hy3yyWsP7/
 1kIBsSgqRS1Dmp31sJB/2YRnND5UgefVbQ5i1+QGX6J1MliPW5LS2uKC/UGzRIF8kVlI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TLM5KpkpD4gWxC6Oek1rSBQnlEYGRzxn9MLl0BpU5F0=; b=C
 rsLGXvPJTD7R4I3wSFE9zLQSlL/8Ysc1VZKTfzVxCdpdiXIB8nsj0idBbTeKykRPHWmi3zUQC1sZp
 3db4bCyuj88jOLPmVkuOSr3PD1BUZWxpWCNGmxvpdFEMBC+pz8qD5+LJ+GDCQCkSJm9tN7+JnLjaQ
 iXe+xOsSsXF/9kIA=;
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qV4A3-0005a2-A6 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 13 Aug 2023 06:01:11 +0000
Received: by mail-oi1-f179.google.com with SMTP id
 5614622812f47-3a44cccbd96so2644246b6e.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 12 Aug 2023 23:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691906465; x=1692511265;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=TLM5KpkpD4gWxC6Oek1rSBQnlEYGRzxn9MLl0BpU5F0=;
 b=h24Q6I/UsAD9vYa6jWbyFrJMuP2WS8zeeAADdQF+/t+9qok/gC3ZdOu7v3zjXS+HN9
 POMQIUzExaDsIOJ9zpRIb49ugrUGwr9bYAhhc9zxnJpVXmPx4O60ISxyr0jslPERJd3S
 2m7KMb61RCZVkJ87N6ZJMAWdSJjKdtBUJnc9Nn2Y1dZ1NVTsF134gVhZ2e8to/7mTTBV
 re9gE4SQXvBdORy87nq2vF82jddTqCCKlHP8pZexRk8o2AcZOiqZbSkaylcwtIdAxIyN
 MYzo04t5tdIZhKoABdMFlMnsVFqp57Fb/FLd72USMctkmU4QyVQ4xVPRTnu6NipaEYBy
 dVcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691906465; x=1692511265;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TLM5KpkpD4gWxC6Oek1rSBQnlEYGRzxn9MLl0BpU5F0=;
 b=Jwtt4eOafWFPFDrrXdu973oDjgg+7uUCs10GRCP1z9he2Bv0xtN5JuN9ja32pe0Kat
 tB/h/RrX9x/NT/b5Ng/0WgJ0gqwT7fwWd5t4VdIO8PadrS2bVVv6l4PvcqGP9zhLB2ZT
 dq85Xr/Dwp3ZOqVRHr7g6NonM7MtrTa5P1zdWUiqfamV23Aj9IpW77FMkx9zasEBJN+k
 TJoHzFSWfdAREqbmGJUyoOieFwtOSkdJCJhjv2aNLPJQvIyiEzwfRyStWV9Z7y+RdhEb
 F4yO15m9+p4zNCTtuE5N1SFFmpl0zMJAqyJYdHRaKyp3yMKkwpR/CK2xu7OITKQKthFc
 yanA==
X-Gm-Message-State: AOJu0Yxip6TsDiIyq5FATJJ/2OoK0etrt8y6MD6YeBUc7ppi4u+8vsym
 VQiDe2XVRa05seK819PQUqM=
X-Google-Smtp-Source: AGHT+IHHF3g51CV/WubhxPwpRm7sZqAoSXFa+dkSSWPQxBTL5FkGpDuLblN2HAN/MDR9Kq3V61Kv8w==
X-Received: by 2002:a05:6808:1792:b0:3a7:3ce0:1ae5 with SMTP id
 bg18-20020a056808179200b003a73ce01ae5mr9451677oib.47.1691906465578; 
 Sat, 12 Aug 2023 23:01:05 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.173])
 by smtp.gmail.com with ESMTPSA id
 a23-20020a637057000000b00564aee22f33sm6022339pgn.14.2023.08.12.23.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Aug 2023 23:01:05 -0700 (PDT)
From: Manas Ghandat <ghandatmanas@gmail.com>
To: gregkh@linuxfoundation.org
Date: Sun, 13 Aug 2023 11:29:49 +0530
Message-Id: <20230813055948.12513-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently there is not check for
 ni->itype.compressed.block_size
 when a->data.non_resident.compression_unit is present and NInoSparse(ni)
 is true. Added the required check to calculation of block size [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.173 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
X-Headers-End: 1qV4A3-0005a2-A6
X-Mailman-Approved-At: Sun, 13 Aug 2023 13:37:34 +0000
Subject: [Linux-ntfs-dev] [PATCH v4] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: Manas Ghandat <ghandatmanas@gmail.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Currently there is not check for ni->itype.compressed.block_size when
a->data.non_resident.compression_unit is present and NInoSparse(ni) is
true. Added the required check to calculation of block size.

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b
---
V3 -> V4: Fix description
V2 -> V3: Fix patching issue.
V1 -> V2: Cleaned up coding style.

 fs/ntfs/inode.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 6c3f38d66579..a657322874ed 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1077,6 +1077,15 @@ static int ntfs_read_locked_inode(struct inode *vi)
 					goto unm_err_out;
 				}
 				if (a->data.non_resident.compression_unit) {
+					if (a->data.non_resident.compression_unit +
+					vol->cluster_size_bits > 32) {
+						ntfs_error(vi->i_sb,
+						"Found non-standard compression unit (%u).   Cannot handle this.",
+						a->data.non_resident.compression_unit
+						);
+						err = -EOPNOTSUPP;
+						goto unm_err_out;
+					}
 					ni->itype.compressed.block_size = 1U <<
 							(a->data.non_resident.
 							compression_unit +
-- 
2.37.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
