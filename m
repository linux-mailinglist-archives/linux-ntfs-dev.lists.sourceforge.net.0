Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB1D32240B
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 23 Feb 2021 03:11:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lENAE-0007we-W4; Tue, 23 Feb 2021 02:11:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rkovhaev@gmail.com>) id 1lEDuW-0001N3-4M
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Feb 2021 16:18:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0oTXE9HVvDGBzY+kLMPkfFY7CNArufakj02yyUEBmno=; b=FwlBj+2fOIj3FGOoYRixWsA6xm
 FjMH16L2g9GcUy+ax2qiz82otQlaK2UqGHh9frP60SuOkSRmovU+owF1DpHl0UJJZtgcNRfOz0CTx
 1uF9/WuG2lTOJiTdMgzicoCQsn31VAEIqoaU3BSIqITb2iKYQY68MIJ8QxpSszqzaVEM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0oTXE9HVvDGBzY+kLMPkfFY7CNArufakj02yyUEBmno=; b=f8FOPcGy4dr1Cv6SHNG7fpjH09
 x6zlfERJSnWoUGAu1gwGGtdGSDFLWeE5FWxdgBARuww42WXqTDQ0IcfUZ9tcW2zqrzbBEmvon5E1u
 e9jrpeI4Eb7fvns2LgGaZFipjhiU3zYGhWa7WFTBU2V3hVp66ff5+tdcrp66jOZbAkgw=;
Received: from mail-pj1-f50.google.com ([209.85.216.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lEDuL-00048Q-Pl
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Feb 2021 16:18:12 +0000
Received: by mail-pj1-f50.google.com with SMTP id ds5so1586778pjb.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Feb 2021 08:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0oTXE9HVvDGBzY+kLMPkfFY7CNArufakj02yyUEBmno=;
 b=i2eLFEYtrH5/NOdWQgdMxO6XM8eLfaIS9LJvKXZSM7PbjDjMHqzHltePB9u1NHtObE
 FUa3176Ox5VlOmH9Ofsemis8eM5xkxLkxpRHn3AzD+qe2J+X1G4+P1AViF+czhL+Kjg7
 7Kb91jgGSZh3VB+ssjnbVdip8eabWswa5+ON899RdjuUuqzM8AzaUC8ow1MT171yRWoB
 yox9sZHMQAnczIS7DpBNqrPJ6H4Agy5IhBc9g837YJbd7RT34QI/fS6qd8K8r0DzaVrf
 gcA/cPWsvh6S6K9tsgyj23ejw9cOCajinDZ8b9uVRqRlzJYOLSi8zr3b6E+C7GoiaN1z
 hkXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0oTXE9HVvDGBzY+kLMPkfFY7CNArufakj02yyUEBmno=;
 b=MBrf3bsOIhhWqR0L6he0lyvVpEnSIfcxbNkCPgrBfhavf9se5ENj6OhHxwhabok+UU
 pGIanAspyNmPWGfd6mc9rPCyL88Xwm8EMCMLkCRmZQ4HetoEKCY4whIGQLVYmW9lA9RE
 8DyKCyvh0iEplSNiC04zE1UCVM23FtXa1koAAspsS/ngocoAuH1UEu4LyK+VyIbf4cXQ
 ql2hblCna1ILkXLU+EbUJNfLlZeTTc7bxH3YqKRz7L61//c8m4iubnx1h5Q+ecMRCpNn
 wGPeS7oFo6Wz0cdllIn0a4Xk13mXlpryPTgpQxul6+868KEkhQ5Ps+d3UQ5qN1gDMVFF
 z+OA==
X-Gm-Message-State: AOAM532RGUPARqkiNyQY4lqp6AGVZ8yYR+3/9L6NGeM19WCBIv2Paa7x
 V10QxllVHhPdb6qTV/1iV00=
X-Google-Smtp-Source: ABdhPJw6D3qE+/uQHgJBtNurxFxZfoOXiXjC7C10ymQXt0Sq4JgqsmuZC0WuHVUE/aLz0I2GeOZmUQ==
X-Received: by 2002:a17:90a:4dc1:: with SMTP id
 r1mr24490758pjl.12.1614010676264; 
 Mon, 22 Feb 2021 08:17:56 -0800 (PST)
Received: from nuc10 (104.36.148.139.aurocloud.com. [104.36.148.139])
 by smtp.gmail.com with ESMTPSA id ml7sm14216393pjb.28.2021.02.22.08.17.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 08:17:54 -0800 (PST)
Date: Mon, 22 Feb 2021 08:17:49 -0800
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
Message-ID: <YDPZLTZ/eLEw9rLT@nuc10>
References: <20210217155930.1506815-1-rkovhaev@gmail.com>
 <42B686E5-92C1-4AD3-8CF4-E9AB39CBDB7B@tuxera.com>
 <20210219104956.09e869c36f065a78d1901725@linux-foundation.org>
 <A4498E63-33DC-4DAA-837D-D97B8F29F70C@tuxera.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A4498E63-33DC-4DAA-837D-D97B8F29F70C@tuxera.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rkovhaev[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lEDuL-00048Q-Pl
X-Mailman-Approved-At: Tue, 23 Feb 2021 02:11:01 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: check for valid standard
 information attribute
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Feb 22, 2021 at 02:18:50PM +0000, Anton Altaparmakov wrote:
> Rustam would you like to resubmit with an improved/extended description?
sure thing, no problem!

> when resubmitting with better description, please also add the 
> "Cc: stable@vger.kernel.org" line together with the "Signed-off-by", 
> etc lines (note no need to actually put this in CC: field of the email 
> iteslf).
i will do that, thanks Andrew and Anton



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
