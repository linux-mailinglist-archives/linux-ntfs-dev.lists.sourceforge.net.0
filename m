Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BF02FA342
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 Jan 2021 15:40:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l1Vhg-0005dA-DD; Mon, 18 Jan 2021 14:40:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1l1VSg-0007uN-P5
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 14:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yzGPQHJyJrZ9ltTCbmSP8D0KGxFbljRtwv+aoMP5SnA=; b=Hli11P72LuZMODVXcXWbLGhau3
 hhTmMtdOVVJ5+CXp9BZzxtHQgS51rjKcg0OHFhB6TjBki/9RsltCM9Vvp92J2yG4p39fkyI4EVflE
 2g4rcg7F/x6DmJighpvVdCV+CkKVH5QX159rAfrrhrD7EZfo5MIOHMbj8WOVc27SkDkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yzGPQHJyJrZ9ltTCbmSP8D0KGxFbljRtwv+aoMP5SnA=; b=XMfQv1MLRmnBqD3n8qvoV5NPQX
 sLoGPKvePR4Q+kOx8cHdRbbEWgvoRrD/6etJPryXL2tuPk5LidSNk/Eg/fl63V4d+h4ieo2aiD52V
 YydDPBwm9cYAySksaECymIB0d3bKoKDS9p1Tp79NDphWuBVfBxIrq224i2L9noMY5ZPg=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l1VSb-005XAB-Uz
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 14:24:54 +0000
Received: by mail-lf1-f54.google.com with SMTP id 23so24294524lfg.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 18 Jan 2021 06:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yzGPQHJyJrZ9ltTCbmSP8D0KGxFbljRtwv+aoMP5SnA=;
 b=Vi3UrjWycuWNIjdW9WPNwwFLKLO4cVYSKgvRNZXAiJdg5DrJ4BhAIROrjnz7QDDM8C
 pI9gS++OPTnlOxSvp4K41zl7KfpGx6lCmgRPih0dqi4UkvaPdKrlT/4zvwi8iLAIPshG
 GvtHZUI3a81iCqKXSVJNpzHcJ6QB/+ZuUEwB57rBj68ZfrkaTPakWOwSXnwfBJzLpa4B
 Urwf2gcNGSf8IJc98sz8y0X4wvFgjxFwJAd2xleDBEGm3o89JVJWTIipClr3TlYBdd+j
 eJWCIzYBZ4i8JpGluPa/fyTuK8xmHPzItIsEqPGnPFlHuWTl/Q/D9Qy9VDSNI62X73d7
 DzYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yzGPQHJyJrZ9ltTCbmSP8D0KGxFbljRtwv+aoMP5SnA=;
 b=fX9ym2Bljznchf6rOacdGpveW6yxC0Mlaorxxe7ON/XV8ZzF5y7n/4qsJMpkg1TxRg
 fv0Ee713QTCUMNjajCD6QilM7H1j495tpjNSjFplq7LhSoRtWB6zJn+sM3y6xROYaTN5
 yfGecVzkUy+iwajN8+5RKmqvltz5xndU1ZH/ReVri5pI+KwbRu0NCl9RrrfJt07Tr2a9
 kmqW1VZIO/37KchsepTtzywiuG1zy9uOwUroxtplSKFLioat6I27A1xt5ZlhuI5pochm
 lGiUdU5yM0GN+Rh3+Slf3Gsa/aot7r7GpNpkuelOJraKdEAnxt/8tn9R0OEPZEu9p9TT
 eTcw==
X-Gm-Message-State: AOAM530Kq5lrD95ODjLAY0mDH2ZeOeUAV6vI8NooeZn2Rn1oiaZgXGCq
 MiqntsH6WpqJrTfQimeE2Nk=
X-Google-Smtp-Source: ABdhPJw+B1oWzDyTE/Q47yHVmjUMwotouMlJKNJVC8Bp5ALYZYTd4fue4N4mSUcemavdLpDhD4U86A==
X-Received: by 2002:ac2:59ce:: with SMTP id x14mr11932677lfn.545.1610979883078; 
 Mon, 18 Jan 2021 06:24:43 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id l1sm1917257lfk.201.2021.01.18.06.24.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jan 2021 06:24:41 -0800 (PST)
Date: Mon, 18 Jan 2021 16:24:39 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210118142439.p24chxfa4eq3ogsa@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-5-almaz.alexandrovich@paragon-software.com>
 <20210103215732.vbgcrf42xnao6gw2@kari-VirtualBox>
 <cf76ecec5ec1419eacf4c170df65a57d@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf76ecec5ec1419eacf4c170df65a57d@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1VSb-005XAB-Uz
X-Mailman-Approved-At: Mon, 18 Jan 2021 14:40:22 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 04/10] fs/ntfs3: Add file
 operations and implementation
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
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Jan 18, 2021 at 10:00:53AM +0000, Konstantin Komarov wrote:
> From: Kari Argillander <kari.argillander@gmail.com>
> Sent: Monday, January 4, 2021 12:58 AM
> > On Thu, Dec 31, 2020 at 06:23:55PM +0300, Konstantin Komarov wrote:
 
> > > +static long ntfs_fallocate(struct file *file, int mode, loff_t vbo, loff_t len)
> > > +{

> > > +	/* Return error if mode is not supported */
> > > +	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE |
> > > +		     FALLOC_FL_COLLAPSE_RANGE))
> > > +		return -EOPNOTSUPP;

> > > +
> > > +	if (mode & FALLOC_FL_PUNCH_HOLE) {

> > > +	} else if (mode & FALLOC_FL_COLLAPSE_RANGE) {

> > > +	} else {

> > > +		if (mode & FALLOC_FL_KEEP_SIZE) {
> > 
> > Isn't this hole else already (mode & FALLOC_FL_KEEP_SIZE?
> 
> Sorry, can you please clarify your question? Not sure, understood it.

I have hide unrelevant code now. So maybe now you see better what I
mean. Last else have to be already FALLOC_FL_KEEP_SIZE so if statment is
not needed.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
