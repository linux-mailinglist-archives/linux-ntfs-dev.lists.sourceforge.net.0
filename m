Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8CF2FA344
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 Jan 2021 15:40:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l1Vhg-0005cm-6T; Mon, 18 Jan 2021 14:40:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mark.harmstone@gmail.com>) id 1l1Ung-0000gU-RG
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 13:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q5isUwhLkIrwtYU6nmgpmTKGhNdkuDOrfeEhUb5gcvA=; b=caxQfRr2uhyvFrj4jA0mvVf43a
 3vHT21MtukNdzfzhNfuKiOuaEl3vynyffQX31gEIuKfZa8pYfAP6NnRTpC9Fqj7B70I2JwJSrnfeH
 /HkPCkXJCLxmtQRN4k6ScLeEEHPaJcbFfNsbPUQCjX5i7NoF6Y+tZcP3+T7VFAQqamYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q5isUwhLkIrwtYU6nmgpmTKGhNdkuDOrfeEhUb5gcvA=; b=hndiMeLsqubsUC2lheJ+8+dKwv
 gBln/wTq9HLXMB9EV+i9lrKCxp/1hCQOxaafWPIU14P0iMEHrfwmwdAAFMNPHtftWU5UdVYKlIOJR
 ahRSvQtoNFaEGWKcbbGABzM6M0p67zflL5JC3tae0rRNJWvs2TxIGAO9osjMy65B4cyM=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l1UnW-005SOy-8J
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 13:42:32 +0000
Received: by mail-wm1-f41.google.com with SMTP id r4so13800352wmh.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 18 Jan 2021 05:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=q5isUwhLkIrwtYU6nmgpmTKGhNdkuDOrfeEhUb5gcvA=;
 b=G2O5upPd2pC3Tnob5zTrjjGwRG4GBgaBrojfzoYZ84o2PQDqoUqZnlOLKEzek2K+zl
 WO7DmjhUFIJ2AW3wFC+SR+QnDz3AMbVXZjon50dfpx6igjzvkkKmLBE0Aad1FeAZiC9a
 h8vRvD5neo0+La701dKo3lZJHFIzi2YPb6LkgHslroE6SVy2PIx1w8Mbk2tHVmEU1Yyc
 c68jkA1mAljySRaILsZuijeQXanV/g4ZXVtLa8PFjo8mEUUHtVYzYhsilQxbtD+sVCOo
 IAfp4wKhNeAUBcC12uN6S2b62lG5QukWUVcwrUwZiaMToCoKFhrjB4SgzcP9dLdOIh56
 TsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=q5isUwhLkIrwtYU6nmgpmTKGhNdkuDOrfeEhUb5gcvA=;
 b=dMZB13QAeZI7cN/ERME93Qrv0EZwTEEdnDyuDR2FdStbmKE3dfziq+EO4bRI9TQMqL
 qbQl8EHWkVIcRZzsDw1NSZep0srkwZ80OsYco7v5jgf+6jzYrflDjWd0D1B1h7ceuFCG
 7kgagOg5tk0tDzmfIscLMlIsuGMOFk175eKxfhuO8pxeNuz9t/1P3ajcLZ8YlF4hq94m
 mHoiowd+2VXUp2gsku2W2/CfxBd32r+RCS2X2A7mtIVHuTlHs9KdRbkXYylByXNoFFRb
 l9PKPXuXFrqHZ+sX0WiCq5XnOqP1RIoaCYVzfMvHcD8RUcgNEBO67WDLusJOSRRLOL6O
 pYVg==
X-Gm-Message-State: AOAM532yb01jSyimQo6BZilv5qUYvB3hAN0t4lo2lxFpixwCou35l4js
 8MBdlzPYKU8bk5WoeAXn1/TniTv/z19O/ciQ
X-Google-Smtp-Source: ABdhPJzoK1VolekfvjLQEc6HBtz4xTC11RI2s8YqOS6Ibyk5Uo5LWtl87LZhRtYJxzjv0LQ0vd++7A==
X-Received: by 2002:a1c:a1c1:: with SMTP id
 k184mr20790767wme.101.1610977335972; 
 Mon, 18 Jan 2021 05:42:15 -0800 (PST)
Received: from ?IPv6:2a02:8010:64ea:0:fad1:11ff:fead:57db?
 ([2a02:8010:64ea:0:fad1:11ff:fead:57db])
 by smtp.googlemail.com with ESMTPSA id z6sm25197472wmi.15.2021.01.18.05.42.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Jan 2021 05:42:15 -0800 (PST)
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Kari Argillander <kari.argillander@gmail.com>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-9-almaz.alexandrovich@paragon-software.com>
 <20210103220739.2gkh6gy3iatv4fog@kari-VirtualBox>
 <baa71c9fa715473e87172c3afa3cc7d2@paragon-software.com>
From: Mark Harmstone <mark@harmstone.com>
Message-ID: <548f5de7-9e24-c1bc-3ef5-641bc8a3dd37@harmstone.com>
Date: Mon, 18 Jan 2021 13:42:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <baa71c9fa715473e87172c3afa3cc7d2@paragon-software.com>
Content-Language: en-US
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mark.harmstone[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l1UnW-005SOy-8J
X-Mailman-Approved-At: Mon, 18 Jan 2021 14:40:22 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 08/10] fs/ntfs3: Add Kconfig,
 Makefile and doc
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
Cc: "andy.lavr@gmail.com" <andy.lavr@gmail.com>,
 "nborisov@suse.com" <nborisov@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "willy@infradead.org" <willy@infradead.org>,
 "dsterba@suse.cz" <dsterba@suse.cz>,
 "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "joe@perches.com" <joe@perches.com>, "hch@lst.de" <hch@lst.de>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 18/1/21 11:43 am, Konstantin Komarov wrote:
> From: Kari Argillander <kari.argillander@gmail.com>
> Sent: Monday, January 4, 2021 1:08 AM
>> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
>> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
>> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
>> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de; ebiggers@kernel.org;
>> andy.lavr@gmail.com
>> Subject: Re: [PATCH v17 08/10] fs/ntfs3: Add Kconfig, Makefile and doc
>>
>> On Thu, Dec 31, 2020 at 06:23:59PM +0300, Konstantin Komarov wrote:
>>> This adds Kconfig, Makefile and doc
>>>
>>> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
>>> ---
>>>  Documentation/filesystems/ntfs3.rst | 107 ++++++++++++++++++++++++++++
>>>  fs/ntfs3/Kconfig                    |  41 +++++++++++
>>>  fs/ntfs3/Makefile                   |  31 ++++++++
>> Also Documentation/filesystems/index.rst should contain ntfs3.
>>
>>>  3 files changed, 179 insertions(+)
>>>  create mode 100644 Documentation/filesystems/ntfs3.rst
>>>  create mode 100644 fs/ntfs3/Kconfig
>>>  create mode 100644 fs/ntfs3/Makefile
>>>
>>> diff --git a/fs/ntfs3/Kconfig b/fs/ntfs3/Kconfig
>>> new file mode 100644
>>> index 000000000000..f9b732f4a5a0
>>> --- /dev/null
>>> +++ b/fs/ntfs3/Kconfig
>>> @@ -0,0 +1,41 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only
>>> +config NTFS3_FS
>>> +	tristate "NTFS Read-Write file system support"
>>> +	select NLS
>>> +	help
>>> +	  Windows OS native file system (NTFS) support up to NTFS version 3.1.
>>> +
>>> +	  Y or M enables the NTFS3 driver with full features enabled (read,
>>> +	  write, journal replaying, sparse/compressed files support).
>>> +	  File system type to use on mount is "ntfs3". Module name (M option)
>>> +	  is also "ntfs3".
>>> +
>>> +	  Documentation: <file:Documentation/filesystems/ntfs3.rst>
>>> +
>>> +config NTFS3_64BIT_CLUSTER
>>> +	bool "64 bits per NTFS clusters"
>>> +	depends on NTFS3_FS && 64BIT
>>> +	help
>>> +	  Windows implementation of ntfs.sys uses 32 bits per clusters.
>>> +	  If activated 64 bits per clusters you will be able to use 4k cluster
>>> +	  for 16T+ volumes. Windows will not be able to mount such volumes.
>>> +
>>> +	  It is recommended to say N here.
>>> +
>>> +config NTFS3_LZX_XPRESS
>>> +	bool "activate support of external compressions lzx/xpress"
>>> +	depends on NTFS3_FS
>>> +	help
>>> +	  In Windows 10 one can use command "compact" to compress any files.
>>> +	  4 possible variants of compression are: xpress4k, xpress8k, xpress16 and lzx.
>>> +	  To read such "compacted" files say Y here.
>> It would be nice that we tell what is recommend. I think that this is recommend.
>> Of course if this use lot's of resource that is different story but I do not
>> think that is the case.
>>
>>> +
>>> +config NTFS3_POSIX_ACL
>>> +	bool "NTFS POSIX Access Control Lists"
>>> +	depends on NTFS3_FS
>>> +	select FS_POSIX_ACL
>>> +	help
>>> +	  POSIX Access Control Lists (ACLs) support additional access rights
>>> +	  for users and groups beyond the standard owner/group/world scheme,
>>> +	  and this option selects support for ACLs specifically for ntfs
>>> +	  filesystems.
>> Same here. Let's suggest what user should do. Is this recommend if we wan't
>> to use volume also in Windows?
> Hi! All done, thanks for pointing these out.

Is the existence of NTFS3_64BIT_CLUSTER wise? I mean, what on earth is the
point of an NTFS volume that Windows refuses to read?

If NTFS was properly documented by Microsoft, fair enough, but AFAIK it's
defined by what ntfs.sys does. I don't think we should be extending the
specification like this.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
