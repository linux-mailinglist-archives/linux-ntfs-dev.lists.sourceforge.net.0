Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2548A0248
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 10 Apr 2024 23:40:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rufgX-000081-K6;
	Wed, 10 Apr 2024 21:40:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <justinstitt@google.com>) id 1rufcz-0003YP-2Y
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 Apr 2024 21:37:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bv/V2BDcZ6BXQvfxxNM1w/X7hHGQqyp9bJFqKpeVUk0=; b=SibS5m3zRqahcIbkLipoe6WgpO
 XqUllNAXMplMTtjC7dH2unr3GaJiedSHFweEjTidJe9Hxx1zNZ8jcek0b+prdO0c+ln5FR+G8t2EU
 FJnmB9Wa19vtAvP4OSLsmtT+cFkvj+rp0ZQdMVe4SqMOaA4zro8TpE3BqZrkjHBeVeD8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bv/V2BDcZ6BXQvfxxNM1w/X7hHGQqyp9bJFqKpeVUk0=; b=RLCQyLdi7UvXbuODOhgyoifues
 CBJbZxLl0dtabsurtBwiF7NTrmOw4TtcKroPhVOO49Lub+VTtD15pqFG5KcI+Dv+XNDUYW5wF9Guh
 GywGScQaGxD6RgFhZCtks78vtDrnShw647gKZH4hsrWuSSmpsf0qJInG8H0vMWYXRa3A=;
Received: from mail-oa1-f46.google.com ([209.85.160.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rufcw-0003Jw-Nx for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 Apr 2024 21:37:09 +0000
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-2330f85c2ebso663095fac.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 10 Apr 2024 14:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1712785016; x=1713389816;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Bv/V2BDcZ6BXQvfxxNM1w/X7hHGQqyp9bJFqKpeVUk0=;
 b=tap2V7TTJ201DG5cd9ugWc4CrgQ51Eo/oRMvbIfmd5Q8UsfNtKE7KVfd0JjmWjAl3W
 6gZlZbsf9lx1aQXEuwNwSCmOeDuD+o5MhODLGiXmUeY/Va+FksnEnXos/Pal4ojjqI9o
 sSope/KoOZTuJXL9v7M9Im7WXIAOvzclcNDwhKdEY8CxLjbSckcRSfG3Q4ePm7ntXeEx
 ba/yaRwYtnnzMFmlgOm3SEcfupSatJpXuES9HRPrISBOHYNs1csw8V2AP826M5TTZu8o
 NwULx+CO/YJ2/JYjdwCT7VZH9yfakhDb9heDKdIGKnipm2ROo2DSuCWYBUgceC+FV9QE
 FzfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712785016; x=1713389816;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Bv/V2BDcZ6BXQvfxxNM1w/X7hHGQqyp9bJFqKpeVUk0=;
 b=lv4PA7y420Dx/9bHhlc+wUorkt7+IMyKRXP+BESU7mafSyrik1A5+D7kSlCp9O2lZe
 TtuznjpADfp55x3zcMCLshowA8+Qry1F6T7aH0ZADiSefusBa3wuJHzkDYHhgUrWp7Hz
 FOiDYP3KW9UKgxvsgv9Nm1lfQMqt+Uu0CqGT/lMWJA9cisizXWSl0slUAJ+E3lqzMQ+k
 w31J3qTcHkWKpO3SlWvODPQiyhSN9T/Ncu1upXHjIYiX9Bp77kkar3WXz0nXqYtleZwF
 bbm5Y2lu3WyNAv3tpwpYTgWihw7lwgCeli796gjC/3wH9HcrV2TJFk88b0byk/LoWr0r
 KKXg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWdW0znZqs7mX7D1CJTf9ZzVyORbpbw6fSHTfz8uHJ2JT5zsNCT/Shf9k/R5nkb5S++//u8TRsUsZgoNZC/9XxaBiII3jBZWzvUO39sHDb4z2S1Mdk=
X-Gm-Message-State: AOJu0YxQ+IR6oWpRgYH1xMFE86VYyon/sEsqwnh7eCB959ap6w8PONNv
 707aN8UCOqBsN8XfJnRtUB++zGRwVr7/XFHNopSpQ7WElLWZeRpwjfuedZnfEaM21RmgnpK49pi
 zOw==
X-Google-Smtp-Source: AGHT+IFcUUpsX3kBlOD2hO0EgX46DmOztzcA2srIGWOFuvp0m6/PaSUmCl09aWhXL/OfU4fhOLSkSg==
X-Received: by 2002:a05:6a00:3d42:b0:6ed:21bc:ed8c with SMTP id
 lp2-20020a056a003d4200b006ed21bced8cmr4678360pfb.18.1712783405518; 
 Wed, 10 Apr 2024 14:10:05 -0700 (PDT)
Received: from google.com (30.64.135.34.bc.googleusercontent.com.
 [34.135.64.30]) by smtp.gmail.com with ESMTPSA id
 w22-20020a634756000000b005dc4da2121fsm10368167pgk.6.2024.04.10.14.10.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Apr 2024 14:10:04 -0700 (PDT)
Date: Wed, 10 Apr 2024 21:10:01 +0000
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <b5ijucc7vbamdivt5o36zqleunihy6j62u3ecg6p4jgqmajao6@xatdncyyp6jv>
References: <20240409140059.3806717-1-arnd@kernel.org>
 <20240409140059.3806717-3-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240409140059.3806717-3-arnd@kernel.org>
X-Spam-Score: -20.7 (--------------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Tue, Apr 09, 2024 at 04:00:55PM +0200, Arnd Bergmann
 wrote: > From: Arnd Bergmann <arnd@arndb.de> > > gcc -Wstringop-truncation
 warns about copying a string that results in a > missing nul terminat [...]
 Content analysis details:   (-20.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.160.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.46 listed in wl.mailspike.net]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1rufcw-0003Jw-Nx
X-Mailman-Approved-At: Wed, 10 Apr 2024 21:40:48 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/5] [v2] acpi: disable
 -Wstringop-truncation
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

On Tue, Apr 09, 2024 at 04:00:55PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> gcc -Wstringop-truncation warns about copying a string that results in a
> missing nul termination:
> 
> drivers/acpi/acpica/tbfind.c: In function 'acpi_tb_find_table':
> drivers/acpi/acpica/tbfind.c:60:9: error: 'strncpy' specified bound 6 equals destination size [-Werror=stringop-truncation]
>    60 |         strncpy(header.oem_id, oem_id, ACPI_OEM_ID_SIZE);
>       |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/acpi/acpica/tbfind.c:61:9: error: 'strncpy' specified bound 8 equals destination size [-Werror=stringop-truncation]
>    61 |         strncpy(header.oem_table_id, oem_table_id, ACPI_OEM_TABLE_ID_SIZE);
>       |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> The code works as intended, and the warning could be addressed by using
> a memcpy(), but turning the warning off for this file works equally well
> and may be easir to merge.

Dang, I would've really liked to see these strncpy()'s dealt with [1]!

The warning is there because that specific usage of strncpy is plain
wrong. strncpy() is a string api and this usage looks like it has
arguments and results not resembling C-strings.

Not sure if turning off correct warnings is the right call.

Link: https://github.com/KSPP/linux/issues/90 [1]

> 
> Fixes: 47c08729bf1c ("ACPICA: Fix for LoadTable operator, input strings")
> Link: https://lore.kernel.org/lkml/CAJZ5v0hoUfv54KW7y4223Mn9E7D4xvR7whRFNLTBqCZMUxT50Q@mail.gmail.com/#t
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/acpi/acpica/Makefile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/acpi/acpica/Makefile b/drivers/acpi/acpica/Makefile
> index 30f3fc13c29d..8d18af396de9 100644
> --- a/drivers/acpi/acpica/Makefile
> +++ b/drivers/acpi/acpica/Makefile
> @@ -5,6 +5,7 @@
>  
>  ccflags-y			:= -D_LINUX -DBUILDING_ACPICA
>  ccflags-$(CONFIG_ACPI_DEBUG)	+= -DACPI_DEBUG_OUTPUT
> +CFLAGS_tbfind.o 		+= $(call cc-disable-warning, stringop-truncation)
>  
>  # use acpi.o to put all files here into acpi.o modparam namespace
>  obj-y	+= acpi.o
> -- 
> 2.39.2
> 

Thanks
Justin


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
