Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CD64551A8
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Nov 2021 01:29:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnVIa-0001hU-Jv; Thu, 18 Nov 2021 00:29:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mnVIZ-0001hM-9Y
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 00:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OIMXt5BlJzONIEqbNsrjJJzddvQcjeheSuCiqaUmhPo=; b=S54SsjLjw22ww7bwQTz3U3lRvk
 euQg/snE5LpfqHXVv3GWEfrAkelcQtw6NK7yob6bZ0bwiQ/3TLkB/oV95BklxdkJfiSSmdPMGr+CK
 15PIEx1yvD9xWgYhx5dPtkG8pXXncS6TumJOGa5ssqRLXFX4HBV+h32YG/sNZS0W0Qyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OIMXt5BlJzONIEqbNsrjJJzddvQcjeheSuCiqaUmhPo=; b=AskPINEZ0tOqEuc7vqMm2R6RRA
 JjzsG4YlRNbOjHuG24LRSDIerjRPgyI46J1ikbt3/QwLMHXD/Ps22t/VUtViobXD67hsDKRvz6zgH
 +1Ou+qgYI17NbYoEbD5kMlaN/CMEj7ygQJd7bXd5+T/uffzI95KdabpMIduOgq/XMEFw=;
Received: from mail-ed1-f45.google.com ([209.85.208.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnVIZ-00GrE7-1F
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 00:29:08 +0000
Received: by mail-ed1-f45.google.com with SMTP id b15so18866991edd.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Nov 2021 16:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OIMXt5BlJzONIEqbNsrjJJzddvQcjeheSuCiqaUmhPo=;
 b=iBMsyFuRgW63GMLP0eKHN0OkRIej+ZvKezsjrMMM8yfI9oAIgB75wDQTbB4GsEe/a6
 PPC0hX0b4WFpuAD3VHnkhf85FQa1rRocgyaGnFvSiHrZrt99nuEx0PJAqQ9oNb2Tz7Xu
 U8I2ihimE7fOqaQDT1Fb/RwA4D/22B8p6WwdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OIMXt5BlJzONIEqbNsrjJJzddvQcjeheSuCiqaUmhPo=;
 b=ffQSw4hF+KNCGIeC5z8+E5uyRyfvsZtxWfnPsR07NoWiX1IqQgqUxDRlJUwqkUCoBi
 tsCoUM2pvhPCWEiha7+97cIWwBae36TE8Z/yhgAHIKEk4B66SaMTvJFHb2PBfm+Hsn8T
 IEeXcXtxhZZsoPtSyO/Qk735rO9mc+4EZl2QuqVL1zR1MaxN8oQMYv6G0J9WPlW/nbfF
 Ytusv4X+2elPuNXfRVSRqk0ogd5SzmVkBdTjDfKK3EAx25xC4D3MQTO7ZUnf3MDTBL8g
 A+kXfXzGET5zJ62kJgYdCiQA75OMoYCE8rDunoBzr5NU7CxIrOIZg9YljqDqv1cfTg3I
 ns+Q==
X-Gm-Message-State: AOAM530krLkzK+an+6EL4b709stdQ+Ll9dHqhiOFkLH0d+8cBqqbMDuT
 3daQNiPeOMZBPzyK2eJiQUG8JkBP915KAuYN
X-Google-Smtp-Source: ABdhPJwKIQjgtKHkIS0g/eFsaSux2D93w5unJZXyezx07+bJQMrS6rTnXj8dyoCEt6pf+0mUYrB8cA==
X-Received: by 2002:a50:955c:: with SMTP id v28mr4383241eda.293.1637195340443; 
 Wed, 17 Nov 2021 16:29:00 -0800 (PST)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id u10sm727003edo.16.2021.11.17.16.28.58
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 16:28:59 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id u18so7979636wrg.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Nov 2021 16:28:58 -0800 (PST)
X-Received: by 2002:adf:cf05:: with SMTP id o5mr26507137wrj.325.1637195338618; 
 Wed, 17 Nov 2021 16:28:58 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wjF=JzLkCi2wV+G=f8OWa5rNjPsZd2RMFG5MHwKZPgYvw@mail.gmail.com>
 <20211115045616.GA1012538@roeck-us.net>
 <CAHk-=whca4JrEExUZCf+iGhP+mV-_D2uyqiFHnaYqnfCOKyEVg@mail.gmail.com>
 <652edea7-28a0-70d9-c63f-d910b5942454@roeck-us.net>
 <87a6i4miwu.fsf@mpe.ellerman.id.au>
 <CAMuHMdVrpQJKKzpxrKKCCD_2+DzAvgFW+jsjPdR9JhBYeRgvNw@mail.gmail.com>
 <8D79B547-D606-4975-A79A-AEA65684F3A0@tuxera.com>
In-Reply-To: <8D79B547-D606-4975-A79A-AEA65684F3A0@tuxera.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 17 Nov 2021 16:28:42 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgvzH=BaFg+kiWk1DXGLNELSmPS2VWcgSSmW5Y6vz-v_A@mail.gmail.com>
Message-ID: <CAHk-=wgvzH=BaFg+kiWk1DXGLNELSmPS2VWcgSSmW5Y6vz-v_A@mail.gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 17,
 2021 at 3:29 PM Anton Altaparmakov <anton@tuxera.com>
 wrote: > > What we need here is an array to store pointers to in-memory inodes
 that correspond to inodes in the inode table page b [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.45 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mnVIZ-00GrE7-1F
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
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Nov 17, 2021 at 3:29 PM Anton Altaparmakov <anton@tuxera.com> wrote:
>
> What we need here is an array to store pointers to in-memory inodes that correspond to inodes in the inode table page being written out.

Do we actually need the array?

The ntfs_inode pointers in that array are always locked (using
'mrec_lock'), so ti could be just a linked list of entries.

Yeah, that would require adding a 'next' pointer to 'struct
_ntfs_inode', but maybe that would be the right thing to do?

I don't know the code, but it looks to me like it's literally just a
stack of locked ntfs_inode pointers - where the lock is taken before
adding it to the stack, and released after taking it off the stack. So
a singly-linked list would seem to be a very simple implementation.

                      Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
