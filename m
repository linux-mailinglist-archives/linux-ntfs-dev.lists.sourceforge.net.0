Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E406009F6
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 17 Oct 2022 11:11:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1okM9Y-0001r4-Hc;
	Mon, 17 Oct 2022 09:11:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dvyukov@google.com>) id 1okLWs-0001cl-U8
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 17 Oct 2022 08:31:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8KsRspEgB/gOfpXeMit48jsmBa9u2K7sMr+wCGZ90pU=; b=gIHkvPMsS3Bo/I3VyhyHb7jKWh
 ULGDLy/Il7OgEDt4WnqPAPU0BDbn7wZwzl2jxC4DBsFW7wtfznBkjEPk+KU6Svd98IoxXSft3fpBH
 JxCnMgkU7JfOH9qTym5NbvKQq1tET6bWvqxOAvUZITgs3C8QvDX53jc1je+HVCKTYZkc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8KsRspEgB/gOfpXeMit48jsmBa9u2K7sMr+wCGZ90pU=; b=aRWH2nbSSIHo5wTxGb1QN1p0DL
 5oCh4CNmA0MTdipxgxLX1G3vi8/5qatm1HcdP/72QmMrEKPOpgYWcjsPatVgjOUzmZvgqDZdI+mYm
 9LWqntxMzFccbl2IfZ3cJP3k6Paq3vk6PlyPvmvVGNh71WdqKag1lN+K66NhTYOH/6tk=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1okLWr-00022F-NA for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 17 Oct 2022 08:31:22 +0000
Received: by mail-lf1-f47.google.com with SMTP id a29so16409333lfo.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 17 Oct 2022 01:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=8KsRspEgB/gOfpXeMit48jsmBa9u2K7sMr+wCGZ90pU=;
 b=iXrGdd8Ce/D/Ym1P/AKmDjhkCRodIz0sVHqhCXCbzz/70S2w/xiwhFMs2ZE6LzAOaY
 kerpA8DKLp8h2EYJv/OamQ96cNwCdVwhlMsEt2I/Fx1TXldfIxx8y8EdnjfTih1j5QQY
 mcontV8hQeGs5ML1x0iwjYx4oVH0ravWrBbKL8nhqpsejuYizWkrN/Z0xocIgE9V/nqA
 /ibMQ5BBiN6XVdPz/bWMDfcoSg3yAyVOTjHlVwPDjsYICQVyEKqxZha6l63hzWMq89fQ
 ikDz03AXZbI54WZYRpIVuo0JGyUqwrFqZ1lSI9F+0vgKA6aqXG/1CN3roD6DwyasNLJq
 0f1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8KsRspEgB/gOfpXeMit48jsmBa9u2K7sMr+wCGZ90pU=;
 b=iPu84fwDq3UVfk+zXG2M7PF/Zkz/7wjMNLN6fK6Yq9blkuKo3BKoXMGx+syj3VioAC
 p8g1pKX5qrmOlmhzYdz9zcaj+DiaCITfVQU7rS/DmGR0qm92/9gjkqUr8wtQKQqe+opB
 HjPsvDnXLVCkxCOVcvPoh1fAo10t7NiGD3y5oNlkimP186fSkyWmW9U+JLziROFBT73g
 FAcdqbs4IazAv1HDoRfIw3dalWhOjjeeS/qprCK9Y/3V7e2LGJ1O9rrCweg41aMPaE3h
 XFTUCU/6eOOOdYyIJHyJw92PbwjC6lY4/NUaU6iEXAGY2IxzfV2d+L7TQsvlUUye381Z
 LOLQ==
X-Gm-Message-State: ACrzQf3xP3/JyG8A6Gq74qRMwpFm03+yvYKav3Prtc+uPIicVGS1sg1+
 HuzgugCsnV+7A0JoB/+S37jBoUYLZ+Ns3BelPSYj5Q==
X-Google-Smtp-Source: AMsMyM4vtxZKfG1BBKlWVvUdtQPv/C1LzAh0hWbLTBbJjcAgFk5XHPxnZIEqc8SnpuZmZ0z0x8oPZB51ly6T8M4BxPI=
X-Received: by 2002:a05:6512:358c:b0:4a2:9c55:c63c with SMTP id
 m12-20020a056512358c00b004a29c55c63cmr3765865lfr.598.1665995475449; Mon, 17
 Oct 2022 01:31:15 -0700 (PDT)
MIME-Version: 1.0
References: <20221014084837.1787196-1-hrkanabar@gmail.com>
 <20221014091503.GA13389@twin.jikos.cz>
In-Reply-To: <20221014091503.GA13389@twin.jikos.cz>
Date: Mon, 17 Oct 2022 10:31:03 +0200
Message-ID: <CACT4Y+as3SA6C_QFLSeb5JYY30O1oGAh-FVMLCS2NrNahycSoQ@mail.gmail.com>
To: dsterba@suse.cz
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 14 Oct 2022 at 11:15, David Sterba <dsterba@suse.cz>
 wrote: > > On Fri, Oct 14, 2022 at 08:48:30AM +0000, Hrutvik Kanabar wrote:
 > > From: Hrutvik Kanabar <hrutvik@google.com> > > > > Fuzzing [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1okLWr-00022F-NA
X-Mailman-Approved-At: Mon, 17 Oct 2022 09:11:19 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH RFC 0/7] fs: Debug config option to
 disable filesystem checksum verification for fuzzing
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
From: Dmitry Vyukov via Linux-NTFS-Dev <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Cc: "Darrick J . Wong" <djwong@kernel.org>, Chris Mason <clm@fb.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Hrutvik Kanabar <hrutvik@google.com>, kasan-dev@googlegroups.com,
 Hrutvik Kanabar <hrkanabar@gmail.com>, linux-ext4@vger.kernel.org,
 Namjae Jeon <linkinjeon@kernel.org>, Marco Elver <elver@google.com>,
 Chao Yu <chao@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, Aleksandr Nogikh <nogikh@google.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, 14 Oct 2022 at 11:15, David Sterba <dsterba@suse.cz> wrote:
>
> On Fri, Oct 14, 2022 at 08:48:30AM +0000, Hrutvik Kanabar wrote:
> > From: Hrutvik Kanabar <hrutvik@google.com>
> >
> > Fuzzing is a proven technique to discover exploitable bugs in the Linux
> > kernel. But fuzzing filesystems is tricky: highly structured disk images
> > use redundant checksums to verify data integrity. Therefore,
> > randomly-mutated images are quickly rejected as corrupt, testing only
> > error-handling code effectively.
> >
> > The Janus [1] and Hydra [2] projects probe filesystem code deeply by
> > correcting checksums after mutation. But their ad-hoc
> > checksum-correcting code supports only a few filesystems, and it is
> > difficult to support new ones - requiring significant duplication of
> > filesystem logic which must also be kept in sync with upstream changes.
> > Corrected checksums cannot be guaranteed to be valid, and reusing this
> > code across different fuzzing frameworks is non-trivial.
> >
> > Instead, this RFC suggests a config option:
> > `DISABLE_FS_CSUM_VERIFICATION`. When it is enabled, all filesystems
> > should bypass redundant checksum verification, proceeding as if
> > checksums are valid. Setting of checksums should be unaffected. Mutated
> > images will no longer be rejected due to invalid checksums, allowing
> > testing of deeper code paths. Though some filesystems implement their
> > own flags to disable some checksums, this option should instead disable
> > all checksums for all filesystems uniformly. Critically, any bugs found
> > remain reproducible on production systems: redundant checksums in
> > mutated images can be fixed up to satisfy verification.
> >
> > The patches below suggest a potential implementation for a few
> > filesystems, though we may have missed some checksums. The option
> > requires `DEBUG_KERNEL` and is not intended for production systems.
> >
> > The first user of the option would be syzbot. We ran preliminary local
> > syzkaller tests to compare behaviour with and without these patches.
> > With the patches, we found a 19% increase in coverage, as well as many
> > new crash types and increases in the total number of crashes:
>
> I think the build-time option inflexible, but I see the point when
> you're testing several filesystems that it's one place to set up the
> environment. Alternatively I suggest to add sysfs knob available in
> debuging builds to enable/disable checksum verification per filesystem.

Hi David,

What usage scenarios do you have in mind for runtime changing of this option?
I see this option intended only for very narrow use cases which
require a specially built kernel in a number of other ways (lots of
which are not tunable at runtime, e.g. debugging configs).

> As this may not fit to other filesystems I don't suggest to do that for
> all but I am willing to do that for btrfs, with eventual extension to
> the config option you propose. The increased fuzzing coverage would be
> good to have.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
