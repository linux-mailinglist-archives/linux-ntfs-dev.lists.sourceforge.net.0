Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 586D749280D
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 18 Jan 2022 15:11:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1n9pCt-0005Xb-VQ; Tue, 18 Jan 2022 14:11:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <paskripkin@gmail.com>) id 1n9XGs-0007za-Bb
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 Jan 2022 19:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WvbXEhKMMN0GmOckN6zN2KXde81RRc5HGG+ozhtaEIg=; b=YyGR7YDvtedpxDeglRDJ0NiDBi
 4jEgR1jusF9l5ooMU000Nw4upxc+vsFrKti57apgiVymzvL429d0gVBFXSalUKTRCbnmh1LSoEzfU
 ncyKIyBMHVV/2fYesgy7cVvBdLBtXrPSCDFDq7xyVkI59T5HITxdJGp/TftYwAXvw1xE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WvbXEhKMMN0GmOckN6zN2KXde81RRc5HGG+ozhtaEIg=; b=PaTQXia+P1M9j5RQvdFzeOCVmM
 Zzkph20wCMFxn3cm0yYoMvHgzHMk8KxJFdVM4TPbOd43l4WmKeY1r5wV5gUq/+6uEiyC9E9TrmWlc
 fNlMgFvwL+0gAM8X+LdITEwGzzguyXRf7AdwmZ4mkOKLDs1UrAReu5++cJ1Y2lwSnbvY=;
Received: from mail-lf1-f42.google.com ([209.85.167.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9XGq-0002lO-NN
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 Jan 2022 19:02:25 +0000
Received: by mail-lf1-f42.google.com with SMTP id o15so61186407lfo.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 17 Jan 2022 11:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=WvbXEhKMMN0GmOckN6zN2KXde81RRc5HGG+ozhtaEIg=;
 b=GPPkCee1xrGK7EyCkoGt+hwDgACYkjYj/t2hsJ/Cw+ZnWitIBKt6Wa3eSytB5aZjfW
 4rj3Pe3dMrTMemUrsnUGKelg1BQXS8S5xqKOcUU6O/J/GuIBK89//g7cjIGhfVHhE1zK
 4fRTKXGL7MydDNWN3trZa5WCj1sOleftnjCn3aYNO91h2JRD/GOP1hplXmzqDuLqvWGC
 7KbzM5gQOA69a/88lfOYUKXZRJprVQgLT7a46Ma+aQKtwMy+hZAG76jeyp/xzcmbt/fS
 UX2Eaaxdgdr9yVFk+jY5sa6fZQ1gLJ7X6Gyfsc7j8JSI3Rk8eeJE3XZdgBKEh5C9ZGhg
 s3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=WvbXEhKMMN0GmOckN6zN2KXde81RRc5HGG+ozhtaEIg=;
 b=thdi4dCAl36JjnaP9gg743N4pI8A1CQoAh2+qQQ9EsFT48MnUxRkOpMfvGxiNSI+pK
 PK5ixwfTJC7K8ryEKBq9JLtnkn924V+qhKLTKtv7sfx6hp4g+R8uNzRT9EWWtUtlzhAf
 4GysdkUstmv3mx4vFsPs6ajTyJLe2r13xsxQVO0qhFUfDqyiomj6wSwaaC6267UvzBt7
 O0MNE8UW/ONLy2o32Ru0sLy9yY5H9mWcdm/vvvLsf7TvcFxws8Hmxh4eNNMxMK8+WT/9
 wXOgPtZgnRTl4qyBhYVXh/OPLn0yOQ3BzdKhyJbUTsEvsDMJN3WsUinwWERuuDji+i5t
 zVjA==
X-Gm-Message-State: AOAM533HmKwWlPMMdja0HwVOpR+henyem9eWDOfnyheM8fL8lXeNjnPs
 5FddahtOrTrKci0MnFGziYI=
X-Google-Smtp-Source: ABdhPJz1YbYmEgd4oGiaAeaV2suCiVIh4pAX4ZjZXDs/uXT5r1OB4Ds3IzNI5uNpHmSvmtOqu2OkcQ==
X-Received: by 2002:ac2:58da:: with SMTP id u26mr17661738lfo.91.1642446137110; 
 Mon, 17 Jan 2022 11:02:17 -0800 (PST)
Received: from [192.168.1.11] ([94.103.227.208])
 by smtp.gmail.com with ESMTPSA id t18sm1040360lfr.155.2022.01.17.11.02.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 11:02:16 -0800 (PST)
Message-ID: <38455f10-6cac-4eda-3e7a-3744fb377870@gmail.com>
Date: Mon, 17 Jan 2022 22:02:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: syzbot <syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com>,
 anton@tuxera.com, linux-kernel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
References: <000000000000739eb405d5c458dc@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <000000000000739eb405d5c458dc@google.com>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/17/22 13:09, syzbot wrote: > Hello, > > syzbot found
 the following issue on: > > HEAD commit: d0a231f01e5b Merge tag
 'pci-v5.17-changes'
 of git://git.ke.. > git tree: upstream > console output: h [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paskripkin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [94.103.227.208 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.42 listed in wl.mailspike.net]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n9XGq-0002lO-NN
X-Mailman-Approved-At: Tue, 18 Jan 2022 14:11:28 +0000
Subject: Re: [Linux-NTFS-Dev] [syzbot] kernel BUG in ntfs_read_inode_mount
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 1/17/22 13:09, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    d0a231f01e5b Merge tag 'pci-v5.17-changes' of git://git.ke..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=11f83837b00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=986ed422f1741853
> dashboard link: https://syzkaller.appspot.com/bug?extid=3c765c5248797356edaa
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> 
> Unfortunately, I don't have any reproducer for this issue yet.
> 

Sad :(

> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com
> 

__ntfs_malloc() calls BUG_ON() in case of requested size is equal to 
zero. Seems like syzbot has once again crafted malicious fs image that 
has attr_list_size == 0

Just for thoughts


With regards,
Pavel Skripkin


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
