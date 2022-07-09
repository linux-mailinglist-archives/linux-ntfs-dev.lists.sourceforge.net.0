Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC62956C7AE
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Jul 2022 09:27:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oA4sU-0005Xc-Ib; Sat, 09 Jul 2022 07:27:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <yin31149@gmail.com>) id 1o9ykx-0007FB-3c
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Jul 2022 00:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5tfoXTTrku/dQJy1oFSssPrlHXbJM14k7EhQ5B1YVWk=; b=b9HhBGKhPXcNeTIbRsmMqdZ7R2
 Yrs8JNAjmDGoCnwBG/dJ6OmX9MI8gowHtItUIj06SOHS5UFicsgndO7N6OAS0EzseB6HKSi3BioZR
 3GncVw3nIgey240jgGy33NYLKriq6GXfHY1IIu5PnwxiXMIXw72sN7IgIDvKs0FIvlt0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5tfoXTTrku/dQJy1oFSssPrlHXbJM14k7EhQ5B1YVWk=; b=T1vzWlGsYSluPFSxaAcIxpKi68
 /PTmEwYunCC5mMmOxPqNmDEoKbHBktATYEgYZ998Y70sbBC8MP2tQkZeDgxr1VfgXbnJXYUOSxyGB
 oX+LVQfzK0Q011VkD8Loo/OwwULZ/LXSlBl+86TwPu6u3X9lnnxHGGHEa1vvWK15+ZbA=;
Received: from mail-pj1-f45.google.com ([209.85.216.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o9ykw-0006hs-4a
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Jul 2022 00:55:34 +0000
Received: by mail-pj1-f45.google.com with SMTP id
 o3-20020a17090a744300b001ef8f7f3dddso166386pjk.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 08 Jul 2022 17:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5tfoXTTrku/dQJy1oFSssPrlHXbJM14k7EhQ5B1YVWk=;
 b=RFZ/9uNlT+kbKB+KcbIS08mBkVVSXOnVZkTk2JLCBDJCF8QLX+EnxUJ7RtKaN1um+n
 TedWU8xcqGINBOAJd4IaUMQ4ft7TgD+ZRRX7TKyxcvWImnmXvNrpoYMcT+0uFlkmMvFm
 v4X2hB2ZP75HgYmHGThxq1r0MMQgTtACrxDW1arL8xmOVJYvAyzz9Hlm5vil7sq59ih9
 It7zX4nW/Exd9JhuFX8+NQxuFrtADvy255NN2Opg/T/7H9Tdf0Jj1W530sU55R9JhIfZ
 vGsDU7lVfwM8byerNxhh5njyVOCwR8TKQmpkgrsB8GiQzDKp18KAmVHCCopqnNTRn0A7
 8zzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5tfoXTTrku/dQJy1oFSssPrlHXbJM14k7EhQ5B1YVWk=;
 b=ZHYmAFdtbnThY10zMpnOC49i+G6g7eeO52OTl30G/IUjjgblERoIure9X8XkbSPyfG
 uBHlhy60NcJM8qJLYqTvcQ6ickuhyfs7ho6jJhS9Ms0Elgg3wyhwbhy6XpliV722kUh/
 YNzGvr26XhHaIgzgpmlE62zNXc1vA2hA3JoHJmkkBpwcX+u+dbgdK2y6EgOP4QA+kWDG
 dPUVK1g7V9aqhFS6irNa0rCr0QPFUtaYWxnGMAFUgRZmOTdAsxpa/2Ffuz2Ne7Sj+bBb
 zeHZG8H3NHuBv5CjBd8XzSPGqA+n6Dzx7eUWauYXt7FyaXRWndk0U/GEvDq4SlcRDi4Z
 TBSg==
X-Gm-Message-State: AJIora9sqO1MJzD5IxURaeZDMeHI5QzH1Zl9uxKvY8tj94u8h3IFUePR
 Qw1kp6Fc20tVntEoOvTbr20=
X-Google-Smtp-Source: AGRyM1uEGMgEeHvZ7/1r1lHZfwXyQnGYSx1n4aEw+xWLRHCwPwOJvo7eLXnlY8Hkr62r/X/jaeMZOg==
X-Received: by 2002:a17:902:e542:b0:16b:fcbe:7b90 with SMTP id
 n2-20020a170902e54200b0016bfcbe7b90mr6384914plf.90.1657328128595; 
 Fri, 08 Jul 2022 17:55:28 -0700 (PDT)
Received: from ubuntu.lan (pcd568068.netvigator.com. [218.102.100.68])
 by smtp.gmail.com with ESMTPSA id
 c5-20020a170902c2c500b0016beea47800sm152394pla.41.2022.07.08.17.55.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jul 2022 17:55:28 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: chenxiaosong2@huawei.com
Date: Sat,  9 Jul 2022 08:54:51 +0800
Message-Id: <20220709005450.2220-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220707105329.4020708-1-chenxiaosong2@huawei.com>
References: <20220707105329.4020708-1-chenxiaosong2@huawei.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > Fix this by adding sanity check on end address of attibute
 name string. > diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c > index
 4de597a83b88..9ab8766872d2
 100644 > --- a/fs/ntfs/attrib.c > +++ b/fs/ntfs/attrib.c > @@ -592,8 +592,12
 @@ static int ntfs_attr_find(const AT [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.45 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.45 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o9ykw-0006hs-4a
X-Mailman-Approved-At: Sat, 09 Jul 2022 07:27:45 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] ntfs: fix use-after-free in
 ntfs_ucsncmp()
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
Cc: yi.zhang@huawei.com, linux-ntfs-dev@lists.sourceforge.net,
 paskripkin@gmail.com, liuyongqiang13@huawei.com, linux-kernel@vger.kernel.org,
 18801353760@163.com, skhan@linuxfoundation.org, akpm@linux-foundation.org,
 zhangxiaoxu5@huawei.com, anton@tuxera.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

> Fix this by adding sanity check on end address of attibute name string.

> diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
> index 4de597a83b88..9ab8766872d2 100644
> --- a/fs/ntfs/attrib.c
> +++ b/fs/ntfs/attrib.c
> @@ -592,8 +592,12 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
>  		a = (ATTR_RECORD*)((u8*)ctx->attr +
>  				le32_to_cpu(ctx->attr->length));
>  	for (;;	a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
> -		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > (u8*)ctx->mrec +
> -				le32_to_cpu(ctx->mrec->bytes_allocated))
> +		u8 *mrec_end = (u8 *)ctx->mrec +
> +		               le32_to_cpu(ctx->mrec->bytes_allocated);
> +		u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
> +		               a->name_length;

In my opinion, name_length field just means the number of characters,
yet each character is a ntfschar type. So name should be
name_length * sizeof(ntfschar) bytes. The example is at
https://elixir.bootlin.com/linux/v5.19-rc5/source/fs/ntfs/attrib.c#L1667

> +		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
> +		    name_end > mrec_end)
>  			break;
>  		ctx->attr = a;
>  		if (unlikely(le32_to_cpu(a->type) > le32_to_cpu(type) ||
> -- 



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
