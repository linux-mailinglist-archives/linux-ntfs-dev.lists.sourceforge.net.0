Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B13A5A1960
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 25 Aug 2022 21:20:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRIOZ-0002Qc-LF;
	Thu, 25 Aug 2022 19:20:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <code@siddh.me>) id 1oRHvZ-0006V2-Ha
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 25 Aug 2022 18:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z3K6FipcTLHdyWozbJnUC9QQr6/CxxINyS/VroZ3Lro=; b=MfBhwjTLYcWjx8cvwqOo28ewx0
 PpsXULJK2UjqmqNJKL6ETKFZ4FngVW++EIOmHtL098ckPfOilC2ycMwmaRu5Pj1vWyrgdy1e6eRBf
 7LVZ47/t/roYGYrbDIasuHCSU73rv7BU9VP/vNyaMpiY9SzNulEHmSHDsxK6ZIwBcvnI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z3K6FipcTLHdyWozbJnUC9QQr6/CxxINyS/VroZ3Lro=; b=PlbXi9JmjalatAClpJ0HcKwSEB
 e4GxWFOtnqEtjeZwdJVJqIDw95CO2BFnNE+JJPoEiUX9MiEtPLZY2qQkJWfwbYODXeapubx1cQLdU
 ak2eot+Ye5JqH9vYp1BxZt+wuHAz67xLvj/knrvj7SL0usG72r2Sn7Uv/SkEEnG6kYSM=;
Received: from sender-of-o50.zoho.in ([103.117.158.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRHvW-000J8l-OY for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 25 Aug 2022 18:50:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1661452464; cv=none; d=zohomail.in; s=zohoarc; 
 b=bGeydnQwUF36e7aRhkJhhscxfUK48YIMKS/ZIxBPIMvSF5Q+Vwr8g3cqEXCI3ZeBwMxdE6XQFgBlICWbNkI2vUnPc6SAR1rN9QVkwH6QkbTxJEjb9P/nHCsb0pT9gQkbZ4dtNTiogbJdDR9Jcm+NXl2jTRvxApPuNC2FmzjVtAM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1661452464;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=Z3K6FipcTLHdyWozbJnUC9QQr6/CxxINyS/VroZ3Lro=; 
 b=HUF0VSZS8uZSCATNJ6uFWIpKstRnEEiMo5p5/w+k1rMjFXkVBh42asjvqTU7bluhVDJ6dnBVhUpTOcFrUX0il3Y98p03XNA7kRIdvatVVhIX1KwY0c15/CtK86lsJwoR85WK0pcI/Dr0Lccznkze6G9nmkrGGNhzXBeOKEnVbQg=
ARC-Authentication-Results: i=1; mx.zohomail.in; dkim=pass  header.i=siddh.me;
 spf=pass  smtp.mailfrom=code@siddh.me;
 dmarc=pass header.from=<code@siddh.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1661452464; 
 s=zmail; d=siddh.me; i=code@siddh.me;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=Z3K6FipcTLHdyWozbJnUC9QQr6/CxxINyS/VroZ3Lro=;
 b=HcZ/b5TYRYlj8pZTh8/6VuLxllT49tece+lvucqYFwCe0saDJx+gC7Y9YUR1fYTx
 1Nxr5dx8yMh2LHgcR/XSIAzqCIChGFdpKcjfIrsJStqvckoXrOBBV5U3cQSbOol9t/7
 O5F01i3e3HGuOssq7i/jZjRrL4Iq92JjUv6ZNbW4=
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1661452452642551.8346508100296;
 Fri, 26 Aug 2022 00:04:12 +0530 (IST)
Date: Fri, 26 Aug 2022 00:04:12 +0530
To: "syzbot" <syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com>
Message-ID: <182d6488302.3488c7db67898.4109222238062172240@siddh.me>
In-Reply-To: <182d6469a5e.4e1cc3b067845.2722724258679993431@siddh.me>
References: <0000000000006886bd05e714ec18@google.com>
 <182d6469a5e.4e1cc3b067845.2722724258679993431@siddh.me>
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 26 Aug 2022 00:02:07 +0530 Siddh Raman Pant wrote:
 > This is incorrect. The issue is caused by: > 9b75450d6c58 ("fs/ntfs3: Fix
 memory leak if fill_super failed") > Please ignore. I mistook this for another
 thread. Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.117.158.50 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
 [URIs: siddh.me]
X-Headers-End: 1oRHvW-000J8l-OY
X-Mailman-Approved-At: Thu, 25 Aug 2022 19:19:50 +0000
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

On Fri, 26 Aug 2022 00:02:07 +0530  Siddh Raman Pant  wrote:
> This is incorrect. The issue is caused by:
> 9b75450d6c58 ("fs/ntfs3: Fix memory leak if fill_super failed")
>

Please ignore. I mistook this for another thread.

Extremely sorry,
Siddh


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
