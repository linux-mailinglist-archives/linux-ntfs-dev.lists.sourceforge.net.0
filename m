Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0718A0246
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 10 Apr 2024 23:40:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rufgX-00007i-26;
	Wed, 10 Apr 2024 21:40:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <justinstitt@google.com>) id 1rufKu-0004Ay-OL
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 Apr 2024 21:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k5/mcIJWzR1Sz/R2oHW9ifvaeJ91v7JM0iP/2A/JiCg=; b=auu79skP8BlVIbkm2SDGrBBEKW
 WTZ7s/s/RiuchPDU3i35TMatmjQmwH5IRqZO5MFEnDF1PhDapwDbu/gT7Rggz7r4wc/Scy+tvQ3f6
 ys8wTIxaJnXpVt4ABYzSeXAsPVjpzSJn4A7HcQ49XrKWynFnf6j4SvoPx71OOZ0ITXLs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k5/mcIJWzR1Sz/R2oHW9ifvaeJ91v7JM0iP/2A/JiCg=; b=dWnrqrRxYyTvqJM0lkC7RiGOiS
 e1T/4PGfqpNIIFAbYl0Gu3Zpx24zE1APNmXPeffm8NqpJfHnvCaZz7Fp3iksuxRsfJGY4R18ZdDmC
 Cu5m6V9sOdlDOJmMFZifxDuAZEqqToHESwOuKl8kuPHk8GAZ60cMdlMeWwnYbvSNltTM=;
Received: from mail-il1-f171.google.com ([209.85.166.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rufKu-00025i-IQ for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 Apr 2024 21:18:29 +0000
Received: by mail-il1-f171.google.com with SMTP id
 e9e14a558f8ab-36a1b0777b7so16981315ab.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 10 Apr 2024 14:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1712783898; x=1713388698;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=k5/mcIJWzR1Sz/R2oHW9ifvaeJ91v7JM0iP/2A/JiCg=;
 b=eVjMdxGkn1RvEmXjyTXFWlyZ59qvfPFh0+H4PE3GCBb9CTzXIvILGiSIG4HAE5V1dp
 lKwAnlDAUwXgVD2LYtdcZexcF5wpt+h/eaq1UKGIbF2MoAyOo5hiPLHttWmiL2pQDaG7
 3J1+3Po6nr5SRmrQB01wljp7F53mp/aPpITdgDWaA1SdRJuuu5zKxWCDR5gL3/VrxpuB
 /KSbkePnjExEuWfgqOOtIUGqRjEVr5qJ4nOWYFF59UBVR9vqFu+vS3EBArPFccUEtewr
 foYhmXYj/XTKYmr3U+Dmsjw0Y9lbzDcaEbdemte/k3G+onhAws33DmWbNmuw9fqvPW0B
 c51w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712783898; x=1713388698;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=k5/mcIJWzR1Sz/R2oHW9ifvaeJ91v7JM0iP/2A/JiCg=;
 b=vYBfBdJsrpPSe2kOhOluZnKFSFJdJhpFoex28A6lYRM20Awd10nWiGLEidnroTlAzA
 OBD1d1G28e8mhikxoAsabnws9QlLyFZ1ttDPrnXSpE6FMVkFZ1ECKFqa9GabjZfvcldV
 RlnxFJ/lwboDg1dcBm8jSVT+aQN1H+P3zFY+pUh8nzvoHz/ANeVDfk3t4xfYQ3XmY9BC
 ZgPvUAp8mN3yraWEF52wE41J19FoDnuE8b8JFBywV8esH9gBwfhJumU/CdJ2LG70XSNd
 of/HY3zqMKQ7DumfFDaolLkICdj2KIXV4319x1RMokShHs9aBV+c/vobg88M4YE0Vssi
 jqtA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUN3Z6loVSm5Fmqka6NK3caWGHPOiUzGqbL66B85XrZCt6U8EqGPjEBlJZ3djjWakRF/oRMQArHmDUWMH9WYiI1Dcwf6C6P04x9DSnoJOKuPr17zuA=
X-Gm-Message-State: AOJu0Yzwef/DEXuKLZJpS/CM+aiUv4WIy0AVvLTlmXPpSmIuhtVLronc
 2BvQZbF8X2PyzCqGQUy0RATZChX6UYB37VkZMV3tmhNBjZzudOAIPqltH1n/LMdMJAQ8euAGkiE
 8Iw==
X-Google-Smtp-Source: AGHT+IGpHuPTnJ+wxQMsV1XcgPUkjimJl+2RrlfGnCAGUQlqpTB1RQcYuHk2y6FkjRIkT4ntypW3jg==
X-Received: by 2002:a05:6e02:1d88:b0:36a:1eed:f105 with SMTP id
 h8-20020a056e021d8800b0036a1eedf105mr4448912ila.1.1712783588250; 
 Wed, 10 Apr 2024 14:13:08 -0700 (PDT)
Received: from google.com (30.64.135.34.bc.googleusercontent.com.
 [34.135.64.30]) by smtp.gmail.com with ESMTPSA id
 fg1-20020a056638620100b00482a9f7066csm1313094jab.151.2024.04.10.14.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Apr 2024 14:13:07 -0700 (PDT)
Date: Wed, 10 Apr 2024 21:13:05 +0000
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <ghua3jruo4xm3tj55wafwok4aveter2ychgu4lmw3k5rzkg656@np4aozq7mhbl>
References: <20240409140059.3806717-1-arnd@kernel.org>
 <20240409140059.3806717-5-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240409140059.3806717-5-arnd@kernel.org>
X-Spam-Score: -20.7 (--------------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Tue, Apr 09, 2024 at 04:00:57PM +0200, Arnd Bergmann
 wrote: > From: Arnd Bergmann <arnd@arndb.de> > > gcc-9 warns about a possibly
 non-terminated string copy: > > kernel/trace/blktrace.c: In functi [...] 
 Content analysis details:   (-20.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1rufKu-00025i-IQ
X-Mailman-Approved-At: Wed, 10 Apr 2024 21:40:48 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 4/5] [v2] blktrace: convert strncpy()
 to strscpy_pad()
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
From: Justin Stitt via Linux-ntfs-dev <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Justin Stitt <justinstitt@google.com>
Cc: Lin Ming <ming.m.lin@intel.com>, Richard Russon <ldm@flatcap.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, acpica-devel@lists.linux.dev,
 Robert Moore <robert.moore@intel.com>, linux-acpi@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, Nicolas Schier <nicolas@fjasle.eu>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, linux-block@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alexey Starikovskiy <astarikovskiy@suse.de>, Jens Axboe <axboe@kernel.dk>,
 Nathan Chancellor <nathan@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi,

On Tue, Apr 09, 2024 at 04:00:57PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> gcc-9 warns about a possibly non-terminated string copy:
> 
> kernel/trace/blktrace.c: In function 'do_blk_trace_setup':
> kernel/trace/blktrace.c:527:2: error: 'strncpy' specified bound 32 equals destination size [-Werror=stringop-truncation]
> 
> Newer versions are fine here because they see the following explicit
> nul-termination. Using strscpy_pad() avoids the warning and
> simplifies the code a little. The padding helps  give a clean
> buffer to userspace.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Justin Stitt <justinstitt@google.com>

> ---
> v2: actually use padding version of strscpy.
> ---
>  kernel/trace/blktrace.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/kernel/trace/blktrace.c b/kernel/trace/blktrace.c
> index d5d94510afd3..8fd292d34d89 100644
> --- a/kernel/trace/blktrace.c
> +++ b/kernel/trace/blktrace.c
> @@ -524,8 +524,7 @@ static int do_blk_trace_setup(struct request_queue *q, char *name, dev_t dev,
>  	if (!buts->buf_size || !buts->buf_nr)
>  		return -EINVAL;
>  
> -	strncpy(buts->name, name, BLKTRACE_BDEV_SIZE);
> -	buts->name[BLKTRACE_BDEV_SIZE - 1] = '\0';
> +	strscpy_pad(buts->name, name, BLKTRACE_BDEV_SIZE);
>  
>  	/*
>  	 * some device names have larger paths - convert the slashes
> -- 
> 2.39.2
> 

Thanks
Justin


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
