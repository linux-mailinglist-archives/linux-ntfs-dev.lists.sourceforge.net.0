Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9700D8A0247
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 10 Apr 2024 23:40:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rufgX-00007s-B1;
	Wed, 10 Apr 2024 21:40:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <justinstitt@google.com>) id 1rufTQ-00051N-PU
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 Apr 2024 21:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5qCz8E3Di/VZoyQ+H4jHMjBhox36aDiBbL8BntpRuyE=; b=Lbn2vXR2xo1rvE7d6aOWpk/Bqb
 f5vg629nn0S5oHJT2U6D8RkNG9scsX4p/uNMQaxamsFooZjmRfPtxs0PL2t5H1EvUbR5IKU5oQjpm
 RZaYZ7P7cUmXgk3KaTfLG6sIEHVd0g4doMjJ2CcZMqsV1+4+Zl6Gyygd+fztiH0WTCP8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5qCz8E3Di/VZoyQ+H4jHMjBhox36aDiBbL8BntpRuyE=; b=XlOpDajMOGfY+ZSv/BxUjdNCiN
 nU6L4tIdaECy/zEXexQx6lI7xfEOocH5s0wtq9sWZvJla6ZayzsHd/UzPrklsrLaiSu0jmtqhnZHl
 TtUvkztJUk92oWUOXJ1fztTzcQYl4p0vyj2/7zBa5xs2Una/X55X9sXb+lBP1+hPZsFo=;
Received: from mail-yw1-f178.google.com ([209.85.128.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rufTP-0002gH-Uw for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 Apr 2024 21:27:17 +0000
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-61587aa956eso67955497b3.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 10 Apr 2024 14:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1712784430; x=1713389230;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5qCz8E3Di/VZoyQ+H4jHMjBhox36aDiBbL8BntpRuyE=;
 b=dsZgcIBV4XP14oIc9pKcIJIkaD/fVjZaYG7ydqHA3ibOchBeWuvI9ZzX+cexD8sUEh
 QnM+vQgtsQdTPZgaS4iDiTZvgvSY+8jdMo3Aj0asjPnjBGelE8cTmw7GbK5vtYwOSqg0
 RkVuqWEFHd0l8m8RtZttrY44N+xYnUJD7jerr1VqQcYiWhSAvZVPdn9E/rusLWkUa9r5
 AlKoLASy6ogaK/T6DiPw7YxxQFt3tMkjk4SwgXYjEs/ZmFDsUCzYYUItq3CelZVP2PQ6
 04t9eBCgnZHCSUAx02jgNGRawPjnKh6sV4sHxaB3SI92E+/9+mFq84p8pj+q3/2Lufrj
 7WvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712784430; x=1713389230;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5qCz8E3Di/VZoyQ+H4jHMjBhox36aDiBbL8BntpRuyE=;
 b=fGy6NCpwMjBgO+rwy+CUq1TGRhLDR/D7sgdo4sfHOT/o2Y96tMV5LW546qxiTZNOT/
 nIArf933tRJNKnJsAuSBRxG1bAXr12Te9QJs1rHDlrWhUd8SDWoOcvO0uh/+mmy6B6W4
 5Jt44F1GWXboSea73D+cm/axK5ukFesXjs+/Ih5siG63nTklD77thJmJW+jMhKADe/Er
 v82p/V2lj4feqMxjOLrPj15FCfw2FlSsZldora4KyVLHaIYIo6IiFZv+jkjaP/0CpH2/
 5tHUXhs84osA2SLDe1Vr3n9mtktYKkgq8ULezZd3AVNliwNS7dsWefM1XlAtOLPTzugN
 ISuw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6nXLxM62fJ+5xXFpcKZXO/AfV6Ea44M8sI8cYLvvLL4ENFjX0emCq7iVkKmwDkioZ3khJyHpG++D42XF7muXEW1g5VYtLgBSlEv2kYvo/5sq092c=
X-Gm-Message-State: AOJu0Yx8IMRLY6KoTjGlfFb1SHC7kReFp1a3a4auyNGhya2DXmAG/czA
 1cGPCP74ZUyvsFeFn3M2vDPA8UBpK26PPm3wQ90N839Tr5ChYTBOTAWbrk9zbStkUTGY+IgTATR
 dhg==
X-Google-Smtp-Source: AGHT+IHN3/xecRCfid5g0bOH7LkZ8yJnDUd9LCUKGxMaS0A+hxkDrR8tOjgJoTgIYqX095KCqX+cBg==
X-Received: by 2002:a05:6602:4981:b0:7d0:c9c7:f52f with SMTP id
 eg1-20020a056602498100b007d0c9c7f52fmr5030577iob.6.1712783099842; 
 Wed, 10 Apr 2024 14:04:59 -0700 (PDT)
Received: from google.com (30.64.135.34.bc.googleusercontent.com.
 [34.135.64.30]) by smtp.gmail.com with ESMTPSA id
 n5-20020a05663831c500b0047be760081asm4119002jav.154.2024.04.10.14.04.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Apr 2024 14:04:59 -0700 (PDT)
Date: Wed, 10 Apr 2024 21:04:54 +0000
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <fg6iv2dqwladc4d6tqzgg26mcyxz7c5bfn7gscic63c2qmhrz5@zvfm2btcf4fp>
References: <20240409140059.3806717-1-arnd@kernel.org>
 <20240409140059.3806717-2-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240409140059.3806717-2-arnd@kernel.org>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 09, 2024 at 04:00:54PM +0200,
 Arnd Bergmann wrote:
 > From: Arnd Bergmann <arnd@arndb.de> > > gcc can warn when a string is too
 long to fit into the strncpy() > destination buffer, as it is [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.178 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.178 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1rufTP-0002gH-Uw
X-Mailman-Approved-At: Wed, 10 Apr 2024 21:40:48 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 1/5] [v2] test_hexdump: avoid string
 truncation warning
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

On Tue, Apr 09, 2024 at 04:00:54PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> gcc can warn when a string is too long to fit into the strncpy()
> destination buffer, as it is here depending on the function
> arguments:
> 
>     inlined from 'test_hexdump_prepare_test.constprop' at /home/arnd/arm-soc/lib/test_hexdump.c:116:3:
> include/linux/fortify-string.h:108:33: error: '__builtin_strncpy' output truncated copying between 0 and 32 bytes from a string of length 32 [-Werror=stringop-truncation]
>   108 | #define __underlying_strncpy    __builtin_strncpy
>       |                                 ^
> include/linux/fortify-string.h:187:16: note: in expansion of macro '__underlying_strncpy'
>   187 |         return __underlying_strncpy(p, q, size);
>       |                ^~~~~~~~~~~~~~~~~~~~
> 
> The intention here is to copy exactly 'l' bytes without any padding or
> NUL-termination, so the most logical change is to use memcpy(), just as
> a previous change adapted the other output from strncpy() to memcpy().
> 
> Cc: Justin Stitt <justinstitt@google.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

This looks better than the previous strscpy() usage.

Acked-by: Justin Stitt <justinstitt@google.com>

> ---
> ---
>  lib/test_hexdump.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/test_hexdump.c b/lib/test_hexdump.c
> index b916801f23a8..fe2682bb21e6 100644
> --- a/lib/test_hexdump.c
> +++ b/lib/test_hexdump.c
> @@ -113,7 +113,7 @@ static void __init test_hexdump_prepare_test(size_t len, int rowsize,
>  			*p++ = ' ';
>  		} while (p < test + rs * 2 + rs / gs + 1);
>  
> -		strncpy(p, data_a, l);
> +		memcpy(p, data_a, l);
>  		p += l;
>  	}
>  
> -- 
> 2.39.2
> 


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
