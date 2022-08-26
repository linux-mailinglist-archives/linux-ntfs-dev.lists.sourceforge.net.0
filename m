Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 271B75A2842
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 26 Aug 2022 15:11:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRZ7Y-0007ZY-9N;
	Fri, 26 Aug 2022 13:11:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oRYWe-0004QS-P2
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 12:33:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y5c37Nq33O3MeYZTEmF4WCceNnuG63z/xmNqaPUq83I=; b=edQYul90xdAyd1bGGjdwUFfu4+
 v2yWQejxrTXOaVwxfX9KTc14nQzOqYh77iB2Ji2NaJEKz/lH+wxezczfoFd+IRWRgOmHJd1RAeFR8
 dRvtzQgIDhOXUg8Z+V7Ph62ADZb8AI7oHkqyCeFv9za3N4Jr+X3s6Vkayj9BDaFFbyOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y5c37Nq33O3MeYZTEmF4WCceNnuG63z/xmNqaPUq83I=; b=ebmwsrAjXLlajwa/rE0IhYhFBx
 ZoamD40KGb/kEbpLRWXmUNsFecMSyez/3gpLLuqxTdEQP5uOVrClVEKGqO5UvfpWRKEPe0twX3Z5d
 MKIqoaVkQDGegQIg1x7SB4RrlPs73VFAM4/ciWnPSU424MdIhYswlBefbGuQFOTa+wG0=;
Received: from mail-pl1-f173.google.com ([209.85.214.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRYWa-0005i7-CE for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 12:33:28 +0000
Received: by mail-pl1-f173.google.com with SMTP id jm11so1450516plb.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 26 Aug 2022 05:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=Y5c37Nq33O3MeYZTEmF4WCceNnuG63z/xmNqaPUq83I=;
 b=PoHycqaPDgldrKy9t2N75OJk/ttEtsLOvZjSHmhwWs8bbOk/1PazMzGAPn2N+akdgL
 6rPdFlO+sY8saU0PfewhQYQizrQrs6ZU/4eumXHO0PPgWSMcK/HTeGECLQtAGg4JB9cX
 3qDfx6NllcunGGXB24WvlNSSNCFU0bC82MK0r/rFs1ceQZrYtv9zNRXlzLDPsY2fydO2
 2PaWkxLbgyLvDxtjMPjLdIQUYpfLIlJNj9N4i5bzk3tCkJ/0Z9h7Nn5rXteFw0rI/KbM
 UVQst+HyV9KtKUKtfCloAcrlfHMMCbs0c8JXqHyT0tvmGiEic86yy8R4lNPsgOCzizm0
 +2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=Y5c37Nq33O3MeYZTEmF4WCceNnuG63z/xmNqaPUq83I=;
 b=k2Lxy5PxRW2Vo85s35oWNs9xmDi42p3sOcK3lgcD60/v8UP+oaDrMVMvwsvo5Q1Zs4
 8moTJFnE57xUq+kFW5mV/1Xd9q8t/1ES4rwYwO89UPPZHECRWp5YHhdfBQ9AU+S6HEYF
 HoOtdL+33hgJE5Vlrgs6tFtJ1h2reZ7tqf724OQYf0BR0XUulIeOdprKwz1WKxzrLZZl
 kgseaYiVTiVI2CO749iKGCyqTOlDLQFE5XpKnQDkpkw/oZMLkXRVGwcme6Gb3Wrz5LfP
 DhtKD3m53oANbG397Nj3JRrzZG+qK3kpwj/MY07pUcdiniCyCI7vOdcf5hOP9Z0eZ2eg
 sXrg==
X-Gm-Message-State: ACgBeo3KUbAcgx0yYlmgKqiCvxwNaemwXi/x7kK7n8RkzPlacVx3SOoA
 5c6sXBoDCBGIg4SCV9nKmK8=
X-Google-Smtp-Source: AA6agR4qi8cTqCo+EZNWH5RRTyKaysnpdpw+ysLAB41QdnvE07HdbDKYOvYUG417VBbdBuYAD9qeNw==
X-Received: by 2002:a17:90b:4c8d:b0:1f5:409b:b017 with SMTP id
 my13-20020a17090b4c8d00b001f5409bb017mr4318701pjb.52.1661517198452; 
 Fri, 26 Aug 2022 05:33:18 -0700 (PDT)
Received: from localhost ([36.112.195.70]) by smtp.gmail.com with ESMTPSA id
 e12-20020a17090301cc00b0016bf5557690sm1493439plh.4.2022.08.26.05.33.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 05:33:18 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: yin31149@gmail.com,
	Anton Altaparmakov <anton@tuxera.com>
Date: Fri, 26 Aug 2022 20:32:57 +0800
Message-Id: <20220826123257.3826-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220826122735.2690-1-yin31149@gmail.com>
References: <20220826122735.2690-1-yin31149@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > syz test
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
 master > > Looks like it is improper check order that causes this bug. Sorry
 for wrong command. #syz test
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
 master Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.173 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oRYWa-0005i7-CE
X-Mailman-Approved-At: Fri, 26 Aug 2022 13:11:34 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: change check order in ntfs_attr_find
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
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

> syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>
> Looks like it is improper check order that causes this bug.

Sorry for wrong command.
#syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index 52615e6090e1..6480cd2d371d 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -594,10 +594,11 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
 	for (;;	a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
 		u8 *mrec_end = (u8 *)ctx->mrec +
 		               le32_to_cpu(ctx->mrec->bytes_allocated);
+		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end)
+			break;
 		u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
 			       a->name_length * sizeof(ntfschar);
-		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
-		    name_end > mrec_end)
+		if (name_end > mrec_end)
 			break;
 		ctx->attr = a;
 		if (unlikely(le32_to_cpu(a->type) > le32_to_cpu(type) ||
-- 
2.25.1


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
