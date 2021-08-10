Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB8D3E5DFE
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmT-0007jl-EZ; Tue, 10 Aug 2021 14:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1mDNPI-0002Qw-Gw
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 08:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EwRWG/gC2fE5xGCjSTzADsLHIR4c/x7Q7wLTB3Mw2aw=; b=auCpQnkD+vXaOogVOXa2v1WunG
 4GnYzYi2pblWoOcaef1GT1ne0ctuDE89EWzAYx8uw4fjomgCw6n8uHk4GlWohgEoO8f3yLTIDhqK4
 SVYASdj1EdSYq2oth/epXzbAgVlk5grcdFeCv+IhVap9YP+x5MqqzxM9MuzZhGJ57qWE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EwRWG/gC2fE5xGCjSTzADsLHIR4c/x7Q7wLTB3Mw2aw=; b=cJYpZIS1pIYkSM8jrolNWO6ban
 oWxRWWcpVLEnITndTCb5chAyXNr2DY7TFem3nI8Q2S4V3htHGG+O+aJgVZwJSzzSPT3FAG8EHQRcF
 1opu3s17o5WAyyzuo3ZAEUo3cXXeNziMu2mpxtaAcfwhMysN2kqnWAb89p5Z1NzL+2mY=;
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDNPE-001d2S-Hg
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 08:46:44 +0000
Received: by mail-lj1-f177.google.com with SMTP id n7so2944743ljq.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 10 Aug 2021 01:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=EwRWG/gC2fE5xGCjSTzADsLHIR4c/x7Q7wLTB3Mw2aw=;
 b=N5x9Ponuc1QqmsFp4XPQOgs8joInICnknQS3MCZEqQsjjGGEi+lkxJOCpFj3owuo1m
 ddWmthUpjTgDPzdysdSC9IK6hOHtq/H/OntfnCiC59SeK1WA/oUZ+TjRxik/8ds0ifVB
 jdVyFNYfjdrrIh00sAGZisV8zX4Ljx5QKtKoOFNOlA0se8cDVZU5n2rPyUiNsOHwdffB
 sFe5TXVWJi+NC3DYlv8J6Ov8wXIVp5p7Vs0kwqSuLYJS0P/ixpAP/H0fvGZQvgtrqsy+
 5Q52giUwcPlZLFZ87k5HZGrj8VIQYnDeuepMrs8DgXvVqXZvkB7WDBvc5Wh1QbvscFmz
 zrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=EwRWG/gC2fE5xGCjSTzADsLHIR4c/x7Q7wLTB3Mw2aw=;
 b=V3rJmMlVDSl7qCtrXVZrt2X/G/9j4D4OyW3Eh9K0tzaN927C5C7QFJFA3fqRRbPQ9C
 4HsyAV0YZI3gGzqppfA+24EuMbPo8kdFJfPXb8aD+KqdEEWYfiV04b141s4unVJlZBDN
 exFqgv+rK8xuyS6mGVG2Ut2+Ypn8wZgY8GdbFvrwMW5gUs/sNA5rr3eH9C+X/LYYOYiz
 uC+BtBrFWmbtUXbsAAFYKdFUx2fM8S6SOyp9zcc0kI93GVhEUMtF/mZWZ7SjCGDNbyzh
 /WEDtEy+/PzHxJQsRNUuxbH1n4IBpecEVhPDepw5jCcRpSg7W+1AZO6a0uToT+1ebRLM
 59Rg==
X-Gm-Message-State: AOAM532t81uVBNE2NzsIyHPwx++v3PTvriEY9mLgNqHpeAX3ws5y3cvW
 zeUaWAw4CX0xxjsy2ikrQ9k=
X-Google-Smtp-Source: ABdhPJz6oVxnweXT2dqwWQnEyppFAKlUjrcaw18qilP/WoRKuTtyE+F+lB0uEg4OHT36Sj9Mhd6l0A==
X-Received: by 2002:a05:651c:983:: with SMTP id
 b3mr18480409ljq.287.1628585193977; 
 Tue, 10 Aug 2021 01:46:33 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id t17sm1978398lfe.303.2021.08.10.01.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 01:46:33 -0700 (PDT)
Date: Tue, 10 Aug 2021 11:46:31 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210810084631.63cmowvgjs5lj4au@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210810081955.b5vdsfc2tdaabbgo@pali>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDNPE-001d2S-Hg
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 08/10] fs/ntfs3: Add Kconfig,
 Makefile and doc
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 oleksandr@natalenko.name, rdunlap@infradead.org, aaptel@suse.com,
 willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org, joe@perches.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com, hch@lst.de,
 mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Aug 10, 2021 at 10:19:55AM +0200, Pali Roh=E1r wrote:
> On Tuesday 10 August 2021 10:47:40 Kari Argillander wrote:
> > On Thu, Jul 29, 2021 at 04:49:41PM +0300, Konstantin Komarov wrote:
> > > This adds Kconfig, Makefile and doc
> > > =

> > > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-softwa=
re.com>
> > > ---
> > >  Documentation/filesystems/ntfs3.rst | 107 ++++++++++++++++++++++++++=
++
> > =

> > Still missing Documentation/filesystems/index.rst as I stated before
> > https://lore.kernel.org/linux-fsdevel/20210103220739.2gkh6gy3iatv4fog@k=
ari-VirtualBox/
> > =

> > >  fs/ntfs3/Kconfig                    |  46 ++++++++++++
> > >  fs/ntfs3/Makefile                   |  36 ++++++++++
> > >  3 files changed, 189 insertions(+)
> > >  create mode 100644 Documentation/filesystems/ntfs3.rst
> > >  create mode 100644 fs/ntfs3/Kconfig
> > >  create mode 100644 fs/ntfs3/Makefile
> > > =

> > > diff --git a/Documentation/filesystems/ntfs3.rst b/Documentation/file=
systems/ntfs3.rst
> > =

> > =

> > > +Mount Options
> > > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > +
> > > +The list below describes mount options supported by NTFS3 driver in =
addition to
> > > +generic ones.
> > > +
> > > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> > > +
> > > +nls=3Dname		This option informs the driver how to interpret path
> > > +			strings and translate them to Unicode and back. If
> > > +			this option is not set, the default codepage will be
> > > +			used (CONFIG_NLS_DEFAULT).
> > > +			Examples:
> > > +				'nls=3Dutf8'
> > =

> > It seems that kernel community will start use iocharset=3D as default. =
nls
> > option can still be alias but will need deprecated message. See message
> > https://lore.kernel.org/linux-fsdevel/20200102211855.gg62r7jshp742d6i@p=
ali/
> > =

> > and current work from Pali
> > https://lore.kernel.org/linux-fsdevel/20210808162453.1653-1-pali@kernel=
.org/
> > =

> > This is still RFC state so probably no horry, but good to know stuff. I
> > also added Pali so he also knows.
> =

> I was already in loop :-)

Yeah just added To: so that you really know someone mention you.

> Anyway, yes, above RFC patch migrates all drivers to use iocharset=3D
> mount option as it is the option which is already used by most fs
> drivers. So argument is consistency.
> =

> But having the preferred mount option name in new fs drivers would
> decrease work needed to done in that patch series.

Yeah it would be prefered that before this gets Linus tree then this
will use iocharset. Because this driver will probably replace NTFS
driver some day I think it is still good idea to make nls=3D alias. And
also because Paragon's own customers will might use it and there is
already many many users who uses ntfs3 because it is included some "must
have kernel patch lists".



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
