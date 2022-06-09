Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6125460A8
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Jun 2022 10:59:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nzaUc-0003lS-Ri; Fri, 10 Jun 2022 08:59:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@redhat.com>) id 1nzHYS-0002pz-NR
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Jun 2022 12:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zufIRXqzWNkS/vBQ6LnlofDt3t0aO0GgELLgxZEV3qM=; b=VU+qTFkCjmB0qGrsmtUvUrOZ2r
 BKKi1/f64+6wjEJzqHesU2wGc7/URWqc/TvRSNDZz8YMG0ts0pKJrpIOYWTu8oXbQGcUbr/AgdQNr
 c25SjaTF3njMfGvwjjkoTmjDJoawR9m+nPpAkjZiqZr1PJA8j5PGytYXNCreKJfggQGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zufIRXqzWNkS/vBQ6LnlofDt3t0aO0GgELLgxZEV3qM=; b=IJOf/C9GTerWxG0gzm5fkir+em
 uEq/gJXw27erGE8SAGbF7/ZuLxn2p8pSDdjtUUbaVCjxeYTtyif/fxdrlceENjqyXs2o8og1e7C6p
 pr80e2Mlejbm7YMDT+1zsEI3IufG7fLG3qPyCtCT65M4sfcuG6s42ka2Qjqa5RKu5o0o=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzHYP-00C80G-Jd
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Jun 2022 12:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654778776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zufIRXqzWNkS/vBQ6LnlofDt3t0aO0GgELLgxZEV3qM=;
 b=bfaVa0reba5JNx1JCCi449akB/iE7w7HJkh+iPewcoKUtXRVntBOZRj18BsRFXEJQD7Xt3
 GObsr5AzbK9k5Qx9iLnaJWAyVgOUUAb6wweVt7qXGOICRsO1ol959im5WFYdFixia0rC7b
 ZHeTquzJ+C6aZV+E1vVG8wDxl9vLE1g=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-196-z6RbfXy4O6iifXZ3iLdCIA-1; Thu, 09 Jun 2022 08:46:15 -0400
X-MC-Unique: z6RbfXy4O6iifXZ3iLdCIA-1
Received: by mail-wm1-f72.google.com with SMTP id
 u12-20020a05600c19cc00b0038ec265155fso15941577wmq.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 09 Jun 2022 05:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=zufIRXqzWNkS/vBQ6LnlofDt3t0aO0GgELLgxZEV3qM=;
 b=wbtmysy7egIUdeyT8TyT5qqgiZ216XClDOtBf2iYDtfqOITkYNhvfd9J2aJOYwfPoJ
 l82j7U01fdjLU2tOel9YJCtpIbgCtZlpusqTGc4VN9lpqUFngfpUcACqCQ/9z/EYo/3k
 WPA5AkRTMSn8fYewnC03fg7bwpvJ3C+dYR48Of8vFoar8LdoWFYpP5xNAXN2c81LZIJV
 IrWLuB9oi1AjYU6WZHGBb5qD42EWQcH+1qudPc4iuMi/n/5FihBZxAgJerM5e0MBcO7N
 8QYmoSW8svZBvQItqc9bpy0i4bDDC8pjhIyUGufF1LcxycMTq0s7kN775btL034PO/pn
 QFoA==
X-Gm-Message-State: AOAM532WexE4FKvcTLQlLHpyVZSKIDPlN3WDGhj0vdD8GN4bdvi1oh/6
 n0r0hP3CKCzfs5BlQMS7WS0OwerZtTY247MoxGqfnLiKs1CW/DcKQSMekUZS6kcpYspTwaEq7oJ
 Ef2xlC8mW/XK7d3fnCEVHZHmiROS5anfYUMU=
X-Received: by 2002:a05:6000:168b:b0:218:54da:90ba with SMTP id
 y11-20020a056000168b00b0021854da90bamr12022151wrd.283.1654778773730; 
 Thu, 09 Jun 2022 05:46:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxFg5i2EPJ88Gv87gtw7EHVrLhSwsyQAltgpPZk1DxRKIUlDObIOhdmhH9jKki5ThpOI9Vqng==
X-Received: by 2002:a05:6000:168b:b0:218:54da:90ba with SMTP id
 y11-20020a056000168b00b0021854da90bamr12022117wrd.283.1654778773451; 
 Thu, 09 Jun 2022 05:46:13 -0700 (PDT)
Received: from ?IPV6:2a09:80c0:192:0:20af:34be:985b:b6c8?
 ([2a09:80c0:192:0:20af:34be:985b:b6c8])
 by smtp.gmail.com with ESMTPSA id
 a7-20020a05600c224700b0039c693a54ecsm3854607wmm.23.2022.06.09.05.46.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jun 2022 05:46:12 -0700 (PDT)
Message-ID: <c204c627-ec6b-cd8c-412d-57c8f55c61fa@redhat.com>
Date: Thu, 9 Jun 2022 14:46:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org
References: <20220608150249.3033815-1-willy@infradead.org>
 <20220608150249.3033815-2-willy@infradead.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <20220608150249.3033815-2-willy@infradead.org>
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
 Content preview:  On 08.06.22 17:02,
 Matthew Wilcox (Oracle) wrote: > The isolate_page
 operation is never called for filesystems, only > for device drivers which
 call SetPageMovable. > > Signed-off-by: Matthew Wilcox ( [...] 
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
X-Headers-End: 1nzHYP-00C80G-Jd
X-Mailman-Approved-At: Fri, 10 Jun 2022 08:59:46 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2 01/19] secretmem: Remove isolate_page
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

On 08.06.22 17:02, Matthew Wilcox (Oracle) wrote:
> The isolate_page operation is never called for filesystems, only
> for device drivers which call SetPageMovable.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  mm/secretmem.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/mm/secretmem.c b/mm/secretmem.c
> index 206ed6b40c1d..1c7f1775b56e 100644
> --- a/mm/secretmem.c
> +++ b/mm/secretmem.c
> @@ -133,11 +133,6 @@ static const struct file_operations secretmem_fops = {
>  	.mmap		= secretmem_mmap,
>  };
>  
> -static bool secretmem_isolate_page(struct page *page, isolate_mode_t mode)
> -{
> -	return false;
> -}
> -
>  static int secretmem_migratepage(struct address_space *mapping,
>  				 struct page *newpage, struct page *page,
>  				 enum migrate_mode mode)
> @@ -155,7 +150,6 @@ const struct address_space_operations secretmem_aops = {
>  	.dirty_folio	= noop_dirty_folio,
>  	.free_folio	= secretmem_free_folio,
>  	.migratepage	= secretmem_migratepage,
> -	.isolate_page	= secretmem_isolate_page,
>  };
>  
>  static int secretmem_setattr(struct user_namespace *mnt_userns,

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
