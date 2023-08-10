Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B020778394
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 11 Aug 2023 00:23:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qUE3t-0005kh-KH;
	Thu, 10 Aug 2023 22:23:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qU8I6-0007VN-TH
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 10 Aug 2023 16:13:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t8Q9xp1hpHwj6pNr+X5XwC5Li0wmHIWn07CtqwvptdI=; b=UUds2P3fCFaJ9KdYAtN8osBsqD
 Os+n1TFEeXtAmPYM+6ZZaSxXGy9sccVBRT93iyPrilM6uxysy7p9oTd6jtlrGNU+M79V8DfB6zMKG
 omY12HJOJm+CYwfpNsbAm/0xBg+VMc1AJDXwJWcEBWxzK/aJ190Dvy85Olz7DJ0xqDWM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t8Q9xp1hpHwj6pNr+X5XwC5Li0wmHIWn07CtqwvptdI=; b=lPxzjKIe4b7szWxr8+kfif5gI0
 HX9VLSdKfU9ujR9zH/1MXNqqFd7/+xQ3n7DDVVzVzXsXEfLaM9wsn9TrB/HFqbKcbKZuPNt3aWXvd
 varz24g4a51Rplb+4MdaZmDHVaGcEbwmyd2yDvKQ3r7L6r93O3Nocr1LXewb2r+osqHk=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qU8I1-001lWT-2n for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 10 Aug 2023 16:13:37 +0000
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-1bb7b8390e8so8494145ad.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 10 Aug 2023 09:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691684007; x=1692288807;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=t8Q9xp1hpHwj6pNr+X5XwC5Li0wmHIWn07CtqwvptdI=;
 b=IJ/HEYnsAODmGUD4SLrT2mk7Kbfjk1jGBf5ows/R6bb0x7AXJDbGwsptPTPHMbM0M5
 MMFSQsDlD9avKRFzTtOUE+YKB7oEOEIah017O3TX/qsEVd7o77QfNMzpw2qLC+XJba7t
 UuVOsAcETenzmYfx1XlUFTh9SfJlC/RjGFzPgYI+dretjrt3lYzpVf0UKxw7MeL2rq4P
 pbKUfxQrtifvATuD+EM/dnqAmb4m7Ko5L6/4ikHw3nDAqULRsfMa4Wudql0nenUeCraX
 Hu+pyUPMXFIlHM7uGuTQfCuljoeGJU6DnrhRzxS3N+tz7Lp7XeZzIZcuMXFbCS/e3WnJ
 JenA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691684007; x=1692288807;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=t8Q9xp1hpHwj6pNr+X5XwC5Li0wmHIWn07CtqwvptdI=;
 b=fsUOSeTjHaN9c3YUFfQRDbBieR0veHgKM9YXUazGJcMTr4owgzCl0limbLBgQ5S3Rx
 dT9hU5rLKfJzauuFAUOSlcbbeIcp1oFC4lEf2VsASXLX+C9ztVlwNcDfJK2ihw5C/TNi
 vW+LUp4lolFde1P3+1sfiYxmC2jESdX5LtQSQ++nVt6UEVpoIfV4kRicsuO7+lxkt9d8
 b8l/fMxc6rrkslCu+0ooJPvL38C618/1pmqT1B1UaJl/noQ0eGZ8O1qnrRLZ/+Lk39r/
 3pqHW7qVLHC/OQUamcg50dnJBwqkh02g1KvZwIlIpG2pX7N+fGu1XHk8jx083t2ozLh0
 L31g==
X-Gm-Message-State: AOJu0YxmgMNsaU329L5IhFlA/gL2A5bFCw92i0vj6Jf4Y9uG6IEs3ZiF
 EJ+2MozpK/bYRWepJb9Zk1w=
X-Google-Smtp-Source: AGHT+IF2wwr+Qo2PrhtF+th5PmcbtS3OAFIljYU9PclgzSIHGvB8qfweZAb49T2u7uYeNr0ZCbtWLA==
X-Received: by 2002:a17:902:dacd:b0:1bb:a941:d940 with SMTP id
 q13-20020a170902dacd00b001bba941d940mr3108026plx.15.1691684007304; 
 Thu, 10 Aug 2023 09:13:27 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.179])
 by smtp.gmail.com with ESMTPSA id
 t6-20020a170902b20600b001b9e0918b0asm1960070plr.169.2023.08.10.09.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Aug 2023 09:13:26 -0700 (PDT)
From: Manas Ghandat <ghandatmanas@gmail.com>
To: gregkh@linuxfoundation.org
Date: Thu, 10 Aug 2023 21:43:08 +0530
Message-Id: <20230810161308.8577-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <2023080811-populace-raven-96d2@gregkh>
References: <2023080811-populace-raven-96d2@gregkh>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Added a check to the compression_unit so that out of bound
 doesn't occur. Signed-off-by: Manas Ghandat Reported-by:
 https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
 --- V2 -> V3: Fix patching issue. V1 -> V2: Cleaned up coding style. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.178 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qU8I1-001lWT-2n
X-Mailman-Approved-At: Thu, 10 Aug 2023 22:23:18 +0000
Subject: [Linux-ntfs-dev] [PATCH v3] ntfs : fix shift-out-of-bounds in
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

Added a check to the compression_unit so that out of bound doesn't occur.

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
---
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
+						vol->cluster_size_bits > 32) {
+						ntfs_error(vi->i_sb,
+							"Found non-standard compression unit (%u).   Cannot handle this.",
+							a->data.non_resident.compression_unit
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
