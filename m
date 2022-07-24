Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2008580506
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Jul 2022 22:08:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oG4Mx-0000Ck-Gq; Mon, 25 Jul 2022 20:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <soumya.negi97@gmail.com>) id 1oFjvF-0003Iu-Sq
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 22:18:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TUqDJbKLgOrxeIK66AdtU2xlhyRBbEM5JPtjgrE7Gvo=; b=nNoXK8whlqI3PCwW75os8gD+wT
 WZpuO19POupuFOJK+HAsqhtg2TKr3wII59Z2w5EQ3RweYjLdtfhiDX5S7+4/fgtmOR0SOp8o7cxsH
 uXdsPDgxWwfjaclQXQcIQ8TPbY7MbUjSsbuu/jXqczECu3UG9lXY39w37PAXwiVeHDmU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TUqDJbKLgOrxeIK66AdtU2xlhyRBbEM5JPtjgrE7Gvo=; b=c31c4UGUriJwgJVZD/03NIlHYA
 i9ZMJGc+G9VmfAgz3/k+4v9ulVw7nn07uUCkdpww7Mw5/Crw9C1Dzcu3IBuWIBAUgqZJJtGHtWUcV
 OOXU1Zg2i0LJAi9EAw21/pU6do/bsyqxM16lIyz2BWwE2908co+eMA/XN+HxxYn1jbvM=;
Received: from mail-pj1-f54.google.com ([209.85.216.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oFjv7-009D7y-DP
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 22:17:53 +0000
Received: by mail-pj1-f54.google.com with SMTP id
 l14-20020a17090a72ce00b001f20ed3c55dso8610269pjk.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 24 Jul 2022 15:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TUqDJbKLgOrxeIK66AdtU2xlhyRBbEM5JPtjgrE7Gvo=;
 b=Qvl4zc2vdY7VOhBEZeh/tajiq3s8kDwrJvuu29nuvlN/UEnct+cTCsAoqBHYj3xgtn
 /Jfx3C/5kj3oXxNRSE7FiqQL3z6ldW71GyU87RBcAqLJ8MDFJUCt1Blu5FmiGVSmgPNO
 i+IOs+qucoURknEKoI/FtEkUrA+HqyuLx6NwuCKT1uJ9m/45i3ccx50742Yqxw5AjJyo
 YNVvBETSNseRPBs9YSWCfhNoG19mAILOWHeyxP1R5LuReIuJH+dRG7NXlrQI6LpYnTR1
 ES7t1GeabwJcMfg0qX+s7os1vRzlo4Q3XHefhkLXAeGt2pn301zMmhINOjW+oYFZjvZD
 qqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TUqDJbKLgOrxeIK66AdtU2xlhyRBbEM5JPtjgrE7Gvo=;
 b=7/jqfiLiePx4cgM+rZqCPvb9zj06fPe3Am8+MFBUYnD+lpEC92vdhEuquDtp/AQxqk
 2oenmnzS79+yYMzeoMEN8v7jd2fSC/pfnTRy5dOM2OPyOk8W1ndCKEIZqPB5GU0RKEJm
 HhQ+KnhOctcb1OuOcfap7KOfN1qTB9jX+r3L+3kX9QiK0PvNAYne0IKKDOMgSuv3WYT1
 1NwdZOUgRLyWDdWbyL+NCF4zJB2zdWEsNTtYqWt29xeacp1I7UYQ5BWEpucnBJi+oD5c
 E0SY+IacEH0l8/be0JvCFlc+7K3bGzwsg4GkKbnkCwTJebm7hIoBk4fVK5Pi3aNUywaF
 OEPA==
X-Gm-Message-State: AJIora9lx1nvrRWtC4wi3IckFoYX93vuNVpyHqJaQEdL5WpYHEaeGnCs
 lAf4fqeHX5wvXy16YyaQ+LY=
X-Google-Smtp-Source: AGRyM1twdRgLTKQNbvpjNi3Gx6v3vLpNlLbQV7INoQFdw1GYzVamdyrmforpu+7k9gtAswRnIP1DOA==
X-Received: by 2002:a17:902:b60d:b0:16b:e832:7295 with SMTP id
 b13-20020a170902b60d00b0016be8327295mr9335775pls.144.1658701067767; 
 Sun, 24 Jul 2022 15:17:47 -0700 (PDT)
Received: from Negi ([68.181.16.133]) by smtp.gmail.com with ESMTPSA id
 186-20020a6214c3000000b00525496442ccsm4024844pfu.216.2022.07.24.15.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Jul 2022 15:17:47 -0700 (PDT)
Date: Sun, 24 Jul 2022 15:17:45 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20220724221745.GB2608@Negi>
References: <20220724132107.1163-1-soumya.negi97@gmail.com>
 <Yt1NVQEOC6Ki3eUI@kroah.com> <20220724153448.GA2608@Negi>
 <Yt1rQ8Ft5klOOENg@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yt1rQ8Ft5klOOENg@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 24, 2022 at 05:54:43PM +0200, Greg KH wrote: >
 On Sun, Jul 24, 2022 at 08:34:48AM -0700, Soumya Negi wrote: > > On Sun,
 Jul 24, 2022 at 03:47:01PM +0200, Greg KH wrote: > > > On Sun, Jul 2 [...]
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.54 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [soumya.negi97[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [soumya.negi97[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oFjv7-009D7y-DP
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

On Sun, Jul 24, 2022 at 05:54:43PM +0200, Greg KH wrote:
> On Sun, Jul 24, 2022 at 08:34:48AM -0700, Soumya Negi wrote:
> > On Sun, Jul 24, 2022 at 03:47:01PM +0200, Greg KH wrote:
> > > On Sun, Jul 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote:
> > > > Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
> > > > https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
> > > > 
> > > > Check whether $Extend is a directory or not( for NTFS3.0+) while loading
> > > > system files. If it isn't(as in the case of this bug where the mft record for
> > > > $Extend contains a regular file), load_system_files() returns false.
> > > 
> > > Please wrap your changelog text at 72 columns like your editor asked you
> > > to when writing this :)
> > 
> > I will correct the changelog(Don't think I can wrap the bug report
> > link. Checkpatch will still give a warning. Is that okay?).
> 
> Yes, do not wrap links.
> 
> > > > Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
> > > > Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
> > > 
> > > What commit caused this problem?  What Fixes: tag should go here?
> > 
> > I don't think this was caused by any specific commit.The $Extend
> > directory check is not present in any previous releases. Syzbot has
> > also not been able to produce a cause bisection for the bug. So no fixes
> > tag(please correct me if I am wrong).
> > 
> > > Should it go to stable kernels?  If so, how far back?
> > 
> > Since the NTFS extension file was new to NTFS 3.0, perhaps the patch 
> > should apply all the way back to the first release with NTFS3.0 support?

> Yes, mark it there.

Thanks. I will send v2 of the patch. Just want to make sure that the
patch will apply to 2.6.11.y before marking it.

-Soumya


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
