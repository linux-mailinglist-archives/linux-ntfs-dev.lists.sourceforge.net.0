Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D033DF1B2
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  3 Aug 2021 17:41:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mAwXs-0002S2-GL; Tue, 03 Aug 2021 15:41:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1mAwJP-0004TH-0Y
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Aug 2021 15:26:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CmOw+Pm/mK8de7PtTygDQNxjNMTGWeUADUOs/i9z3yo=; b=XQ7MMcHSlNuJoYOnZN36CElL1N
 pq2gQxit74llNsjWd0MSHp64urtGhkmOA52k9fiDf9QG/gOXN/MMyIWtZLWgNKYaNS16w5JmEqwQd
 OHahA8AUx0htNk8aNTFkcpp80TedQNS0Vn3uuvu0v3X5EP+zSTPcgnsdqCiww/YsHR4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CmOw+Pm/mK8de7PtTygDQNxjNMTGWeUADUOs/i9z3yo=; b=GI139mfxB2iZvBkBGd5+NI85UI
 Ijnlpcj5Pyy/Rp7XiaEtx4Wp3LarjbjZnwPZS6QHr5qtzVCk76A2amo9JvFW84KzcVWRKrSsppjSE
 MWKod5uP7WhX0iuJBOurOa0OUKsDT59F9rxdbdEr7t1Ff0x4vaC/tRlCf/8B56lRKPOU=;
Received: from mail-lj1-f181.google.com ([209.85.208.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mAwJK-00053w-Di
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Aug 2021 15:26:34 +0000
Received: by mail-lj1-f181.google.com with SMTP id n6so28596761ljp.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 03 Aug 2021 08:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CmOw+Pm/mK8de7PtTygDQNxjNMTGWeUADUOs/i9z3yo=;
 b=Nz5QHhuS6VsUmzHCAfGeFGjXP6SkzoVYLbb38gtZBotiggF4JkvHe9033bl2PAgQwI
 6EcYcEhi6E9jlrXEYa8Xz492YUCzZqtC9gRdGlF4JhEj+c3H7+KewvaVU97xZsxSQJHf
 swtHpQq1309Fqz7c0rBFTM3yvdVrcEyyH0lZ+RkzXgQYQQTIMDLenxY2S6SPP+Ve57tn
 zKtm4/3jvI6vrGRGMKtXPTvN5XptOH4rAEgz9ZszbbOSf7YPjunRgus3az+b8gbyn9gp
 BvNmw3y1a7Mac1l4mlVkqfjIhYEtBkxDIPiMK4xtkf1t4+BLonHJGj8tvYPZoDGQfVoq
 7CTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CmOw+Pm/mK8de7PtTygDQNxjNMTGWeUADUOs/i9z3yo=;
 b=SALR2UwEK9DGNatczWikrRXswN4uEVdUrqopBxU6IUNVTPtNsZELdOkFPO8IcIRmWS
 JeTf0Bmp2ncWfq1hB0VakIgaF0Vlz5QUO4XrA7XpW0wskdy0Cprf6WVIUVbMoeVNIJ9d
 LVQd8Qz4anciDhNU9hugCruHmGQf1CrgGhlP9TuR20sYke512hetc/7knkhpkAVy8s5k
 4o9wKoTyDwD/rTYsg7d+IaPhzULzeGkO9awG9teiYzoBH0p/kNt7PF1qZWc2mHaaMIj5
 oJC1IaTNihei0b6ZuZFyYvyD0FOAkjsL4PbpT0CvdokG+ltcmVMjT9wn5UAqgYQ6QdIr
 bB8g==
X-Gm-Message-State: AOAM533QO+VND34UeX/dZCfTSL5ZmjJs1JsSJ0CkVc0nZFZpAxn4KK2A
 lPKSleUVEfDFtWTOHdY+SqY=
X-Google-Smtp-Source: ABdhPJziKtAoeu6dr48FWx+DCgCfalfKAiDyCq2XTpF8hkV+E3yReb62TWggUf95J/UkHGR6mP+9kA==
X-Received: by 2002:a05:651c:1072:: with SMTP id
 y18mr15617802ljm.306.1628004382224; 
 Tue, 03 Aug 2021 08:26:22 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id t17sm1095313ljk.102.2021.08.03.08.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 08:26:21 -0700 (PDT)
Date: Tue, 3 Aug 2021 18:26:19 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20210803152619.hva737erzqnksfxu@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210803115709.zd3gjmxw7oe6b4zk@kari-VirtualBox>
 <20210803133833.GL25548@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210803133833.GL25548@kadam>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.181 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mAwJK-00053w-Di
X-Mailman-Approved-At: Tue, 03 Aug 2021 15:41:30 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] Restyle comments to better align with
 kernel-doc
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
Cc: ebiggers@kernel.org, nborisov@suse.com, oleksandr@natalenko.name,
 rdunlap@infradead.org, dsterba@suse.cz, willy@infradead.org,
 linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com, andy.lavr@gmail.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Aug 03, 2021 at 04:38:33PM +0300, Dan Carpenter wrote:
> Missing subsystem prefix in the subject.

Yeah. I was not sure what to do here because it is patch to patch. I
will do this in the future.

> On Tue, Aug 03, 2021 at 02:57:09PM +0300, Kari Argillander wrote:
> > Capitalize comments and end with period for better reading.
> > 
> > Also function comments are now little more kernel-doc style. This way we
> > can easily convert them to kernel-doc style if we want. Note that these
> > are not yet complete with this style. Example function comments start
> > with /* and in kernel-doc style they start /**.
> > 
> > Use imperative mood in function descriptions.
> > 
> > Change words like ntfs -> NTFS, linux -> Linux.
> > 
> > Use "we" not "I" when commenting code.
> 
> These are all nonsense style guidelines that you invented yourself.  We
> already have too much pointless bureaucracy.  If you can't understand
> the documentation or if there are typos then, sure, fix that.  But let's
> not invent new rules.

You are correct that I "invent" these. My whole point was just make
ntfs3 constant about these rules. I also notice that I didn't make that
clear at patch message and that was huge mistake from my part.

Now in ntfs3 there is mixing commenting styles and I was just trying to make
these nice before merging. I have no preference but it is nice if example one
driver keep things constant.

I would not even try to make these kind of changes if ntfs3 patch series
was already merged to kernel. But probably I will try to bring kernel doc
style funtion comments in future when ntfs3 gets merged.

> (Also it annoys me when people pretend to be stupid "I can't understand
> what a NULL deference is.  Ohhh...  You mean a NULL *pointer*
> dereference!  You left out the word *pointer* so I didn't understand!")



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
