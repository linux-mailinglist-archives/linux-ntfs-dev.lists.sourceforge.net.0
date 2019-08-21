Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E389A984AF
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 21 Aug 2019 21:42:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i0WUk-0006Um-T7; Wed, 21 Aug 2019 19:42:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1i0UjL-0001Ju-Ox
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 21 Aug 2019 17:49:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cuc7KArAwEZwDVhK9UQGoIlx3cYOJWBMGimfd+D8qCg=; b=TxpPM/uQi1h4GyNLrYxnE8YcFB
 OH4I0LWsiVM4I+8Yt8dWAaZPMWxPejHCaWe1SCL2oinPegMLYBd14v77BF9MAD3fWYF8oOpBKSKWQ
 GapgvQK0JdNc8Y5y+z8UB2T0U7wMXRSz6rDKglsfSXxAN1RcOGc8TaeAM20MeV4rw4XU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cuc7KArAwEZwDVhK9UQGoIlx3cYOJWBMGimfd+D8qCg=; b=GZq1mk6tCWKG5twpoONR9mz2cE
 RpwPDLsLsppXAp8Sm6QpMHKk3Y3YFWac4Cr4NZfymAHWFqxHHXEL+PuB1ZniyhOStLebfSarBwu5b
 s3zJ3kmGWmskps0rE/vVbRw2V8rmLvOq0ZZ8q6a/G0xZEu5OuK2JqMuIcWiviG00lHXE=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i0UjK-00BGoP-Dt
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 21 Aug 2019 17:49:07 +0000
Received: by mail-pg1-f194.google.com with SMTP id e11so1732045pga.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 21 Aug 2019 10:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=cuc7KArAwEZwDVhK9UQGoIlx3cYOJWBMGimfd+D8qCg=;
 b=Z2IrsROHrgGddTp70xQRuUmUImik5DFHyqPJBEP6guIEvSGDYKGOJna9rw7t2aVLZw
 foYQrmnHtGq7Ki7PRB8NZf6Wscpv2fB8sQzAzCM3hvTSLmICTHHqRS6eGMXcU5XfWYil
 U9xbtD0Eidq+jfFOoCyDwd5nP7gONspQC/4BXhg232blHOWG/686CZP4efQEqta+HQ6L
 EaHUBPyG1vfuzRn9Ph84/Phanu0+JN9lEgn8ucc6f7+GYXaMNkJ3DJw6yU/BpUI1VEGV
 mvBtumjQUGWk73sIGUkrpqkWO5LnqA0IRIeLsgHUZaNQswv/eJuVjfXUeRhwBupXGGI2
 lq9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=cuc7KArAwEZwDVhK9UQGoIlx3cYOJWBMGimfd+D8qCg=;
 b=WnXjNE9jAglt4Mto8S+XkdClkbnCC9RMGQbv/s3QZeoSwknQ5STzSzSCXdAS8EYt68
 spTcNK9i7lurXUhcVjyizjpf0IDwKxA4AT409JTSYz+/dhqdo25XBuBKm102Q1FnAUf5
 OKlBpoO02mElvzyZn+OFDBK4fR3kjRcylOTIXfF4XLYEiZEM49aRzuT4BuMGRF+i9B2r
 GUqQirkwolPjuAngh5tw51qatEV9bd96gO0l8grvCBV9vAshjKAHdqHSgWAgpvA8BTvQ
 b3h8ma+d3bLG92+NVw84kHAH6ex0CDEXVvcqqTfD4YDMMjNzIGBI9EozaMrbeodTfiCB
 j/5A==
X-Gm-Message-State: APjAAAXFqOn8aYymnkNbQnC2uDwoZ1Zev87uqqkv72PyQXwiENSDDXX3
 P5rgQ3L5C18x6EI6HV4V/DM=
X-Google-Smtp-Source: APXvYqx/voWIbNubBp2JnHr/iFkLr4llW1oBCP0mDz/dkwGM2Fjc8HNeHtK4u6PGmDt5386t4ke/Mw==
X-Received: by 2002:a17:90a:dac3:: with SMTP id
 g3mr1165426pjx.45.1566409740377; 
 Wed, 21 Aug 2019 10:49:00 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id b5sm23381967pfo.149.2019.08.21.10.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 10:48:59 -0700 (PDT)
Date: Wed, 21 Aug 2019 10:48:57 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Message-ID: <20190821174857.GD76194@dtor-ws>
References: <1566298572-12409-1-git-send-email-info@metux.net>
 <1566298572-12409-2-git-send-email-info@metux.net>
 <20190820111719.7blyk5jstgwde2ae@pali>
 <02f5b546-5c30-4998-19b2-76b816a35371@metux.net>
 <20190820142204.x352bftlvnb7s57n@pali>
 <2cd7178e-9713-7678-a02d-dde91e990c1e@metux.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2cd7178e-9713-7678-a02d-dde91e990c1e@metux.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1i0UjK-00BGoP-Dt
X-Mailman-Approved-At: Wed, 21 Aug 2019 19:42:10 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 2/2] drivers: input: mouse: alps: drop
 unneeded likely() call around IS_ERR()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-input@vger.kernel.org,
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 linux-kernel@vger.kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi,

On Wed, Aug 21, 2019 at 01:37:09PM +0200, Enrico Weigelt, metux IT consult =
wrote:
> On 20.08.19 16:22, Pali Roh=E1r wrote:
> =

> Hi,
> =

> > > In that case, wouldn't a comment be more suitable for that ?
> > =

> > And why to add comment if current state of code is more-readable and
> > does not need it?
> =

> Readability is probably a bit subjective :p
> =

> With ongoing efforts of automatically identifying redundant code pathes,
> the current situation causes the same discussion coming up over and over
> again. Sooner or later somebody might get the idea to add a comment on
> that line, that it's exactly as intented :o
> =

> OTOH, I'm unsure whether it's important to document that is particular
> error path is unlikely, while we don't do it in thousands of other
> places. IMHO, error pathes are supposed to be unlikely by nature,
> otherwise we wouldn't call it an error situation ;-)
> =

> > People normally add comments to code which is problematic to understand
> > or is somehow tricky, no so obvious or document how should code behave.
> =

> Yes, but isn't this case so obvious that it doesn't need any
> documentation at all ? Is it so important to never ever forget that this
> particular path is a rare situation ?

Because if I see "if (IS_ERR(...))" in an interrupt path I will try to
see if it can be optimized out, but in this particular case we document
it with explicit "unlikely" and I know that I do not need to bother.

The fact that there is unlikely in IS_ERR is an implementation detail.
It may be gone tomorrow. I do not want to have to remember all
implementation details of all kernel APIs and readjust the code all the
time as they are change underneath me.

Thanks.

-- =

Dmitry


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
