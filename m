Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B58353FB79
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  7 Jun 2022 12:37:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nyWat-0003VC-No; Tue, 07 Jun 2022 10:37:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@redhat.com>) id 1nyTm7-0006VD-SD
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jun 2022 07:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=poSLf3SQpSQVqGAvfY9ZUAc4mDsdNw09sPQoA12+Xn0=; b=cipwIFo4w2r4Ri95Y98BhXKRTe
 dJMXlc/RcHtCAcITLNyEqZAmyK+bvOaUFvEFr5ZtsAw7qWXwxoCvW51/hwmOpNL25v81xCPsNjUia
 D6ytTTAJbVBp+JyyWMZ7Mgj0PWjjU8g4Z+XnzqYGpcEQmQCxTwRvfpAVg1ZXxmGaPs3E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=poSLf3SQpSQVqGAvfY9ZUAc4mDsdNw09sPQoA12+Xn0=; b=WlEUh0OJcQNSg0c9+/JcHg3gSz
 UWrlFcNzzWdyr27DqCMO6y7/shZKRp9PZlkgxQtfRCfS9VlyPDL3Dd6gkA3lNWvEZJrJQHIfgm6Am
 SxLrvOoMePLZjUhHAai2TIfaJAH/zqqYf6uK8qNbKPbJ33v9lpZ1fhifKYxR3Jf/uuiA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyTm4-007ox4-LD
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jun 2022 07:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654587426;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=poSLf3SQpSQVqGAvfY9ZUAc4mDsdNw09sPQoA12+Xn0=;
 b=Ei+tS59UADcqRz8t/v6zXFGm4EirBPntNruDT19yvMF9YHB0MHFhp3IEyb+cuD0A992nYg
 D39RQmqe/dt0C1JFN17d4H6Tw+rzmJJNiqBkd5Qr+Z2n5LKSvSi0fssMroXBAMVSEW6qnJ
 HECw1UpOfT6vHDEHvIqVFVk+w02e7rk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-616-HMZVLAUaNHauLWJaCoKLpA-1; Tue, 07 Jun 2022 03:36:25 -0400
X-MC-Unique: HMZVLAUaNHauLWJaCoKLpA-1
Received: by mail-wr1-f70.google.com with SMTP id
 c7-20020adfa707000000b002184d715e69so541687wrd.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 07 Jun 2022 00:36:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=poSLf3SQpSQVqGAvfY9ZUAc4mDsdNw09sPQoA12+Xn0=;
 b=H3h8wIXeCA+uApBf/kgN7wHUjSPfJVPYspMa8z12AhQyljgl/KFZ7vrYubud4joCTj
 8VZTS8KB64gqfk1B0MkJmRh0RANMV9HAeorFn6S7ltJiGlJTf/tX3J2j4d9YzECzQaNo
 h/1txDxVY3lO6MSzAvTNZwfxoqSRaYXRWRxGdYpkAFurXOuTOqk7GewrHBDtcSBVZ1AZ
 p+b03yJlwUon2qu7M0cJw/nSym53z8SbiN2Uqil4VVloF8B2AbXlb1oLL+G5/Xbr94p0
 1j8euUH29PJI80Ny8sPoq6BYNPwPh2b8Pf+TtDlp2vEJbfPbLLHflcql/R2Guq5ClKlK
 iGuw==
X-Gm-Message-State: AOAM531mdmSV7C5pSHEqAoVYvPMnVfrZTM/Y0nK0nwYEjJeg2N/ae1AK
 6Qs7QxGCT3F/2Z6Rf8JbHOJjVeCeq1qJTGulzK+YhMTUBrdFltcPLXbmXoTjzY+uPlhv+3dXAAQ
 NsmKjepAwREjTx2vsbok4yoJs75Bavtfa2zk=
X-Received: by 2002:a05:600c:4ec9:b0:397:750a:798a with SMTP id
 g9-20020a05600c4ec900b00397750a798amr56010324wmq.169.1654587384030; 
 Tue, 07 Jun 2022 00:36:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz/TT1zDaD6ih4ST/0Z6l6/VJexv/LUjWrit9gRiSM2S633qB8aLjqIdjv8Hs+falCUt0H+YA==
X-Received: by 2002:a05:600c:4ec9:b0:397:750a:798a with SMTP id
 g9-20020a05600c4ec900b00397750a798amr56010293wmq.169.1654587383789; 
 Tue, 07 Jun 2022 00:36:23 -0700 (PDT)
Received: from ?IPV6:2003:cb:c709:500:4c8d:4886:f874:7b6f?
 (p200300cbc70905004c8d4886f8747b6f.dip0.t-ipconnect.de.
 [2003:cb:c709:500:4c8d:4886:f874:7b6f])
 by smtp.gmail.com with ESMTPSA id
 j37-20020a05600c1c2500b0039c235fb6a5sm19943141wms.8.2022.06.07.00.36.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jun 2022 00:36:22 -0700 (PDT)
Message-ID: <e4d017a4-556d-bb5f-9830-a8843591bc8d@redhat.com>
Date: Tue, 7 Jun 2022 09:36:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org
References: <20220606204050.2625949-1-willy@infradead.org>
 <20220606204050.2625949-16-willy@infradead.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <20220606204050.2625949-16-willy@infradead.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 06.06.22 22:40, Matthew Wilcox (Oracle) wrote: > This is
 little more than changing the types over; there's no real work > being done
 in this function. > > Signed-off-by: Matthew Wilcox (Oracle) <wi [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nyTm4-007ox4-LD
X-Mailman-Approved-At: Tue, 07 Jun 2022 10:37:51 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 15/20] balloon: Convert to migrate_folio
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
Cc: linux-aio@kvack.org, linux-nfs@vger.kernel.org, cluster-devel@redhat.com,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-block@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 linux-ext4@vger.kernel.org, virtualization@lists.linux-foundation.org,
 linux-xfs@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 06.06.22 22:40, Matthew Wilcox (Oracle) wrote:
> This is little more than changing the types over; there's no real work
> being done in this function.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  mm/balloon_compaction.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/mm/balloon_compaction.c b/mm/balloon_compaction.c
> index 4b8eab4b3f45..3f75b876ad76 100644
> --- a/mm/balloon_compaction.c
> +++ b/mm/balloon_compaction.c
> @@ -230,11 +230,10 @@ static void balloon_page_putback(struct page *page)
>  
>  
>  /* move_to_new_page() counterpart for a ballooned page */
> -static int balloon_page_migrate(struct address_space *mapping,
> -		struct page *newpage, struct page *page,
> -		enum migrate_mode mode)
> +static int balloon_migrate_folio(struct address_space *mapping,
> +		struct folio *dst, struct folio *src, enum migrate_mode mode)
>  {
> -	struct balloon_dev_info *balloon = balloon_page_device(page);
> +	struct balloon_dev_info *balloon = balloon_page_device(&src->page);
>  
>  	/*
>  	 * We can not easily support the no copy case here so ignore it as it
> @@ -244,14 +243,14 @@ static int balloon_page_migrate(struct address_space *mapping,
>  	if (mode == MIGRATE_SYNC_NO_COPY)
>  		return -EINVAL;
>  
> -	VM_BUG_ON_PAGE(!PageLocked(page), page);
> -	VM_BUG_ON_PAGE(!PageLocked(newpage), newpage);
> +	VM_BUG_ON_FOLIO(!folio_test_locked(src), src);
> +	VM_BUG_ON_FOLIO(!folio_test_locked(dst), dst);
>  
> -	return balloon->migratepage(balloon, newpage, page, mode);
> +	return balloon->migratepage(balloon, &dst->page, &src->page, mode);
>  }
>  
>  const struct address_space_operations balloon_aops = {
> -	.migratepage = balloon_page_migrate,
> +	.migrate_folio = balloon_migrate_folio,
>  	.isolate_page = balloon_page_isolate,
>  	.putback_page = balloon_page_putback,
>  };

I assume you're working on conversion of the other callbacks as well,
because otherwise, this ends up looking a bit inconsistent and confusing :)

Change LGTM.

-- 
Thanks,

David / dhildenb



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
