Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 494BB5A3785
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Aug 2022 13:57:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRuRc-0005f2-Nd;
	Sat, 27 Aug 2022 11:57:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <akpm@linux-foundation.org>) id 1oRlmT-0001cB-Bx
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 02:42:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S5FEXLrb69K5p0rc/iA512DZJHz9q61K1AXYHw7tdtY=; b=ADChlczoL9EVGoEj6QU8vQFn2Z
 R3fza3I+iXExuo7V5qBrpCrSrPSClv99Ioo1VRy/dbNIKafQ0FgEXmWGwcvtVXO6D7OpslQOL3wop
 kGKf6NJvUs9dVxwq/RYvi4PHmGhApXky70zrVscDS/1z454lyXHCDHhIKMX61gnrzzOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S5FEXLrb69K5p0rc/iA512DZJHz9q61K1AXYHw7tdtY=; b=UxcmWQ8zR6VwJwoWnGJxmdAlY4
 kFmzu082gKLRgMWm7tU/IuRmwo7KkhaQv+geLZltSX2u/WQfUCtABUW56XOJx+K2q1D1ONOVza8A4
 NSlEBOVxL7k7BiNgdJ5NV859b6CWmwAAHJwYZB9r/zcpCS5aanhhP84M0VNeJzpoFiDg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRlmP-002Cnr-4m for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 02:42:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AA2DC61DB0;
 Sat, 27 Aug 2022 02:42:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5B13C433D7;
 Sat, 27 Aug 2022 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1661568143;
 bh=BzQgisio9PtGCcXkP6DuXkomBdR80sxgQAzQlaTAU1Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sHwFlZW4Ka4JJJ0qfqwkfreNN7W0RFrnXYD8Aqg5cH8sTz5s65bTLdABtIV90ChZa
 dtKyubBf2GQVRkWcOwJRge7WRXG8vf02EbKITDgSFPmA5QYa5piHJ+GnJnbWi49Ak5
 IphbDCWqw6jVrqt0WuBENJC/jb0AGRXOjA6sWiCw=
Date: Fri, 26 Aug 2022 19:42:22 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Hawkins Jiawei <yin31149@gmail.com>
Message-Id: <20220826194222.862bead1ae0a2483951884d3@linux-foundation.org>
In-Reply-To: <20220826123257.3826-1-yin31149@gmail.com>
References: <20220826122735.2690-1-yin31149@gmail.com>
 <20220826123257.3826-1-yin31149@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -7.2 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri,
 26 Aug 2022 20:32:57 +0800 Hawkins Jiawei <yin31149@gmail.com>
 wrote: > > syz test
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
 master > > > > Looks like it is improper check order that causes this bug.
 Content analysis details:   (-7.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oRlmP-002Cnr-4m
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
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, 26 Aug 2022 20:32:57 +0800 Hawkins Jiawei <yin31149@gmail.com> wrote:

> > syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> >
> > Looks like it is improper check order that causes this bug.

um, what bug?

> Sorry for wrong command.
> #syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master

Please prepare a full changelog for the next version?  Describe the
user-visible runtime effects of the bug, describe what the code does
wrong and how the patch repairs it.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
