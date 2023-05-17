Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F6A70649D
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 May 2023 11:52:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzDq4-00052V-Kk;
	Wed, 17 May 2023 09:52:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bagasdotme@gmail.com>) id 1pzBjM-0000cp-61
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 07:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q7G2+GiqZTEnICnzzvagb14E08/JnnciwA1LRqGqYto=; b=DzktamtHEtc74FF3INIiRkY3hp
 +udyLQDXAhhr9UdNfyuEXFcMIHEAMJUKmSl9QUhd08cTr9OUzbcDCMjzApKAmoaPUnpE0rZSjT+Sg
 YIub2MTzJD8o3CnRW4IOJWawV9GkzUlgRFnTyGol154BbmlXpmzkTmqPGnjEqPWs+LeA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q7G2+GiqZTEnICnzzvagb14E08/JnnciwA1LRqGqYto=; b=Bb3ONt56RHSnFpOQHwDCUtZjiO
 ntwjxDO3UDMf/ALyogsE/0/SxXHGcphEj64HvPlOXAJPj0+GjdVgUeqyNTJK3qN5DI3Spbkb2XJ9v
 LOXPLit1a0Gp4+HDiUd3VYIHCLU/9t1lW0oXaVd4AhLCJ4s5KYCUIb/m/OnZiZsz0NxY=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pzBjM-00Amnw-DM for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 07:37:52 +0000
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-643990c5373so379971b3a.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 00:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684309067; x=1686901067;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Q7G2+GiqZTEnICnzzvagb14E08/JnnciwA1LRqGqYto=;
 b=ZSUm/FDaXcxzgMtxnP6YATO77IXyq33I/jfofsuyf8enOnq24T9h+CAIBDPsz2kySA
 J7qaZIBCnAhYD3EFzjBcizu9te4JqRi+AprJSeAp16uhhODAei1i7ut3oD3tjP0I1Tfn
 YuY2cg/a+pSvNLqyKjzG2QSfzML3MJWSXh2tYEShzCPHnS8fCV4pGlEocM+nQpYVN4Hz
 CKkASzrb+YTO0i9RV6PsCca6UxiOpXTOBpagaeOuZeJQ6PQ5G5pB++CODzvLaRIybhpX
 DktRY1olDixF+WDSZKZkcFxRGWPwonGu8NMpK8FJigeafUm1Wco0x+OZMyhrUhfA9GYd
 36fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684309067; x=1686901067;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Q7G2+GiqZTEnICnzzvagb14E08/JnnciwA1LRqGqYto=;
 b=YXk16nd3khcLt+UsxGqP8pzc04qsl/BicLyRffZ33w1UYHyc7q5ZxMAEqz1I+4Gi4O
 Dd8sotodwWaZylHqNi47VTFTsNHMzTtGwWAYakun0VW4VAfzHONu7zctPZZgJxZu6gdd
 m5OI75porBlFne98gHqCUKdMM4t+u/F2aHLGSfzltpfOCJ72J2iY35fo0zfnYyoIu6Sk
 5n419zACXWIU9MDIjjgKnI1S7kAYclOxiX+O+fU5xzpQuwKNgk7ykXXzZ4d0cc6YR0Gk
 lQdweQxfLUkQbaxDNgDe4ITkLGnrkj1MnBuMBNPnHFy0Tdni72DQLXyb52oXmb548x9H
 i1ZQ==
X-Gm-Message-State: AC+VfDwmvRMLcu5SPQNomXJkJBlHntW529XSkHq4f/eA+ovNO53l5fTk
 DFqWPv+H/LiHQBYq2ddUGYs=
X-Google-Smtp-Source: ACHHUZ7uXnf2Pcr9J/EUDfhhMEUSGuw/KM22Lxow7nOEAFCHTidGVQenu0dqdTn/PJXfYht5nyuHGw==
X-Received: by 2002:a05:6a00:1396:b0:646:6cc3:4a52 with SMTP id
 t22-20020a056a00139600b006466cc34a52mr41429384pfg.3.1684309066722; 
 Wed, 17 May 2023 00:37:46 -0700 (PDT)
Received: from [192.168.43.80] (subs02-180-214-232-12.three.co.id.
 [180.214.232.12]) by smtp.gmail.com with ESMTPSA id
 y24-20020aa78558000000b00634a96493f7sm12177713pfn.128.2023.05.17.00.37.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 May 2023 00:37:46 -0700 (PDT)
Message-ID: <4125c148-a4f4-edd2-3009-0283246f8a95@gmail.com>
Date: Wed, 17 May 2023 14:37:41 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Namjae Jeon <linkinjeon@kernel.org>, brauner@kernel.org
References: <20230517070739.6505-1-linkinjeon@kernel.org>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <20230517070739.6505-1-linkinjeon@kernel.org>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/17/23 14:07, Namjae Jeon wrote: > I'm volunteering to
 help review patches for current unmaintained > ntfs filesytem. > >
 Signed-off-by:
 Namjae Jeon > --- > MAINTAINERS | 1 + > 1 file changed, 1 [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [180.214.232.12 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bagasdotme[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pzBjM-00Amnw-DM
X-Mailman-Approved-At: Wed, 17 May 2023 09:52:54 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs: Add myself as a reviewer
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Linux Memory Management List <linux-mm@kvack.org>, akpm@linux-foundation.org,
 linux-kernel@vger.kernel.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 5/17/23 14:07, Namjae Jeon wrote:
> I'm volunteering to help review patches for current unmaintained
> ntfs filesytem.
> 
> Signed-off-by: Namjae Jeon <linkinjeon@kernel.org>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e2fd64c2ebdc..c2cecb2059d7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14928,6 +14928,7 @@ F:	drivers/ntb/hw/intel/
>  
>  NTFS FILESYSTEM
>  M:	Anton Altaparmakov <anton@tuxera.com>
> +R:	Namjae Jeon <linkinjeon@kernel.org>
>  L:	linux-ntfs-dev@lists.sourceforge.net
>  S:	Supported
>  W:	http://www.tuxera.com/

Acked-by: Bagas Sanjaya <bagasdotme@gmail.com>

Anyway, what about also adding linux-mm list so that akpm can
pick patches?

-- 
An old man doll... just what I always wanted! - Clara



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
