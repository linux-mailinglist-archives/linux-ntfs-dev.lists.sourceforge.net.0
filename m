Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAD03DA2EA
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 29 Jul 2021 14:16:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m94xL-0000m2-Sq; Thu, 29 Jul 2021 12:16:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <desmondcheongzx@gmail.com>) id 1m94eK-000252-Ad
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Jul 2021 11:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=reWzh3OdEOGw7F78jU2h0BOb61+Bau+uTHia8Q/89V8=; b=P2FtD9+UQzD139doHamQE1x8JP
 B4hAGhdjphfIH1c9dkMNiVdWpWGMOc6440hqIhO+N2hNRYfSIRmdVryg6BBSRMzvF41m9JSLB7cX/
 7UyVOKxNRK9kSsgBAhLjNTaWOJWOm84wtIn5Q28woZU+06sOigTfqr8c4rXLlUeGyOj8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=reWzh3OdEOGw7F78jU2h0BOb61+Bau+uTHia8Q/89V8=; b=WAkH+ypm/OFgFEcQgGNhTZmII3
 536dlj+fOalqkKxOTeTamKnTLx1GqIfcp8HwIrZ2FYZa2KwjGdISbX/ka3b5UYdHj3gFpYuggl4Ak
 +aeIzWkl8MhL7Cw2FX4mDTHyiqhB5arBCF5ssYDwWsiDZliMz8khHQHNq/XDS0yGJz44=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m94eB-00064U-A7
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Jul 2021 11:56:28 +0000
Received: by mail-pl1-f176.google.com with SMTP id c16so6676873plh.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 29 Jul 2021 04:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=reWzh3OdEOGw7F78jU2h0BOb61+Bau+uTHia8Q/89V8=;
 b=IaL3rGM1C0+p5EI4dwAtMi7JS2l80ZljyAWOK2arkXrKp3nTXS49OP6MfH3eVQW9kD
 pu5JqNu4HNx5plFv3VYgwzFZLfBBMWq84kURUBKQ5jEe0sqIPEWln+eSnF9MrVUw0exg
 3CkRUhPvAydBUlUmx18mWAeMCrRGtbIA93B7Qd1h1EUXaPcnWE9VBfY3dY2oT8KjGlBP
 lKokRCRDeOKHFfCX/dA89sIO8QqdO7o8mZ07wal1pZEe3b5UXOKOWf3Uv0zSiih+6G0j
 tbE7I0jtp4aVsYUDMWtgRp0CL77BCGx8nKOKl7TQmw2YcUnmFlK6mES5XWRH3Voo3IZb
 oFFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=reWzh3OdEOGw7F78jU2h0BOb61+Bau+uTHia8Q/89V8=;
 b=Kdh/Rg+vqpr9JUQz67/t4oBjF2NDzujXUmvoV5q3Tjrf/0lnQOYDM/cz70IJVCTUJA
 B6Pos3MIelM+JcFiPcA5onS2XxCQtjPh/zkY8g+CMMOTRLFLW4odni6bYkpaddnz2acl
 JtxSEv4wlkOqgBAvP0cuNYGpnW/w544XjwGdEYajb8XwW1OrGn4UuIWkDPIsVbEOlYiZ
 8z7ZIJvJ0SGrmBBxS/vg+SUBJu+opbRcde+I7WOK7qIelzmbO6fR0EQwQ/t0oMXsY6kJ
 wiV4Ls48arUPkyP3ZTcfss+A7NTTgWpI9+jZjpTPKlo408B1hywauqKWVV2bMyodAJbR
 Juog==
X-Gm-Message-State: AOAM532+fp0O0A3WBLGFsaMzERjKAyDJWyQv6u6ZwnsP8cYMwqKY2Zxv
 d0MNGt9uHuhvXM0WkFNqMSk=
X-Google-Smtp-Source: ABdhPJzj0RzK7IZOH+o/pO07TTLehY7nwqiCMVKOOGmOCGDv3SpV5AZLs1+BD7rJnIH0eNdeWFVTmw==
X-Received: by 2002:a17:902:b218:b029:11a:bf7b:1a80 with SMTP id
 t24-20020a170902b218b029011abf7b1a80mr4437298plr.82.1627559773713; 
 Thu, 29 Jul 2021 04:56:13 -0700 (PDT)
Received: from [192.168.1.237] ([118.200.190.93])
 by smtp.gmail.com with ESMTPSA id e23sm9671103pjt.8.2021.07.29.04.56.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Jul 2021 04:56:12 -0700 (PDT)
To: Rolf Eike Beer <eb@emlix.com>
References: <2424055.QlFIqzKPrH@devpool47>
From: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <e24a9b8c-12c9-eb05-7133-148d16da034b@gmail.com>
Date: Thu, 29 Jul 2021 19:56:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <2424055.QlFIqzKPrH@devpool47>
Content-Language: en-US
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (desmondcheongzx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.176 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxkernelcves.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m94eB-00064U-A7
X-Mailman-Approved-At: Thu, 29 Jul 2021 12:16:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: Fix validity check for file name
 attribute
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
Cc: linux-ntfs-dev@lists.sourceforge.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, rkovhaev@gmail.com,
 syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 29/7/21 4:31 pm, Rolf Eike Beer wrote:
> Hi,
> 
> I was just scanning through some older vulnerabilities and came across
> CVE-2018-12929, CVE-2018-12930, and CVE-2018-12931, which are all still open
> according to linuxkernelcves.com (originally reported against 4.15 [1]). I
> looked into the commits in fs/ntfs/ from 4.15 onwards to see if they were just
> missed, but I can't spot anything there. RedHat claims to have them fixed in
> one of their kernels [2].
> 
> Which makes me wonder if the issue fixed here is a duplicate of the any of the
> above. Is there a reason I can't find any patches for the original issue in
> tree, like the issue only introduced in a custom patchset that Ubuntu/RedHat
> were using? Is this thing worth it's own CVE if it's no duplicate?
> 
> Greetings,
> 
> Eike
> 
> 1) https://marc.info/?t=152407734400002&r=1&w=2
> 2) https://access.redhat.com/errata/RHSA-2019:0641
> 

Hi Eike,

Thanks for digging into this. From a first glance, this bug seems most 
similar to CVE-2018-12929.

However, from the logs, the root causes are probably different. The 
cause of this bug is specifically in the call to 
ntfs_is_extended_system_file [1], but from what I can see this is not 
the case for CVE-2018-12929. I don't know enough to comment whether it 
needs a CVE, but it has been patched on Linux stable (up to 4.4).

It's worth noting that there's another similar bug that was fixed by 
Rustam Kovhaev (+cc) in ntfs_read_locked_inode [2]. This may or may not 
have been the issue in CVE-2018-12929.

Link: 
https://syzkaller.appspot.com/bug?id=a1a1e379b225812688566745c3e2f7242bffc246 
[1]

Link: 
https://syzkaller.appspot.com/bug?id=933dab9c03ac47a3d09dd4b0563a0a8fcb35f282 
[2]

Best wishes,
Desmond


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
