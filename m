Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 082FC580508
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Jul 2022 22:08:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oG4Mx-0000C8-66; Mon, 25 Jul 2022 20:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <soumya.negi97@gmail.com>) id 1oFddA-0007eG-J5
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 15:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kY/tRvPtpIY39uMgQW5s0cR39F3MzIZzHkDYQEsZMPg=; b=FdcDN7U71JnEQR+Lvf2BsGz+Gl
 aszD6NcrcMeKvREk36Xe3jXkOfpVB+UAOutvqL9o9dBkddcNVa4d5POJRyEpH24BthGfm0Xi4bBqu
 ZKQn3WDgFN9GrBq0WCSRLyRf36o7FialouWtaRClKOevQFDbY93LgPSdG1EsRwbq38rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kY/tRvPtpIY39uMgQW5s0cR39F3MzIZzHkDYQEsZMPg=; b=BPeZvt9EVBmyFpZJf7rnwY0T/h
 cD7aXAaR8FuQcL+cXhzX3YKEcwRTN1pYpRnPYiTItIRxCk1dXD6VHUhwKgdPH9E12qYKyOdqvJ9QL
 pvcZQz+/L7Qk5Cdcm2QmognAIhxki81Shr21yp936xo+Ghainp1DfPk7VvCJ9YqPLUHs=;
Received: from mail-pf1-f177.google.com ([209.85.210.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oFdd9-0090ls-Ow
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 15:34:56 +0000
Received: by mail-pf1-f177.google.com with SMTP id c3so8324270pfb.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 24 Jul 2022 08:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kY/tRvPtpIY39uMgQW5s0cR39F3MzIZzHkDYQEsZMPg=;
 b=ItTMBXUyjPv6HcOb3SYDf5/MdnfdCLXCYcMlD9hAyif1aWdHgQjNUSm+Vg4gae5f3c
 cY8kskWDxUEL/YN8gSs5LIY/H8cGdDAAIdOP9s0U39Fd48Rair8NyuNRb4PouFFpvjnr
 VDdRCQX+3vka+zCu+4I1T+2vozHPT9DSfE7q3G36O0SIotO8t+UfCBCO9uGWu3vSzbRQ
 MPgw16lV9rZ8McW/iCTiPdjI20SULULhSzC1G803i7GZRf91b5Woy1uXXBksmRmRi8HR
 OAwTyuxdSFWsUAdpH52jaWQkeFEoG77491XrCmRSomFN39Jr9ui8BeyReuZrRB9PvNOv
 KVlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kY/tRvPtpIY39uMgQW5s0cR39F3MzIZzHkDYQEsZMPg=;
 b=E2+Y+7ByC54upuIQba2AcdJj7C2YX80q22Dcbsx2ombtsgV8dOLLaUAezJF9ubnWIm
 pSLdQMnhyKZQX+2w08MSpUNME8+WxeH2fZqEtABBscg4zv5h/rgplQcNOTsW2heB55Ik
 JeynuFkR2XscuQhgdUTTkwspXHIDjwTbk0XTvkfXaSvsSKRpo8j3oaowaoxsDl1LzQh9
 TbUX+0rttSJSTB722TTOIeYf1ozKWVlek9ItUICA4s0kZWRAUMdMQtAnLzWl1EKmb5Tx
 10a/6AmdwnyWy16FNqh+iHoqk131y2It+/N8O6K/xmLfrIufOZb8iSJPEsia/cQicGfD
 570A==
X-Gm-Message-State: AJIora8h630sXspjQccYxd7JsXdB1NiqQXmeEAARtLQCZUWWI1GytzS4
 bvFhq3ZpHCyUAQZoKqVMhqI=
X-Google-Smtp-Source: AGRyM1s4ibEGj/bxy9JCMRRgG/GYPr2SfsvmWkpxHkjhlxg2LeO+U+TDrVxC101EX/JGLNpP4zPi1w==
X-Received: by 2002:a65:49c5:0:b0:412:6e3e:bd91 with SMTP id
 t5-20020a6549c5000000b004126e3ebd91mr7658428pgs.221.1658676890045; 
 Sun, 24 Jul 2022 08:34:50 -0700 (PDT)
Received: from Negi ([68.181.16.133]) by smtp.gmail.com with ESMTPSA id
 n7-20020a654507000000b0041ab83d39d4sm2794995pgq.0.2022.07.24.08.34.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Jul 2022 08:34:49 -0700 (PDT)
Date: Sun, 24 Jul 2022 08:34:48 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20220724153448.GA2608@Negi>
References: <20220724132107.1163-1-soumya.negi97@gmail.com>
 <Yt1NVQEOC6Ki3eUI@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yt1NVQEOC6Ki3eUI@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 24, 2022 at 03:47:01PM +0200, Greg KH wrote: >
 On Sun, Jul 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote: > > Fixes Syzbot
 bug: kernel BUG in ntfs_lookup_inode_by_name > > https://syzkal [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [soumya.negi97[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [soumya.negi97[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.177 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oFdd9-0090ls-Ow
X-Mailman-Approved-At: Mon, 25 Jul 2022 20:07:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: Ensure $Extend is a directory
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sun, Jul 24, 2022 at 03:47:01PM +0200, Greg KH wrote:
> On Sun, Jul 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote:
> > Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
> > https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
> > 
> > Check whether $Extend is a directory or not( for NTFS3.0+) while loading
> > system files. If it isn't(as in the case of this bug where the mft record for
> > $Extend contains a regular file), load_system_files() returns false.
> 
> Please wrap your changelog text at 72 columns like your editor asked you
> to when writing this :)

I will correct the changelog(Don't think I can wrap the bug report
link. Checkpatch will still give a warning. Is that okay?).
 
> > Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
> > Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
> 
> What commit caused this problem?  What Fixes: tag should go here?

I don't think this was caused by any specific commit.The $Extend
directory check is not present in any previous releases. Syzbot has
also not been able to produce a cause bisection for the bug. So no fixes
tag(please correct me if I am wrong).

> Should it go to stable kernels?  If so, how far back?

Since the NTFS extension file was new to NTFS 3.0, perhaps the patch 
should apply all the way back to the first release with NTFS3.0 support?
I checked the stable tree history and 2.6.11 is the oldest release I could find.

> > ---
> >  fs/ntfs/super.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
> > index 5ae8de09b271..18e2902531f9 100644
> > --- a/fs/ntfs/super.c
> > +++ b/fs/ntfs/super.c
> > @@ -2092,10 +2092,15 @@ static bool load_system_files(ntfs_volume *vol)
> >  	// TODO: Initialize security.
> >  	/* Get the extended system files' directory inode. */
> >  	vol->extend_ino = ntfs_iget(sb, FILE_Extend);
> > -	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino)) {
> > +	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino) ||
> > +	    !S_ISDIR(vol->extend_ino->i_mode)) {
> > +		static const char *es1 = "$Extend is not a directory";
> > +		static const char *es2 = "Failed to load $Extend";
> > +		const char *es = !S_ISDIR(vol->extend_ino->i_mode) ? es1 : es2;
> > +
> >  		if (!IS_ERR(vol->extend_ino))
> >  			iput(vol->extend_ino);
> > -		ntfs_error(sb, "Failed to load $Extend.");
> > +		ntfs_error(sb, "%s.", es);
> 
> Are you allowing the system log to be spammed by an untrusted user with
> this change?

The error message is written to the system log while trying to mount 
the file system(which will fail if the error occurs). I don't understand
how an untrusted user will be involved.

> thanks,
> 
> greg k-h

Thanks,
Soumya


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
