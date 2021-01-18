Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFD92FA343
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 Jan 2021 15:40:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l1Vhg-0005d0-B1; Mon, 18 Jan 2021 14:40:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1l1VDz-0004hA-N4
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 14:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iG/KODEdFe2K5XObeKF2Vt9sHmAGSpX5UKzCfopjxSU=; b=Z6Y6rbK3f+MBXP4DbXjJo2i0cB
 4jGRJMB4cJwcOqv5+T1VI5T6ODu6uuonuUHpPdjrMmDNS6Mj/vEF5qDgHOsYcCPHvldzcsJ5uaNk9
 mKt3N2q5Gdev7vrBMSqrp7MC1uNwZGClYjyPtOIypIzgnFwGYxVMR+46sE5iehFGLh5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iG/KODEdFe2K5XObeKF2Vt9sHmAGSpX5UKzCfopjxSU=; b=Mp1Om5Ys1QfV02bRGqQKoG1kal
 X5oIsNGtLLslOQTjMiaBetEDNq5U2Owkmb2clouYvsiYlD0wAsAHTlz4mTK1jhEFvDRdZs+uHvaib
 2Yl/dUQxiNywxLYY84ulNeunDsRAg7YmJq+tQPrk7LVO8eWWeO2EiMJX8J4ZBsvnRt8k=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l1VDx-00CifT-DU
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 14:09:43 +0000
Received: by mail-lj1-f182.google.com with SMTP id w26so18356204ljo.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 18 Jan 2021 06:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iG/KODEdFe2K5XObeKF2Vt9sHmAGSpX5UKzCfopjxSU=;
 b=Doz5K836XN1Hu+ccBz6D+76OvCCWqvKkTjJEAyQHNkKqiW4p8y8ozBLbZTrINgHPyp
 VuNMnMugMs+ZDX4Hpa5bMn4VXIk46qKF4OrdpToe2/qcEFtMszNKdhSk1fgDh8yMex2X
 fiPsJW+kYFl2JskHlpVQzzyZKfWTQo923x35mOiTa2nlrS8HVwYTe8n+GMuSKqO2M7iO
 83HX6CI3Y/Dd8klK+A06De/2Peb1dQ+qChXMAdvjSktv/KOQ427Zv6Ru4tBfNq6GBnk2
 MvhxbZg28tKsGm5ahRBPRR0XQ8tOmBM7rx1UErFmOEbugwnaMWfTPyZZ/YJfiMA49OHP
 aOVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iG/KODEdFe2K5XObeKF2Vt9sHmAGSpX5UKzCfopjxSU=;
 b=RzQHCj7cVWpsPuzDqUqIs5xIUIze06sJJbGywSjbwYDa4LlJNidk+IOjLYiacklUdj
 q7DAndxlAoPcxr8nhRzdZrKG60JsGtL7BVynnTYODC7X3XI17Qm/7b2lUTwJNse6FQcC
 7+emvbKAjj0PsuCcL8TbGGCiPX2EnHKk6Ps1u9F4upui9VmhFa0Ci5QTJr3NIGygRBFj
 D3zCfjhSFM2R1qiN3xvMq2sENEUJrfw9Cxo22s1u6pduqRWqAhDjadE84Hc0DhUHRwg6
 c0ZBb7a6XVQ6rPo05qHWW4NGR68uPUgAW6E+flB2f1K/tNMpUwk+Ms2D+gPrgseme1TR
 Cn0A==
X-Gm-Message-State: AOAM530qpa1CF6LxaxLOEWr3n6cZ7x1dtmkTVCRJ5FeJRqRj/bqyAFGm
 cwYE4CwlauYYouBmEl/NhP8=
X-Google-Smtp-Source: ABdhPJw1Gz9tbnGLQVkzqltWwFI0JVgvnT623otswaeYadxrv4/5z7VU+iCrgj9FnAJXYbtqgUBEng==
X-Received: by 2002:a2e:9246:: with SMTP id v6mr10308478ljg.221.1610978974812; 
 Mon, 18 Jan 2021 06:09:34 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id v11sm1695394ljg.128.2021.01.18.06.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jan 2021 06:09:34 -0800 (PST)
Date: Mon, 18 Jan 2021 16:09:31 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210118140931.e2qdposfez2jsbbr@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-3-almaz.alexandrovich@paragon-software.com>
 <20210103195017.fim2msuzj3kup6rq@kari-VirtualBox>
 <750a0cef33f34c0989cacfb0bcd4ac5e@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <750a0cef33f34c0989cacfb0bcd4ac5e@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1VDx-00CifT-DU
X-Mailman-Approved-At: Mon, 18 Jan 2021 14:40:22 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 02/10] fs/ntfs3: Add initialization
 of super block
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

On Mon, Jan 18, 2021 at 09:35:05AM +0000, Konstantin Komarov wrote:
> From: Kari Argillander <kari.argillander@gmail.com>
> Sent: Sunday, January 3, 2021 10:50 PM
> > On Thu, Dec 31, 2020 at 06:23:53PM +0300, Konstantin Komarov wrote:
> > > diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
> > 
> > > +int ntfs_create_inode(struct inode *dir, struct dentry *dentry,
> > > +		      const struct cpu_str *uni, umode_t mode, dev_t dev,
> > > +		      const char *symname, u32 size, int excl,
> > > +		      struct ntfs_fnd *fnd, struct inode **new_inode)
> > > +{
> > 
> > > +#ifdef CONFIG_NTFS3_FS_POSIX_ACL
> > 
> > In Kconfig this is NTFS3_POSIX_ACL. This repeat every file.
> > 
> 
> This is OK. You may refer to similar parts of ext4/btrfs sources as a
> reference:
> fs/ext4/Kconfig or fs/btrfs/Kconfig
> 

But in ext4 and btrfs Kconfig specify *_FS_POSIX_ACL. In ntfs3 Kconfig
specify *_POSIX_ACL. So we missing _FS_ in our Kconfig?



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
