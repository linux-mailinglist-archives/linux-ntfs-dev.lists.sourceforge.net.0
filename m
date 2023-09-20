Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BAD7A7541
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 10:06:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qisDf-00088t-Nl;
	Wed, 20 Sep 2023 08:06:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qinck-0007Qx-A7
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 03:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uE+UAnC9YgmNAUhKoTWIdxRk/FdOddBgLymLwlPaqnk=; b=aX+nZdboiMubMFrT3pBmznhzrm
 2C3S5M6BV3Yz6kSWLa6E1Z1dr+DXRq4ILowEjIbkhq/J+8dk7LSDuesptnpVJ29XPpnXTKwFNGy3v
 o3+oF39kty5dJM3PWZgXWr0G6m9jNEbIwUSdx9XxBsXhTy4CacVcx9a+737xnY7WsZMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uE+UAnC9YgmNAUhKoTWIdxRk/FdOddBgLymLwlPaqnk=; b=I4iiiKcvHfqkmaH5OyqMS+AFOe
 PvzsHzx44KDs4jzTjk5YnkC8iuoNUMWvNc7tIOjClTbV7XfHA2ypIdP0VLCoom9n+C7xz1ru+zPaD
 GfqRKjzByBsbca5a5V6LB8MCeYMp7aNrTbWCskcVo9BtG6pwZsrOvWR1xe7g36W1FJE8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qinci-00039U-3I for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 03:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=uE+UAnC9YgmNAUhKoTWIdxRk/FdOddBgLymLwlPaqnk=; b=ekNfgmFwoHu8gIoYFOjAVApvtB
 3IXO/kDTQVK7eWR0y6nYylINvIk4NtmEm3kQODEPrUFwrj5dXTYcXamT6rwoq/2nvLl5fEGFiXvrd
 qGejySTQ2pAFXZBOhqsyHwndRN62Ily6nVv64jjObtM6K2L7dmD/rDOmehFEm5JknDqooHYchnJLb
 YI/tCYH/CrK1gcaARvorBnRcZOqw+jUnC5gKxqrYuQkFKyzuOj4PSUCgORs7pW00BJ/+8vty/M8I/
 5YP4CSRdEi8Ax4LZNa3piEYfC9C6VrjU/6PZSNvOYis9wkJzK92YeqJ4CXWiya1PLUT44i/m0R7WO
 mKrrt6Uw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qincN-003PFJ-OR; Wed, 20 Sep 2023 03:11:11 +0000
Date: Wed, 20 Sep 2023 04:11:11 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Andreas Gruenbacher <agruenba@redhat.com>
Message-ID: <ZQpizwzZ/J+2CUfj@casper.infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-8-willy@infradead.org>
 <CAHc6FU4-RSAsc-LWw2OuLDecofapd30OZhxyjVKLXzJNwh-ZoA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHc6FU4-RSAsc-LWw2OuLDecofapd30OZhxyjVKLXzJNwh-ZoA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 20, 2023 at 12:27:08AM +0200, Andreas Gruenbacher
 wrote: > Thanks, > > but this patch has an unwanted semicolon in the subject.
 Thanks. My laptop has a dodgy shift key, so this sometimes happens. The build
 quality on HP Spectre laptops has gone downhill in the last few years. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qinci-00039U-3I
X-Mailman-Approved-At: Wed, 20 Sep 2023 08:05:58 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 07/26] gfs2;
 Convert gfs2_getjdatabuf to use a folio
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
Cc: Pankaj Raghav <p.raghav@samsung.com>, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, gfs2@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Sep 20, 2023 at 12:27:08AM +0200, Andreas Gruenbacher wrote:
> Thanks,
> 
> but this patch has an unwanted semicolon in the subject.

Thanks.  My laptop has a dodgy shift key, so this sometimes happens.
The build quality on HP Spectre laptops has gone downhill in the last
few years.

> > -       page = find_get_page_flags(mapping, index, FGP_LOCK|FGP_ACCESSED);
> > -       if (!page)
> > -               return NULL;
> > -       if (!page_has_buffers(page)) {
> > -               unlock_page(page);
> > -               put_page(page);
> > +       folio = __filemap_get_folio(mapping, index, FGP_LOCK | FGP_ACCESSED, 0);
> > +       if (IS_ERR(folio))
> >                 return NULL;
> > -       }
> > -       /* Locate header for our buffer within our page */
> > -       for (bh = page_buffers(page); bufnum--; bh = bh->b_this_page)
> > -               /* Do nothing */;
> > -       get_bh(bh);
> > -       unlock_page(page);
> > -       put_page(page);
> > +       bh = folio_buffers(folio);
> > +       if (bh)
> > +               get_nth_bh(bh, bufnum);
> 
> And we need this here:
> 
>     bh = get_nth_bh(bh, bufnum);

Oof.  I should make that __must_check so the compiler tells me I'm being
an idiot.

Thanks!


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
