Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3718C3EBE19
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 14 Aug 2021 00:00:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mEfEG-0007yS-Fk; Fri, 13 Aug 2021 22:00:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <kari.argillander@gmail.com>) id 1mEZVT-0006n6-MM
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 13 Aug 2021 15:54:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aMX+a6wP1iCii8UfZRNRB0ftn/+EsmPtpxrSR4YPCHE=; b=GlJavfn8Dlh2ELSkrHdkUWlQNW
 E9EPW7UiD3OsqKDJmDspSnAxh6HPA9RI3sSt7VMj5F+ajj86bxV/YyooHVrWdcunU78iP4eCvtpVW
 joFzgpqHmuQUKY9kZFwdMdPN6WMuOcfiLYoDFQfvpnJlmIbay0wawCoX9oVVktVWErFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aMX+a6wP1iCii8UfZRNRB0ftn/+EsmPtpxrSR4YPCHE=; b=SGRpTc88xQ5HUHPcw8636zSBuM
 ++X41mRl+GO/ZLEfE5bi/9QtnVZ/qrbE/ppwh2YUNirAG0xzaO3dM7MnuJrU9DGX6/6zuP2UvwqkN
 xOl3k/UMXih0VRv5e1n1PS5HdjWmM6WM4z0pKz0TRbjyN5GP0/hafh5bql9ZApenw6Hk=;
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEZVQ-005J8Z-4O
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 13 Aug 2021 15:54:03 +0000
Received: by mail-lj1-f177.google.com with SMTP id n7so16347383ljq.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 13 Aug 2021 08:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aMX+a6wP1iCii8UfZRNRB0ftn/+EsmPtpxrSR4YPCHE=;
 b=W9cMdo1w90Diw8YIJIySfXDhuAHRZl6bLlzMy7C/GZlgThteZ87DT6k5EUWIuabAlB
 tWt1TPSHNg3bXs7ax5kd/61lL5jmXO/MLvYPb/JLvZnqyVDQZvQm94gmr5qyThFmP+x2
 3wFXB4sG8RpIOCrplGiQkG2WJsXqOmzRET/iPhQQH1yHgWiMADGibwzGgVEWl1uYAQ+B
 /HwQ76FVke+ne4Mmafgmbgmr+J8vqnZEL0lKzCdukKFOBNU0Qd9MdJ7/63EqDtGva0p2
 JU6fQTQUTqfWd30QLLNwANN+cLyFzyiDrKcdkpiSyMawhwpxOvkLnaT+l0oVLfVA9wa5
 rkLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aMX+a6wP1iCii8UfZRNRB0ftn/+EsmPtpxrSR4YPCHE=;
 b=KiGS9SIRMvfpL3am/BA3k5xo5Ls5s4mFLfQlRD7pNsCJU+ejzRkfDPcgDw3zbhElVf
 rbF1m1gr8QfNS4UIourMEnwjwbbjGh7XPcIePFq14gQ5i4rJD4DRFoK7GoEXc3UuVekJ
 k3GOtBglByH5b4CswS15VZTV2adV81VlidmgJSiW+ZjDuwcdkmeVzBcnOgZjCHch8y0r
 g7YVo96sT8O+rdUEdt3R597lZc+OT039258rpVPvRd6pBfStwOYQJslo5aoTT9Tywmwo
 QfyUEUbkmoNFZGqMrG+NKnkuze4K8qcMI8wZVubEqzrgg9IGsFDbx0ALojURgEK1O5xQ
 s7/Q==
X-Gm-Message-State: AOAM533NZOo4+QNH984TkQDfS0pHtzqI/51xYO4UF3siFZL6E4RZD7PD
 zvCJtZAiT0qhrVyLkGhqJNE=
X-Google-Smtp-Source: ABdhPJxY3aZpHjI5xq9CX1t4DztTg0tQ+aaWxIsVh57v1CyenE1WGSs5BEGkZhD5t5ELqtbCF6HAsw==
X-Received: by 2002:a2e:8688:: with SMTP id l8mr2308140lji.157.1628870033611; 
 Fri, 13 Aug 2021 08:53:53 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id i23sm188939lfo.76.2021.08.13.08.53.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 08:53:52 -0700 (PDT)
Date: Fri, 13 Aug 2021 18:53:50 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Theodore Ts'o <tytso@mit.edu>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210813155350.vcoxqtox2ezvybgb@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729162459.GA3601405@magnolia> <YQdlJM6ngxPoeq4U@mit.edu>
 <20210812170326.6szm7us5kfdte52u@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210812170326.6szm7us5kfdte52u@kari-VirtualBox>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.177 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mEZVQ-005J8Z-4O
X-Mailman-Approved-At: Fri, 13 Aug 2021 22:00:38 +0000
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
Cc: dan.carpenter@oracle.com, andy.lavr@gmail.com, nborisov@suse.com,
 "Darrick J. Wong" <djwong@kernel.org>, oleksandr@natalenko.name,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, willy@infradead.org,
 dsterba@suse.cz, ebiggers@kernel.org, joe@perches.com, hch@lst.de,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com, ntfs3@lists.linux.dev,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Aug 12, 2021 at 08:03:26PM +0300, Kari Argillander wrote:
> On Sun, Aug 01, 2021 at 11:23:16PM -0400, Theodore Ts'o wrote:
> > On Thu, Jul 29, 2021 at 09:24:59AM -0700, Darrick J. Wong wrote:
> > > 
> > > I have the same (still unanswered) questions as last time:
> > > 
> > > 1. What happens when you run ntfs3 through fstests with '-g all'?  I get
> > > that the pass rate isn't going to be as high with ntfs3 as it is with
> > > ext4/xfs/btrfs, but fstests can be adapted (see the recent attempts to
> > > get exfat under test).
> > 
> > Indeed, it's not that hard at all.  I've included a patch to
> > xfstests-bld[1] so that you can just run "kvm-xfstests -c ntfs3 -g
> > auto".
> > 
> > Konstantin, I would *strongly* encourage you to try running fstests,
> > about 60 seconds into a run, we discover that generic/013 will trigger
> > locking problems that could lead to deadlocks.
> 
> It seems at least at my testing that if acl option is used then
> generic/013 will pass. I have tested this with old linux-next commit
> 5a4cee98ea757e1a2a1354b497afdf8fafc30a20 I have still some of my own
> code in it but I will test this tomorrow so I can be sure.
> 
> It also seems that acl support is broken. I also suspect ntfs-3g mkfs in
> some failure cases. So maybe ntfs-3g mkfs will give different result than
> Paragons mkfs. It would be nice to test with Paragons mkfs software or
> that Paragon will test with ntfs-3g.

I have made more testing and it was actually my code which cause 013 not
fail. It is still pretty strange. I have made code for new mount api (fs
context) and 013 still get deadlock but still test will pass. This only
happends if acl is on. Though this is intresting why this happends. I
will not use more time for this now. I will try to focus fs context
mount api for now.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
