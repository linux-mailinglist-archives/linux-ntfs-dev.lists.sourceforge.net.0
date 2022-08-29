Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D35A504A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 29 Aug 2022 17:38:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oSgqW-0000fl-F0;
	Mon, 29 Aug 2022 15:38:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <soumya.negi97@gmail.com>) id 1oSgIJ-0007MJ-8j
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 29 Aug 2022 15:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hl19yC27qvJPGzvVoFgwuG8P3RA3WT4VWzdG/9QIu5c=; b=hCabRHTPUCZfTFMorCzYPXYjuy
 0pOk+5aK4zpgTzu/X5jL/XT+N315To2mSVqQAgkzeC2S0Jq2LJOuEV7BQSYm6rbRE5uHfQWswWFW6
 X79wyNoOUHqGg/SRJRre++i2+NCX0IYHuXfNgE8ixPn/qmgliXnHfEpSzRUZbKn/RhGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hl19yC27qvJPGzvVoFgwuG8P3RA3WT4VWzdG/9QIu5c=; b=YWvMYjYnQwqz6ATNa7Ra8DQuJT
 ZaR5CHHRrA6z/uDgevOo739QgM3zxWASDO1AF++pmskmkUyZoQq9F2Oa5nXDeiCgrYcrztdkgNEWR
 vyZoQftzBvW+e+z4X7d7aKnBcVcoFulbPaQVAuk5u7t99RCFVS8uoBdV4GS7XCrTHE+Q=;
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oSgII-006X1v-Mu for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 29 Aug 2022 15:03:19 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 j9-20020a17090a3e0900b001fd9568b117so5220180pjc.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 29 Aug 2022 08:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc;
 bh=hl19yC27qvJPGzvVoFgwuG8P3RA3WT4VWzdG/9QIu5c=;
 b=N1pIhGD3wyaigKJVuMP6jb4oj231Asc43jUz5tjVhjk5bTdEAAcjlu+xAvZU/qb9+m
 1m5qLiwFAUAIcOjaHfMSChJoyufmA6Zxclf8RU9S0ixKv80UoHtL5WOqQbTrCT5xznXF
 i/DS01nwtIF3d68Na5mCvQV6XHczdhOioi+X3kRLspOP22nPcUGEzf/BcTd2Wab9vPr2
 Pb+N0BxHyJH2UG61ugOuyC7ND/2XO7a1AAvBqSddPCtxvGkFlyUweO+GxukeWHRkQLyG
 GSzOxEhS5UmBsZtvXcWaPYZyMCdtpdX+51/lZH7B3YGIrlj1f6rRpOARqnvUSkOJO7lm
 aX1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=hl19yC27qvJPGzvVoFgwuG8P3RA3WT4VWzdG/9QIu5c=;
 b=mpnDkpXUAY7ajCMyy7+d+9q5BWzaaJYNM/wok66YzTfVYADj1Jgx6dxdPAZx0J9Jkx
 29qtJ+lOpaENbvuO9b1BhGdFpZWV33K4b28s6Ri9KNa9oAJDVH1tPQevGrpwBiU5RQNE
 MpUHNT4VMOgSiMYUeAw94Nf5ihpOMJ1Ne8hU8qdKeN2HNcxvXOEYgKUOvV7wS/Fou11L
 2M79sknR2NHpahUX2HnXt9u6Lzzpr49eDMW0eK5zRArHkQQkTmfReZNvHJb4DXC97rls
 YE/gH7tb59laHiS/fs0YrZsHt4Mt0iwACRrgAravg1Pk4IUI7MTy44nJo1CXbfOaSYTD
 1Azg==
X-Gm-Message-State: ACgBeo3rizJ0hXD4+Ox6KI39f2dx+BMLg0+ULQWyrVfjV/XUa7Qa3IaD
 shSgrDNWxM6qSMbexGP+56U=
X-Google-Smtp-Source: AA6agR7OFBttzwRQAP0jnnmDnPAv1l0tyFU2JXitdpeRVfDA4S77kutEDWZof5n4mxHqPaLyKs4WNQ==
X-Received: by 2002:a17:90b:2404:b0:1fc:b5d1:446f with SMTP id
 nr4-20020a17090b240400b001fcb5d1446fmr18494415pjb.58.1661785392095; 
 Mon, 29 Aug 2022 08:03:12 -0700 (PDT)
Received: from Negi ([207.151.52.7]) by smtp.gmail.com with ESMTPSA id
 u1-20020a170902e80100b0016c4546fbf9sm6644546plg.128.2022.08.29.08.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Aug 2022 08:03:11 -0700 (PDT)
Date: Mon, 29 Aug 2022 08:03:10 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>,
 Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20220829150309.GA26122@Negi>
References: <20220727001513.11902-1-soumya.negi97@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220727001513.11902-1-soumya.negi97@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jul 26, 2022 at 05:15:13PM -0700, Soumya Negi wrote:
 > Fix Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name >
 https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
 > [...] Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [soumya.negi97[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [soumya.negi97[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oSgII-006X1v-Mu
X-Mailman-Approved-At: Mon, 29 Aug 2022 15:38:39 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] ntfs: Ensure $Extend is a directory
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
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Jul 26, 2022 at 05:15:13PM -0700, Soumya Negi wrote:
> Fix Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
> https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
> 
> Check whether $Extend is a directory or not( for NTFS3.0+) while
> loading system files. If it isn't(as in the case of this bug where the
> mft record for $Extend contains a regular file), load_system_files()
> returns false.
> 
> Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
> CC: stable@vger.kernel.org # 4.9+
> Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
> ---
> Changes since v1:
> * Added CC tag for stable
> * Formatted changelog to fit within 72 cols
> 
> ---
>  fs/ntfs/super.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
> index 5ae8de09b271..18e2902531f9 100644
> --- a/fs/ntfs/super.c
> +++ b/fs/ntfs/super.c
> @@ -2092,10 +2092,15 @@ static bool load_system_files(ntfs_volume *vol)
>  	// TODO: Initialize security.
>  	/* Get the extended system files' directory inode. */
>  	vol->extend_ino = ntfs_iget(sb, FILE_Extend);
> -	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino)) {
> +	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino) ||
> +	    !S_ISDIR(vol->extend_ino->i_mode)) {
> +		static const char *es1 = "$Extend is not a directory";
> +		static const char *es2 = "Failed to load $Extend";
> +		const char *es = !S_ISDIR(vol->extend_ino->i_mode) ? es1 : es2;
> +
>  		if (!IS_ERR(vol->extend_ino))
>  			iput(vol->extend_ino);
> -		ntfs_error(sb, "Failed to load $Extend.");
> +		ntfs_error(sb, "%s.", es);
>  		goto iput_sec_err_out;
>  	}
>  #ifdef NTFS_RW
> -- 
> 2.17.1

Hi Anton,
Have you had a chance to look at this patch?

Thanks,
Soumya



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
