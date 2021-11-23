Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5930045AD47
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 23 Nov 2021 21:24:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mpcLK-0005gB-77; Tue, 23 Nov 2021 20:24:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mpe@ellerman.id.au>) id 1mpUTf-0006Lc-Ly
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 23 Nov 2021 12:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qqAD2VWLEMQH+phv8NFveP7U5VFKxU4q6PVtjKnS8RM=; b=Q4x/ad/UwWNrbrfd627OuKbry
 3su3wWYF69eegKMofprh4HaMGvpfrWBn66ooXAvQTT7ykKV+imcux0yPfeT1QfhQiZyXCAOFdQk0h
 nGeybbV44YfA719BAKfEcVck64yLjsCfMs8pdy6NvUiJuZWFOcp2p9iwVrcSTHsBXP6ag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qqAD2VWLEMQH+phv8NFveP7U5VFKxU4q6PVtjKnS8RM=; b=HN2ZB68Ice5Pk62kNJZ7V6WH8H
 EsuR7U6UIw02DSafCyCoy4ZSPYvQCSYnrqOV9j4fheMpWQxuKUtE71+pD3S+SOHSHzcXIlab7E6pV
 +p0X3To0K2G+hHz+nYJ0od6n6+d/fukjr0/S1piOVCx5PZdUhVUY+mvR3zfSbeNkLVCI=;
Received: from gandalf.ozlabs.org ([150.107.74.76])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpUTa-0060CP-8J
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 23 Nov 2021 12:00:48 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4Hz2N8002hz4xbs;
 Tue, 23 Nov 2021 22:43:51 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
 s=201909; t=1637667834;
 bh=qqAD2VWLEMQH+phv8NFveP7U5VFKxU4q6PVtjKnS8RM=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=o7yGcV4y24HPIbff4/mau/++TJPX2G5JyZzP24CzskPLwE6AfqH4X+r28t0zNNPer
 dAVnCmuEQDTgKNAoUbIc18WEmpf7OgSDLPgnAWRdcHrNTnCX6FE2vlB4ZKWqadINvn
 Y85q+X9KzllvXcCMNjTsV6C7TyxlzRxhCGPf90Jgzay6un4erkBIyIbKGhXFNgdEi7
 OrR7L58tK3q52DIBiYrJza+RQFSY8zvH02d8GCbbijgGQT3CrIpfF7/LOZhS0F0be6
 QtLst+/YHkcIENxkWMQRnkGn1AnFMFk4yP1I1IBCdkwfBdNFE1lVFUPbt8/de9M8U0
 3yVOy07r4y6Dw==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Guenter Roeck <linux@roeck-us.net>, Joel Stanley <joel@jms.id.au>
In-Reply-To: <b63d1758-b434-93c3-164c-b536c7437bdf@roeck-us.net>
References: <20211122230653.1779162-1-linux@roeck-us.net>
 <CACPK8XfM1e7b6m_QBhJFgXCXhqOajMKGUkWqRGxa5sCKyLxRQg@mail.gmail.com>
 <b63d1758-b434-93c3-164c-b536c7437bdf@roeck-us.net>
Date: Tue, 23 Nov 2021 22:43:48 +1100
Message-ID: <87a6hvqeq3.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Guenter Roeck <linux@roeck-us.net> writes: > On 11/22/21 5:15
 PM, Joel Stanley wrote: >> On Mon, 22 Nov 2021 at 23:58,
 Guenter Roeck <linux@roeck-us.net>
 wrote: >>> >>> NTFS_RW code allocates page siz [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mpUTa-0060CP-8J
X-Mailman-Approved-At: Tue, 23 Nov 2021 20:24:40 +0000
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Guenter Roeck <linux@roeck-us.net> writes:
> On 11/22/21 5:15 PM, Joel Stanley wrote:
>> On Mon, 22 Nov 2021 at 23:58, Guenter Roeck <linux@roeck-us.net> wrote:
>>>
>>> NTFS_RW code allocates page size dependent arrays on the stack. This
>>> results in build failures if the page size is 64k, which is now the
>>> default for PPC.
>> 
>> It became the default for PPC_BOOK3S_64, which doesn't include all of
>> PPC, in f22969a66041 ("powerpc/64s: Default to 64K pages for 64 bit
>> book3s").
>> 
>> You might want to add a mention of this commit in your commit message.
>> 
>>>
>>> fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
>>> fs/ntfs/aops.c:1311:1: error:
>>>          the frame size of 2240 bytes is larger than 2048 bytes
>>>
>>> Increasing the maximum frame size for PPC just to silence this error does
>>> not really help. It would have to be set to a really large value for 256k
>>> pages. Such a large frame size could potentially result in stack overruns
>>> in this code and elsewhere and is therefore not desirable. Disable NTFS_RW
>>> for PPC instead.
>>>
>>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>>> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
>>> Cc: Linus Torvalds <torvalds@linux-foundation.org>
>>> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
>>> ---
>>> v2: Introduce new configuration flag DISABLE_NTFS_RW and use it to disable NTFS_RW
>>>      for PPC
>>>
>>>   fs/ntfs/Kconfig | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>> diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
>>> index 1667a7e590d8..324224febb6a 100644
>>> --- a/fs/ntfs/Kconfig
>>> +++ b/fs/ntfs/Kconfig
>>> @@ -49,8 +49,13 @@ config NTFS_DEBUG
>>>            When reporting bugs, please try to have available a full dump of
>>>            debugging messages while the misbehaviour was occurring.
>>>
>>> +config DISABLE_NTFS_RW
>>> +       bool
>>> +       default y if PPC
>> 
>> PPC_64K_PAGES would be more accurate.
>> 
>> I think arm64 was seeing a similar build error, so you could include
>> ARM64_64K_PAGES as well?
>> 
> Yes, you are correct.
>
> fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
> fs/ntfs/aops.c:1311:1: error: the frame size of 2608 bytes is larger than 2048 bytes
>
> Ok, I'll do that. And, digging for it, I see
>
> config VMXNET3
>          tristate "VMware VMXNET3 ethernet driver"
>          depends on PCI && INET
>          depends on !(PAGE_SIZE_64KB || ARM64_64K_PAGES || \
>                       IA64_PAGE_SIZE_64KB || PARISC_PAGE_SIZE_64KB || \
>                       PPC_64K_PAGES)
>
> That adds hexagon, ia64, mips, parisc, and sh to the list of affected architectures.
> Plus, of course, there is PAGE_SIZE_256KB and PPC_256K_PAGES.
>
> So we are looking for something like
>
> config DISABLE_NTFS_RW
> 	bool
> 	default y if PAGE_SIZE_256KB || PPC_256K_PAGES || \
> 		PAGE_SIZE_64KB || ARM64_64K_PAGES || IA64_PAGE_SIZE_64KB || \
> 		PARISC_PAGE_SIZE_64KB || PPC_64K_PAGES
>
> Anything else ?

Can we do something like this instead?

I'm pretty sure it does what we want for NTFS, and also for VMXNET3.

It is not pretty, but at least keeps the arch specifics out of driver
Kconfigs.

cheers


diff --git a/arch/Kconfig b/arch/Kconfig
index 26b8ed11639d..d3c4ab249e9c 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -991,6 +991,16 @@ config HAVE_ARCH_COMPAT_MMAP_BASES
 	  and vice-versa 32-bit applications to call 64-bit mmap().
 	  Required for applications doing different bitness syscalls.
 
+config PAGE_SIZE_LESS_THAN_64KB
+	def_bool y
+	depends on !ARM64_64K_PAGES
+	depends on !IA64_PAGE_SIZE_64KB
+	depends on !PAGE_SIZE_64KB
+	depends on !PARISC_PAGE_SIZE_64KB
+	depends on !PPC_64K_PAGES
+	depends on !PPC_256K_PAGES
+	depends on !PAGE_SIZE_256KB
+
 # This allows to use a set of generic functions to determine mmap base
 # address by giving priority to top-down scheme only if the process
 # is not in legacy mode (compat task, unlimited stack size or
diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
index 1667a7e590d8..f93e69a61283 100644
--- a/fs/ntfs/Kconfig
+++ b/fs/ntfs/Kconfig
@@ -52,6 +52,7 @@ config NTFS_DEBUG
 config NTFS_RW
 	bool "NTFS write support"
 	depends on NTFS_FS
+	depends on PAGE_SIZE_LESS_THAN_64KB
 	help
 	  This enables the partial, but safe, write support in the NTFS driver.
 


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
