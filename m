Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF7D3E5DF0
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmQ-0007cE-2v; Tue, 10 Aug 2021 14:30:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1mD8OE-000201-Dp
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 16:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EpEWz534OsgT+S/+zzsUJlMKIuL7cZyoZ2sxdUZSi1o=; b=a4MbftXMJsfNehfbT8rEUg7x30
 PVF4cCCHCf5Dee3GMnJrMdikCBPGzh6WXUeU4mdSl10P2o+gG66UkUOWYF6yTwJVAJdyvjcutdFoY
 pkCFZ5MGttsJIYTPfymjWJutFq2PJIbLajAGfxLVkIL/DFy6fo2iG310dRpX0h2a1Sec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EpEWz534OsgT+S/+zzsUJlMKIuL7cZyoZ2sxdUZSi1o=; b=RgOLVSZ2gGfUXKXxwrjZvBxRrY
 n03VursZGwix9wM07LFqA0j2dIbHtL8mdqGbqKLy/FTT8qtBDaoEAGKtAOg/J9WIpyCJo748IrIiw
 UPJhsJKPgvG0UJJEY9Wb0ItaxQedlqJG4TI6259cDyhOX7NsXjhidKJhiv0eSXbv/QXY=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mD8OA-0003P1-QF
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 16:44:38 +0000
Received: by mail-lj1-f182.google.com with SMTP id m18so13262410ljo.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 09 Aug 2021 09:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EpEWz534OsgT+S/+zzsUJlMKIuL7cZyoZ2sxdUZSi1o=;
 b=nGfm8WTfRJdlHrYoiLUYviBthJiZMqRMU7uKrvBLgzU8gFJI8dXWaD/ayqAVym74x5
 ozKdgu8Wl76NfVQF2YfA8e/iytRMa9kxRxZA9XsoJNrgFWm73xfWUh2z5yuBW6tMTdTu
 ET0YAcc2eiaODfG588hRRB9+FZjZf7I6iaG3OOJFwPGJJNlI00vswi+QKv2WbhU6n3yX
 fSNfPn0JeZhUQ9nCDq7ZSxhnb7TLeZphT6TPGpkmNG/dV1nwbYS6B5Kb84VLoCshIsOH
 fsjUNy+lfJ/U9QZAYc++gn23QHD8LhUYVHm4/2EHIbxOKOt65bpIq1+0rfth3aDppUUP
 A4DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EpEWz534OsgT+S/+zzsUJlMKIuL7cZyoZ2sxdUZSi1o=;
 b=J9mfbVkpXrgZupf/zomuMeHHYji5HAUvckGg+UEYb4KES/jpLdsbym1xnJY7uJyGaz
 kJ0rfk5xPRQO/XP9iDWnVeyU4iV/8kAbFNskCm0pgFDxc7NZ7A0Luig3VoyUoYAaoYxF
 2cMu7H2Ne1qxcGoHYbhTnDqM7DR8UjK469r/SPHJIO9Euxywr17UeZcUZb1n1hJg1Oob
 mopnCzEF3G2y/rwgr5ctkOAGlWPmd9LU5QC/Ar3/h7KNDdX6ouj0ffzy9X0c7QuJ1ypC
 nhDffVySOLoFfKmWwmLdLTaUQfAW7LhleXjIA69XhUWn1DwzDVfLryvBsZXq228ekfbo
 SAJQ==
X-Gm-Message-State: AOAM533yb7XHpAhITx9RCVWrNEKywWYhLTaS4ccSrrr/RxM1XH+C3NX0
 vB+eCh3qQALpOm4qMRGNmac=
X-Google-Smtp-Source: ABdhPJw7MdzaSJlhLLJ8k/n37LOQtIUuUrruhZEwQusjBzu109XtuZWOvcVYHeH7MsRb0G/s5KW6eQ==
X-Received: by 2002:a2e:a4a7:: with SMTP id g7mr9381926ljm.330.1628527468314; 
 Mon, 09 Aug 2021 09:44:28 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id h17sm1784795lfc.191.2021.08.09.09.44.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 09:44:27 -0700 (PDT)
Date: Mon, 9 Aug 2021 19:44:25 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210809164425.rcxtftvb2dq644k5@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-11-almaz.alexandrovich@paragon-software.com>
 <20210809105652.GK5047@twin.jikos.cz>
 <918ff89414fa49f8bcb2dfd00a7b0f0b@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <918ff89414fa49f8bcb2dfd00a7b0f0b@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.182 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mD8OA-0003P1-QF
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:55 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 10/10] fs/ntfs3: Add MAINTAINERS
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
Cc: "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "nborisov@suse.com" <nborisov@suse.com>,
 "oleksandr@natalenko.name" <oleksandr@natalenko.name>,
 "dsterba@suse.cz" <dsterba@suse.cz>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "joe@perches.com" <joe@perches.com>,
 "andy.lavr@gmail.com" <andy.lavr@gmail.com>, "hch@lst.de" <hch@lst.de>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Aug 09, 2021 at 04:16:32PM +0000, Konstantin Komarov wrote:
> From: David Sterba <dsterba@suse.cz>
> Sent: Monday, August 9, 2021 1:57 PM
> > On Thu, Jul 29, 2021 at 04:49:43PM +0300, Konstantin Komarov wrote:
> > > This adds MAINTAINERS
> > >
> > > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > > ---
> > >  MAINTAINERS | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > >
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 9c3428380..3b6b48537 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -13279,6 +13279,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
> > >  F:	Documentation/filesystems/ntfs.rst
> > >  F:	fs/ntfs/
> > >
> > > +NTFS3 FILESYSTEM
> > > +M:	Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > > +S:	Supported
> > > +W:	http://www.paragon-software.com/
> > > +F:	Documentation/filesystems/ntfs3.rst
> > > +F:	fs/ntfs3/
> > 
> > Can you please add a git tree and mailing list entries?

> Hi David, I'll add the git tree link for the sources to MAINTAINERS in the next patch. As for the mailing list,
> apologies for the newbie question here, but will it possible to have the @vger.kernel.org list for the ntfs3,
> or it must be external for our case?
> Thanks!

Good question and I also do not have absolute truth about it but I try
to help. It should be possible. I think you can request new list from
postmaster@vger.kernel.org

If you need public git tree then kernel.org can maybe provide that. They
also host ntfs so I think no problem with ntfs3. This way you self
do not have to worry public list. But I'm not sure how strict is now
days get account. But if you say that it would be nice that you need
kernel git then maybe someone can help with that.
See more info https://www.kernel.org/faq.html



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
