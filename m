Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B981F5460A7
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Jun 2022 10:59:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nzaUd-0003lb-0X; Fri, 10 Jun 2022 08:59:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@redhat.com>) id 1nzHcS-0005qH-WF
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Jun 2022 12:50:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jSyVt04wqMoyKuQwGc4zbS9w9C6qNO7mTJG8w/5DiLs=; b=bhcyVzdUNHB75RqZ7RHFa2wuj2
 1r8BZjnrToM5/ghBw76LkurBEX0E4uR6hvFOQgRyV0BkP+svJqZlJ9kZ6xTadECFhGIWVdX3mMJTk
 ZjU6nEjeUMV0PcjJM2kOUrvx0ajUmdep8dT9AM+4ORPyesU1NtNutpQdJ0l+O4a4ZWHI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jSyVt04wqMoyKuQwGc4zbS9w9C6qNO7mTJG8w/5DiLs=; b=ebrenhoNIS3v8x/bzU5qmA2oTL
 n6h5WF4Zc6HzLJ7+5JOF6D+AKWOKvlS2ASuq8E7bfJlnlcRxDdy7a+/2BOD+UDjc2thlkmDilaKs8
 uBK3UboPAmdfzw8CB8oyNDcgBenNrIsud/mlfeWnvAKGn5OFPPmKR1TvGewVxtBVGnHw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzHcR-0004UU-IW
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Jun 2022 12:50:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654779031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jSyVt04wqMoyKuQwGc4zbS9w9C6qNO7mTJG8w/5DiLs=;
 b=LtRTYNthxubwi7avFt8Ms7IfMQ/gFWn7q9O01OFc3N+ZeSN+wGI3oPXFISSSH4HOYBzfwz
 ovN2akYHC8ynste5jCU/I1V86/ndSPSZVZ24dHu0ahLzaLW+uYjG5of/fgGOSOp3/MpLb1
 LIv72N6I2SQDAIeU6BzLG1N7FiulyUs=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-1iWdj8ptMxO9dPwS3di--w-1; Thu, 09 Jun 2022 08:50:23 -0400
X-MC-Unique: 1iWdj8ptMxO9dPwS3di--w-1
Received: by mail-wm1-f72.google.com with SMTP id
 bg40-20020a05600c3ca800b00394779649b1so15935231wmb.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 09 Jun 2022 05:50:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=jSyVt04wqMoyKuQwGc4zbS9w9C6qNO7mTJG8w/5DiLs=;
 b=TyblryCVtqqMMDhn28e30e6od+J+0C2Z5WmDbFGkkvPEB1a7vbGFHAiNhKB5Y+hqmI
 9owgCgv2mbeg898DD/pS8/YKMmeRvGfEFODCpy9Eo63Z76NmpF8y8lmKf5qaAU2fMIwn
 yEjORT0n8x06Z+Z/Jl8LjGx9pvG+R21kikr3pyOZsguHWE536x/t+rjrYnxfdxF72NlN
 6Tx2g7uCbQP8Pk35TINVgHFI6FZfWU7IgpYR78eDiBXCojxJsMo4G5/unbAwVoesJ47h
 KyAqHcSd5EloP7Y+f9gQXl7KcHbJisCsexQQFBGUy9nD0kwPh9A2m6Lqzf9Zp7tFpgmS
 ymqA==
X-Gm-Message-State: AOAM533WE3Asxil3nM34aa5MAMup4+OiWVMRniOKV1qMk+TpuR3CxNiH
 8M0RlqTTkA19+CMTqIgl+l78lxASKihDPi3JBoThvpQfN9w5s03PqdG4avUVD7WGWtxibRPAqWq
 wOz3rJtE1IVoWtTugnayhOOlwI7HC2P1Hpy4=
X-Received: by 2002:a1c:4c0d:0:b0:39c:5233:1873 with SMTP id
 z13-20020a1c4c0d000000b0039c52331873mr3299350wmf.28.1654779022064; 
 Thu, 09 Jun 2022 05:50:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJlGErsfVOd4GnScqiilTH958FLxgjsObuI+18makmIYSKefVpu0HdsVXKQhmSAU7kjNobOQ==
X-Received: by 2002:a1c:4c0d:0:b0:39c:5233:1873 with SMTP id
 z13-20020a1c4c0d000000b0039c52331873mr3299322wmf.28.1654779021707; 
 Thu, 09 Jun 2022 05:50:21 -0700 (PDT)
Received: from ?IPV6:2a09:80c0:192:0:20af:34be:985b:b6c8?
 ([2a09:80c0:192:0:20af:34be:985b:b6c8])
 by smtp.gmail.com with ESMTPSA id
 j8-20020a056000124800b002185d79dc7fsm5672822wrx.75.2022.06.09.05.50.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jun 2022 05:50:21 -0700 (PDT)
Message-ID: <b2a81248-03fc-afb3-1041-d8206e95e08a@redhat.com>
Date: Thu, 9 Jun 2022 14:50:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org
References: <20220608150249.3033815-1-willy@infradead.org>
 <20220608150249.3033815-4-willy@infradead.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <20220608150249.3033815-4-willy@infradead.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 08.06.22 17:02, Matthew Wilcox (Oracle) wrote: > Provide
 a folio-based replacement for aops->migratepage. Update the > documentation
 to document migrate_folio instead of migratepage. > > Signed-off [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.2 NICE_REPLY_A           Looks like a legit reply (A)
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nzHcR-0004UU-IW
X-Mailman-Approved-At: Fri, 10 Jun 2022 08:59:46 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2 03/19] fs: Add aops->migrate_folio
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
 linux-ntfs-dev@lists.sourceforge.net, Christoph Hellwig <hch@lst.de>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-block@vger.kernel.org, linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 ocfs2-devel@oss.oracle.com, linux-ext4@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-xfs@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 08.06.22 17:02, Matthew Wilcox (Oracle) wrote:
> Provide a folio-based replacement for aops->migratepage.  Update the
> documentation to document migrate_folio instead of migratepage.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> ---
>  Documentation/filesystems/locking.rst |  5 ++--
>  Documentation/filesystems/vfs.rst     | 13 ++++++-----
>  Documentation/vm/page_migration.rst   | 33 ++++++++++++++-------------
>  include/linux/fs.h                    |  4 +++-
>  mm/compaction.c                       |  4 +++-
>  mm/migrate.c                          | 11 +++++----
>  6 files changed, 40 insertions(+), 30 deletions(-)
> 
> diff --git a/Documentation/filesystems/locking.rst b/Documentation/filesystems/locking.rst
> index c0fe711f14d3..3d28b23676bd 100644
> --- a/Documentation/filesystems/locking.rst
> +++ b/Documentation/filesystems/locking.rst
> @@ -253,7 +253,8 @@ prototypes::
>  	void (*free_folio)(struct folio *);
>  	int (*direct_IO)(struct kiocb *, struct iov_iter *iter);
>  	bool (*isolate_page) (struct page *, isolate_mode_t);
> -	int (*migratepage)(struct address_space *, struct page *, struct page *);
> +	int (*migrate_folio)(struct address_space *, struct folio *dst,
> +			struct folio *src, enum migrate_mode);
>  	void (*putback_page) (struct page *);

isolate_page/putback_page are leftovers from the previous patch, no?

>  	int (*launder_folio)(struct folio *);
>  	bool (*is_partially_uptodate)(struct folio *, size_t from, size_t count);
> @@ -281,7 +282,7 @@ release_folio:		yes
>  free_folio:		yes
>  direct_IO:
>  isolate_page:		yes
> -migratepage:		yes (both)
> +migrate_folio:		yes (both)
>  putback_page:		yes

Dito.

>  launder_folio:		yes
>  is_partially_uptodate:	yes
> diff --git a/Documentation/filesystems/vfs.rst b/Documentation/filesystems/vfs.rst
> index a08c652467d7..3ae1b039b03f 100644
> --- a/Documentation/filesystems/vfs.rst
> +++ b/Documentation/filesystems/vfs.rst
> @@ -740,7 +740,8 @@ cache in your filesystem.  The following members are defined:
>  		/* isolate a page for migration */
>  		bool (*isolate_page) (struct page *, isolate_mode_t);
>  		/* migrate the contents of a page to the specified target */
> -		int (*migratepage) (struct page *, struct page *);
> +		int (*migrate_folio)(struct mapping *, struct folio *dst,
> +				struct folio *src, enum migrate_mode);
>  		/* put migration-failed page back to right list */
>  		void (*putback_page) (struct page *);

Dito.

>  		int (*launder_folio) (struct folio *);
> @@ -935,12 +936,12 @@ cache in your filesystem.  The following members are defined:
>  	is successfully isolated, VM marks the page as PG_isolated via
>  	__SetPageIsolated.
>  
> -``migrate_page``
> +``migrate_folio``
>  	This is used to compact the physical memory usage.  If the VM
> -	wants to relocate a page (maybe off a memory card that is
> -	signalling imminent failure) it will pass a new page and an old
> -	page to this function.  migrate_page should transfer any private
> -	data across and update any references that it has to the page.
> +	wants to relocate a folio (maybe from a memory device that is
> +	signalling imminent failure) it will pass a new folio and an old
> +	folio to this function.  migrate_folio should transfer any private
> +	data across and update any references that it has to the folio.
>  
>  ``putback_page``
>  	Called by the VM when isolated page's migration fails.

Dito.

> diff --git a/Documentation/vm/page_migration.rst b/Documentation/vm/page_migration.rst
> index 8c5cb8147e55..e0f73ddfabb1 100644
> --- a/Documentation/vm/page_migration.rst
> +++ b/Documentation/vm/page_migration.rst
> @@ -181,22 +181,23 @@ which are function pointers of struct address_space_operations.
>     Once page is successfully isolated, VM uses page.lru fields so driver
>     shouldn't expect to preserve values in those fields.
>  
> -2. ``int (*migratepage) (struct address_space *mapping,``
> -|	``struct page *newpage, struct page *oldpage, enum migrate_mode);``
> -
> -   After isolation, VM calls migratepage() of driver with the isolated page.
> -   The function of migratepage() is to move the contents of the old page to the
> -   new page
> -   and set up fields of struct page newpage. Keep in mind that you should
> -   indicate to the VM the oldpage is no longer movable via __ClearPageMovable()
> -   under page_lock if you migrated the oldpage successfully and returned
> -   MIGRATEPAGE_SUCCESS. If driver cannot migrate the page at the moment, driver
> -   can return -EAGAIN. On -EAGAIN, VM will retry page migration in a short time
> -   because VM interprets -EAGAIN as "temporary migration failure". On returning
> -   any error except -EAGAIN, VM will give up the page migration without
> -   retrying.
> -
> -   Driver shouldn't touch the page.lru field while in the migratepage() function.
> +2. ``int (*migrate_folio) (struct address_space *mapping,``
> +|	``struct folio *dst, struct folio *src, enum migrate_mode);``
> +
> +   After isolation, VM calls the driver's migrate_folio() with the
> +   isolated folio.  The purpose of migrate_folio() is to move the contents
> +   of the source folio to the destination folio and set up the fields
> +   of destination folio.  Keep in mind that you should indicate to the
> +   VM the source folio is no longer movable via __ClearPageMovable()
> +   under folio if you migrated the source successfully and returned
> +   MIGRATEPAGE_SUCCESS.  If driver cannot migrate the folio at the
> +   moment, driver can return -EAGAIN. On -EAGAIN, VM will retry folio
> +   migration in a short time because VM interprets -EAGAIN as "temporary
> +   migration failure".  On returning any error except -EAGAIN, VM will
> +   give up the folio migration without retrying.
> +
> +   Driver shouldn't touch the folio.lru field while in the migrate_folio()
> +   function.
>  
>  3. ``void (*putback_page)(struct page *);``

Hmm, here it's a bit more complicated now, because we essentially have
two paths: LRU+migrate_folio or !LRU+movable_ops
(isolate/migrate/putback page)



-- 
Thanks,

David / dhildenb



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
