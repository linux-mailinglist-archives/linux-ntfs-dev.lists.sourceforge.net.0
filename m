Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D5F3E5DFA
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmS-0007hH-Ew; Tue, 10 Aug 2021 14:31:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1mDKbD-0005VV-Pa
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 05:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=luLXleK9slk1U8VxUKke20zIQVfuP0RwNhKdoqv0SQk=; b=PZynM3HBa3GYK18cZtnZGIAA1t
 MpZEukHLg3pwmZ631IGL/yAcc/OW0KiGNFXoFh32/VghWDhldCifi4HR+Iy8qmALpEGvvVNvCuZ3A
 PwL+ybjL6yrCCKFrKrUW535p2cg/cPgGg09rZmKJkHk6pwP4jEoubu97zucSMZFRR4wo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=luLXleK9slk1U8VxUKke20zIQVfuP0RwNhKdoqv0SQk=; b=eena0864KD0SikjImwzQ5kcT1x
 V6j242/pGw/Vx/g37XCbOcMndbPkY/ZjRqdAbX8NvEp1kfeAhE8o+2VBOQwA169Vwf3GzbQggAggj
 17tLT6h7V4e3dmypFF8KvStQ9pb3qn2mkBTHd2AWqPQx+FRMDGnepAZRvIIUNVdKlE94=;
Received: from mail-lf1-f43.google.com ([209.85.167.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDKbC-0006Gk-F1
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 05:46:51 +0000
Received: by mail-lf1-f43.google.com with SMTP id y34so9111484lfa.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 09 Aug 2021 22:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=luLXleK9slk1U8VxUKke20zIQVfuP0RwNhKdoqv0SQk=;
 b=mbWleJ6exMEgS10Vk821G5eMWNgvV3EdP5bIelbU/MZKm8+ITh+Ufm5galAml3ozAR
 Au0biczwStLePoaWoFTvusHlrJvLjOp3Np7ZzTGz/YaZIzT2GlUxqxJG8G3C0fQwLlvv
 G8VahUsytwvC/KZCrGKhiizuQ9r5E0kYj+0IdrNH+wk7Ko00odboXQIkEjWpXhQ5UG2u
 Lqs6qpgZ9sipiuyH88sSy20xumQnGqhDJs55wIXl7tf2hhWfg88n0+0rDpJbqGPukT/J
 SQL9FnsV5UZ99W8ZvihtZSGdgTF8kwsuI0KqhLxEw4BQej0DQir6hSRYeD/7LodKvm0l
 JdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=luLXleK9slk1U8VxUKke20zIQVfuP0RwNhKdoqv0SQk=;
 b=tmdM4uo8DnQF+ylOwrQ10zjhk7Lc2GcHmE5HwEYTXWizkcT5nD0+yeReXbBZsE1SH2
 nJDAcOBuxTnW4Tl1y5lC8Ep1is0lA9JrW2gAzBbVUB0lvft5pVWzoSiMeWwA7LcqVrO2
 hEZivDjeaJanhoLRUkmFkWse1Nu/UkQXIpnJVDMBi2T/A0mY6N1FCJTo+hcwIbgrCngv
 6c2jSgyVYqjNmem091N7mnmdyQqg3kxBDysAnZFeu4eEN58yGExz+NdB5ztRZaRc6ycR
 AUakpsM2Sm0iMuaK4SR5Wi/Q1v6JqoKTLvJvqb+v/jZ2lqLqaSeI4FizqWWaQs7AOo+9
 LQsg==
X-Gm-Message-State: AOAM532qPhvv7UPGFjuyI5r83ZzkFEfnJZBm2P/O2O4pINrzVr2Pejh9
 5NXolpV3A8DvfQa240yzadw=
X-Google-Smtp-Source: ABdhPJzXCTg/JoTQyqBBzfCjmC3wp24bTeOKWy5pPzVdwtwgVchNnVeeAomIGS9JXLGAm10ZwaE2xw==
X-Received: by 2002:ac2:57cd:: with SMTP id k13mr20905646lfo.117.1628574400629; 
 Mon, 09 Aug 2021 22:46:40 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id r13sm1941263lfr.7.2021.08.09.22.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 22:46:40 -0700 (PDT)
Date: Tue, 10 Aug 2021 08:46:37 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210810054637.aap4zuiiparfl2gq@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDKbC-0006Gk-F1
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 oleksandr@natalenko.name, rdunlap@infradead.org, aaptel@suse.com,
 willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jul 29, 2021 at 04:49:33PM +0300, Konstantin Komarov wrote:
> This patch adds NTFS Read-Write driver to fs/ntfs3.
> 
> Having decades of expertise in commercial file systems development and huge
> test coverage, we at Paragon Software GmbH want to make our contribution to
> the Open Source Community by providing implementation of NTFS Read-Write
> driver for the Linux Kernel.
> 
> This is fully functional NTFS Read-Write driver. Current version works with
> NTFS(including v3.1) and normal/compressed/sparse files and supports journal replaying.
> 
> We plan to support this version after the codebase once merged, and add new
> features and fix bugs. For example, full journaling support over JBD will be
> added in later updates.

I'm not expert but I have try to review this series best I can and have
not found any major mistakes which prevents merging. Yeah there are
couple bugs but because this is not going to replace NTFS driver just
yet then IMO it is best that merge will happend sooner so development
fot others get easier. I will also try to review future patches (from
Paragon and others), test patches and make contribution at my own for this
driver. So please use

Reviewed by: Kari Argillander <kari.argillander@gmail.com>



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
