Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C15A73A5F0A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 14 Jun 2021 11:21:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lsimt-0007fD-4r; Mon, 14 Jun 2021 09:21:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <desmondcheongzx@gmail.com>) id 1lsene-0006zw-WE
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 14 Jun 2021 05:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7emn/WrNvxvMGRavk2ZZTU/O8HzrawGqoRrQamBs2vA=; b=KVLwJZ5hB451Al+n1eoTzDqIaL
 hVkeiTxVAVgdoV5rJJg/xO43jxgecYIukH0gjsHlizNDq3SGziBidOBaEUxdGHyxbW5UVQ9yf2Xt5
 fqOATn7al5kY+jDiTwUcQzJwtQ9L2Dcaot4potXONW5ewBJ0KdUI1Y+NC3Dq0z7Sr7Rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7emn/WrNvxvMGRavk2ZZTU/O8HzrawGqoRrQamBs2vA=; b=G
 HNL4ZPoBz6PSiiHCgL+ZfziPYO7RrOb6mSUpeTXUcWyvQxsSDeym1sKDaxywixFUQHAZMMGumSRIe
 UAotFBXUT6UbaPeRCEabANNfM0glD4ucAx8IL9Z9gUVBU5EXF7uFahjglkpeC6Zi0A1VUqaZ16YP6
 QKJoNICWUmawqbGo=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lsena-0001JG-Ey
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 14 Jun 2021 05:06:17 +0000
Received: by mail-pj1-f46.google.com with SMTP id ei4so9018069pjb.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 13 Jun 2021 22:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7emn/WrNvxvMGRavk2ZZTU/O8HzrawGqoRrQamBs2vA=;
 b=qmPKEk6nsUBRMtGUrK+YW0Y6lDW06gC2JDP/dJOSUGN5d342lCfmh+o3M/BfZEfIZ7
 UrWWPBqwOHjOS1MKQODSCKijNdC9JZ92OBn6nxj9W6bdPynpTSWQ3OtItph7SXAfIJT7
 HQGLMEn26hZi80/Yt4wgCTgGQPU5NujVvrFv0mtfvBo/qMXs3vVMBlI7qJv+sZzFfcS9
 2qzQjmiLeOhEPveuGIknOh/CTaIRn1dceppwLt9Vcb8OomnIOKDtAPYo6hpgCcqXfq+X
 TND5PXRfhgBChUUdpiBv7pZYLKpFhtd0nxI9ywJPuJTVNRIYiob76fP9q5bWf0edNWdq
 jVOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7emn/WrNvxvMGRavk2ZZTU/O8HzrawGqoRrQamBs2vA=;
 b=XX9qZfvqvLELnGpv3WqqhKyqBFvHY7Mn26s8kZGk+6iV3fYwTti4PiT/1WO/xMRyn7
 CIzmX/tzAlhEkuZ0pfv4S3A91CjAXiTCNkT0gOourDYAVK5AtTzmufwfR2KqNSaTbTtA
 Ov/k2Fp5iV1TH5y1K3kNVDqcIkD85KGFG+ZVvlUs2sq2v/D8H0wo2cQtMM2zE6LECOqA
 veZA+t/wPelIWOwH5x5T2Ibq+UQg8rQ9OlN0l0grkMl14m0U0FIirpJlY9up0f3uOn32
 nmo/6AwaRBafr75ubvCFyZjNgIEQrcCFLzN75tM0fsqxG7tZAX3ViYJErd20TO5kWkdd
 031Q==
X-Gm-Message-State: AOAM533fH+UM23FOW5wj+nCRH3Ufn0BkoCwrocXF52+hKjSKCNRDtLYP
 zMGae/4W+RJbNSoJhiHIbCuzHBxncMjxjqo/v1A=
X-Google-Smtp-Source: ABdhPJxojE3pyUHguVc0JXxQWQkV3mdMX+hd3IyjHSemE7lgIVB5gm7wYYKQ+iXH8YsXHzE4WU90cQ==
X-Received: by 2002:a17:90a:8c14:: with SMTP id
 a20mr16797974pjo.167.1623647166158; 
 Sun, 13 Jun 2021 22:06:06 -0700 (PDT)
Received: from localhost.localdomain ([118.200.190.93])
 by smtp.gmail.com with ESMTPSA id q3sm10633391pfj.89.2021.06.13.22.06.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Jun 2021 22:06:05 -0700 (PDT)
From: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
To: anton@tuxera.com
Date: Mon, 14 Jun 2021 13:05:40 +0800
Message-Id: <20210614050540.289494-1-desmondcheongzx@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (desmondcheongzx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lsena-0001JG-Ey
X-Mailman-Approved-At: Mon, 14 Jun 2021 09:21:42 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: Fix validity check for file name
 attribute
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
Cc: linux-ntfs-dev@lists.sourceforge.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org,
 syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

When checking the file name attribute, we want to ensure that it fits
within the bounds of ATTR_RECORD. To do this, we should check
that (attr record + file name offset + file name length) < (attr
record + attr record length).

However, the original check did not include the file name offset in
the calculation. This means that corrupted on-disk metadata might not
caught by the incorrect file name check, and lead to an invalid memory
access.

An example can be seen in the crash report of a memory corruption
error found by Syzbot:
https://syzkaller.appspot.com/bug?id=a1a1e379b225812688566745c3e2f7242bffc246

Adding the file name offset to the validity check fixes this error and
passes the Syzbot reproducer test.

Reported-by: syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com
Tested-by: syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com
Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
---
 fs/ntfs/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index f5c058b3192c..4474adb393ca 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -477,7 +477,7 @@ static int ntfs_is_extended_system_file(ntfs_attr_search_ctx *ctx)
 		}
 		file_name_attr = (FILE_NAME_ATTR*)((u8*)attr +
 				le16_to_cpu(attr->data.resident.value_offset));
-		p2 = (u8*)attr + le32_to_cpu(attr->data.resident.value_length);
+		p2 = (u8 *)file_name_attr + le32_to_cpu(attr->data.resident.value_length);
 		if (p2 < (u8*)attr || p2 > p)
 			goto err_corrupt_attr;
 		/* This attribute is ok, but is it in the $Extend directory? */
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
