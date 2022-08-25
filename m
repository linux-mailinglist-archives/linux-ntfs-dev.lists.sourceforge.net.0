Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2FE5A195F
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 25 Aug 2022 21:20:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRIOZ-0002QL-9p;
	Thu, 25 Aug 2022 19:20:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <code@siddh.me>) id 1oRHtm-0000xU-PB
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 25 Aug 2022 18:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cH3BOPF0q/RHPvHUT9MHcUX4ziGphT0mLZlLgbFP5EM=; b=h7kncOH3UxjL82Dlor2GgpDIez
 EHLPF99e2ilI8eFYiQxDtFtSQS/8D1VZbeTBbfzk1kdq2P7hCc3A8addgUNXoNYzLCCp9drvUTcUn
 sitvvEl9RV4mAmGEwATiBEGbrO35bb4qTo/O4aH3zTdXsl1Ricye+1Rt/wYvRTlkF/TE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cH3BOPF0q/RHPvHUT9MHcUX4ziGphT0mLZlLgbFP5EM=; b=WeQB4ApKeXsvOyxitsxSvnhVaj
 2PbpzLo1JloksXkj9/qzVNUdzOSa+Cvz91sGMy9UZbWPGSvxvqGqPK7qykpXI/gjavk3F0rJiLeB6
 L6xv5nuQebzSu18kCFqbRG8VCsVrUOPRUAjsgvecZTvM/7MqVf/lyPAgUQpeFD6vFYCU=;
Received: from sender-of-o50.zoho.in ([103.117.158.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRHth-000J0n-DE for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 25 Aug 2022 18:48:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1661452338; cv=none; d=zohomail.in; s=zohoarc; 
 b=OV3DDQVVOgw/b/r91JXSP6t4Vj9RFSs3VDNKuF46yz2PIP29iGthMtGEaw9YYMrRBB/m9PTaeuhrhOAq69rL7lCeQOlOVf8KWIGgvLRzVLZrgZbtS8NN9JJU19Ljdyk8zeojwUwlLrNK+TyxG+3Ql6q5OjYKzlSZCT/4T/hh4Q4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1661452338;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=cH3BOPF0q/RHPvHUT9MHcUX4ziGphT0mLZlLgbFP5EM=; 
 b=LCLVakGEUGfB7bMhrO/92MYk2qlDgp7hJM05UbFDZgnygdZfhlJBl7kSpINBGf+UcE7KEPM6npG91HUhg20mmBOjISOz4PVuhOeibIGto+Akj7cQ+ADqDcuaNm9G6RaP4iHhCp5CYRhckyFwpxtflEJJTx9Tx28CYRnhXHssoOA=
ARC-Authentication-Results: i=1; mx.zohomail.in; dkim=pass  header.i=siddh.me;
 spf=pass  smtp.mailfrom=code@siddh.me;
 dmarc=pass header.from=<code@siddh.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1661452338; 
 s=zmail; d=siddh.me; i=code@siddh.me;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=cH3BOPF0q/RHPvHUT9MHcUX4ziGphT0mLZlLgbFP5EM=;
 b=CS6KtyWnxIISIHxFt9rqmkYAJKk6MJvrdSfIGBQu7S2IYeZyPZ8Op+ISMjRv6+20
 HLEk0ouOQcLNbMAifBu8valiUhS8bdKAsc61Z83ydvQut1oLGjMsM1TfAXJo2EDDf//
 kLJCgyy3Tz/d9qCqd1sTV15spYexMUoNvC7xMTNw=
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1661452327559478.8124574215667;
 Fri, 26 Aug 2022 00:02:07 +0530 (IST)
Date: Fri, 26 Aug 2022 00:02:07 +0530
To: "syzbot" <syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com>
Message-ID: <182d6469a5e.4e1cc3b067845.2722724258679993431@siddh.me>
In-Reply-To: <0000000000006886bd05e714ec18@google.com>
References: <0000000000006886bd05e714ec18@google.com>
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 25 Aug 2022 23:55:35 +0530 syzbot wrote: > Hello,
 > > syzbot found the following issue on: > > HEAD commit: c40e8341e3b3 Merge
 tag 'cgroup-for-6.0-rc2-fixes' of git:/.. > git tree: upstream > [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
 [URIs: siddh.me]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.117.158.50 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oRHth-000J0n-DE
X-Mailman-Approved-At: Thu, 25 Aug 2022 19:19:45 +0000
Subject: Re: [Linux-NTFS-Dev] [syzbot] KASAN: use-after-free Read in
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
From: Siddh Raman Pant via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Siddh Raman Pant <code@siddh.me>
Cc: linux-ntfs-dev <linux-ntfs-dev@lists.sourceforge.net>,
 chenxiaosong2 <chenxiaosong2@huawei.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, yin31149 <yin31149@gmail.com>,
 akpm <akpm@linux-foundation.org>, anton <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, 25 Aug 2022 23:55:35 +0530  syzbot  wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    c40e8341e3b3 Merge tag 'cgroup-for-6.0-rc2-fixes' of git:/..
> git tree:       upstream
> console+strace: https://syzkaller.appspot.com/x/log.txt?x=161114c7080000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=911efaff115942bb
> dashboard link: https://syzkaller.appspot.com/bug?extid=5f8dcabe4a3b2c51c607
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14dd8265080000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11f30033080000
> 
> The issue was bisected to:
> 
> commit 38c9c22a85aeed28d0831f230136e9cf6fa2ed44
> Author: ChenXiaoSong chenxiaosong2@huawei.com>
> Date:   Thu Jul 7 10:53:29 2022 +0000
> 
>     ntfs: fix use-after-free in ntfs_ucsncmp()
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16f6cd8d080000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=15f6cd8d080000
> console output: https://syzkaller.appspot.com/x/log.txt?x=11f6cd8d080000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com
> Fixes: 38c9c22a85ae ("ntfs: fix use-after-free in ntfs_ucsncmp()")

This is incorrect. The issue is caused by:
9b75450d6c58 ("fs/ntfs3: Fix memory leak if fill_super failed")

The fix for this can be seen by the two different patches tested by syzbot, which
are listed on the dashboard.

Thanks,
Siddh


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
