Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 586935A3788
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Aug 2022 13:57:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRuRd-0005fS-7p;
	Sat, 27 Aug 2022 11:57:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oRrKu-00029U-J7
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 08:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Y6hFlNXcZOip0wjL6FhF+cSQiBFASafnzpWHIHr/no=; b=PXEcIZifW7Om1oxHlA2i3yY0eD
 /bvfiFJReD6Rfsl+upVB/i+A4ZwKAU3b+J1BI+Y0i0+OJFheXiu6DL7SD5md8eHaeUofM2z4KBcKN
 KWwD0O6Z7mPmwcpJ/eWjm+a2dtWyMhcbBUDHyxLD2B2IId/54UE7TtrYvwcf+DCpj62k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Y6hFlNXcZOip0wjL6FhF+cSQiBFASafnzpWHIHr/no=; b=agVXgr0ngIDqpDFji9YdPIy8cD
 tzv1uDdvkLzAJrJgiS0vdCPsLr+oQ+s5YytxT6RVU4AqJslag/McgNkGfQCAl54bV4lrNddEFgcLT
 pA2ioRjjq1xBwft0v7J5nIBc+vVPCOrzIV/qsjzgAVTNDq96u/D6YCrv3PKnXKRaLWNg=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRrKs-0004Ej-2h for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 08:38:36 +0000
Received: by mail-pl1-f171.google.com with SMTP id w2so3562871pld.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Aug 2022 01:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=6Y6hFlNXcZOip0wjL6FhF+cSQiBFASafnzpWHIHr/no=;
 b=gAZidD2Kt1H3/Zka1xLWsciEycxHZLTe8svmM6J+rxxnbA5FEYFw0/NjfW7KxhNEhK
 bBXysBBIGIQhdzbALC4nWGi9JkSY33caxFSAIu/QBZz8+2S1MsPT5VmnJunEvWAuf2le
 PVVQJT7Cw/obSTu3YXUW7nOFaWQsh6wcyMaVmitVeg938W+WacE0M9PMunTJ3GNBWamR
 9EMraENdgs65uW6zVQBnoCvkAEJc/zCPT4z5tm+82Hb0f5QzP8eaSPfRiIcAj/Mo/PdN
 sh6yWdxT1nNyIpe74ESl/fjdS9PcyAbTME0C5jmGM6Mn5Q0u6yoaSdYwVK5udCmwKhFb
 HCcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=6Y6hFlNXcZOip0wjL6FhF+cSQiBFASafnzpWHIHr/no=;
 b=D/zzMkfPn0+Ysf5CYRtoI+kHC34f/mlWfnmmkZZSG/F+cCPer7hjOcrqPPc3Ca+C47
 OaZrDu+KggTbobe8lvqMSF5HCp40hm3LMkYiGtSHWPkTSJUKMuioYnKKrlNc2FBwEI5k
 Fh0CyPGdMlpq89BRl0W8bJ72gFacsXrNOd2kj1k6hXRt/81EISETP7Z5JANhBLOcxnu4
 gjvAmnBXSiqMU1SPKGVsl9tU/FRcCTwZxvGa2gVwU5Tg90sO2SkTxMACZuX5v2U+jAOa
 2IHp0s4kmqFIc8knpeWCKaTHHwYgsufOT2OsHqFwKW4Xpg6tq5XCX1AUeh9xJR50i/3C
 0dTA==
X-Gm-Message-State: ACgBeo1TSolNFOtA797USRZQg/M+gouip0DKfjsV5pqEkWYR6WZAmsQy
 wdujJETw5QVXCzlQqIZd1Zo=
X-Google-Smtp-Source: AA6agR4rHvKw68QOTAy9O1p6WIzh01vy+pHDdf/bEtLEWFexRtwNfJaUAyLgzhzyQ8JJTe3DStiSyg==
X-Received: by 2002:a17:902:db06:b0:16f:16b7:69d0 with SMTP id
 m6-20020a170902db0600b0016f16b769d0mr7092010plx.145.1661589508519; 
 Sat, 27 Aug 2022 01:38:28 -0700 (PDT)
Received: from localhost ([223.104.39.136]) by smtp.gmail.com with ESMTPSA id
 d2-20020a170902654200b001725d542190sm2995739pln.181.2022.08.27.01.38.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Aug 2022 01:38:28 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: akpm@linux-foundation.org
Date: Sat, 27 Aug 2022 16:38:20 +0800
Message-Id: <20220827083820.3279-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220826194222.862bead1ae0a2483951884d3@linux-foundation.org>
References: <20220826194222.862bead1ae0a2483951884d3@linux-foundation.org>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 27 Aug 2022 at 10:42, Andrew Morton wrote: > > On
 Fri,
 26 Aug 2022 20:32:57 +0800 Hawkins Jiawei wrote: > > > > syz test
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
 [...] Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.171 listed in list.dnswl.org]
X-Headers-End: 1oRrKs-0004Ej-2h
X-Mailman-Approved-At: Sat, 27 Aug 2022 11:57:43 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: change check order in
 ntfs_attr_find
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
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, yin31149@gmail.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, 27 Aug 2022 at 10:42, Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Fri, 26 Aug 2022 20:32:57 +0800 Hawkins Jiawei <yin31149@gmail.com> wrote:
>
> > > syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > >
> > > Looks like it is improper check order that causes this bug.
>
> um, what bug?
>
> > Sorry for wrong command.
> > #syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>
> Please prepare a full changelog for the next version?  Describe the
> user-visible runtime effects of the bug, describe what the code does
> wrong and how the patch repairs it.
>
I am sorry for that improper email.

I send that email just wants to confirm whether my guess is right by syzbot.
That is not an official patch email.

Thanks for your remind, I will take care next time!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
