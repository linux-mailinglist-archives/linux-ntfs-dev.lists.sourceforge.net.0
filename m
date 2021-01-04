Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 578B92E8F6D
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Jan 2021 03:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kwFXV-0005wV-GJ; Mon, 04 Jan 2021 02:24:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1kwDhP-0003FV-OL
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 04 Jan 2021 00:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R7hvpfkH9hm2F1ljXe6kGhfQ96YKfh3yMzjTm0ieqD8=; b=P1cb612R5YN2emSMavRORgNCto
 6z9BA0kyr7viVZhRAO+ioMe/ElFpRtUg8dljwRu5tU8IQG2bLOqQkTgiSG8Mr/jfp0z/waUej9Su8
 LlNN99a/hqEcdXjNTsweMgRrtH3grEvG0TAHrxmVv6JZqQRp5Dyw/qsE1Ax4ETorEjhM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R7hvpfkH9hm2F1ljXe6kGhfQ96YKfh3yMzjTm0ieqD8=; b=aBt+qlFQgIdAxCwZGjDLUfb/i9
 HRZBeLYay//4IoDXNyR1KphhadHvWy0MXwmjyZzZYPBsmgEtS/Ylk5NDRJxYZWyvMrDeq0WJq2VkC
 PvrblJRUNvQgNlZWrbjaSUqfdk4qEbjawnQ2XOw0gHUFxyrJOnSkM5tf9Ld2fPT2rSHs=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwDhD-00AMrl-V3
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 04 Jan 2021 00:26:15 +0000
Received: by mail-lf1-f41.google.com with SMTP id h22so60757852lfu.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 03 Jan 2021 16:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=R7hvpfkH9hm2F1ljXe6kGhfQ96YKfh3yMzjTm0ieqD8=;
 b=rCeemwx2glN9MpYPcYl3kvS4BmsTM6ZZOl97JKu3dPhZQ+QF+fBaOke5EwCy4bwtq8
 agQqa045vE7hm8S1QP8o3fyUBRwzwiGLCXUJaOBz7I7Qyrw93Od8/dF3tVYfEv/cr01m
 vfrMFJOZFslaCoIQhPpVOa3Nn7NaXmBUtUFk86SG5xtWRuHZwfrl7boslRJxkIm4Aa7S
 CsMSw1OgDLFxqaaybzvtlqCHlPBL5uXruocArj9ogz7vod7wwe35Hvv5wAMQG6E1XqOV
 o9b/h0H18vTxIggwkzp1MfGafdfj5zK0lsa4jY0IuZE4Hb+8a5HTN+2HjQW8zyC5KoN2
 Vz/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R7hvpfkH9hm2F1ljXe6kGhfQ96YKfh3yMzjTm0ieqD8=;
 b=opv7AYghMGzXjjfWS16HStLUmX7L2v19oE7tEGGGaUv7ZxAu3h2W5bHIlQIuBvUydF
 aSUN2GmN1ekfz5FmYF8NbzowVKuM9zn0tve0uzu/9qgzjBVvyfTPJi0m5clNBpYmxlPd
 CmXmt8EpitIkbXzX+kdkeCXislJLN1mfDgnWFExE+i8S+Wq7R8xnLMNHGhcVcT3h9rRa
 7Cq0ornNZnoJZSWTnH4A6nStvd3I1EZVvDQEZUEwRmSysJfVvo+bhYgEv47RYuFqQIGV
 D5q0ds1ebNhobKFBq7/iD0VqNYeHXF6Wn3aw4mH2Iw0q3WlaMSI4XyUez2CrMC5W5Lmx
 Mo0A==
X-Gm-Message-State: AOAM5308uwwtt7DcDA28JurSdUDYOzk37YcQi9wgvDy0NTMeppyI6W78
 bZDuT1CxCLmoAiO9VHOzHN0=
X-Google-Smtp-Source: ABdhPJx/Cw20aEzfrWzLLsvU8YderbZ242tKhXuOzcrXDTm10NV0w523k4IVvA+Q5v3T1Gp5emSt1Q==
X-Received: by 2002:a05:6512:34d3:: with SMTP id
 w19mr32816918lfr.180.1609719957315; 
 Sun, 03 Jan 2021 16:25:57 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id b141sm7115792lfg.123.2021.01.03.16.25.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jan 2021 16:25:56 -0800 (PST)
Date: Mon, 4 Jan 2021 02:25:54 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210104002554.gdxoyu2q2aaae5ph@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-6-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231152401.3162425-6-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
X-Headers-End: 1kwDhD-00AMrl-V3
X-Mailman-Approved-At: Mon, 04 Jan 2021 02:24:07 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 05/10] fs/ntfs3: Add attrib
 operations
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 31, 2020 at 06:23:56PM +0300, Konstantin Komarov wrote:
> This adds attrib operations
> 
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> ---
>  fs/ntfs3/attrib.c   | 2081 +++++++++++++++++++++++++++++++++++++++++++
>  fs/ntfs3/attrlist.c |  463 ++++++++++
>  fs/ntfs3/xattr.c    | 1072 ++++++++++++++++++++++
>  3 files changed, 3616 insertions(+)
>  create mode 100644 fs/ntfs3/attrib.c
>  create mode 100644 fs/ntfs3/attrlist.c
>  create mode 100644 fs/ntfs3/xattr.c
> 
> diff --git a/fs/ntfs3/attrlist.c b/fs/ntfs3/attrlist.c

> +/*
> + * al_find_ex
> + *
> + * finds the first le in the list which matches type, name and vcn
> + * Returns NULL if not found
> + */
> +struct ATTR_LIST_ENTRY *al_find_ex(struct ntfs_inode *ni,
> +				   struct ATTR_LIST_ENTRY *le,
> +				   enum ATTR_TYPE type, const __le16 *name,
> +				   u8 name_len, const CLST *vcn)
> +{
> +	struct ATTR_LIST_ENTRY *ret = NULL;
> +	u32 type_in = le32_to_cpu(type);
> +
> +	while ((le = al_enumerate(ni, le))) {
> +		u64 le_vcn;
> +		int diff;
> +
> +		/* List entries are sorted by type, name and vcn */

Isn't name sorted with upcase sort.

> +		diff = le32_to_cpu(le->type) - type_in;
> +		if (diff < 0)
> +			continue;
> +
> +		if (diff > 0)
> +			return ret;
> +
> +		if (le->name_len != name_len)
> +			continue;
> +
> +		if (name_len &&
> +		    memcmp(le_name(le), name, name_len * sizeof(short)))
> +			continue;

So does this compare name correctly? So it is caller responsible that
name is up_cased? Or does it even mater.

And this will check every name in right type. Why not use name_cmp and
then we know if we over. It might be because performance. But maybe
we can check that like every 10 iteration or something.

> +		if (!vcn)
> +			return le;
> +
> +		le_vcn = le64_to_cpu(le->vcn);
> +		if (*vcn == le_vcn)
> +			return le;
> +
> +		if (*vcn < le_vcn)
> +			return ret;
> +
> +		ret = le;

So we still have wrong vcn at this point. And we save that so we can
return it. What happens if we will not found right one. Atlest function 
comment say that we should return NULL if we do not found matching entry.

> +	}
> +
> +	return ret;
> +}
> +
> +/*
> + * al_find_le_to_insert
> + *
> + * finds the first list entry which matches type, name and vcn

This comment seems wrong? This seems to find insert point for new
le.

> + * Returns NULL if not found
> + */
> +static struct ATTR_LIST_ENTRY *
> +al_find_le_to_insert(struct ntfs_inode *ni, enum ATTR_TYPE type,
> +		     const __le16 *name, u8 name_len, const CLST *vcn)
> +{
> +	struct ATTR_LIST_ENTRY *le = NULL, *prev;
> +	u32 type_in = le32_to_cpu(type);
> +	int diff;
> +
> +	/* List entries are sorted by type, name, vcn */
> +next:
> +	le = al_enumerate(ni, prev = le);
> +	if (!le)
> +		goto out;
> +	diff = le32_to_cpu(le->type) - type_in;
> +	if (diff < 0)
> +		goto next;
> +	if (diff > 0)
> +		goto out;
> +
> +	if (ntfs_cmp_names(name, name_len, le_name(le), le->name_len, NULL) > 0)
> +		goto next;

Why not go out if compare is < 0. In my mind this will totally ignore
name and next just find right vcn (or we come next ID) and call it a day. 

NAME	VCN
[AAB]	[2] <- Looks insert point for this.

[AAA]	[1]
[AAB]	[1]
	    <- This is right point.
[AAC]	[1]
	    <- But we tell that insert point is here.
[AAD]	[2]

I might be totally wrong but please tell me what I'm missing.

> +	if (!vcn || *vcn > le64_to_cpu(le->vcn))
> +		goto next;
> +
> +out:
> +	if (!le)
> +		le = prev ? Add2Ptr(prev, le16_to_cpu(prev->size)) :
> +			    ni->attr_list.le;
> +
> +	return le;
> +}

There seems to be lot of linear list search. Do you think it will be
benefital to code binary or jump search for them? Just asking for
intrest. Might be that it will not benefit at all but just thinking
here.

I might try to do that in some point if someone see point of that.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
