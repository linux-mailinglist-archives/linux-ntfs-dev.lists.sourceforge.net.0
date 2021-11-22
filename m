Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5EE45960A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Nov 2021 21:24:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mpFrK-0003yM-Mz; Mon, 22 Nov 2021 20:24:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mpFrK-0003yG-8o
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Nov 2021 20:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h3WZ0Qj4q+RYV0nm2GyZtHQb4u72VKp4+ZBrVzMs47Q=; b=AZWgC1qQm8Us3GnzXDCw9J4QBr
 BbGqL0SzhzNE6OFnu/KJyT5aZ8/dYQuB4LjLpqRG5XFupc1cUxWLD7WsNLnDpEArPFwJjhnltE8nw
 8F7U71CJKaqC3wqAG440fV3WFi2BpoBRHhSlQcVtFTzsPK9/8lWAdO/9Jpmq4Jlog8Ck=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h3WZ0Qj4q+RYV0nm2GyZtHQb4u72VKp4+ZBrVzMs47Q=; b=fpq8OVgYtI2lUSEoSF+dqv2jC1
 bo5NFeWSxaV7GHYUvZ0dF9fY3In8fjuJSjeHJ47k7LA707Z5rndvXGhHVas3dzsCBtTgL7p3Rp+co
 YqyV/kfmR5W3mHo6vzHqYNfmsUbUsYJcqFyqXA30yn8qX5Q9DXXUh8VzIBns2VLikJW8=;
Received: from mail-ed1-f44.google.com ([209.85.208.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpFrC-005ABX-R1
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Nov 2021 20:24:13 +0000
Received: by mail-ed1-f44.google.com with SMTP id y12so82211214eda.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Nov 2021 12:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h3WZ0Qj4q+RYV0nm2GyZtHQb4u72VKp4+ZBrVzMs47Q=;
 b=bNtnNf5V/e3L2dzeLYd8um1MXrTQnV63nZbog5PSPcyE6+uY/BANjAOWc8poUDfw/R
 ofBZRMCQZUEPew6xeUDbpnofq9JUfeWxK3ZFn3FE3rXFb7JCL8TGP20V8V0LGIIb3CVH
 LZJcwaCeLSK/yVZpOCTnpyILgs6mXTic+bev4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h3WZ0Qj4q+RYV0nm2GyZtHQb4u72VKp4+ZBrVzMs47Q=;
 b=UAU9mWuApUqfKGbW/a8IbJ6lIBnE9azW5NSt/7TN9X3NAz+JTOZlHwkeSTvEHN8YMj
 OskTvoK7zG3hL+cNfQW7+VKuSPDzMkSBmQOt3Pb9+cfVEfLOzBipHcBfJN8EYc5e3c2M
 IU2gQSyIvYwwuBt0XTezNvPZL0t9hY8zeSZ8ySvlEL9+BBTlEyhdxltMqeNUGtTINN1d
 p1JtDCQPzicNyJClWzmAZxk1KqkhLvxn4yN1hDVqmGxe5Ol+N4vLNKPQnp3Wgi7xaxoA
 M7O/1j1VjEgRdOjZQqA0WcZst/QLjzNJeJfpO/PDT1mH8V1vdxnevXnFmtW6drXWw4yD
 mY5g==
X-Gm-Message-State: AOAM530Fo2MXEzUTDiebGxfu7fkZ4p61hWJF+kW+cAGIxV/4bt/BNQ6A
 TY18QJG7k1YIh9hs3WA+zmrmytB7jIDsQvjM
X-Google-Smtp-Source: ABdhPJxo6T415P/E/N1zJWqC81Fp6xMkkLkKcTnnNhG4308344bUyHqQqWwWiMsjeQTuzr2FHhEPNA==
X-Received: by 2002:a17:906:6a0a:: with SMTP id
 qw10mr43620314ejc.547.1637612639003; 
 Mon, 22 Nov 2021 12:23:59 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id jg32sm4538260ejc.43.2021.11.22.12.23.58
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 12:23:58 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id u18so34954187wrg.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Nov 2021 12:23:58 -0800 (PST)
X-Received: by 2002:adf:d082:: with SMTP id y2mr41030841wrh.214.1637612638214; 
 Mon, 22 Nov 2021 12:23:58 -0800 (PST)
MIME-Version: 1.0
References: <20211122201352.1754061-1-linux@roeck-us.net>
In-Reply-To: <20211122201352.1754061-1-linux@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 22 Nov 2021 12:23:42 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjUajzA9rDmxGzH209bQ_VGz3RfOgb85BYkBDSEM1HpPg@mail.gmail.com>
Message-ID: <CAHk-=wjUajzA9rDmxGzH209bQ_VGz3RfOgb85BYkBDSEM1HpPg@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 22,
 2021 at 12:13 PM Guenter Roeck <linux@roeck-us.net>
 wrote: > > The Kconfig language does not support "depends on XXX if YYY",
 > so this is the next best choice. Ugh. This is hard to read, and it will
 get much worse if we then end up making the conditional more complicated
 if we actually want to introduce some page size logic.. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.44 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mpFrC-005ABX-R1
Subject: Re: [Linux-NTFS-Dev] [PATCH] fs: ntfs: Mark NTFS_RW as BROKEN for
 PPC
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Michael Ellerman <mpe@ellerman.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Nov 22, 2021 at 12:13 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> The Kconfig language does not support "depends on XXX if YYY",
> so this is the next best choice.

Ugh. This is hard to read, and it will get much worse if we then end
up making the conditional more complicated if we actually want to
introduce some page size logic..

>  config NTFS_RW
>         bool "NTFS write support"
> +       depends on BROKEN || !PPC
>         depends on NTFS_FS
>         help
>           This enables the partial, but safe, write support in the NTFS driver.

How about we do a

  config DISABLE_NTFS_RW
        bool
        default y if PPC

and then in NTFS_RW we just do

        depends on !DISABLE_NTFS_RW

which at least makes each case easy, and makes it much clearer if we
extend that DISABLE_NTFS_RW condition later.

                 Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
