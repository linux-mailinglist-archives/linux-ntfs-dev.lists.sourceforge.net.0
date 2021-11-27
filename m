Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADD446023C
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Nov 2021 23:56:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mr6c5-0000Yn-Ij; Sat, 27 Nov 2021 22:56:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mr697-0007VI-Jj
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 22:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wcmyLXZ73rYprw4e/YcAlXmXR6M5Ol7ECGWDzfw80Jg=; b=nOWfRKovI2VEgWHIMiXu8SFIZd
 ZpVV1WIXbNm+3c1dfMpcECfun6jL2Up7Fm8ZhJhDrqy9OIpek6Nlv2JofgLJ++w4iPvRYmoxdQbU3
 UPlkYF0q1LnzKyxL7lQQsVOaCj45x8++vtnO6ZVa4RREhXzLphbrDa+yv64qsVjF10lA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wcmyLXZ73rYprw4e/YcAlXmXR6M5Ol7ECGWDzfw80Jg=; b=WxzRBX4MTs7ifs1SurlA37Xwk3
 7h+jTRyTe/JiE98vLlaRXWSOOy0QkiNudNH40RurGiOaMS2igecutSPtTiEKfaiKu6by2uemyvyub
 Gji8oRpFyLmAAZOsJRdH3mMW58ALiAjJ2sA/oUD87HIpOMYwGmTuKGzEJ+jytF74tp8o=;
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mr695-00029b-Il
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 22:26:13 +0000
Received: by mail-oi1-f173.google.com with SMTP id 7so26197664oip.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 14:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wcmyLXZ73rYprw4e/YcAlXmXR6M5Ol7ECGWDzfw80Jg=;
 b=LlUbAwoDvmBWw8eVw8F+acjZgI5NDtTIQHXxJka2bh3nDX1PPcuUP8HP+nmG6u7MCv
 7/ruw/a7/ZXit649bVDo1YKuF/Ftzm01J34FQgYwhejGBQwAqy5/XRorGxJ9YY1IkcDg
 FBWh8V8++MkjCv5HVNdjm2ro7ZX8FcrrzpM3XQWiV5iI1eCABoP/RkYWvUB1SRqoI36J
 Kt9VLD2CJjcIOvJk2RofdhDTjEiottNvwMqCmm0XF3Dc3HkCM8EoP604lExYwIW7dQwV
 QuNUli+1fitv2ByeuOAc4jGaFNPVs88AL6YsizBGUE9/lWgt3bCvL8lab4qjsVjSTmR7
 YI+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wcmyLXZ73rYprw4e/YcAlXmXR6M5Ol7ECGWDzfw80Jg=;
 b=7DYmf4e3TXBOzuKzY6YsPuZhur+4QqJoaLp/LQURy8lc7a6rpE/cOuUMwlMGvuGF/l
 rw0WFkDn2UGGFwwI48st98iQCt5tWA1oYtrNZ3fg6br7NGOQ5pvVT6Mb8FEgQrq8TrXs
 py2rz8SGN/iZJc5RP8o4xuOmYSBF0kW2Tj1y6K/jBT8dJSsoxO/2p4rWvCXgUVXi3wPO
 AH/5ZktnM9sO19PgMBiTnSusT/GZ+eXBqMpyl8q4O+7X8ISJkH0Dds2UdpVd4A6tZu4F
 W9AoMeha8Ahcq27neos39vOvly58BDW0kWc6WK0fG86vxJik5UWo4fXykGsFWuaj82nd
 8Tkw==
X-Gm-Message-State: AOAM53348K1b0rkRxY91LuDLqOXWzBJ2FY/oWyXeKkceSJ+4JlgUA3c7
 zDt7U55ufnF6MzprVVSfePY=
X-Google-Smtp-Source: ABdhPJwmJ7X6zjXM1EsyPQebAD0TEWSFKNUCiNA3mQNoyYYlfadypbsdNDHtHAUef6FovV9RG6OwIA==
X-Received: by 2002:a54:4692:: with SMTP id k18mr31814566oic.93.1638051966001; 
 Sat, 27 Nov 2021 14:26:06 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 t5sm1670500ool.10.2021.11.27.14.26.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 27 Nov 2021 14:26:05 -0800 (PST)
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <20211127154442.3676290-1-linux@roeck-us.net>
 <CAHk-=wh9g5Mu9V=dsQLkfmCZ-O7zjvhE6F=-42BbQuis2qWEpg@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <228a72fd-82db-6bfe-0df6-37f57cecb31a@roeck-us.net>
Date: Sat, 27 Nov 2021 14:26:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wh9g5Mu9V=dsQLkfmCZ-O7zjvhE6F=-42BbQuis2qWEpg@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/27/21 9:49 AM, Linus Torvalds wrote: > On Sat, Nov 27, 
 2021 at 7:44 AM Guenter Roeck <linux@roeck-us.net> wrote: >> >> This is the
 third attempt to fix the following build error. > > Thanks, loo [...] 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.173 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mr695-00029b-Il
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 11/27/21 9:49 AM, Linus Torvalds wrote:
> On Sat, Nov 27, 2021 at 7:44 AM Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> This is the third attempt to fix the following build error.
> 
> Thanks, looks good to me.
> 
> Should I apply the patches directly, or were you planning on sending a
> pull request when everybody was happy with it?
> 

Either way is fine with me. Either apply it now and have it fixed in -rc3,
or we can wait for a few days and I'll send you a pull request if there
are no objections by, say, Wednesday.

Guenter


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
