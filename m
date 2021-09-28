Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EF041AB1E
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 28 Sep 2021 10:50:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mV8ot-00075D-04; Tue, 28 Sep 2021 08:50:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1mV8Lk-00064V-O6
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 28 Sep 2021 08:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rCzJg9CvHeyayYYjEpmknRW2aE9nGcCpWseERpBFha4=; b=W006qtPdtFmkXq59LWie+DJ66c
 Hpniejh2OYxs68LceWfJKIpNQPaMKFF9qbProFJvcHosYuIONC5yvsHjMW/s/i/uOdtOSD5dt8Vt4
 wgS/I5m32evYZkhtPHKgVxhGEnGOL/iqMWEgqMz1R4mFdVajtcHl3UWkD3wL889hPc/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rCzJg9CvHeyayYYjEpmknRW2aE9nGcCpWseERpBFha4=; b=bLmJ7HvDTBKOK128XeAAxmUOUS
 RzM4vRSM2JOvoW2oAhAXBVABtVz0y7SozqIUf9t0BLbQLwHPLtJJj8v2+qwB+FhofMEnNMO65CXwz
 tdDGVm2rneZb57PCJltbdRMAqZsXZnscz1nCv6Vi+UFMlCebmQ5ilDItv52cXjD17V1A=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mV8Lk-0091cA-21
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 28 Sep 2021 08:20:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A3597611F0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 28 Sep 2021 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632817222;
 bh=FOqCQkHnZGbZdTybxy+5IK/DFnY6xsR2LcxikZl/+rY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UCvZFQTyf2Xb5DGTJMcRCTcmpWSrkZcBIzpbNC3WNmQ92ZvUZmkT7tGo1/LdmnKc7
 YU9AA/Ls4GPIrKNGRMzGxU16EYsBQTmLi3CnUsblDXAyTEuHKSOh1kG4f6ULFpdl5c
 3J3mQVQY3xTLEq04xL5gt8n47n9obHFYCtLPPEZt/HFuSOiQ3hnyUszu5zuTQ2yxfH
 nFDpd9FTJZEgzRoRxZedXpJwrQbRXpiCn1fMr7VQff/G6Bdo/6NnhvePk4eBNhB2ca
 ZWtKNOLLvganXhf1SLdX/oFEjwkjFnaJR+PbPbioJtU0ciNUfHodNED2dVqjq0xxgB
 1n7TmaC60rQgQ==
Received: by mail-wr1-f54.google.com with SMTP id d6so56338393wrc.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 28 Sep 2021 01:20:22 -0700 (PDT)
X-Gm-Message-State: AOAM532HqxsqUSq72iNa+tKCJvN8FQzKijbhlCNXNeBmJnF7Zrazl15M
 xAj3yo5DTkE4nWahnA/Y4gZRE+89P+22paUiqyY=
X-Google-Smtp-Source: ABdhPJyxkWC/1VGczppVyh9LB2qQTcVBdk7PWoSh1zOlZbPaInSRFjDMiURvzC39B0Iv2KWsxvtNxgd9aqfpKHqheSo=
X-Received: by 2002:a5d:6cb4:: with SMTP id a20mr4296190wra.428.1632817221261; 
 Tue, 28 Sep 2021 01:20:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210927141815.1711736-1-arnd@kernel.org>
 <1B89CC23-0CB4-4DA3-BA84-3DD628675351@tuxera.com>
In-Reply-To: <1B89CC23-0CB4-4DA3-BA84-3DD628675351@tuxera.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 28 Sep 2021 10:20:04 +0200
X-Gmail-Original-Message-ID: <CAK8P3a04K0z-ExztXisby506qz6pCuvx5pyOQU8hzFNULoHj8w@mail.gmail.com>
Message-ID: <CAK8P3a04K0z-ExztXisby506qz6pCuvx5pyOQU8hzFNULoHj8w@mail.gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 28,
 2021 at 1:21 AM Anton Altaparmakov <anton@tuxera.com>
 wrote: > > Hi Arnd, > > Thanks for the patch but what is the problem with
 the stack usage exceeding 2048 bytes? > > I am not aware [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mV8Lk-0091cA-21
X-Mailman-Approved-At: Tue, 28 Sep 2021 08:50:33 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] [RFC] ntfs: disable for 64KB because
 of stack overflow risk
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Sep 28, 2021 at 1:21 AM Anton Altaparmakov <anton@tuxera.com> wrote:
>
> Hi Arnd,
>
> Thanks for the patch but what is the problem with the stack usage exceeding 2048 bytes?
>
> I am not aware of any architectures that implements kernel stack size (THREAD_SIZE)
> less than page size and by default most architectures with 4kiB page size even use two
> pages to make the stack 8kiB.

The two are decoupled these days unless CONFIG_VMAP_STACK is enabled at build
time, in which case the THREAD_SIZE is always a multiple of STACK_SIZE.
No architecture currently forces the use of VMAP_STACK though, so the allocation
is done in alloc_thread_stack_node() using this kmem_cache:

        thread_stack_cache = kmem_cache_create_usercopy("thread_stack",
                                        THREAD_SIZE, THREAD_SIZE, 0, 0,
                                        THREAD_SIZE, NULL);

64K pages are allowed on arm64, powerpc, mips, microblaze, ia64, sh, hexagon
and the upcoming loongarch port. The respective THREAD_SHIFT/THREAD_SIZE
values on these are

arch/arm64/include/asm/memory.h:#define MIN_THREAD_SHIFT (14 +
KASAN_THREAD_SHIFT)
arch/powerpc/Kconfig:config THREAD_SHIFT
arch/powerpc/Kconfig-   default "14" if PPC64
arch/mips/include/asm/thread_info.h:#define THREAD_SIZE_ORDER (0)
arch/mips/include/asm/thread_info.h:#define THREAD_SIZE (PAGE_SIZE <<
THREAD_SIZE_ORDER)
arch/microblaze/include/asm/thread_info.h:#define THREAD_SHIFT 13
arch/ia64/include/asm/ptrace.h:# define KERNEL_STACK_SIZE_ORDER         0
arch/ia64/include/asm/ptrace.h:#define IA64_STK_OFFSET
 ((1 << KERNEL_STACK_SIZE_ORDER)*PAGE_SIZE)
arch/ia64/include/asm/ptrace.h:#define KERNEL_STACK_SIZE
 IA64_STK_OFFSET
arch/ia64/include/asm/thread_info.h:#define THREAD_SIZE
 KERNEL_STACK_SIZE
arch/sh/include/asm/thread_info.h:#define THREAD_SHIFT  12
arch/hexagon/include/asm/thread_info.h:#define THREAD_SHIFT 12

As far as I can tell, only mips and ia64 require the kernel stack to
be a multiple
of the page size here, and I would consider that a bug: This is extremely
wasteful, especially considering that those machines typically won't have the
vast amounts of RAM that modern arm64 and powerpc64 servers have.

On a hexagon or sh system with 4KB stacks, using over 2KB in one function
is definitely excessive. Those machines wouldn't normally need NTFS support,
but that was kind-of the point of my patch.

         Arnd


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
