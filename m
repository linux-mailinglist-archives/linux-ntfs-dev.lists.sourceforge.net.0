Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B5A8A6BD4
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Apr 2024 15:08:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwiXh-0006RQ-EQ;
	Tue, 16 Apr 2024 13:08:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rwiLs-0005jW-P8
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Apr 2024 12:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k8EOIXqf/TnfxoLLuX8uyFaSEyK92+puFuxeJL3vbys=; b=S0wXleu5iaktTsDhXhAgKrCpS4
 m39lIsKaOJDSEVYa6vInCFJ6oZcCOuxb2ALyLD2wLXSDDI7AsRnnnYgoc+YAISrmal26SJxmCUY4Z
 jNYqk0T/HNPOIh9vZjXWlm2bfn6PQsz7Mukgtgt2DvDGJbJnjPF84R7f0Kd+WeJLJCaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k8EOIXqf/TnfxoLLuX8uyFaSEyK92+puFuxeJL3vbys=; b=K9ZufLLGvSlOlz02uos+iSeXdz
 AtTcDl6AZhNkZB2iz4a24EcK28v/YQ8jvnvYTdv5pz5+Q5K3dtl4smKS+/R+4eHFo37fd442qL0YH
 w5Xrt6M0BjX+kkHYh6+y8VBQ2lLswHtHPxhIxj6orU7np1t2cTuLVmp2Ue/LkrHvXmT0=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwiLs-0004cn-Hm for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Apr 2024 12:55:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 00D1ECE1057;
 Tue, 16 Apr 2024 12:55:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06064C2BD10;
 Tue, 16 Apr 2024 12:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713272143;
 bh=vS50xrw5prwzj+VNQBlQu3Y5Io9p8bmnxxpzPj+x/Vw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BHT+3klZ7SSMK9w5c++xbc6dBTQiAJ15T8aUAzrEzEyS8TGK+mBkp+Mjjrb7s6H46
 yc0BaGFcO6BO5c/HNtHeZQPsJSmMtcmIplh5mzzHhbqFiDoBXjqf7OplY20brwHPYM
 vjWmkofxRZLgD7IsaN1NBftoz4tMKK3sIcNNjhURja2Z3T4hBhGJT6ixRz+slWDTyb
 T7POWEtN7URTTkwJMMydiv502MCDXvrcTC3aN+/ObM4AQZJ2zsfuL/saoSXx+FoZCW
 EUR6IpZZb2pCkFvzkRp2xpZTW1i3GMwd4OieQoHt3yXiwJgTvLu9UB/er9PTLur/e4
 EAKeOJEXrQ7/w==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rwiLe-0000000037N-12tc;
 Tue, 16 Apr 2024 14:55:42 +0200
Date: Tue, 16 Apr 2024 14:55:42 +0200
From: Johan Hovold <johan@kernel.org>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <Zh51TvFSlXhTGPJy@hovoldconsulting.com>
References: <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
 <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
 <8FE8DF1E-C216-4A56-A16E-450D2AED7F5E@tuxera.com>
 <Zh0SicjFHCkMaOc0@hovoldconsulting.com>
 <20240415-warzen-rundgang-ce78bedb5f19@brauner>
 <CAHk-=whPTEYv3F9tgvJf-OakOxyGw2jzRVD0BMkXmC5ANPj0YA@mail.gmail.com>
 <Zh1MCw7Q0VIKrrMi@hovoldconsulting.com>
 <CAHk-=whN3V4Jzy+Mv8UZGTJ5VEk_ihCS8tu3VskW-HCfBg6r=g@mail.gmail.com>
 <Zh1Qa2aB2Dg_-mW4@hovoldconsulting.com>
 <20240416-genutzt-bestleistung-f76707a9ddba@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240416-genutzt-bestleistung-f76707a9ddba@brauner>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 16, 2024 at 12:38:56PM +0200, Christian Brauner
 wrote: > On Mon, Apr 15, 2024 at 06:06:03PM +0200, Johan Hovold wrote: >
 > Ah, right, I forgot about CONFIG_NTFS_RW as I've never enabled it. > > >
 > Judging from the now removed Kconfig entry perhaps not that many people
 > > did: > > > > The only supported operation is [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwiLs-0004cn-Hm
X-Mailman-Approved-At: Tue, 16 Apr 2024 13:08:08 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/2] ntfs3: remove warning
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Apr 16, 2024 at 12:38:56PM +0200, Christian Brauner wrote:
> On Mon, Apr 15, 2024 at 06:06:03PM +0200, Johan Hovold wrote:

> > Ah, right, I forgot about CONFIG_NTFS_RW as I've never enabled it.
> > 
> > Judging from the now removed Kconfig entry perhaps not that many people
> > did:
> > 
> > 	The only supported operation is overwriting existing files,
> > 	without changing the file length.  No file or directory
> > 	creation, deletion or renaming is possible. 
> > 
> > but I guess it still makes my argument above mostly moot.
> > 
> > At least if we disable write support in ntfs3 by default for now...
> 
> I think we can disable write support in ntfs3 for now. I've picked up
> the patch to make ntfs3 serve I sent some time ago that Johan tested
> now.

Note that I actually meant that write support should be disabled
completely in ntfs3 for now.

After this first encounter I have zero confidence in that driver and
pushing people towards using it (by removing the old, read-only one) is
just gonna result in further corrupted filesystems. At least make sure
it can't modify anything by default and mark write-support as
experimental and broken or something as that's apparently what it is.

> The only thing left is to disable write support for ntfs3 as legacy ntfs
> driver for now. I took a stab at this. The following two patches
> I'm appending _should_ be enough iiuc. Johan, please take a look and
> please test.

I skimmed them and gave them a quick spin. It seems that not specifying
either "ro" or "rw" in fstab now results in a ro mount, but I can still
specify "rw" explicitly (in fstab or command line) and end up with:

	/dev/nvme0n1p3 on /mnt/windows type ntfs (rw,relatime,uid=0,gid=0,iocharset=iso8859-1)

For obvious reasons, I did not dare listing the root directory or write
anything, but it looks like it's not read-only.

Using just my naive temporary hack from yesterday:

diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
index 8d2e51bae2cb..26be6c6d1032 100644
--- a/fs/ntfs3/super.c
+++ b/fs/ntfs3/super.c
@@ -1177,6 +1177,9 @@ static int ntfs_fill_super(struct super_block *sb, struct fs_context *fc)
        sb->s_xattr = ntfs_xattr_handlers;
        sb->s_d_op = options->nocase ? &ntfs_dentry_ops : NULL;

+       ntfs_warn(sb, "ntfs3 driver is broken, mounting read only");
+       sb->s_flags |= SB_RDONLY;
+
        options->nls = ntfs_load_nls(options->nls_name);
        if (IS_ERR(options->nls)) {
                options->nls = NULL;

seems to prevent also explicit rw mounts (but judging from your patches
it is not necessarily sufficient to prevent all modifications).

Johan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
