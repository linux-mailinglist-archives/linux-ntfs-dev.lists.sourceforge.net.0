Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA246FED39
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 11 May 2023 09:56:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1px19j-00007X-2h;
	Thu, 11 May 2023 07:56:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1px19h-00007R-6p
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 11 May 2023 07:56:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PKDETJeuoa3GDfxCr/ZF5mOdg/6viiS9yTPWZAUlzvo=; b=FC1uaLlBJZtqPGothcKdOZ8DoZ
 ZM8plwFp4uWqJGDHfpq30UqksGbnr4BQQh5bz9CrL203sBmJAkGq96W7HS1CSF4l77qp4awq9DJqa
 ZJ6lrio12C0pU/k1AV6SP4wnVsbt0O8bS+verfHCdRHDdDdLQd6Y3zyE+UipBzree34c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PKDETJeuoa3GDfxCr/ZF5mOdg/6viiS9yTPWZAUlzvo=; b=dRCq1bpLyri9smntOZK4f77ZEL
 KQhsL7F3VnBYJX27EXSMDXpBAgfqk/M5yolLDR6JZdJS2HrTVzMYAuM5KgMN2hC68pjogQYpi03w5
 0o9hMxrCOH7ePYYq/lSVBffGuPso9NQgJiOsm4eQW0QDQs44dzv0nEW7A+YASTstppzE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1px19d-0002Gi-TM for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 11 May 2023 07:56:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3EF8A618F9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 11 May 2023 07:55:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E9C1C4339E
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 11 May 2023 07:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683791752;
 bh=Ee6CqD05l0SiT8ZITLwZUEkw+FY3HNQg9i3z6kZzgzU=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=QqtxcEeayyeWyqXpOcNbOf4PObo5zx3qTzh8+FMMRcBnh3t+/j5i8Y/jH4pJ6qUG+
 aoqIzIFEuRrBhTqg/VWYZh1RfYwoNb1U8DkjMw/BvatJeOIa9Pba91z+PFkDI0KARr
 C+XH6DFmLoLJ5BG43jAiJInZH4yxM+9CGuJa+X7oCZGWGvhy6A/vBI9EdWFCSEkUPn
 wqJG6RQXxg4eq0iXQByOFrjbASw+/UCUmOGHlspRAgAZaHPiF06IWQzm/SSV92GoEa
 rHhn8fMDvXOmEcJsSU0TifcxbMXSErjqsFRY9pDxwVI+kqKGcZyG+sfEjsb3/BFV0y
 zpGJVUygB/o1A==
Received: by mail-ot1-f49.google.com with SMTP id
 46e09a7af769-6ab0bad2587so2745931a34.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 11 May 2023 00:55:52 -0700 (PDT)
X-Gm-Message-State: AC+VfDzUBZFOiy87Dxw6KKyn2TIeR05n7EMMul2+yRPMyftQCeOP88DC
 sa8u7ea2jL1wok90KXV+dJ98ryNs5pF3/hdd/Vc=
X-Google-Smtp-Source: ACHHUZ5QKdyusQlNfoFEyVt6NvreH/pSCh28lVRQWt6epudEY9lAaqfFuSFNQnOTc/oRcnX2Kz7QQhcoMgFZjLRqCSA=
X-Received: by 2002:aca:1c1a:0:b0:386:9720:77da with SMTP id
 c26-20020aca1c1a000000b00386972077damr3978338oic.26.1683791751414; Thu, 11
 May 2023 00:55:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:290:0:b0:4da:311c:525d with HTTP; Thu, 11 May 2023
 00:55:50 -0700 (PDT)
In-Reply-To: <20220829150309.GA26122@Negi>
References: <20220727001513.11902-1-soumya.negi97@gmail.com>
 <20220829150309.GA26122@Negi>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Thu, 11 May 2023 16:55:50 +0900
X-Gmail-Original-Message-ID: <CAKYAXd-Aizt2Ffz33ZRWp42Q51-Bs09cwvgXOidmiABaKmcKHA@mail.gmail.com>
Message-ID: <CAKYAXd-Aizt2Ffz33ZRWp42Q51-Bs09cwvgXOidmiABaKmcKHA@mail.gmail.com>
To: Soumya Negi <soumya.negi97@gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2022-08-30 0:03 GMT+09:00,
 Soumya Negi <soumya.negi97@gmail.com>:
 > On Tue, Jul 26, 2022 at 05:15:13PM -0700, Soumya Negi wrote: >> Fix Syzbot
 bug: kernel BUG in ntfs_lookup_inode_by_name >> https://s [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1px19d-0002Gi-TM
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs: Ensure $Extend is a directory
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
Cc: Christian Brauner <brauner@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2022-08-30 0:03 GMT+09:00, Soumya Negi <soumya.negi97@gmail.com>:
> On Tue, Jul 26, 2022 at 05:15:13PM -0700, Soumya Negi wrote:
>> Fix Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
>> https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
>>
>> Check whether $Extend is a directory or not( for NTFS3.0+) while
>> loading system files. If it isn't(as in the case of this bug where the
>> mft record for $Extend contains a regular file), load_system_files()
>> returns false.
>>
>> Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
>> CC: stable@vger.kernel.org # 4.9+
>> Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
>> ---
>> Changes since v1:
>> * Added CC tag for stable
>> * Formatted changelog to fit within 72 cols
>>
>> ---
>>  fs/ntfs/super.c | 9 +++++++--
>>  1 file changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
>> index 5ae8de09b271..18e2902531f9 100644
>> --- a/fs/ntfs/super.c
>> +++ b/fs/ntfs/super.c
>> @@ -2092,10 +2092,15 @@ static bool load_system_files(ntfs_volume *vol)
>>  	// TODO: Initialize security.
>>  	/* Get the extended system files' directory inode. */
>>  	vol->extend_ino = ntfs_iget(sb, FILE_Extend);
>> -	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino)) {
>> +	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino) ||
>> +	    !S_ISDIR(vol->extend_ino->i_mode)) {
>> +		static const char *es1 = "$Extend is not a directory";
>> +		static const char *es2 = "Failed to load $Extend";
>> +		const char *es = !S_ISDIR(vol->extend_ino->i_mode) ? es1 : es2;
>> +
>>  		if (!IS_ERR(vol->extend_ino))
>>  			iput(vol->extend_ino);
>> -		ntfs_error(sb, "Failed to load $Extend.");
>> +		ntfs_error(sb, "%s.", es);
>>  		goto iput_sec_err_out;
>>  	}
>>  #ifdef NTFS_RW
>> --
>> 2.17.1
>
> Hi Anton,
> Have you had a chance to look at this patch?
Hi,

Could you elaborate more ? Isn't MFT_RECORD_IS_DIRECTORY flags set in
mft record of $Extend ?

> Thanks,
> Soumya
>
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
