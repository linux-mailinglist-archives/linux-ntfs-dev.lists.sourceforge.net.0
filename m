Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5B63EAD21
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 13 Aug 2021 00:27:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mEJB2-0004gs-Ir; Thu, 12 Aug 2021 22:27:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1mEE7J-0005T8-NR
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 12 Aug 2021 17:03:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TVRfaim7JcFuDwK6qCeMrYCmulGcwWSC8AfnRPfxrg4=; b=VuM2lrCOiFv3Tg9ZDb/R6KDJL2
 veo2omqsmy+tKrIrfn4bweBcUsM7yr0bO219syfgJZyVRtVa7Se2MyFcKHueJfJtmqA23eWWvaNjt
 hIij6Wp74TLDq2Cq0GaJr0xzxf+SBsRBV2Wn+9a6Loxz2iDVEOQhFAYdAcnGT+T6VR34=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TVRfaim7JcFuDwK6qCeMrYCmulGcwWSC8AfnRPfxrg4=; b=QplQuQwo1v0onplIY5qbXNjHR6
 eCa+Nqxvas7HZbdwYVXpH8Jg1wI/MTgjZljblCfBI1G/T0XfI/nvnNepDCJJU6gtxhK9YiqiChJAT
 j9IJXn5WLAa+lMu+2pQJzePNBYNwRrQ58rS5vzMSRtKDTEz4Y8Yf3/TGShtXp4FxT4jg=;
Received: from mail-lj1-f176.google.com ([209.85.208.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEE7E-004Jtn-0i
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 12 Aug 2021 17:03:41 +0000
Received: by mail-lj1-f176.google.com with SMTP id x7so11515490ljn.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 12 Aug 2021 10:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TVRfaim7JcFuDwK6qCeMrYCmulGcwWSC8AfnRPfxrg4=;
 b=OrgwjPSTXR7hauGvdb4nrOZJ37karfE+CBe383HHGLrVApcIXU3x7j4C+U50f+0mtf
 4KMEnwEU40Vaqig5GuWGyjLnCZbZgZiyDhANBmgKN4ZE3yxvcbejSwN+LbgU9LiVWKvJ
 7QNbQT0XgisZU59AjkhksT/CmCmBvzxL2CmY+AB4yxlIaKNS2vnXt1oUxhi74ScXp7IL
 Jz+NeyWU8FrfyYZQqkuLkxirNEWsbroD5JEvE7fuW7k51WtEoKNlaKmEoaHC2KK1S0h1
 arNHeVcGZiv0MPntwld4DvTarTUZjEg3SFRN2Q1hzIZbQWkm/L+/x/T1zcKTbQaRLUor
 q7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TVRfaim7JcFuDwK6qCeMrYCmulGcwWSC8AfnRPfxrg4=;
 b=hzF4LHXiv/38jKsX5aBmNYXtkbn49zsVerPOBMhuNr5+tyxdyphObzHf19wyZej+Kn
 xiE/8sZsL9eETG/k+zNAZ6nOPGN6+ay+rSo3tQXRvkVUWp1gRgqXFgFtO/iIr/I4CeAn
 4s1nBMmMh06Pxuh9/Vq/+hn65k0dMveTnhtB9XnvfM+/1AgtxVPjNmnC5/RrM+Sm4h/+
 n+YmNHL8WkpK9wZPHqQM9PsXISJie7Z9kMvi0CxeWc2clp4OpATbbIhf69OSaPCnxXc0
 RsUBDsHK8K/pGyl1NrykoeXziWCGulhniWiysrHV+rY2IRLViM0HA+RboIpKwidaoL/0
 xr1A==
X-Gm-Message-State: AOAM533ldkB4HdrNDLHh6W9yN+7RqRdkPDqtZ5LSSPg/PJ2AiP/SEsgt
 I6Jo0Zi5KI4qZphEaOv9Xp4=
X-Google-Smtp-Source: ABdhPJw3+nVBWWUJj9VBiIwgKNFxrn0mNayyfnDEg64wBYh1UwIlrapqHF/myaiY0O21XQjESPgq/w==
X-Received: by 2002:a05:651c:b21:: with SMTP id
 b33mr3793028ljr.310.1628787809393; 
 Thu, 12 Aug 2021 10:03:29 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id s3sm315978lfb.15.2021.08.12.10.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 10:03:28 -0700 (PDT)
Date: Thu, 12 Aug 2021 20:03:26 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Theodore Ts'o <tytso@mit.edu>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210812170326.6szm7us5kfdte52u@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729162459.GA3601405@magnolia> <YQdlJM6ngxPoeq4U@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YQdlJM6ngxPoeq4U@mit.edu>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.176 listed in list.dnswl.org]
X-Headers-End: 1mEE7E-004Jtn-0i
X-Mailman-Approved-At: Thu, 12 Aug 2021 22:27:51 +0000
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
Cc: andy.lavr@gmail.com, nborisov@suse.com,
 "Darrick J. Wong" <djwong@kernel.org>, oleksandr@natalenko.name,
 rdunlap@infradead.org, dsterba@suse.cz, willy@infradead.org,
 linux-kernel@vger.kernel.org, ebiggers@kernel.org, joe@perches.com, hch@lst.de,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sun, Aug 01, 2021 at 11:23:16PM -0400, Theodore Ts'o wrote:
> On Thu, Jul 29, 2021 at 09:24:59AM -0700, Darrick J. Wong wrote:
> > 
> > I have the same (still unanswered) questions as last time:
> > 
> > 1. What happens when you run ntfs3 through fstests with '-g all'?  I get
> > that the pass rate isn't going to be as high with ntfs3 as it is with
> > ext4/xfs/btrfs, but fstests can be adapted (see the recent attempts to
> > get exfat under test).
> 
> Indeed, it's not that hard at all.  I've included a patch to
> xfstests-bld[1] so that you can just run "kvm-xfstests -c ntfs3 -g
> auto".
> 
> Konstantin, I would *strongly* encourage you to try running fstests,
> about 60 seconds into a run, we discover that generic/013 will trigger
> locking problems that could lead to deadlocks.

It seems at least at my testing that if acl option is used then
generic/013 will pass. I have tested this with old linux-next commit
5a4cee98ea757e1a2a1354b497afdf8fafc30a20 I have still some of my own
code in it but I will test this tomorrow so I can be sure.

It also seems that acl support is broken. I also suspect ntfs-3g mkfs in
some failure cases. So maybe ntfs-3g mkfs will give different result than
Paragons mkfs. It would be nice to test with Paragons mkfs software or
that Paragon will test with ntfs-3g.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
