Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C5D36CFCC
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 28 Apr 2021 02:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JOv4w0ZJuAW+4Uk/01NwQmoZtpCrccbbjE3KFCnmvLQ=; b=YIxnMQVxAQJVAlL7FhAVbAfLmJ
	k3eMtYA97q0FKqZ0YQ9jgHhaw6M1TAnDrY3kJDcZ/5WVe4IQcgOe5xY+IO4fVygMYaEE3uLPjV1eh
	aqvGahIzGCwBEGm9R1DY1WqkiKQ2SVT6nCGbzHk2rVFdWslgJNO/EpUSn8ViB23Vi5To=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lbXdK-0001e7-3C; Wed, 28 Apr 2021 00:00:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ndesaulniers@google.com>) id 1lbSr1-0004RK-R5
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 27 Apr 2021 18:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yPFimr3gWw7Jb8pUUshKa57KI8HC4i9N5TDaJMgan8c=; b=CKNCfmBHWyn4CZzHlajs7hheES
 HGiQmPoK+H6HBPL+1Rjwa29fW/D0r5Tclr7jBpCOv7wO8syH4d8U0f6yuen+kLhJAvZp6RnFFUl13
 j5B8HaPgOkH5KZCEJL0rp8r2Wxv5ldyEus6QpYZgXC/AcPcbdDvhBY1kOSHI/TewVKy8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yPFimr3gWw7Jb8pUUshKa57KI8HC4i9N5TDaJMgan8c=; b=X0SxssX6z+GiuAuhTWmCB3aO5j
 7McwejDD2Zp5IGeEjX7/TLnivgUlTyOoVpMSaYl5QihD9mJMdTyPTbqV49X3/Lnuvnz8ezsAXIw7L
 toGYphGRN4QYv8z0hzcpkYJjbiRzzOslrUqSdqaiBxNKA2oj5SpRRJR5gSdxAV2o2Pqc=;
Received: from mail-lj1-f176.google.com ([209.85.208.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lbSqx-000cwh-HK
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 27 Apr 2021 18:54:39 +0000
Received: by mail-lj1-f176.google.com with SMTP id o16so69373495ljp.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 27 Apr 2021 11:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yPFimr3gWw7Jb8pUUshKa57KI8HC4i9N5TDaJMgan8c=;
 b=Vxhki8lggKUqdFDQ6eIME/t1w216q7NYR8YXdlh83bNCmievHFJ2KZzm1xLcUbOzvX
 e5EFqL3S3XC/ku0z5FV7YGwMQe+gmv6mXWY6NK9A8SLs4L3CgMn7lanF369p5IvX/wP+
 cVELa+9rHfODxiUiv6vwOq3AFIDnelHyK+zAKiyhNh1rEhcd0XRiEBV6uCg3CfRgnwrT
 IGzwKlMhSvON8Fls70IESsAel3rAffgnqhwEiBaYZarsi2ZqqdjojMD1pvwTBCQleLJM
 WjnaDedTcdOnnTZV4Gq9PdWwWsu8dhGu/FCHve5kn8fKUnCkjTvzcamU7L50DG/cI9Rl
 uYRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yPFimr3gWw7Jb8pUUshKa57KI8HC4i9N5TDaJMgan8c=;
 b=MHHSbU+56J93iYmHykOQQwtnLGAdmY0s5QQKSXMIIGsvYwzG3W/5g7CWZsP/Gjq+T7
 gOEXdTIeLuZat3ulMttjjvV47Pv/+gh579wIqjWzd5BhAfog1NwPAcMtw7OLunsuZm/V
 r2pkhWvKFN2uEaYVJ3wl66y+ZSiAjsvrUSrQ1dKFU2WZ6Wk3HYOLu2BwX393n3D3iuaY
 MqpKeXmtXCqUWhxR7UPlpsbzLjh/tMkhx2ly15hGGsP09XyGPKnGI1M64XNpcjBykIgA
 q7dSo/fOv+g2UFSFgBvuRRsg1g8uzurvmVJAIb5nWsW+z4lIwCWps2SV1IPAj8NWkD6D
 NIlw==
X-Gm-Message-State: AOAM53147X2XiTzKvahF4mAyO4PCGRPMVk5LZnppIKz0n9zazVMADOG4
 MbeSiipL9+7zMx0DUc5hZ9pVoU0XhO8N4Rsx7rAmmQ==
X-Google-Smtp-Source: ABdhPJzHoLqRICL71ALIa24JJ1ebX1XyXWU9+ppH6h0if4Nj6EWpZQVUCgVq195FmPDCVGbBfP91SypPMgyjoKhxDIk=
X-Received: by 2002:a2e:9015:: with SMTP id h21mr17225853ljg.233.1619549668748; 
 Tue, 27 Apr 2021 11:54:28 -0700 (PDT)
MIME-Version: 1.0
References: <1619345754-32875-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1619345754-32875-1-git-send-email-yang.lee@linux.alibaba.com>
Date: Tue, 27 Apr 2021 11:54:17 -0700
Message-ID: <CAKwvOd=-NdUHevj9eBtKmihL8D0BSVyiOr9pMUNMYTWm1Y=KGg@mail.gmail.com>
To: Yang Li <yang.lee@linux.alibaba.com>
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.176 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lbSqx-000cwh-HK
X-Mailman-Approved-At: Wed, 28 Apr 2021 00:00:48 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] fs/ntfs: drop unneeded assignment in
 ntfs_perform_write()
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
From: Nick Desaulniers via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-ntfs-dev@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sun, Apr 25, 2021 at 3:16 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> It is not required to initialize the local variable idx in
> ntfs_perform_write(), the value is never actually read from
> it.
>
> make clang-analyzer on x86_64 allyesconfig reports:
>
> fs/ntfs/file.c:1781:15: warning: Although the value stored to 'idx' is
> used in the enclosing expression, the value is never actually read from
> 'idx'
>
> Simplify the code and remove unneeded assignment to make clang-analyzer
> happy.

Thank you for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Is there someplace where I can learn more about "Abaci Robot?"  I'm
happy to see it running clang-analyzer. :)

>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  fs/ntfs/file.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
> index e5aab26..e39a26f 100644
> --- a/fs/ntfs/file.c
> +++ b/fs/ntfs/file.c
> @@ -1774,11 +1774,11 @@ static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
>         last_vcn = -1;
>         do {
>                 VCN vcn;
> -               pgoff_t idx, start_idx;
> +               pgoff_t start_idx;
>                 unsigned ofs, do_pages, u;
>                 size_t copied;
>
> -               start_idx = idx = pos >> PAGE_SHIFT;
> +               start_idx = pos >> PAGE_SHIFT;
>                 ofs = pos & ~PAGE_MASK;
>                 bytes = PAGE_SIZE - ofs;
>                 do_pages = 1;
> --
> 1.8.3.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619345754-32875-1-git-send-email-yang.lee%40linux.alibaba.com.



-- 
Thanks,
~Nick Desaulniers


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
