Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8224FAB03
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Apr 2022 23:52:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ndJ00-0005OB-UC; Sat, 09 Apr 2022 21:52:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <michalorzel.eng@gmail.com>) id 1ndB1A-0000cu-OS
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 13:20:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2IYDe10dmsGy8DJcaB3vGWy7J8LhPKTO6Cy2zoRK/ho=; b=PBsOS7yGI9F66mcBbTEQcyz054
 I2E3OftkGc13OgcLvlCji/somaFKzbCnFDXWT7Uyqh7vOhhgcSJGgdKAyzyGNMBE95+3Owv+Softm
 A7mZehjhtSzWtiL28cmiWZ2wkt4WCRlC23XlpwpKTNWE0W2IvaJlVuYrdVfOIL5OFVkc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2IYDe10dmsGy8DJcaB3vGWy7J8LhPKTO6Cy2zoRK/ho=; b=JPixwipgqPrTEkg7WM7byrD30j
 tnSNNBkEn0AJo/cm5fiNmMpKMvd5HZTvG9TmX7Q/48N3Jc0hObDF3yVlbX74XErASRvGjX+8wBkYV
 Kc9acZY0W5zugS9CUQhauKhoh2OjU3LmLH3rikToSNQulpa49G2YSGat2IQLo5jhz9FQ=;
Received: from mail-lj1-f173.google.com ([209.85.208.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1ndB15-00Aqa3-9E
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 13:20:43 +0000
Received: by mail-lj1-f173.google.com with SMTP id b43so14651653ljr.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 09 Apr 2022 06:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=2IYDe10dmsGy8DJcaB3vGWy7J8LhPKTO6Cy2zoRK/ho=;
 b=mt++UCES/exeXjRVb7JPbS3ZpWcOYQXe3eKjgYEAFS5DUVNUDSulsQ5FgaDVplCXiC
 KZcGfJH8V52LSkVPb7LCbOF+vWcVODy6iXS4T1iRTkcVs8DvdHD2pDqDBBweVW9W3MZ/
 cdJYn+WovG1sDY+XNVYyhIAuXjzpP+9bc4k5fggvVY20NxVdZiQ2/9iolFmCx7rZiMtH
 b5MNtWORQFQuM/yFkRa6cgthe7iCHumWCc6XUDX5wG9D4pAW6K6W20NH2NnIkfLIN3sW
 2b4GZgPyjT+lZKGB4giCgOnBv5rBp4QHkSaf4y0AAP0lHffRiFg/ofy1R5BBq5Ys7cC0
 wNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=2IYDe10dmsGy8DJcaB3vGWy7J8LhPKTO6Cy2zoRK/ho=;
 b=UO6uhtVzG9e1AJxdcdidqWKWD1Q82+LDcYmuzpLHKz4WlFaZppNExQzhZnFbcG0qXs
 SeskJE4HKdrtJglneulBOgfatait+kefaq+yokT0u6wXf/KbGDeHEe69OpfkiyX3YBXj
 uhNw4wRZZiQtBYl6Gb4w6vZo9NLq2AlM2A6MxJ0SuF1PapQLHq/Wv8Om1+tvXpXbLWCE
 hSBRQfMRaDTWNdCqBC0Q1eJVJDNN6xPdI6GC2ByoSs9iNjIkPEj1gSreX+bWf6m5x5f/
 CJtC9tJbdvEDBa05xoV4TiFOBksheRj7NtrxV418e7y+yC379qrRgtX68VxufUxVyz33
 vDIQ==
X-Gm-Message-State: AOAM532/M+YtFeC1Kph7QKybJzpTSKxmKzuFHZqdixOIhc1WUyI7iNj6
 8Cs754c0rrSCjngAG5kA2TU=
X-Google-Smtp-Source: ABdhPJyJy8HuDMh8C0fCMF8KqYpun+F3VqSjI45xB1lID679uOi5hdADtkguk2UcWKQritzJA7ggGA==
X-Received: by 2002:a2e:81da:0:b0:24b:4e65:e3e0 with SMTP id
 s26-20020a2e81da000000b0024b4e65e3e0mr4934755ljg.483.1649510432658; 
 Sat, 09 Apr 2022 06:20:32 -0700 (PDT)
Received: from [192.168.31.104] (static-91-225-135-18.devs.futuro.pl.
 [91.225.135.18]) by smtp.gmail.com with ESMTPSA id
 s11-20020a2e9c0b000000b0024ace83744asm2527195lji.116.2022.04.09.06.20.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Apr 2022 06:20:32 -0700 (PDT)
Message-ID: <446a3e88-4c14-300d-862a-1279274c3760@gmail.com>
Date: Sat, 9 Apr 2022 15:20:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Tom Rix <trix@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 "Richard Russon (FlatCap)" <ldm@flatcap.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20220409101933.207157-1-michalorzel.eng@gmail.com>
 <20220409101933.207157-2-michalorzel.eng@gmail.com>
 <a56d1184-d399-d5f8-765f-5a4f35dacd5e@redhat.com>
From: Michal Orzel <michalorzel.eng@gmail.com>
In-Reply-To: <a56d1184-d399-d5f8-765f-5a4f35dacd5e@redhat.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tom, > > On 4/9/22 3:19 AM, Michal Orzel wrote: >> Get
 rid of redundant assignments which end up in values not being >> read either
 because they are overwritten or the function ends. > > This log is the sa
 [...] Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michalorzel.eng[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.173 listed in wl.mailspike.net]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ndB15-00Aqa3-9E
X-Mailman-Approved-At: Sat, 09 Apr 2022 21:52:03 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] block: Remove redundant assignments
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
Cc: linux-block@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Tom,

> 
> On 4/9/22 3:19 AM, Michal Orzel wrote:
>> Get rid of redundant assignments which end up in values not being
>> read either because they are overwritten or the function ends.
> 
> This log is the same as your last patch.
> 
> Instead of a general statement on deadstores, a more specific
> 
> analysis of the setting being removed would be helpful.
> 
> This will mean splitting the patch to match the analysis.
> 
> Tom
> 

I think that this explanation in a commit is enough for such a trivial patch.
It informs that we are fixing clang-tidy findings related to deadstores
in a block subsystem. What analysis would you want to see?
Something like "Remove deadstore assignment ret = -EINVAL  in a function bio_map_user_iov" ?
I think that it will create too much of not needed overhead.

Cheers,
Michal


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
