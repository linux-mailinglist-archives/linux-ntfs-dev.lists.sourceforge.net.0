Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC9F5A8335
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 18:29:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTQam-0002an-Nd;
	Wed, 31 Aug 2022 16:29:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTQLO-0008DN-Eb
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 16:13:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2/XdbCrUv8gzI+JX2k2NXC+D9E3l4e2SIhgqVmL688s=; b=aDpOnXtkpQNwH+EK1LRNg0us/0
 cH59fsXqktfWlYK4ZtGqbZgK5ne6A2XiSDmQrXesrVdx22dWEWFLn6GeDngNxWzFQhp3GLzqO5JJT
 DXV76oZFsIKW7xekpLL+9WS/we0yBLyreMlpGOB7T9kzjC2wXUvts+u4nV6kNVv+jW7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2/XdbCrUv8gzI+JX2k2NXC+D9E3l4e2SIhgqVmL688s=; b=cMW7g/QLWSs8giJfh6YHe7cJJc
 jQ3MxqSr52lnMA8axSc+Ptw72ToGRIob1XTsyUtuIBTIQKmNvi8SSHe0VjFpXWsGMf9Alh9uo3pK3
 VfH5ib9YyXaZ0tCetvk2FC46crJasB5ljYB09g/B/rwihA+cFHfzt9v4PcRxN78TIEa4=;
Received: from mail-pf1-f170.google.com ([209.85.210.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTQLG-008y9z-3h for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 16:13:26 +0000
Received: by mail-pf1-f170.google.com with SMTP id 199so14822909pfz.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 31 Aug 2022 09:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=2/XdbCrUv8gzI+JX2k2NXC+D9E3l4e2SIhgqVmL688s=;
 b=f5QU2TxsaHqq0+Tv62FC10+qGUJsEr8NPuARb4jmb+PSyWWm9/cTxOfwL9rqklEsiU
 lpOIU+hGzwSvrbyPaof+oTZoi+3fafUymzWJOVR0+d/DTc4QNFRmkYysCx48cajI9NVg
 vBP2omKhKD5vZViL7dIgWNZ+DrdkGTLeP3UHvdI4rtCyWGeR/szG8k/vysZ9Az9U1dqU
 4U5zW5knps6TcOVneBucynP2m4TBVEdlHkI2gyupJPm8qmt/ANwU7XPMQTDIEU4/0En6
 dPySy37hkxmFMrPlu8oqHrFGRrT5GbVT50pBucuqmbrh4FUGI81rrbHMBE6q7jg6bToI
 Bepw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=2/XdbCrUv8gzI+JX2k2NXC+D9E3l4e2SIhgqVmL688s=;
 b=pziFeIMjXhz+udv2+Ww9LVrfMeVfDsynWV4jOA4BE6nPwd93xcmi4Zw/kL7YDGQzk5
 9IE0xmoHohRBQqEW4mofvkMJPE9z6uXUGiJFJAA3sPyaosOHsLgNt4ELsXaRFWshXUR0
 pg0IblfSugZn0ArxKOVm36UgOvmva64aUiRLiCGANhJBttxYMeuiLVAqNHkcM48Ot1yp
 xWy182cRScIHyuch4tz5iEf34gl3V8hL5J5I4uOuzRp5pKEHzwf0TJihldDpYKg3Z3Bz
 24n5hWWoS4QQ7ZH62GRh/shwx1KpRXZuI8a8UHKavdEE46aZe07r4KsAn7bZd1miHmEr
 +4cw==
X-Gm-Message-State: ACgBeo1PCq3kXiHtSAuXfStSeL3KW4LxbziCYLT0N7Wn0aEE5QDaMsH0
 vI+5Kmm8uZfQt9yt5/fhAXg=
X-Google-Smtp-Source: AA6agR4g7ANCCZnZLbqBt1B/FVTEl7FACQ3ukgyLFuVCEsDq1UeSAGPQljKMq2loqOHwgS+5Q1prxA==
X-Received: by 2002:a05:6a00:2918:b0:535:ea9:791a with SMTP id
 cg24-20020a056a00291800b005350ea9791amr27095438pfb.54.1661962400574; 
 Wed, 31 Aug 2022 09:13:20 -0700 (PDT)
Received: from localhost ([36.112.195.70]) by smtp.gmail.com with ESMTPSA id
 c7-20020a624e07000000b0052d417039c2sm11439458pfb.133.2022.08.31.09.13.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 09:13:20 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 Anton Altaparmakov <anton@tuxera.com>
Date: Thu,  1 Sep 2022 00:09:38 +0800
Message-Id: <20220831160935.3409-4-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220831160935.3409-1-yin31149@gmail.com>
References: <20220831160935.3409-1-yin31149@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Kernel will iterates over ATTR_RECORDs in mft record in
 ntfs_attr_find().
 Because the ATTR_RECORDs are next to each other, kernel can get the next
 ATTR_RECORD from end address of current ATTR_RECORD, [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.170 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.170 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oTQLG-008y9z-3h
X-Mailman-Approved-At: Wed, 31 Aug 2022 16:29:26 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2 3/3] ntfs: check overflow when iterates
 ATTR_RECORDs
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 18801353760@163.com, yin31149@gmail.com, akpm@linux-foundation.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Kernel will iterates over ATTR_RECORDs in mft record in ntfs_attr_find().
Because the ATTR_RECORDs are next to each other, kernel can get the next
ATTR_RECORD from end address of current ATTR_RECORD, through current
ATTR_RECORD length field.

The problem is that during iteration, when kernel calculates the end address
of current ATTR_RECORD, kernel may trigger an integer overflow bug in
executing `a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))`. This
may wrap, leading to a forever iteration on 32bit systems.

This patch solves it by adding some checks on calculating end address
of current ATTR_RECORD during iteration.

Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Link: https://lore.kernel.org/all/20220827105842.GM2030@kadam/
Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
---
v1->v2:
 * Add check bounds on ATTR_RECORD's length suggested
by Dan Carpenter.

 fs/ntfs/attrib.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index cec4be2a2d23..a3865bc4a0c6 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -617,6 +617,14 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
 			return -ENOENT;
 		if (unlikely(!a->length))
 			break;
+
+		/* check whether ATTR_RECORD's length wrap */
+		if ((u8 *)a + le32_to_cpu(a->length) < (u8 *)a)
+			break;
+		/* check whether ATTR_RECORD's length is within bounds */
+		if ((u8 *)a + le32_to_cpu(a->length) > mrec_end)
+			break;
+
 		if (a->type != type)
 			continue;
 		/*
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
