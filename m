Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5846542CEC
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Jun 2022 12:16:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nysjI-0007WR-Kw; Wed, 08 Jun 2022 10:16:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@redhat.com>) id 1nysTa-0005mt-GH
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jun 2022 09:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 Subject:From:References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X7ko0a61KQIEYlZE2OolrSj5KPboqylHtHlNY2Rk0xk=; b=iLscq6hoEeK5F3ePm2bifjjvKP
 Scspl/JMd54uU674jjujbffc6wF4lQojfO6D77BCYPm4dzp7NoMEElM+GY/1NrPZYYEhW7IStZ2jI
 0Ye1hUnKwnnvKddnbh/syNwZDw70W5kczuSZwh9ntFMR/wtrH/ww3DYX1YAhyD2/zCQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Subject:From:
 References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X7ko0a61KQIEYlZE2OolrSj5KPboqylHtHlNY2Rk0xk=; b=bcnfhBmvE3R0zJqcVlTUdOPGIp
 9G20almmulqLdcy2wNJQ7DvYWc49QDGxxFHF8KsWzecCAbrnf1XNlm98/Ca5nWEAl2OdVvXtafoks
 iwAV2tVQSaWMAs2o2ixRuHPvkTSCwa63FIfBrxhBzYzCld4FI/YKEIOmX58F/1IeZaTs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nysTW-009hOm-PP
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jun 2022 09:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654682376;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X7ko0a61KQIEYlZE2OolrSj5KPboqylHtHlNY2Rk0xk=;
 b=HTgr1iTc2yNBJ1TMG1abAXJSSpfxGYB6q8DDg6rnb5L77rqSUjLmyMcw5MKS9W8Bqf+0lQ
 ibC36RSLfFLbCsI4FDLUl0aYLyQa6T26wEi9aO21DVIT3Gz7UrtMwowP+cKEuztqrX1UQe
 1eaWq5xsDk+ZtqJ0xrl8XsuNvnaiHOY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-190-DmQd3RIiP2aVl6E-Xvnppg-1; Wed, 08 Jun 2022 05:59:35 -0400
X-MC-Unique: DmQd3RIiP2aVl6E-Xvnppg-1
Received: by mail-wm1-f70.google.com with SMTP id
 l4-20020a05600c1d0400b0039c60535405so850481wms.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 08 Jun 2022 02:59:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:organization:subject
 :in-reply-to:content-transfer-encoding;
 bh=X7ko0a61KQIEYlZE2OolrSj5KPboqylHtHlNY2Rk0xk=;
 b=nktIxtlx20QMC1g0I94JHupn5znAkOQkNHkn/FjXPG91Xpju89N+YlJN29bouNTZlC
 Uy4XiicpZ/g55gDUbiZ/Pdj7pAaStA/fKV5drtj/eR7og35/1wz7qqWv13pVDbwxnTS1
 iJtlRpr3Si/D0DBpv48iIpoC8DB2WafAVq9J06HehpZBWBnSKWl1j2O3aTs7dIoEwxbO
 yuTZnW07Fux9iTMyFZIuQbBWaiKF+QtMwc3qUAG1s9W0CSfbh32a02nG2bXZw+blqDfz
 qtzyuIaj2ejDhN8nmUIi2iAoI96CuYM0S+a4w4jKIWqTS25yCXYrqA9OYnIXbUsrjLrt
 rs+w==
X-Gm-Message-State: AOAM530mms/ncfvN/VNp4xBhPY/5zVmBJDT3MnRS1ZPteqrS/sAIf5SP
 wWBQm9ERGEmgG6xfqlsopHul3PTVPSpCy+Ev2ZIJYgN/9GDgqnw/tm6wvxjYIGCTdRWmawYETOe
 LKNa0Z/zP3q9hT0qCIGm1G+CcrC7WgmyAViU=
X-Received: by 2002:a05:600c:154d:b0:394:8d64:9166 with SMTP id
 f13-20020a05600c154d00b003948d649166mr33665183wmg.102.1654682374064; 
 Wed, 08 Jun 2022 02:59:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4BCTXIM51kCwL6Z6H/hpvqsMvzu1fv9X/GhiUOzp5r00CIAo0BKvmPAyhZ/PubqP5kGP1SQ==
X-Received: by 2002:a05:600c:154d:b0:394:8d64:9166 with SMTP id
 f13-20020a05600c154d00b003948d649166mr33665171wmg.102.1654682373804; 
 Wed, 08 Jun 2022 02:59:33 -0700 (PDT)
Received: from ?IPV6:2003:cb:c705:ad00:db2:4c6:8f3a:2ec4?
 (p200300cbc705ad000db204c68f3a2ec4.dip0.t-ipconnect.de.
 [2003:cb:c705:ad00:db2:4c6:8f3a:2ec4])
 by smtp.gmail.com with ESMTPSA id
 p19-20020a05600c1d9300b003942a244f39sm2898272wms.18.2022.06.08.02.59.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jun 2022 02:59:33 -0700 (PDT)
Message-ID: <36cc5e2b-b768-ce1c-fa30-72a932587289@redhat.com>
Date: Wed, 8 Jun 2022 11:59:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: Matthew Wilcox <willy@infradead.org>
References: <20220606204050.2625949-1-willy@infradead.org>
 <20220606204050.2625949-16-willy@infradead.org>
 <e4d017a4-556d-bb5f-9830-a8843591bc8d@redhat.com>
 <Yp9fj/Si2qyb61Y3@casper.infradead.org>
 <Yp+lU55H4igaV3pB@casper.infradead.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <Yp+lU55H4igaV3pB@casper.infradead.org>
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
 Content preview:  On 07.06.22 21:21, Matthew Wilcox wrote: > On Tue, Jun 07,
 2022 at 03:24:15PM +0100, Matthew Wilcox wrote: >> On Tue, Jun 07, 2022 at
 09:36:21AM +0200, David Hildenbrand wrote: >>> On 06.06.22 22:40, [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1nysTW-009hOm-PP
X-Mailman-Approved-At: Wed, 08 Jun 2022 10:15:59 +0000
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
 Rafael Aquini <aquini@redhat.com>, Minchan Kim <minchan@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-block@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-xfs@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 07.06.22 21:21, Matthew Wilcox wrote:
> On Tue, Jun 07, 2022 at 03:24:15PM +0100, Matthew Wilcox wrote:
>> On Tue, Jun 07, 2022 at 09:36:21AM +0200, David Hildenbrand wrote:
>>> On 06.06.22 22:40, Matthew Wilcox (Oracle) wrote:
>>>>  const struct address_space_operations balloon_aops = {
>>>> -	.migratepage = balloon_page_migrate,
>>>> +	.migrate_folio = balloon_migrate_folio,
>>>>  	.isolate_page = balloon_page_isolate,
>>>>  	.putback_page = balloon_page_putback,
>>>>  };
>>>
>>> I assume you're working on conversion of the other callbacks as well,
>>> because otherwise, this ends up looking a bit inconsistent and confusing :)
>>
>> My intention was to finish converting aops for the next merge window.
>>
>> However, it seems to me that we goofed back in 2016 by merging
>> commit bda807d44454.  isolate_page() and putback_page() should
>> never have been part of address_space_operations.
>>
>> I'm about to embark on creating a new migrate_operations struct
>> for drivers to use that contains only isolate/putback/migrate.
>> No filesystem uses isolate/putback, so those can just be deleted.
>> Both migrate_operations & address_space_operations will contain a
>> migrate callback.

That makes sense to me. I wonder if there was a design
decision/discussion behind that. CCing Rafael.

@Rafael, full mail at

https://lkml.kernel.org/r/Yp+lU55H4igaV3pB@casper.infradead.org

> 
> Well, that went more smoothly than I thought it would.
> 
> I can't see a nice way to split this patch up (other than making secretmem
> its own patch).  We just don't have enough bits in struct page to support
> both ways of handling PageMovable at the same time, so we can't convert
> one driver at a time.  The diffstat is pretty compelling.

Yes, splitting rather overcomplicates stuff.

> 
> The patch is on top of this patch series; I think it probably makes
> sense to shuffle it to be first, to avoid changing these drivers to
> folios, then changing them back.

Absolutely.

> 
> Questions:
> 
> Is what I've done with zsmalloc acceptable?  The locking in that
> file is rather complex.
> 
> Can we now eliminate balloon_mnt / balloon_fs from cmm.c?  I haven't even
> compiled thatfile , but it seems like the filesystem serves no use now.
> 
> Similar question for vmw_balloon.c, although I have compiled that.

IIRC, virtio-balloon, cmm and vmw_balloon all have the mnt/fs just for
page migration purposes. So if one can get rid of them, all should be
able to get rid of them. Essentially everything that uses the balloon
compaction framework.

That should go into separate patches then.

> 
> ---
> 
> I just spotted a bug with zs_unregister_migration(); it won't compile
> without CONFIG_MIGRATION.  I'll fix that up if the general approach is
> acceptable.
> 
>  arch/powerpc/platforms/pseries/cmm.c |   13 --------
>  drivers/misc/vmw_balloon.c           |   10 ------
>  include/linux/balloon_compaction.h   |    6 +---
>  include/linux/fs.h                   |    2 -
>  include/linux/migrate.h              |   27 ++++++++++++++----
>  include/linux/page-flags.h           |    2 -
>  mm/balloon_compaction.c              |   18 ++++++------
>  mm/compaction.c                      |   29 ++++++++-----------
>  mm/migrate.c                         |   23 ++++++++-------
>  mm/secretmem.c                       |    6 ----
>  mm/util.c                            |    4 +-
>  mm/z3fold.c                          |   45 ++++++------------------------
>  mm/zsmalloc.c                        |   52 +++++++++--------------------------
>  13 files changed, 83 insertions(+), 154 deletions(-)
> 
> diff --git a/arch/powerpc/platforms/pseries/cmm.c b/arch/powerpc/platforms/pseries/cmm.c
> index 15ed8206c463..2ecbab3db723 100644
> --- a/arch/powerpc/platforms/pseries/cmm.c
> +++ b/arch/powerpc/platforms/pseries/cmm.c
> @@ -578,23 +578,10 @@ static int cmm_balloon_compaction_init(void)
>  		return rc;
>  	}
>  
> -	b_dev_info.inode = alloc_anon_inode(balloon_mnt->mnt_sb);
> -	if (IS_ERR(b_dev_info.inode)) {
> -		rc = PTR_ERR(b_dev_info.inode);
> -		b_dev_info.inode = NULL;
> -		kern_unmount(balloon_mnt);
> -		balloon_mnt = NULL;
> -		return rc;
> -	}
> -
> -	b_dev_info.inode->i_mapping->a_ops = &balloon_aops;


Are you missing similar updates to drivers/virtio/virtio_balloon.c ?

At least, there we're also using balloon_aops, so this patch shouldn't
compile.


Skimming over it, nothing else jumped at me.

-- 
Thanks,

David / dhildenb



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
