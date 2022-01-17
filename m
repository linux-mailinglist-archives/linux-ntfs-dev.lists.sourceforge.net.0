Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FC449280E
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 18 Jan 2022 15:11:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1n9pCu-0005Xg-18; Tue, 18 Jan 2022 14:11:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <paskripkin@gmail.com>) id 1n9XHo-00068p-Le
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 Jan 2022 19:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:References:To:From:Subject:MIME-Version
 :Date:Message-ID:Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=diQLW7TXTCFX4JE+KanS662NxmpjJMEIjMvzHGVF+dY=; b=GfWcZXRir8p21HRDkCGGabh7eP
 +ZNzUw9W9ZJAPFl+T9pyJ5m48feTysePZ2zfB3BWGHcjNUq5EiEVF7iX87WYhtIA4SsXujGv22reE
 joEzc+F27dbPEg0Kv+jERnynG6pjKjKZg7D56tVpCgBl8QdNoGKmPF1GaQPpUWhX/QT0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:References:To:From:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=diQLW7TXTCFX4JE+KanS662NxmpjJMEIjMvzHGVF+dY=; b=PUpDzXokiEEQ0iWMevmS10tf/I
 t2CFqE35yoGkWmiuAMRhSaAYGvuiXRgNeQ98tmDR7kYiEYx0PA0LJ8cZr36sH65KLPgbsXgF+8q7x
 226KvQylXyx6KA3wx8P+B3WPp4IzZq5s5styYmoVUcB7Nxoi+e76ZfX29f5LtvgeZYbU=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9XHm-0002ox-KW
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 Jan 2022 19:03:23 +0000
Received: by mail-lf1-f52.google.com with SMTP id b14so42806992lff.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 17 Jan 2022 11:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:references:in-reply-to;
 bh=diQLW7TXTCFX4JE+KanS662NxmpjJMEIjMvzHGVF+dY=;
 b=PvnCl/KD8Wi+yUNyPZjqzV9nTvT4sa8xg+O9YSGbvRtjbrlBxLhW4+aY199JHJyH8S
 RpO18Dw/uZu6e0+QxXaD/+CpY8OL0xZmmXFgphcOGiXsDSInzHAFBdBFLe40LsWbOtB8
 PHS/AeQgRZXg7xq/JrIFAe2o8Gj3dNOGaFqOEcsyo7Q4axxcRBt7+ICkzUC4tJ25XjWq
 ybnicnvM2C5rtnJ9dSGJY9hGJ0v/BcUZHi/g6RjlX3znKaT9sqPIxBv7BMtzrpWQvCcX
 9KOG/RraBmt4B2qlu+La+m5JCfIZy2U4WkpzCwSrmMK89vd/oQc7M7Ofmj4Tdm2Vp+eV
 b4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:references:in-reply-to;
 bh=diQLW7TXTCFX4JE+KanS662NxmpjJMEIjMvzHGVF+dY=;
 b=KprNYw6ST7UEzsyOPycdGrwslRWsWw4YqlnqjD/WDXHmD9L41XZoF3kjFGIhoO3XZA
 zaHzi5w86Lmo+/QBVHaZnHrtJjle8uLpIgW2jz31L2UCIaOsMM/AQu0CLkB2D5QLSJZB
 xGIu2cKUnUaf7qjy1zz6PmYYPNxwxKvZ6TNHBmFSfCza9tAfIwffIJCI/5aMUg9jAjtv
 /MT6GgkS75nmtNwSVfbM6MqmbzFS/rFtneDfhUpKEmUN7bc/pbhrI0sFXpiJe+yqpuNw
 ZAjCrQWiB/0VVZiAkD6Bff/QZxM4QncQcoon9esbknAZBQFq4H/yrpuYjHg1t+PxYjCs
 unlg==
X-Gm-Message-State: AOAM532FGNIASlvsVEhEIeF5HM5oWkkB5Mudl5A+QwdvO98QAUdJ24No
 fCMye8bcFVtOmUsEXbIjJ/o=
X-Google-Smtp-Source: ABdhPJx5Pm6pUZrf/3LMmVmO/F6TPFh9YJEtetOGvqoOya+PjyY0E3OistJqkcWG00jVLPAl4oUTjg==
X-Received: by 2002:a05:651c:908:: with SMTP id
 e8mr8712821ljq.200.1642446196063; 
 Mon, 17 Jan 2022 11:03:16 -0800 (PST)
Received: from [192.168.1.11] ([94.103.227.208])
 by smtp.gmail.com with ESMTPSA id bq30sm1463545lfb.222.2022.01.17.11.03.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 11:03:15 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------hH4tojY0MpBCRE8WyCF2GwLt"
Message-ID: <860dfdad-d7db-9c27-adfe-02a3b2e02d0b@gmail.com>
Date: Mon, 17 Jan 2022 22:03:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Pavel Skripkin <paskripkin@gmail.com>
To: syzbot <syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com>,
 anton@tuxera.com, linux-kernel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
References: <000000000000739eb405d5c458dc@google.com>
 <38455f10-6cac-4eda-3e7a-3744fb377870@gmail.com>
In-Reply-To: <38455f10-6cac-4eda-3e7a-3744fb377870@gmail.com>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/17/22 22:02, Pavel Skripkin wrote: > On 1/17/22 13:09, 
 syzbot wrote: >> Hello, >> >> syzbot found the following issue on: >> >>
 HEAD commit: d0a231f01e5b Merge tag 'pci-v5.17-changes' of git://gi [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [94.103.227.208 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.52 listed in list.dnswl.org]
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n9XHm-0002ox-KW
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
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--------------hH4tojY0MpBCRE8WyCF2GwLt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/17/22 22:02, Pavel Skripkin wrote:
> On 1/17/22 13:09, syzbot wrote:
>> Hello,
>> 
>> syzbot found the following issue on:
>> 
>> HEAD commit:    d0a231f01e5b Merge tag 'pci-v5.17-changes' of git://git.ke..
>> git tree:       upstream
>> console output: https://syzkaller.appspot.com/x/log.txt?x=11f83837b00000
>> kernel config:  https://syzkaller.appspot.com/x/.config?x=986ed422f1741853
>> dashboard link: https://syzkaller.appspot.com/bug?extid=3c765c5248797356edaa
>> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
>> 
>> Unfortunately, I don't have any reproducer for this issue yet.
>> 
> 
> Sad :(
> 
>> IMPORTANT: if you fix the issue, please add the following tag to the commit:
>> Reported-by: syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com
>> 
> 
> __ntfs_malloc() calls BUG_ON() in case of requested size is equal to
> zero. Seems like syzbot has once again crafted malicious fs image that
> has attr_list_size == 0
> 
> Just for thoughts
> 
> 

Clicked 'Send' button too early, sorry

With regards,
Pavel Skripkin


--------------hH4tojY0MpBCRE8WyCF2GwLt
Content-Type: text/plain; charset=UTF-8; name="ph"
Content-Disposition: attachment; filename="ph"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2ZzL250ZnMvaW5vZGUuYyBiL2ZzL250ZnMvaW5vZGUuYwppbmRleCBm
NWMwNThiMzE5MmMuLmE5M2ZjM2RiZDRmZCAxMDA2NDQKLS0tIGEvZnMvbnRmcy9pbm9kZS5j
CisrKyBiL2ZzL250ZnMvaW5vZGUuYwpAQCAtMTg4MSw2ICsxODgxLDkgQEAgaW50IG50ZnNf
cmVhZF9pbm9kZV9tb3VudChzdHJ1Y3QgaW5vZGUgKnZpKQogCQl9CiAJCS8qIE5vdyBhbGxv
Y2F0ZSBtZW1vcnkgZm9yIHRoZSBhdHRyaWJ1dGUgbGlzdC4gKi8KIAkJbmktPmF0dHJfbGlz
dF9zaXplID0gKHUzMiludGZzX2F0dHJfc2l6ZShhKTsKKwkJaWYgKG5pLT5hdHRyX2xpc3Rf
c2l6ZSA9PSAwKQorCQkJZ290byBwdXRfZXJyX291dDsKKwogCQluaS0+YXR0cl9saXN0ID0g
bnRmc19tYWxsb2Nfbm9mcyhuaS0+YXR0cl9saXN0X3NpemUpOwogCQlpZiAoIW5pLT5hdHRy
X2xpc3QpIHsKIAkJCW50ZnNfZXJyb3Ioc2IsICJOb3QgZW5vdWdoIG1lbW9yeSB0byBhbGxv
Y2F0ZSBidWZmZXIgIgo=

--------------hH4tojY0MpBCRE8WyCF2GwLt
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------hH4tojY0MpBCRE8WyCF2GwLt
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--------------hH4tojY0MpBCRE8WyCF2GwLt--

