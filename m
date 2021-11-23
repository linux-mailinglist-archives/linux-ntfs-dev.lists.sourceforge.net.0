Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF16459A01
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 23 Nov 2021 03:15:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mpLLf-0008Kz-MG; Tue, 23 Nov 2021 02:15:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mpLFM-0006SQ-9h
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 23 Nov 2021 02:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oWtND7ICJC5baRJLmgbeqWVA09fkkAkT0lOW2xOAyJA=; b=HaXPuDS2zKnKQE+gvD/9GFFmBD
 Dt/KBulGI+yzDzDZlQUz+Mi+YXbJOQgPfTkO5/92aRtfgvqOZE0BVeivvJKkf9GL5zFRvC1Z5Cb7x
 PouSuRXHNAz6dTmlj0NDJCa7Zf8yv5kExJw6gXqADjZrE9IabP/65q94vmmfARhBvE00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oWtND7ICJC5baRJLmgbeqWVA09fkkAkT0lOW2xOAyJA=; b=CkLD2oMFARjN3Yfta2WuC24boa
 CApCqZAJwW3ZKSigSg2e7efDkWSsPry4feaIMzY4stpMY1Qj57686LbVgWHDsEzwfoVWiUwcOUwbZ
 BJNN35ekchlJcN6B60/qnQVYi0RfaBdOxj8jJFM4we21ZIdOgqQbJzRgVAYlOUl6vDfw=;
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpLFL-005VWt-LA
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 23 Nov 2021 02:09:24 +0000
Received: by mail-oi1-f176.google.com with SMTP id n66so41556770oia.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Nov 2021 18:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oWtND7ICJC5baRJLmgbeqWVA09fkkAkT0lOW2xOAyJA=;
 b=m3mF8I2q57/y6xpBC5OvdPhfr4I+5RBCdd9USl0029kSUrpHdINIWhf64v+VRjBels
 yVkrnNoCV5cvvS+NKUcmSFJ30HNXqS7CIj1imSBDldksG9WnRVuanbvKMNfeui42zYeL
 ZPKskr1IzPCovX9VFFwtuNrthRNj9AvWKBoNfdK3uIz+cPXDFIoXsWhXKX5++KBZJZHV
 Jl82/EeeASdyN8JqvhjrkKEjEV5IommoOlxafh1Cc4/56hxyQEd1qFez+Vo0g/aIluZF
 zfp19WD1ZIYaw2wNgm0XWhOCsr2Wzvka2oxSYu2lmwLkQHn2Jia1Wv8qkiYrXQk/P1qF
 NfYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:to:cc:references:from:subject:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oWtND7ICJC5baRJLmgbeqWVA09fkkAkT0lOW2xOAyJA=;
 b=lUSVfDgkyS7/1SuZbiF9PPV8RUMy+uAByFmolGwYTm5RHQFzbvfjB0V1awre9H5Vk2
 8NupAdwWotvE+mYGSkI1WXd2WIFretPCpzwzA3lT2fN5Ku16pPww6zXGgTKhDt64m5y/
 eSe2SZUDVPa0oYHxyKQI+Ku74TaDrTUI9ZFHWM8K9TJqEGUvtJs67ZrNrjCYGyuVk8S3
 +GCbyS0NXLzYADjm08Eou8NaZuP3iPEMIipHjHeGhHDCZE9dn6OcaOtReneTtNV+aRGI
 okziMAmEqypElJNT8bOyYFd0PnnSn7GNlyGs4FN9Et0N4VMDoKsUU3v88fUNMvzTrJ+u
 II/A==
X-Gm-Message-State: AOAM530J/UVF3XN7wvBm0o8E3rw7NA9YoVhROJx8pMvwxccVvivUrbA2
 ALB7wqrVpe6L42SGyQCT+McdGLq2FpA=
X-Google-Smtp-Source: ABdhPJwkDBXGj2Uz2bCWuojDmrpQEqdteL8ZPZ9O9uiq6m7jFFWyra+ZYEvPXZGpLKIgyebfWd8Wlg==
X-Received: by 2002:a05:6808:98e:: with SMTP id
 a14mr26538208oic.48.1637633358122; 
 Mon, 22 Nov 2021 18:09:18 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 z14sm1904917otk.36.2021.11.22.18.09.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 18:09:17 -0800 (PST)
To: Joel Stanley <joel@jms.id.au>
References: <20211122230653.1779162-1-linux@roeck-us.net>
 <CACPK8XfM1e7b6m_QBhJFgXCXhqOajMKGUkWqRGxa5sCKyLxRQg@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <b63d1758-b434-93c3-164c-b536c7437bdf@roeck-us.net>
Date: Mon, 22 Nov 2021 18:09:15 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CACPK8XfM1e7b6m_QBhJFgXCXhqOajMKGUkWqRGxa5sCKyLxRQg@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/22/21 5:15 PM, Joel Stanley wrote: > On Mon, 22 Nov
 2021 at 23:58, Guenter Roeck <linux@roeck-us.net> wrote: >> >> NTFS_RW code
 allocates page size dependent arrays on the stack. This >> results [...] 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.176 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mpLFL-005VWt-LA
X-Mailman-Approved-At: Tue, 23 Nov 2021 02:15:54 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs: ntfs: Disable NTFS_RW for PPC
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-ntfs-dev@lists.sourceforge.net, Michael Ellerman <mpe@ellerman.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 11/22/21 5:15 PM, Joel Stanley wrote:
> On Mon, 22 Nov 2021 at 23:58, Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> NTFS_RW code allocates page size dependent arrays on the stack. This
>> results in build failures if the page size is 64k, which is now the
>> default for PPC.
> 
> It became the default for PPC_BOOK3S_64, which doesn't include all of
> PPC, in f22969a66041 ("powerpc/64s: Default to 64K pages for 64 bit
> book3s").
> 
> You might want to add a mention of this commit in your commit message.
> 
>>
>> fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
>> fs/ntfs/aops.c:1311:1: error:
>>          the frame size of 2240 bytes is larger than 2048 bytes
>>
>> Increasing the maximum frame size for PPC just to silence this error does
>> not really help. It would have to be set to a really large value for 256k
>> pages. Such a large frame size could potentially result in stack overruns
>> in this code and elsewhere and is therefore not desirable. Disable NTFS_RW
>> for PPC instead.
>>
>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
>> Cc: Linus Torvalds <torvalds@linux-foundation.org>
>> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
>> ---
>> v2: Introduce new configuration flag DISABLE_NTFS_RW and use it to disable NTFS_RW
>>      for PPC
>>
>>   fs/ntfs/Kconfig | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
>> index 1667a7e590d8..324224febb6a 100644
>> --- a/fs/ntfs/Kconfig
>> +++ b/fs/ntfs/Kconfig
>> @@ -49,8 +49,13 @@ config NTFS_DEBUG
>>            When reporting bugs, please try to have available a full dump of
>>            debugging messages while the misbehaviour was occurring.
>>
>> +config DISABLE_NTFS_RW
>> +       bool
>> +       default y if PPC
> 
> PPC_64K_PAGES would be more accurate.
> 
> I think arm64 was seeing a similar build error, so you could include
> ARM64_64K_PAGES as well?
> 
Yes, you are correct.

fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
fs/ntfs/aops.c:1311:1: error: the frame size of 2608 bytes is larger than 2048 bytes

Ok, I'll do that. And, digging for it, I see

config VMXNET3
         tristate "VMware VMXNET3 ethernet driver"
         depends on PCI && INET
         depends on !(PAGE_SIZE_64KB || ARM64_64K_PAGES || \
                      IA64_PAGE_SIZE_64KB || PARISC_PAGE_SIZE_64KB || \
                      PPC_64K_PAGES)

That adds hexagon, ia64, mips, parisc, and sh to the list of affected architectures.
Plus, of course, there is PAGE_SIZE_256KB and PPC_256K_PAGES.

So we are looking for something like

config DISABLE_NTFS_RW
	bool
	default y if PAGE_SIZE_256KB || PPC_256K_PAGES || \
		PAGE_SIZE_64KB || ARM64_64K_PAGES || IA64_PAGE_SIZE_64KB || \
		PARISC_PAGE_SIZE_64KB || PPC_64K_PAGES

Anything else ?

Guenter


>> +
>>   config NTFS_RW
>>          bool "NTFS write support"
>> +       depends on !DISABLE_NTFS_RW
>>          depends on NTFS_FS
>>          help
>>            This enables the partial, but safe, write support in the NTFS driver.
>> --
>> 2.33.0
>>



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
