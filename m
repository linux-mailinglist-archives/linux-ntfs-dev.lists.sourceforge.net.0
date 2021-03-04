Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DF932D4CC
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  4 Mar 2021 15:04:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lHoam-0007DV-FR; Thu, 04 Mar 2021 14:04:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <miguel.ojeda.sandonis@gmail.com>) id 1lHjO1-0003nT-Kx
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 04 Mar 2021 08:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TBUtXor9JHig51XwOk2hKqYVPwMBdbUM5CT6K0S4ndc=; b=c8debo9eZU0yFHOIQXwMhneCiX
 kX8Gg+nLeOiKMotiVkgQxg/9eWyjHUwCMRpXuzNYbdenPSXXpcqAw0p+LmcW0EXD6ZhhPfNVypuSf
 +TfK2ToYrCS2uZbbmTBKeuildkh8ADp410BsB6hKl6YsRZBYw33MRLL4CQx+fgoKCT6w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TBUtXor9JHig51XwOk2hKqYVPwMBdbUM5CT6K0S4ndc=; b=kofVUfJS/+USIel2qQ/wUU7IZy
 Gay+2N53sl6kBpK9dh8KhJrE9i81VT8mvyVFz7VoAZk22rhzGlvmWKJ/K7Vq0AtYdiZr4RyLxsgJG
 bXuKDyzvFZs+JXMW5JYJVxTj6xJquBTtcKerGj3Ztp26v9BE6pWRvnRiiBIq4pSW7+Kg=;
Received: from mail-yb1-f175.google.com ([209.85.219.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lHjNy-00DX0j-2j
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 04 Mar 2021 08:31:09 +0000
Received: by mail-yb1-f175.google.com with SMTP id p186so27627403ybg.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 04 Mar 2021 00:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TBUtXor9JHig51XwOk2hKqYVPwMBdbUM5CT6K0S4ndc=;
 b=Podv25yUm88aY+8mEUWBOnr7ph6i86M9YgHhCbaqEq1+ciSnQ4CGjjNmHjNc2RzeTr
 aaQS6ot9VEQZ/i6l7rnzI6+Mtu3I0p9XyLD6Q6yA0mZLQ+quxvFQ5ScOyVXW3FMHmZiC
 drSHvhQraY61uCEBdDRm/72oRpjmqT1+MhWT5i2Zxgf2P4okcqdk7Pj+JTGw6ALqqVYP
 L9395H+E6IRqthsuZM8dmObEB3z3PzHnFDMeae5IHm50h3QfloLbDqjCNeIqZ7c7nMcN
 2IS6BZuB0IPOAWXYLlVCUQL92jtKYdioEWJdYzG0xvcdRQ9nfysMd9+AS7lsmUfkPvu7
 u8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TBUtXor9JHig51XwOk2hKqYVPwMBdbUM5CT6K0S4ndc=;
 b=nAdgm3LGgh9WU8flZcIMMLiAtD/cD6gPKr196dOP8P6n90subdutO17GK+12p30bFv
 caRbAniTR8mm4+tjs3mh9zeP2x2TXx4wCzPWOmPqeyn/IXG8P5Si7yKdax0i4cEKoR87
 2+4quqBFAGubwq59PXICVDtAFnq8Ca0PITRkHrncGIYOfPsoST/siCvaCm9nSMhxp1Ky
 V80x2DZtsibV+MlJejbgphXjHGDtM9e9f56YX5cBbF5djLUIQsitAtok0+Sy4qtE8H/Q
 SrTTdyEgmaF/hGh/jvfHggMsRJjhr7qCoFP5TCiDzwilXzRCx5FXkEjpwtrv33wIWkAA
 jE8w==
X-Gm-Message-State: AOAM532UGZ67LxMgvrnLH4IMn3N/1oescFhjeyask1Z4WPjoQGRQ1zTm
 CmDcIc9WHXWI2AZ1YPZl8WJ+HSc6RiOUtPeu4r0=
X-Google-Smtp-Source: ABdhPJwueHAY695LaUUFe5cSJfYyxtyB+83dn4Q/EVZ6w477nyX3CpA7IBDWq8xAbPTmbwv9XmtGCbOEOKV5EiUYbiI=
X-Received: by 2002:a25:d4d0:: with SMTP id m199mr5066850ybf.26.1614846660505; 
 Thu, 04 Mar 2021 00:31:00 -0800 (PST)
MIME-Version: 1.0
References: <20210301160102.2884774-1-almaz.alexandrovich@paragon-software.com>
In-Reply-To: <20210301160102.2884774-1-almaz.alexandrovich@paragon-software.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Mar 2021 09:30:49 +0100
Message-ID: <CANiq72nRpxe5M5rsBdWe_2tEpGju7Oe0bBhOdwMBa6MHkHi_Qg@mail.gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (miguel.ojeda.sandonis[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.175 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lHjNy-00DX0j-2j
X-Mailman-Approved-At: Thu, 04 Mar 2021 14:04:37 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v22 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: andy.lavr@gmail.com, nborisov@suse.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, aaptel@suse.com,
 Matthew Wilcox <willy@infradead.org>, dsterba@suse.cz, ebiggers@kernel.org,
 Joe Perches <joe@perches.com>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, Dan <dan.carpenter@oracle.com>,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Mar 4, 2021 at 1:09 AM Konstantin Komarov
<almaz.alexandrovich@paragon-software.com> wrote:
>
> - use clang-format 11.0 instead of 10.0 to format code

Out of curiosity: was this due to some specific reason? i.e. have you
found it provides better output? (it is useful to know this to justify
later an increase of the minimum version etc.)

Thanks!

Cheers,
Miguel


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
