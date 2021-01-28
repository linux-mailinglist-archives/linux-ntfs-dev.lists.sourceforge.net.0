Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C51EE307522
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 28 Jan 2021 12:50:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l55oM-00030d-20; Thu, 28 Jan 2021 11:50:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1l51NL-0006wM-QX
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 28 Jan 2021 07:05:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k6Ja0b6no5eZDxYMF3LcCjisrlOc+aXrwQbbpI1j+FU=; b=TLus7omAcI1BuTHKXU6nNDsPMj
 onsGugN42BtFpOSLtgoaJouWYW7ctHb1+96DG28VLH8Wvf+abst+4QT2TnyXo2UhuS9J8q/DpdDoQ
 w1RLqnQe6ba+BKLr4wQej+Gft1cyHvqr8DGBUoUeVjZeUJY4N8Djuq1iF+CKpKpRR3oo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k6Ja0b6no5eZDxYMF3LcCjisrlOc+aXrwQbbpI1j+FU=; b=S9rOAfZ0xkpxDR1heEBK6Uxz+9
 swPM24bbRb42VLYbhDBdliqIzFFfQneyl9ZedWluPrJ45gc4A5SLtI0pYRWR+LCd2xDv5WvVCC9pB
 Lv0ySMqpPXaxFV/MybMzq02v9NrSW3L/BXmicDLZMNLEb0bh5Mju94yUYUINPoMq2Xc8=;
Received: from mail-lj1-f180.google.com ([209.85.208.180])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l51NH-00GGbI-AR
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 28 Jan 2021 07:05:55 +0000
Received: by mail-lj1-f180.google.com with SMTP id 3so5085146ljc.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 27 Jan 2021 23:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=k6Ja0b6no5eZDxYMF3LcCjisrlOc+aXrwQbbpI1j+FU=;
 b=vR3wxqh/qmhwGrbVwupmBVa176b9HWbzlBi+iHpE2Ycg3SLdVUaFFVWJRoDflvOdUM
 aWsfXml59wmBYin5SlN4xPN6RcIK4dNQcXmOWado8NdbDeiQYMEx9jUwc2FSefBaZsTb
 UppvhET8UGl0VaK3nPfEI3NeSolRoxAjUmD/Twjh8E4UabvGtnBhvdK4Pp/0MfZgKspn
 EbnXKBnWSLwOuA8eGVoZOC1ie3IunASVVcj3NKoElHEMt6SbJYta7lDwO2SMVvg2m/by
 5Dg/ReU5K8DaNZiZQw6REGpMyc2vLhV0PBbGGTcgWEnqc/YsiI2u5nxThcqW1igtLrDg
 FA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=k6Ja0b6no5eZDxYMF3LcCjisrlOc+aXrwQbbpI1j+FU=;
 b=sG5v51Z27pWGbX7APhumjfUiWb55TpB6W4NMAbTzTbzFAS9YaYA6RkFQXbWJYApcb2
 VFWmz7EPrxm6P/Nok+q3ugLeDClGvEBTrYYspWYx8WMxokSI7KVlcOZbwsbZx2efkZJB
 LcbsWGmQMxFVeQTZ8Us60BXtriapidNNn11JK8HMdwzyOmkK3LUw1iUte6MRo+a1Xbjn
 uCqn/jhNI9yXgrLGtklplbO4Uv0QwQtIzl0m9eSf5bnYXfLwVzdmqerxx/8OIlFqCTUl
 8Y+lPoUVbB6bZyV/8lzq3xj6B6efdGqS67LHbxqQZeI9l7uk8yT/qe7Anc4onmwNnbBf
 1xWw==
X-Gm-Message-State: AOAM530rC9YSoP4qJIfZN1d3YB+FoAj9Z3evtJFljXpWHQ/KGAEyMSIS
 OarkN2ZJ44vKvAbVA+gAeF0=
X-Google-Smtp-Source: ABdhPJyBKxRLdlULivn3zwS67VsgEmgyzQZjno9E0hYhphWAEuj721B0R/ffUiJ+gvuTBqvxO9A/aw==
X-Received: by 2002:a2e:964f:: with SMTP id z15mr7511737ljh.368.1611817544692; 
 Wed, 27 Jan 2021 23:05:44 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id r2sm1324510lff.143.2021.01.27.23.05.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 23:05:44 -0800 (PST)
Date: Thu, 28 Jan 2021 09:05:41 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Mark Harmstone <mark@harmstone.com>
Message-ID: <20210128070541.ynzsgpniyo2xe23k@kari-VirtualBox>
References: <20210122140159.4095083-1-almaz.alexandrovich@paragon-software.com>
 <20210122140159.4095083-2-almaz.alexandrovich@paragon-software.com>
 <45515008-e4a9-26e3-3ce4-026bfacf7d53@harmstone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45515008-e4a9-26e3-3ce4-026bfacf7d53@harmstone.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.180 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51NH-00GGbI-AR
X-Mailman-Approved-At: Thu, 28 Jan 2021 11:50:05 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v18 01/10] fs/ntfs3: Add headers and
 misc files
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
Cc: ebiggers@kernel.org, andy.lavr@gmail.com, nborisov@suse.com,
 rdunlap@infradead.org, dsterba@suse.cz, willy@infradead.org,
 linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 aaptel@suse.com, dan.carpenter@oracle.com, pali@kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Jan 22, 2021 at 02:55:30PM +0000, Mark Harmstone wrote:
> On 22/1/21 2:01 pm, Konstantin Komarov wrote:
> > diff --git a/fs/ntfs3/upcase.c b/fs/ntfs3/upcase.c

> > +static inline u16 upcase_unicode_char(const u16 *upcase, u16 chr)
> > +{
> > +	if (chr < 'a')
> > +		return chr;
> > +
> > +	if (chr <= 'z')
> > +		return chr - ('a' - 'A');
> > +
> > +	return upcase[chr];
> > +}
> 
> Shouldn't upcase_unicode_char be using the NTFS pseudo-file $UpCase?
> That way you should also be covered for other bicameral alphabets.

return upcase[chr] is just for that? Upcase table from $UpCase is constucted
in super.c and this will get it in and use it.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
