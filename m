Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C604565C5
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Nov 2021 23:35:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnq02-0001N5-QN; Thu, 18 Nov 2021 22:35:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mnq00-0001Mv-6Q
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 22:35:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EZBU6+cbURpZDV9BAPXUh+IOmWj30m+ZuEEK4smtjlw=; b=D9JnAbjBmFGmDxZBvbeJhRyU2+
 JBLgiEPThNKSEIdpS8dh2M2Uz9QXMe7ZAS6qt0Ai77EX02lr8X9sA9oeuwmDsaZTac7VXnFoily2b
 XboGIJg9pMhjfCMHaKMYmLTxvnLiQ1TlUxXsKdG3HeezwTOHyH9yTbWY5EzHvVTrBbck=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EZBU6+cbURpZDV9BAPXUh+IOmWj30m+ZuEEK4smtjlw=; b=B9PzRjZ0RMOPfdYrcsm4thcOFF
 8RAmk6JKp+WgEN1XnPQriwCCZUpgvseO+dOGXl/UTr7TOwiTwy+WdhXupXjqe6OuEIN0QYHxn1jHD
 rUWsBu3LPMM1jLMh8FmmfoJDN8fbhSA6287B0y6FWYnZIXhclqdlNxLThU1ziixHFZto=;
Received: from mail-ed1-f50.google.com ([209.85.208.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnpzw-0001OG-4H
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 22:35:20 +0000
Received: by mail-ed1-f50.google.com with SMTP id g14so33869674edb.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 18 Nov 2021 14:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EZBU6+cbURpZDV9BAPXUh+IOmWj30m+ZuEEK4smtjlw=;
 b=EJu8ngEmdZeVBUAPLpkM0MmprwTN67VTGBHRJoYEZv/TljtaEEK7d6gZ3U4UAGbdXT
 wsLnsEdC7YnfOCBGndtpqHgqjTqu5rMCd55/nAqVy8+6vCSDbIYMQny1ZYbUUrgJJcQT
 qfOpJxzerM8Gmyr4J0mO3AM+9wZQBgxMNcRzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EZBU6+cbURpZDV9BAPXUh+IOmWj30m+ZuEEK4smtjlw=;
 b=js8spfvO0hh6leGUfG1RawbJcW6mOS3R5pmOIEQgUktceLyF+JzflJzTdagOeMvQcR
 7RvVR0V47gJfWOAzGSvxy+6R8VNTHGK2I1c/d7uSJi3Ek0y6W4LPVCSj2Kp2i6CFQ9SK
 FIGACNLMgmXSNvVpfSHb+2jzU7lv12IUH2LWV5rjGiFA9fJftSzbXGq4zKMM4ZNuCozp
 1OyEBGC4iu4+9gzLhy4TtNTHQBBOmAZLC7xIqb7qQpGeqA2SG5LeJXFX/ouWV5nWGqNX
 8PZ/n/nE30qdZbEuFO6BNwgmrFx/77WCAYxf7qs5E3geWbI6PpH/mD/BcXf1izO6RpEu
 rcKw==
X-Gm-Message-State: AOAM531X0o5Dvl2WhAyPMaQtqpntw5UASKJTLLGAbySa0HNaLXm0kzEM
 KA6TGrhak7hkBN73uc4gh4hqYQI754wckw1Z
X-Google-Smtp-Source: ABdhPJye9SA/rWFjK2qMaao/tGLHrBcosdK5+lRQXKP2Yn7yHe0uu0zMYkvZsBbBugyzh7U/i9s6Ag==
X-Received: by 2002:a05:6402:10cd:: with SMTP id
 p13mr16592927edu.111.1637274909539; 
 Thu, 18 Nov 2021 14:35:09 -0800 (PST)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id og14sm414912ejc.107.2021.11.18.14.35.08
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Nov 2021 14:35:08 -0800 (PST)
Received: by mail-wr1-f48.google.com with SMTP id n29so14425621wra.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 18 Nov 2021 14:35:08 -0800 (PST)
X-Received: by 2002:adf:d082:: with SMTP id y2mr1247846wrh.214.1637274907927; 
 Thu, 18 Nov 2021 14:35:07 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wjF=JzLkCi2wV+G=f8OWa5rNjPsZd2RMFG5MHwKZPgYvw@mail.gmail.com>
 <20211115045616.GA1012538@roeck-us.net>
 <CAHk-=whca4JrEExUZCf+iGhP+mV-_D2uyqiFHnaYqnfCOKyEVg@mail.gmail.com>
 <652edea7-28a0-70d9-c63f-d910b5942454@roeck-us.net>
 <87a6i4miwu.fsf@mpe.ellerman.id.au>
 <CAMuHMdVrpQJKKzpxrKKCCD_2+DzAvgFW+jsjPdR9JhBYeRgvNw@mail.gmail.com>
 <8D79B547-D606-4975-A79A-AEA65684F3A0@tuxera.com>
 <CAHk-=wgvzH=BaFg+kiWk1DXGLNELSmPS2VWcgSSmW5Y6vz-v_A@mail.gmail.com>
 <E1EED1BE-A0F0-4EFA-86A6-CF721E194CDC@tuxera.com>
 <CAHk-=wjoQYuOfhsiPXUvFbUbSd5iHmmoRHMP+zv+bzHKkWqAyA@mail.gmail.com>
 <20211118212349.GA3424901@roeck-us.net>
In-Reply-To: <20211118212349.GA3424901@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 18 Nov 2021 14:34:51 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiNX2vr4JA=d5xr_2iwp+vSD62rze3gsxh5NwbiRuKbQQ@mail.gmail.com>
Message-ID: <CAHk-=wiNX2vr4JA=d5xr_2iwp+vSD62rze3gsxh5NwbiRuKbQQ@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 18,
 2021 at 1:23 PM Guenter Roeck <linux@roeck-us.net>
 wrote: > > Like this ? Ugh. Yes. Like that. But now I have to go dig my eyes
 out with a rusty spoon and try to forget I ever saw that thing. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.50 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mnpzw-0001OG-4H
Subject: Re: [Linux-NTFS-Dev] Linux 5.16-rc1
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
 <linux-ntfs-dev@lists.sourceforge.net>, Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Nov 18, 2021 at 1:23 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> Like this ?

Ugh. Yes. Like that.

But now I have to go dig my eyes out with a rusty spoon and try to
forget I ever saw that thing.

Because a thing of beauty it ain't.

I would still hope somebody comes up with something prettier.

          Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
