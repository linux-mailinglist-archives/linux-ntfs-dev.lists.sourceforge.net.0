Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F8F46023D
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Nov 2021 23:56:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mr6c5-0000Yw-SZ; Sat, 27 Nov 2021 22:56:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mr6F6-0003sC-Fo
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 22:32:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BXUeAi2+SoZlOAeVxzpmD/hoJP95QxCkovEv8DaX2SQ=; b=Ls+l0jOfnnPXyJDZyp9WrW8LVs
 5QjEAOb5nqoGbSN8mx3IhDM36mGQE9QCVJUmS/55YXd71+fiGuWj/pVM71hwUL0q3w+uYFQtMqEXy
 lhoYpVoT+Du9Cusu6p95sQmHwksSwbN0qbbLQOYbXODOHMygV187Rnje5pu5eCFuqL5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BXUeAi2+SoZlOAeVxzpmD/hoJP95QxCkovEv8DaX2SQ=; b=mVNsxiD8sDjjl8vrZTlvTOMlWY
 YbrdUgl+kEGI/lUPsxp8HqBf14aEGEA+5Ebn162ecRz7viOMn1BnWk3i++wahh0NdlTnqiacoUHKw
 WvKaQDq1mJ+j0rSy4bIwxRHJ5k1gd6irEIrhCd1vZDcwTfgeZWOZVDkHd5PpSxaVkMMo=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mr6F0-0002PI-JC
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 22:32:25 +0000
Received: by mail-ed1-f47.google.com with SMTP id y13so54460683edd.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 14:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BXUeAi2+SoZlOAeVxzpmD/hoJP95QxCkovEv8DaX2SQ=;
 b=SlW9NdbVN58YpeREsvTB9WyxAD6XgU0wbSRECOnLAdjp3CjRYvUXyMEc68vSH6ybpX
 IeNIX2UReqfIFSK4Z0S2vK/lC7F07lMqUrgEYglszqNYs8bEnafD4LzlR3S28r9l3VsZ
 c9Ia8cLhA495icUxVghv669/m6jpS3lHDLtfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BXUeAi2+SoZlOAeVxzpmD/hoJP95QxCkovEv8DaX2SQ=;
 b=vKoG2957h9V2yNSj+mjKCasi+mPs11WMpJ7pDcVSmhgOuNloX8NV+IaWAgOVAzmb38
 ZTJGIqKS7ZLsH82jsHnBQq7ZQDZiwbtrtTcVUwaFaAbPIoD7WZ3yEfOru7P7M3GHcV80
 elMZjx14jZCR88I8w2O63lvSKaxVxK574f2eQxLetWZJJXb+/DgMEM3hDB8Yz9TEFsIB
 +7+TNUo/SzM/VGLzshz+2h3XarFlZ70NqpS1GXk/oKEhGRY60RTp6cO4p4JyZb16LKjE
 CifCWUutLBWcdZgUNuSFPPCOX6u4aaq4cSO8VX8M+wa7lqMmtbyHapWIwlHSuJxh5PGc
 B16w==
X-Gm-Message-State: AOAM533v62UJrt4YzDr3X7NucQZKhpHdqAaJyVFL7uy1xXCdSRqPJA+1
 ZO8KPHYHtRBlIgpmNuqEl+MGZ/73ZkW8derV
X-Google-Smtp-Source: ABdhPJwk71cpr2boL3d+tUK0o76ah6nMTVFTP5zPEhGgrdCT89YyKvRpHcUIRiGbTKfr+V0DwKC5Iw==
X-Received: by 2002:aa7:ca46:: with SMTP id j6mr16541529edt.234.1638052331843; 
 Sat, 27 Nov 2021 14:32:11 -0800 (PST)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id hd18sm4822664ejc.84.2021.11.27.14.32.10
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 27 Nov 2021 14:32:10 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id y196so11268886wmc.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 14:32:10 -0800 (PST)
X-Received: by 2002:a1c:7405:: with SMTP id p5mr24444897wmc.152.1638052330543; 
 Sat, 27 Nov 2021 14:32:10 -0800 (PST)
MIME-Version: 1.0
References: <20211127154442.3676290-1-linux@roeck-us.net>
 <CAHk-=wh9g5Mu9V=dsQLkfmCZ-O7zjvhE6F=-42BbQuis2qWEpg@mail.gmail.com>
 <228a72fd-82db-6bfe-0df6-37f57cecb31a@roeck-us.net>
In-Reply-To: <228a72fd-82db-6bfe-0df6-37f57cecb31a@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 27 Nov 2021 14:31:54 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjaVwrf1OQbDSbk1FxqzbtAYQLx16D74TeagXQyb5oEEA@mail.gmail.com>
Message-ID: <CAHk-=wjaVwrf1OQbDSbk1FxqzbtAYQLx16D74TeagXQyb5oEEA@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 27,
 2021 at 2:26 PM Guenter Roeck <linux@roeck-us.net>
 wrote: > > Either way is fine with me. Either apply it now and have it fixed
 in -rc3, > or we can wait for a few days and I'll send y [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mr6F0-0002PI-JC
X-Mailman-Approved-At: Sat, 27 Nov 2021 22:56:07 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v3 0/3] Limit NTFS_RW to page sizes
 smaller than 64k
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-ntfs-dev@lists.sourceforge.net, Netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, Michael Ellerman <mpe@ellerman.id.au>,
 "David S . Miller" <davem@davemloft.net>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, Nov 27, 2021 at 2:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> Either way is fine with me. Either apply it now and have it fixed in -rc3,
> or we can wait for a few days and I'll send you a pull request if there
> are no objections by, say, Wednesday.

I'll just take the patches as-is and we can leave this issue behind us
(knock wood).

Thanks,

           Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
