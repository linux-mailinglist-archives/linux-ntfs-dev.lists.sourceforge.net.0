Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C8A4550F4
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Nov 2021 00:15:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnU9a-0005j4-CP; Wed, 17 Nov 2021 23:15:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1mnROo-000184-Dt
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Nov 2021 20:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kKWUf574lUCz4mhkC+epdrPctSRHiHVlt/y3bwC9aKY=; b=cm+7RlgiGj+c3U4/eVMKEYQQir
 orCjABRZmrFTtZKslgBhUpNiwYGcjdQEQsQCmQ6KbKI3K+ZFCp77t5pMssixQ9pSrJcLcaZLXsom7
 nhzoX0khlG/zw1pDum10kfHW183QZ1GT2iXdSkpG9fng7XuCkBbJ1xKs1kxViw5XbIwk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kKWUf574lUCz4mhkC+epdrPctSRHiHVlt/y3bwC9aKY=; b=CwFYDSI0oKtizIzd3gPQCvhkGp
 sdt9+rh1y4YRWiesc6rMBokFicvNkxBi0A3u+klUaclNDmHbe6ScfWE9Zqw02ziZTPnYoNQ1tHMND
 GbdcQj3z+i49+n42Snm+0R1+exCPR6h+cbvHsAQLcqqNolxVewQucrIf45ttp0VTk9m8=;
Received: from mail-ua1-f54.google.com ([209.85.222.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnROm-00Gfgg-2t
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Nov 2021 20:19:19 +0000
Received: by mail-ua1-f54.google.com with SMTP id o1so8681179uap.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Nov 2021 12:19:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kKWUf574lUCz4mhkC+epdrPctSRHiHVlt/y3bwC9aKY=;
 b=7PJGI6kjo7XL5HJr/NgDlRsm7i4YJZG7XLIvZRJXLdVXiuF3KMeb8+/YNwjg79aWmr
 cmOVqPBxwPOL9b+tR0qZqXtG4XABvMyBv/lD0Vt0UZkkVODlgeXJGqDU20gLUyrdrZkE
 yPl1kjKPGG7UIwFsw1D5vMyP1d6hOd/2W6QPQASulQhbBoiFW+MuJe/C5LRPxdKNGsdx
 6r+kEdr2RGKjJuyIVHAQv+TBPHQ/6ttdNMMDYIH8j+OyY4JTsPwXuFP1hY3yfrIt30Ke
 DKRkzmqTSa4Y4GzmEqZtlaZ+lGPXxrznW2tHf/fLYn8zAl5u0Ur++990Z8L833LJkcC1
 GYWA==
X-Gm-Message-State: AOAM532mLBEYcjfz5djJjN8PD/xtoZgkvKdSMdx9rQHGUJ5WlZFWoL9V
 J+Q6SkYCPZVY8+8wWEjf48zukETbPCKChw==
X-Google-Smtp-Source: ABdhPJw/LvXL/tUElvRZtOI9j+VwqLDrNJL/hhq4bmEPgAJ4gQ7SFc6WBD40ue8JKsD/k2sNRoqw0Q==
X-Received: by 2002:a05:6102:c4d:: with SMTP id
 y13mr72274668vss.43.1637180350113; 
 Wed, 17 Nov 2021 12:19:10 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com.
 [209.85.222.42])
 by smtp.gmail.com with ESMTPSA id j31sm510978uag.4.2021.11.17.12.19.09
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 12:19:09 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id w23so8657751uao.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Nov 2021 12:19:09 -0800 (PST)
X-Received: by 2002:a67:c38f:: with SMTP id s15mr72611029vsj.50.1637180349098; 
 Wed, 17 Nov 2021 12:19:09 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wjF=JzLkCi2wV+G=f8OWa5rNjPsZd2RMFG5MHwKZPgYvw@mail.gmail.com>
 <20211115045616.GA1012538@roeck-us.net>
 <CAHk-=whca4JrEExUZCf+iGhP+mV-_D2uyqiFHnaYqnfCOKyEVg@mail.gmail.com>
 <652edea7-28a0-70d9-c63f-d910b5942454@roeck-us.net>
 <87a6i4miwu.fsf@mpe.ellerman.id.au>
In-Reply-To: <87a6i4miwu.fsf@mpe.ellerman.id.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 17 Nov 2021 21:18:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVrpQJKKzpxrKKCCD_2+DzAvgFW+jsjPdR9JhBYeRgvNw@mail.gmail.com>
Message-ID: <CAMuHMdVrpQJKKzpxrKKCCD_2+DzAvgFW+jsjPdR9JhBYeRgvNw@mail.gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Michael, On Tue, Nov 16, 2021 at 12:39 PM Michael Ellerman
 <mpe@ellerman.id.au> wrote: > Guenter Roeck <linux@roeck-us.net> writes:
 > > fs/ntfs/aops.c: In function 'ntfs_write_mst_block': > > fs/ntfs/aops.c:13
 [...] Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.54 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mnROm-00Gfgg-2t
X-Mailman-Approved-At: Wed, 17 Nov 2021 23:15:45 +0000
Subject: Re: [Linux-NTFS-Dev] Linux 5.16-rc1
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Michael,

On Tue, Nov 16, 2021 at 12:39 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
> Guenter Roeck <linux@roeck-us.net> writes:
> > fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
> > fs/ntfs/aops.c:1311:1: error: the frame size of 2240 bytes is larger than 2048 bytes
> >
> > Bisect points to commit f22969a6604 ("powerpc/64s: Default to 64K pages for
> > 64 bit book3s"), and reverting that commit does fix the problem.
> > The problem is
> >       ntfs_inode *locked_nis[PAGE_SIZE / NTFS_BLOCK_SIZE];
> >
> > I don't see the problem in next-20211115, but I don't immediately see how it was fixed there.
>
> I still see it in next.
>
> I don't know what to do about it though. The NTFS folks presumably don't
> want to rewrite their code to avoid a warning on powerpc, we have no
> real interest in NTFS, and definitely no expertise in the NTFS code. We
> don't want to revert the 64K change, and even if we did the warning
> would still be there for other 64K page configs.

Do you have a pointer to that discussion? I couldn't find it.

Why does the ntfs code have a need to allocate an array
(regardless whether it's on the stack or not) with a size related to
PAGE_SIZE? Shouldn't the array's size be related to a parameter of
the file system on the storage device, instead of a parameter of the
system it is running on?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
