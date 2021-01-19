Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8682FC65B
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Jan 2021 02:21:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l22Bb-0006Zf-DM; Wed, 20 Jan 2021 01:21:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1l1xiP-0000U7-1x
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 19 Jan 2021 20:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oGyeQId7ghuiubDiteHOq99u7bCiW9P86xlgrtBuPx0=; b=aLGR6uMmQDiFSoI6cx7I8WN2a0
 I/Rlxt6Zx+FwXexROoGzEYiWzrD90znkzZ4YVLbimnyrS1egL5zibdzmS8Wn33jWzip6kmOKLqgLr
 MpT02f3VFF/8zRRNX5e3CuLHvtPSvEC+/g0OdjdRQU5nnquWnRWG/5+8zOZF6vhky4hk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oGyeQId7ghuiubDiteHOq99u7bCiW9P86xlgrtBuPx0=; b=cWNZni8biBUde4Vje5VQQAvTtW
 7htdIGHWi6Y2qkPl2gAZVmB62MECBA4YPvLpmAun8/xjp+4WCIPUOD18lTMd3WIydAZAnHw/NWPkl
 /McCD86hIrgPVYYggY5Cj0ZBCMwmlzPza8uOGFvV3ckV4CY+fuDZ0VFU69YXlIDTc87w=;
Received: from mail-lf1-f42.google.com ([209.85.167.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l1xiG-008QSc-KK
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 19 Jan 2021 20:35:00 +0000
Received: by mail-lf1-f42.google.com with SMTP id o17so31000022lfg.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Jan 2021 12:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oGyeQId7ghuiubDiteHOq99u7bCiW9P86xlgrtBuPx0=;
 b=ptoZk/WdXfRsTKZwQ/J1ogvUQcEJs0Bqc8KV5FSG1R53TtpZZGpl0xldd5lU4FK54g
 fqvDz2igNb0eBNZWQnIX1doIRYsK0IbvN+NlEVzXJMIg4b066h5FCltE9iEgMjY4sgIo
 7vBTUALabI7sCL9p1UYjK57H24yE8IyUpbOTUqtaOaZyNeqZJJMz8Cb7uF3YPjdyDRNG
 I0qfNoplfJx7ofCcoH2Fv5y1SdwXmL7RSo5xv/x44xe9mpvKOBRG/Be18qBdQIrSBtv5
 +8mvR+wDyBjDtWOJJLKQyn4Fpn/5O94lsK46H0ZdMrnutMhYbxUqlIjQMQehNOJz7Tba
 mWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oGyeQId7ghuiubDiteHOq99u7bCiW9P86xlgrtBuPx0=;
 b=nrsHKdxW08Yxz63sPdc5USfPr1vzwiVSUF3GlmjUSokQhYp7IstwtoF93WHTOVG9XQ
 rkvwu6mCRBnNQEyA7C3UQ0u9Xj+jUn0g/iBgPLpe2fiFfQDhf9r3WBBtMTuZniAMffgy
 6NHWtfxqeQ17ds7egsUh6sEy/U2uR0o7BKZElWZYt+WQ+texDyL9ZvtxQ9oGPTsekk2o
 xEi/suUkCYHSS/RqJbo5/BaoQ/EB/PcWxX1le3amDNojdPFYXeK+Kr/248Oa4Z9+FgNy
 QNjKqGcWkO/HwcnT2UgIbMlcqzUeZBcy4Qh8p7YYCB+Y0kWImCYtCj7JzXsu5eeIl5bC
 rz2g==
X-Gm-Message-State: AOAM530aIp2HoKwu9BSPGnIpk4LKiD2hqnPRWxPTL5w+bsAwFyCLymu7
 c9TrCAo7lbLCbTLxdvqJqfI=
X-Google-Smtp-Source: ABdhPJyZLECKkiiifagCkcTDcdstvBbQwLIeZMHqCpHWXAxvJ1OI4a3UyiJnO4JWjsb4gz0a1SR3aw==
X-Received: by 2002:a05:6512:338e:: with SMTP id
 h14mr2618345lfg.324.1611088485999; 
 Tue, 19 Jan 2021 12:34:45 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id f18sm2375871lfh.137.2021.01.19.12.34.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Jan 2021 12:34:45 -0800 (PST)
Date: Tue, 19 Jan 2021 22:34:42 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Julia Lawall <Julia.Lawall@inria.fr>
Message-ID: <20210119203442.ricoppwmw662bjkd@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-2-almaz.alexandrovich@paragon-software.com>
 <20210103231755.bcmyalz3maq4ama2@kari-VirtualBox>
 <20210119104339.GA2674@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210119104339.GA2674@kadam>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1xiG-008QSc-KK
X-Mailman-Approved-At: Wed, 20 Jan 2021 01:21:24 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 01/10] fs/ntfs3: Add headers and
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
Cc: ebiggers@kernel.org, nborisov@suse.com, rdunlap@infradead.org,
 dsterba@suse.cz, willy@infradead.org, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com, andy.lavr@gmail.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Jan 19, 2021 at 01:43:39PM +0300, Dan Carpenter wrote:
> On Mon, Jan 04, 2021 at 01:17:55AM +0200, Kari Argillander wrote:
> > On Thu, Dec 31, 2020 at 06:23:52PM +0300, Konstantin Komarov wrote:
> > 
> > > +int ntfs_cmp_names(const __le16 *s1, size_t l1, const __le16 *s2, size_t l2,
> > > +		   const u16 *upcase)
> > > +{
> > > +	int diff;
> > > +	size_t len = l1 < l2 ? l1 : l2;
> > 
> > I notice that these functions might call both ignore case and upcase in a row.
> > record.c - compare_attr()
> > index.c - cmp_fnames()
> > 
> > So maybe we can add bool bothcases.
> > 
> > int ntfs_cmp_names(const __le16 *s1, size_t l1, const __le16 *s2, size_t l2,
> > 		   const u16 *upcase, bool bothcase)
> > {
> > 	int diff1 = 0;
> > 	int diff2;
> > 	size_t len = l1 < l2 ? l1 : l2;
> 
> size_t len = min(l1, l2);
> 
> I wonder if this could be a Coccinelle script?

Yeah I have to also confess that I just copy paste that. Didn't use
brain yet. Atleast to me it wasn't crystal clear right away what that
does. So Coccinelle script would definetly be good idea.

Someone has atleast made it https://github.com/bhumikagoyal/coccinelle_scripts
I wonder if we need to add cases also in "backwards". Haven't test these.
If patch is prefered from me then I can send it but someone else can
also send it.

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
|
- x < y ? y : x
+ max(x,y)
|
- x > y ? y : x
+ min(x,y)
) 



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
