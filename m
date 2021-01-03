Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1E82E8F6A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Jan 2021 03:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kwFXV-0005wK-AC; Mon, 04 Jan 2021 02:24:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1kwCdl-0000Oj-GI
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 23:18:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BAvAQQ+kFb6MYxJyXY6rcBWKb+4Ftoc7s8FLX1WY9Gs=; b=HiC6hekHBbFNotMcLnXh7lEL7d
 A6ESZbUwtd9hrdI7l9Z5YWSoJbEb3xitm2ZTKMcJE15JCclKcPQ1f9bnIABEhkxhIpwAioV39F2Qa
 sGOe2ysqfVO3qFdn6avgKi1YbL4gszXtq3AndH7z3zCsVlHysuJkiw1y7/WjvPrusE+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BAvAQQ+kFb6MYxJyXY6rcBWKb+4Ftoc7s8FLX1WY9Gs=; b=mxy/vM28RVZpII/cWE851yJlIw
 /5iJhRSve6PG/0/+nPI/atWZXeRn5f+xr2MHbmyY6NjgcXfQbklelwRLiiMgwCYvTPLgqgu4m0Ns0
 +MZLdYpkRemC3PN+3YoP9Xm+imHJ+qB7mVJ4jBroqS5hjCww25b6ekO1vHDQTS2MgIrQ=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwCdY-004bLS-4X
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 23:18:25 +0000
Received: by mail-lf1-f46.google.com with SMTP id m12so60480888lfo.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 03 Jan 2021 15:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BAvAQQ+kFb6MYxJyXY6rcBWKb+4Ftoc7s8FLX1WY9Gs=;
 b=gynPkt3ezVczKuRJ8Of69KnuHHieIGlemh74sSHl1iekRBAqH7UgnMfYovP15R/cBf
 Ejnu+46GhT0oMsiEUb49KAOTtBZQlmFh84nl3w3GRKpn7waLfhcYLoXX8rpsLthgBucM
 PzNeGXthBqE4S8b3vZOF1p7uGIaONaeurCgTjpWfZFF1sXu2WFkSO2xnIpuILx77DSyt
 SJMkW+4dHVqmFc9HCwuHAIe5wtKF7c8EpzM2tUOJdEXvdfJtxlOj2qDexwwXZKySMnBr
 MRKOxboObO9eJ+e05IvHpe8cJSFP5pwcgQ4qRLuSbPCOWszxKGjr36v1IzI+eRKq6caI
 YHjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BAvAQQ+kFb6MYxJyXY6rcBWKb+4Ftoc7s8FLX1WY9Gs=;
 b=L1y/OmPfQ2pRZJk8pz2rRkEiW4Hr/6tZ5TUMWKhuC8FlxwFbDHlFehECnNz6f8m8Er
 U9+HAcYJof6/Jmh9vMJWKoh4AjHSy1orHT+yOod5Lsl6eeVQlWjBb3a1N0+tyfAvgGM4
 6mH/taVRrAiNA0yryUB/wL5Ce29iVwpeDnNS2/s+HICEXCPu11Am3NArSoSJC989asmj
 JJFhErKhGTbUk9cuz8XED8wdAbm7tODUi0ce+npOxuq69YXVBRWS+I0qoFZBq0UTR0qm
 B0oN+7EilZcW4XcT8vwoPetTjxdgCIh7AYs+RFSyHvKse3UW9mwU9kzojj9kX1QH/P3S
 mkzg==
X-Gm-Message-State: AOAM533THp2o8AdLLe8qhgH6OAcUlvZbByJcwVAzcjoncCgP83L6nenL
 GqRwc0NP7YFFI3+9q+2WogU=
X-Google-Smtp-Source: ABdhPJzX1PcNnVbkJVDLB865DWzaUFjzCANnvqsk8a3Ro+ia0/OP7x2mrIwcWTXg1ziTWziZmzXFRw==
X-Received: by 2002:a2e:8695:: with SMTP id l21mr36488941lji.151.1609715878235; 
 Sun, 03 Jan 2021 15:17:58 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id c142sm7132529lfg.309.2021.01.03.15.17.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jan 2021 15:17:57 -0800 (PST)
Date: Mon, 4 Jan 2021 01:17:55 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210103231755.bcmyalz3maq4ama2@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-2-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231152401.3162425-2-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kwCdY-004bLS-4X
X-Mailman-Approved-At: Mon, 04 Jan 2021 02:24:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 01/10] fs/ntfs3: Add headers and
 misc files
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

On Thu, Dec 31, 2020 at 06:23:52PM +0300, Konstantin Komarov wrote:

> diff --git a/fs/ntfs3/debug.h b/fs/ntfs3/debug.h

> +/*
> + * Logging macros ( thanks Joe Perches <joe@perches.com> for implementation )
> + */
> +
> +#define ntfs_err(sb, fmt, ...)  ntfs_printk(sb, KERN_ERR fmt, ##__VA_ARGS__)
> +#define ntfs_warn(sb, fmt, ...) ntfs_printk(sb, KERN_WARNING fmt, ##__VA_ARGS__)
> +#define ntfs_info(sb, fmt, ...) ntfs_printk(sb, KERN_INFO fmt, ##__VA_ARGS__)
> +#define ntfs_notice(sb, fmt, ...)                                              \
> +	ntfs_printk(sb, KERN_NOTICE fmt, ##__VA_ARGS__)
> +
> +#define ntfs_inode_err(inode, fmt, ...)                                        \
> +	ntfs_inode_printk(inode, KERN_ERR fmt, ##__VA_ARGS__)
> +#define ntfs_inode_warn(inode, fmt, ...)                                       \
> +	ntfs_inode_printk(inode, KERN_WARNING fmt, ##__VA_ARGS__)
> +
> +#define ntfs_alloc(s, z)	kmalloc(s, (z) ? (GFP_NOFS | __GFP_ZERO) : GFP_NOFS)

kmalloc with __GFP_ZERO is just kzalloc. So why we even need ntfs_alloc(). We
will be much happier if we straight away see

kzalloc( , GFP_NOFS) or kmalloc( , GFP_NOFS)

That way it will be easier to remove GFP_NOFS flag when not needed.
I have not knowledge but I have read that even with filesystems it
is not good pratice to always use that flag. Another point is that
we will get these defines deleted from debug.h. Atleast to me this
is strange place for them. And also this not even save line space
much.

kzalloc( , GFP_NOFS)
ntfs_alloc( , 0)

ntfs_free()
kree()

I can send patch fror this if you prefer this way. And nobady not
nack about it.

> +#define ntfs_free(p)		kfree(p)
> +#define ntfs_memdup(src, len)	kmemdup(src, len, GFP_NOFS)

> diff --git a/fs/ntfs3/upcase.c b/fs/ntfs3/upcase.c

> +static inline u16 upcase_unicode_char(const u16 *upcase, u16 chr)
> +{
> +	if (chr < 'a')
> +		return chr;
> +
> +	if (chr <= 'z')
> +		return chr - ('a' - 'A');
> +
> +	return upcase[chr];
> +}
> +
> +int ntfs_cmp_names(const __le16 *s1, size_t l1, const __le16 *s2, size_t l2,
> +		   const u16 *upcase)
> +{
> +	int diff;
> +	size_t len = l1 < l2 ? l1 : l2;
> +
> +	if (upcase) {
> +		while (len--) {
> +			diff = upcase_unicode_char(upcase, le16_to_cpu(*s1++)) -
> +			       upcase_unicode_char(upcase, le16_to_cpu(*s2++));
> +			if (diff)
> +				return diff;
> +		}
> +	} else {
> +		while (len--) {
> +			diff = le16_to_cpu(*s1++) - le16_to_cpu(*s2++);
> +			if (diff)
> +				return diff;
> +		}
> +	}
> +
> +	return (int)(l1 - l2);
> +}

I notice that these functions might call both ignore case and upcase in a row.
record.c - compare_attr()
index.c - cmp_fnames()

So maybe we can add bool bothcases.

int ntfs_cmp_names(const __le16 *s1, size_t l1, const __le16 *s2, size_t l2,
		   const u16 *upcase, bool bothcase)
{
	int diff1 = 0;
	int diff2;
	size_t len = l1 < l2 ? l1 : l2;

	if (!bothcase && upcase)
		goto case_insentive;

	for (; len; s1++, s2++, len--) {
		diff1 = le16_to_cpu(*s1) - le16_to_cpu(*s2);
		if (diff1) {
			if (bothcase && upcase)
				goto case_insentive;

			return diff1;
		}
	}
	return l1 - l2;

case_insentive:
	for (; len; s1++, s2++, len--) {
		diff2 = upcase_unicode_char(upcase, le16_to_cpu(*s1)) -
			 upcase_unicode_char(upcase, le16_to_cpu(*s2));
		if (diff2)
			return diff2;
	}

	if (bothcase && diff1)
		return diff1;

	return l1 - l2;
}

This is not tested. I can send patch for this also if you like idea.
cmp_fnames() and compare_attr() will clean up alot with this.

> +
> +int ntfs_cmp_names_cpu(const struct cpu_str *uni1, const struct le_str *uni2,
> +		       const u16 *upcase)
> +{
> +	const u16 *s1 = uni1->name;
> +	const __le16 *s2 = uni2->name;
> +	size_t l1 = uni1->len;
> +	size_t l2 = uni2->len;
> +	size_t len = l1 < l2 ? l1 : l2;
> +	int diff;
> +
> +	if (upcase) {
> +		while (len--) {
> +			diff = upcase_unicode_char(upcase, *s1++) -
> +			       upcase_unicode_char(upcase, le16_to_cpu(*s2++));
> +			if (diff)
> +				return diff;
> +		}
> +	} else {
> +		while (len--) {
> +			diff = *s1++ - le16_to_cpu(*s2++);
> +			if (diff)
> +				return diff;
> +		}
> +	}
> +
> +	return l1 - l2;
> +}


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
