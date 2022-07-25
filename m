Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2763258050D
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Jul 2022 22:08:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oG4Mx-0000D6-M8; Mon, 25 Jul 2022 20:07:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <soumya.negi97@gmail.com>) id 1oG3Q4-0002My-Vu
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 25 Jul 2022 19:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eaPHtOOOY8qo+YT1sPvH9CgIJLYkA1nmDllA2/WdJf0=; b=k6FeAK/aXElAFa0zZ2SoP176vV
 mytO74AgcJ71XNLZSSMOyPCHzeFRaz1gbM0lTaK0D32nJ8eQWHKng7Y76Htlob5gcWuywxmWdblB0
 FWMN1JOVMhcFCe/zgnWRXbWcprqEnE2NTl53tS0IXZ0ZJjUCliRBLrWquu1UvMznsR9Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eaPHtOOOY8qo+YT1sPvH9CgIJLYkA1nmDllA2/WdJf0=; b=gteRhlVQoISIwAHyYeZZ2ctMCz
 nCm+O+a14SJwvzzol8/gqnOSNBmaMovV/0NUcBhrHYsIygUQHX73AvZ1cNwr44CyiET0eFoYjqRDl
 HuwD4GBld6F8pKhbqVvD44ljSGaEMvAkheCswTQOguYDKNeyksrKemzJn0qnav9HUw+8=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oG3Pz-00054s-S2
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 25 Jul 2022 19:07:07 +0000
Received: by mail-pf1-f181.google.com with SMTP id c3so11249824pfb.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 25 Jul 2022 12:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eaPHtOOOY8qo+YT1sPvH9CgIJLYkA1nmDllA2/WdJf0=;
 b=HxkUPJM5xvgAdGwMkg7IvUnr9TpuKF6GGD6ZjRmBCJ1k6x9i8aK3L4ZC8O31NupPrQ
 VWA2uxN7IJYnpvCYRfDhtD76iED/HQ3SVC9iVlBHUx2FC6UKEWz9vAUiR7vJ/paMEOlv
 1kybJU3iyfhQqBYaRdjhS/2i3RzLNz1iSRhLFOF4ROPVcEgb6yRtNdECI6to5eLTGlPm
 ds4WgL1zCFDSsjj0SDkZ1I2U4yv7Zs9731knpnviq2s6nv//cpAZxOQCPmOsABbimXzP
 ws59iL9xp2RtwirnabDcW0M6WnWVD9tDkZvZmv6SpgbXanISBbp/mlBfN70Ht9a6Ll3Q
 lJNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eaPHtOOOY8qo+YT1sPvH9CgIJLYkA1nmDllA2/WdJf0=;
 b=mEBuvOxnJdF+Z4HmOCl/OE3EcVbhgGD18uS1YuCi/S/OJZiwhlX0rzclM9fgXf1N/L
 JjjBUxv63MN7WpWwinm2i/nLg9sAwNvQhixBXZFxMda/OzBxO+mjarK4V5peGzchBwK3
 8VJ7rTnWCW3rFCvCZUr0jpLl3+DPcq0DD3hqP791mKjLUpSKair452VxnQnF35EFGntR
 HmWp1fgrBEPuYpqkfxcgh0EEwyQdlmbu3+dH937JUzqedlWIwtUbMm+4qWTp83J7nOjB
 BdTmTvnlryXIU8lvYh84wW8TIdzOWaRSjKQxpc8E/o0R/nATZzjlaJTwHeqTXsYy/xJm
 lkMg==
X-Gm-Message-State: AJIora/lC6Ik72ZnTOcCrOLlNyhVyisIyvbJ+GkzvjRyeWHcGw13y4js
 AEHneVZ068j6Jpj8k1BgDXY=
X-Google-Smtp-Source: AGRyM1utB88Uz5RGY3veqzZ/lkrZkqK64QL4cYJg+aYYpcQV/CjGovcfjcLw0e/uBQKLgfQ+8HfCtg==
X-Received: by 2002:a62:1509:0:b0:528:98a1:1f7e with SMTP id
 9-20020a621509000000b0052898a11f7emr14149491pfv.11.1658776018203; 
 Mon, 25 Jul 2022 12:06:58 -0700 (PDT)
Received: from Negi ([68.181.16.133]) by smtp.gmail.com with ESMTPSA id
 y23-20020a17090a105700b001efd39b7e39sm11428048pjd.37.2022.07.25.12.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jul 2022 12:06:57 -0700 (PDT)
Date: Mon, 25 Jul 2022 12:06:56 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20220725190656.GA14927@Negi>
References: <20220724132107.1163-1-soumya.negi97@gmail.com>
 <Yt1NVQEOC6Ki3eUI@kroah.com> <20220724153448.GA2608@Negi>
 <Yt1rQ8Ft5klOOENg@kroah.com> <20220724221745.GB2608@Negi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220724221745.GB2608@Negi>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sun, Jul 24, 2022 at 03:17:45PM -0700, Soumya Negi
 wrote: > On Sun, Jul 24, 2022 at 05:54:43PM +0200, Greg KH wrote: > > On Sun, 
 Jul 24, 2022 at 08:34:48AM -0700, Soumya Negi wrote: > > > On Sun, J [...]
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [soumya.negi97[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [soumya.negi97[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.181 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oG3Pz-00054s-S2
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

Hi,

On Sun, Jul 24, 2022 at 03:17:45PM -0700, Soumya Negi wrote:
> On Sun, Jul 24, 2022 at 05:54:43PM +0200, Greg KH wrote:
> > On Sun, Jul 24, 2022 at 08:34:48AM -0700, Soumya Negi wrote:
> > > On Sun, Jul 24, 2022 at 03:47:01PM +0200, Greg KH wrote:
> > > > On Sun, Jul 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote:
> > > > > Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
> > > > > https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
> > > > > 
> > > > > Check whether $Extend is a directory or not( for NTFS3.0+) while loading
> > > > > system files. If it isn't(as in the case of this bug where the mft record for
> > > > > $Extend contains a regular file), load_system_files() returns false.
> > > > 
> > > > Please wrap your changelog text at 72 columns like your editor asked you
> > > > to when writing this :)
> > > 
> > > I will correct the changelog(Don't think I can wrap the bug report
> > > link. Checkpatch will still give a warning. Is that okay?).
> > 
> > Yes, do not wrap links.
> > 
> > > > > Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
> > > > > Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
> > > > 
> > > > What commit caused this problem?  What Fixes: tag should go here?
> > > 
> > > I don't think this was caused by any specific commit.The $Extend
> > > directory check is not present in any previous releases. Syzbot has
> > > also not been able to produce a cause bisection for the bug. So no fixes
> > > tag(please correct me if I am wrong).
> > > 
> > > > Should it go to stable kernels?  If so, how far back?
> > > 
> > > Since the NTFS extension file was new to NTFS 3.0, perhaps the patch 
> > > should apply all the way back to the first release with NTFS3.0 support?
> 
> > Yes, mark it there.
> 
> Thanks. I will send v2 of the patch. Just want to make sure that the
> patch will apply to 2.6.11.y before marking it.

2.6.11 is where I think NTFS3.0 support was first present and till where
the patch should go. But I am not able to build 2.6.11 on my system and
test the patch. I tried the patch on 4.14 and it works. Should I mark it
to be backported till 4.14 instead?

With thanks,
Soumya


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
