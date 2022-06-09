Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFD95460A4
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Jun 2022 10:59:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nzaUc-0003lN-LN; Fri, 10 Jun 2022 08:59:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@redhat.com>) id 1nzFKq-00052I-RW
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Jun 2022 10:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6a5SsgsnTuFo9sIZWQwmUlikCgiuGiGF/De3NllGDd0=; b=MuVaRryG29M4+pqHdklYfuM5CG
 SYXwKq06uN+iZUalqMWJzSW2v0Gg9YhfjsEf/tGgewl3ilt+8Lx1d9BuuvrimQy+3njoSyqiBlgp4
 b3dXndghBzRzeElV2/TBlvcyIuQKYb3ZuzlVu09J38LtWznZWqBT+4u+4M2YQeTdGt8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6a5SsgsnTuFo9sIZWQwmUlikCgiuGiGF/De3NllGDd0=; b=ccdHdrYuU8NNHK8VVSVQdH1ZOA
 9h6etW4QAra17wlRVndQ8kh5Zk/whmfuA9HmHuNcWe5y03m0i0gBQD8kZczqPakG1C8kJ/aSRrt8J
 gWLdOsVP8Inj2DJUY5dzAY2lDbha7/+Gyzd0Pw30n7doS62op18gKATncwXBGBAmh0/M=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzFKj-00C0s1-PW
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Jun 2022 10:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654770243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6a5SsgsnTuFo9sIZWQwmUlikCgiuGiGF/De3NllGDd0=;
 b=O1xC9fxZOMxaqC6rSRf/wp7oRubAOdtuQF660ZO5XT5/cyF74PDWeE2QN9m27mc+BMztdJ
 4cTCEIEgzKecWwUfZ7+HFqcmlsf3bRPqSVsgzJFiymh+8vAQB/cUacDsI0Qr52taSElHs3
 mqthmRsXI3hdg1HfHwjn9aCD07YEUwY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-643-yLFh1pnMPyiBjQkz9nOjPA-1; Thu, 09 Jun 2022 06:24:02 -0400
X-MC-Unique: yLFh1pnMPyiBjQkz9nOjPA-1
Received: by mail-wr1-f72.google.com with SMTP id
 w8-20020adfde88000000b00213b7fa3a37so4643713wrl.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 09 Jun 2022 03:24:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=6a5SsgsnTuFo9sIZWQwmUlikCgiuGiGF/De3NllGDd0=;
 b=jZLfvbsH9D0Vp5zbISJY2/95mvisQWOvRtOD0Hdp/N9HgUINidSq+T+W4EUsdobd+v
 PZtIpZYTdKgYfzjJ9eF63R0y9v1cDj6KfPF0sYzc7+EC3KyP0AXv9G6h/JLVSJOJWF4T
 5srAVkGyfqraNz6PrgI4V1SprUoUZyj1mBoYMJ06tuoqu+ziugrE7Rg6pgCFzsyWLQIx
 X9a1PFem6F+hfj9lfMA7Q5CZGosUNzpd42iWyhXo67NGOR7nXH7yoOjUGt20oswPaDk/
 yHG6Pk9RDiWIG1L+EsKBqHmqigMdxwcJEDKbFBZRx/OxolH2GgI7bDs5mNnYfoaCp0Lm
 jrwg==
X-Gm-Message-State: AOAM530+nSXFzOF2odoJndtAxa5iImG4xerc3ntZyjibcpFWkFujbz+I
 +j+5N2A7CfOSDqeshTpSi10TzlerIO865K5xunZfklYqnfdmQEkEqCwjZLm9voHFCA8Dth4v1EH
 EttSIWdOr6Bmj6azZP4mX2noVPLL+QD0bUYs=
X-Received: by 2002:a1c:a301:0:b0:392:9bc5:203c with SMTP id
 m1-20020a1ca301000000b003929bc5203cmr2594372wme.67.1654770241337; 
 Thu, 09 Jun 2022 03:24:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy58rh3fuuccVM2J0IS1QrE1vJ3CH41QyKYHa1IrWm/Rvain2xs2JDw35eE5SOSwtsykjkKLA==
X-Received: by 2002:a1c:a301:0:b0:392:9bc5:203c with SMTP id
 m1-20020a1ca301000000b003929bc5203cmr2594345wme.67.1654770240948; 
 Thu, 09 Jun 2022 03:24:00 -0700 (PDT)
Received: from ?IPV6:2a09:80c0:192:0:20af:34be:985b:b6c8?
 ([2a09:80c0:192:0:20af:34be:985b:b6c8])
 by smtp.gmail.com with ESMTPSA id
 t10-20020a5d460a000000b0021552eebde6sm17782568wrq.32.2022.06.09.03.23.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jun 2022 03:23:59 -0700 (PDT)
Message-ID: <a079ed41-1978-0551-2b5c-6d61aff7ddf2@redhat.com>
Date: Thu, 9 Jun 2022 12:23:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org
References: <20220608150249.3033815-1-willy@infradead.org>
 <20220608150249.3033815-3-willy@infradead.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <20220608150249.3033815-3-willy@infradead.org>
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
 Content preview:  On 08.06.22 17:02, Matthew Wilcox (Oracle) wrote: > These
 drivers are rather uncomfortably hammered into the > address_space_operations
 hole. They aren't filesystems and don't behave > like filesystem [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1nzFKj-00C0s1-PW
X-Mailman-Approved-At: Fri, 10 Jun 2022 08:59:46 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2 02/19] mm: Convert all PageMovable
 users to movable_operations
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
> These drivers are rather uncomfortably hammered into the
> address_space_operations hole.  They aren't filesystems and don't behave
> like filesystems.  They just need their own movable_operations structure,
> which we can point to directly from page->mapping.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  arch/powerpc/platforms/pseries/cmm.c |  60 +---------------
>  drivers/misc/vmw_balloon.c           |  61 +---------------
>  drivers/virtio/virtio_balloon.c      |  47 +-----------
>  include/linux/balloon_compaction.h   |   6 +-
>  include/linux/fs.h                   |   2 -
>  include/linux/migrate.h              |  26 +++++--
>  include/linux/page-flags.h           |   2 +-
>  include/uapi/linux/magic.h           |   4 --
>  mm/balloon_compaction.c              |  10 ++-
>  mm/compaction.c                      |  29 ++++----
>  mm/migrate.c                         |  24 +++----
>  mm/util.c                            |   4 +-
>  mm/z3fold.c                          |  82 +++------------------
>  mm/zsmalloc.c                        | 102 ++++++---------------------
>  14 files changed, 94 insertions(+), 365 deletions(-)

You probably should have cc'ed the relevant maintainers (including me :P ).

For everything except z3fold.c and zsmalloc.c,

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
