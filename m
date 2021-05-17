Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71682382A4D
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 17 May 2021 12:54:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1liasu-0002RX-EP; Mon, 17 May 2021 10:54:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <arnd@kernel.org>) id 1liakc-0005V2-37
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 May 2021 10:45:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yfxKT31oEelNUnCBnTKqAQuDM+egpSxvnfQ/K3N12ao=; b=hf+G7XpcWKuMcI9PzKXlSZHS1n
 A9HEZRhPpiJ12/twWCXM41kXEU5Bfn++e6FriA9LnUngnyn4nHRogSe34eLvH8x9ftP+XutPbYsbZ
 0QOsc8tzZ+XAQtHqfnsjQaCohGd+nV2LkKE+hAGvNkOKuzLs4u3WZpWqD4GPsCo8V9rc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yfxKT31oEelNUnCBnTKqAQuDM+egpSxvnfQ/K3N12ao=; b=bBD7P7gSpNAunW/UEkjMKIJdCp
 vDSBVnr2QLeXEky22Vp/k+SvD8AYqvz9iSw5kl9gDPLdadWhWBPt5sdGORzEBVVnKPIKZEeffqK7u
 c18X7ZAWdXz0bH2VmF5eg0gV40OMcmQ90NxHklqskrfCJ49d4uacKfxLFjw4kZCx9psI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1liakT-00BLPE-QC
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 May 2021 10:45:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 823F7611BF
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 17 May 2021 10:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621248311;
 bh=MfBhlIm6ttO2xvDas63oVgDfnITP1qZCHrHI4sM+oEM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=chyQwoC8q/NtCwZkNBAB/oJENFUdQzdsi/FL4WrkTko3bUjXY8PsHReKxlMUt8xV4
 VcWqWkXBV+3qBelh0O1jFAn4BlN2TdnEvIQ9WX+deZWijhrLkWvAdkyXzBDnF9oS20
 s13p2KAbEqwZtQGy6HcCLyReDdaxS8VvwCb/JRbMHKxsJcRRnvfLh2NNMHM6XTG87y
 EM9gFE1/A+AVvdFESMaopn2Irp0APzWTyBiF11Ic9JjbJITd4dqNMQeNo4R9Y+txEN
 Ar29Xv+KiQOrGSJ0jwdfokAufVd2SXCkkATJSOvZVJLPOdXR4aTHxgq0eX9fjoft0j
 aszM0dYdLoZxQ==
Received: by mail-wr1-f49.google.com with SMTP id p7so2121914wru.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 17 May 2021 03:45:11 -0700 (PDT)
X-Gm-Message-State: AOAM531rFNyWXEuiI9iZUxeR0SvzSI/p+l/EkVhChhDYilmDKkA4+bNR
 xwmWesYy5EJFq63xm+K3J3J4ArbwOwduPsLofCY=
X-Google-Smtp-Source: ABdhPJydTmJ+TdDoabnzD0bVCQmcH8J9rgJ9iTHN3z/Oaaf0fuuf+kmZkxWd76uWziFDIrctGAy+de2BQK2TxZTjth0=
X-Received: by 2002:adf:e589:: with SMTP id l9mr4904057wrm.361.1621248310197; 
 Mon, 17 May 2021 03:45:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210514100106.3404011-1-arnd@kernel.org>
 <20210514100106.3404011-9-arnd@kernel.org>
 <YKJFRBynJXoFtTyy@infradead.org>
In-Reply-To: <YKJFRBynJXoFtTyy@infradead.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 17 May 2021 12:44:02 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3kEy4SiZV1O3xW-Qzy=DYpJub93K4N8q=MWH8z1G31vQ@mail.gmail.com>
Message-ID: <CAK8P3a3kEy4SiZV1O3xW-Qzy=DYpJub93K4N8q=MWH8z1G31vQ@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1liakT-00BLPE-QC
X-Mailman-Approved-At: Mon, 17 May 2021 10:54:03 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2 08/13] partitions: msdos: fix
 one-byte get_unaligned()
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>,
 linux-ntfs-dev@lists.sourceforge.net, Vineet Gupta <vgupta@synopsys.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-block <linux-block@vger.kernel.org>,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, May 17, 2021 at 12:28 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Fri, May 14, 2021 at 12:00:56PM +0200, Arnd Bergmann wrote:
> >  /* Borrowed from msdos.c */
> > -#define SYS_IND(p)           (get_unaligned(&(p)->sys_ind))
> > +#define SYS_IND(p)           ((p)->sys_ind)
>
> Please just kill this macro entirely.
>
> > -#define SYS_IND(p)   get_unaligned(&p->sys_ind)
> > +#define SYS_IND(p)   (p->sys_ind)
>
> Same here.

Done, thanks for taking a look.

       Arnd


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
