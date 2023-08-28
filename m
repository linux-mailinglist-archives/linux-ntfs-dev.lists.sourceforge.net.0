Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2582778B717
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 28 Aug 2023 20:16:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qagmS-0001k7-GR;
	Mon, 28 Aug 2023 18:16:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qafU4-0002Lj-TO
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 28 Aug 2023 16:53:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5LZIVj4rUAeGJ7xui07ULb5M7AQu4gvcO6R5a7/WUD8=; b=c5Lgw6rJtX+TXbqi4Kq+dxb9GN
 oYFFLtrqfXH3zf34O3dAqjHxzrCLljEmGki0lZDjU2DPVJhIqSHOm5wepngv5xdndxwHukyUYVAnL
 MNMpBlc7nELa/1oOfEvE3gm+CrLzhREPfAya5YWCK0V0zm9Ed0jx8BrqmZuIqiSv6jeg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5LZIVj4rUAeGJ7xui07ULb5M7AQu4gvcO6R5a7/WUD8=; b=EajZzvby3RIbjTnXnB1vsDRddV
 UPl0pQiAkjjkcyN4IC7kIDZXSEnrMz3Udjox5medBkiCEsBqfMezyP/vTJerNle/1dKOJUv/z2A9A
 A/mhQGoSN6g7VG+GRBK3Ku2QLE6GeSaWXt8JsxezQ9blGyipQsnHnx/lFbUyNXLRzdyY=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qafU2-0002h9-My for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 28 Aug 2023 16:53:01 +0000
Received: by mail-pf1-f181.google.com with SMTP id
 d2e1a72fcca58-68a3b66f350so2955708b3a.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 28 Aug 2023 09:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693241573; x=1693846373;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5LZIVj4rUAeGJ7xui07ULb5M7AQu4gvcO6R5a7/WUD8=;
 b=fv6CcC+jDOSDUm/VQO7Qa+aKpCgqesssmlz8xpNRVp2auAsq52rLUTPfM9qIuBjg3g
 1oMEevASI9cjIJqFjczV8BtFLZf/jsXGONbGk5KhWJKaLzhTDfNWgtxXXm4nm4iYKbiV
 cQv1oPeTLF/QFX55MKEqZpi3PSrtsMDl6UB+jqTBm21JAi0xSAaXO+TA0XZnIfrk6oM4
 MUNF7fjKxVqrqilR6mq+t4jLwD5n3TxiiVQGrZB/LWaFNzioDgh5PCDI30+zmxew9Lh5
 RMVVeT24xuym6hW4BDR+FPzGVYwV61iF87D7iy0dmLtoCmALFYsD64D9MDmkFTK+pMY+
 o9xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693241573; x=1693846373;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5LZIVj4rUAeGJ7xui07ULb5M7AQu4gvcO6R5a7/WUD8=;
 b=BsNv6lIzayVbxnOBqWFkUU3yZgRaZja8NeiDoZCiC3qDOlPK/K3yyvWE5JsT9lZTGu
 8VMkaJb+zibtIV89xRZR6FmaUMuSD55G4Ll8QEOaK2XB/XHIhTGpI6W9omlOvyB6gLn3
 Cq2GvT0mAH4fGj0qHiqrJFfTi+DJOycdSrJXpmGkBGhxfKqr54aAbtQ7iZrN4EX1xXlp
 9aBPHXEsR2YFKCfx9pDONIRPxvHuncN4LJlbq8IxnenaXfzH8aQCdLbqdupdQx7a5Lw1
 tj/CgM5xX0T0hdcmyt6OlJHed57ADpdap/oJle3LwYClK1g07qiH4GSbEDlxNaqErdtb
 R4gw==
X-Gm-Message-State: AOJu0YzL7Yghf4bu1daOsr2u43w9l/LEmUyfjUbIZxo0fhw92BaQ17Ly
 +NXTlwDm+Lo4Ju7YhgCLF+w=
X-Google-Smtp-Source: AGHT+IGfJ8QxT/w3CIw7NTnwVugoja1tzYfAy1ChGXPlHyrgXaReZKXt9GXsKlrl9rVH64OCwy7IZQ==
X-Received: by 2002:a05:6a20:dd82:b0:147:fd40:2485 with SMTP id
 kw2-20020a056a20dd8200b00147fd402485mr24846816pzb.35.1693241572861; 
 Mon, 28 Aug 2023 09:52:52 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.179]) by smtp.gmail.com with ESMTPSA id
 s17-20020a62e711000000b00682b299b6besm6881273pfh.70.2023.08.28.09.52.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Aug 2023 09:52:52 -0700 (PDT)
Message-ID: <3216b72e-76d9-368b-a903-cd3acee96438@gmail.com>
Date: Mon, 28 Aug 2023 22:22:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Namjae Jeon <linkinjeon@kernel.org>
References: <20230813055948.12513-1-ghandatmanas@gmail.com>
 <2023081621-mosaic-untwist-a786@gregkh>
 <54a8ae10-71f4-9e91-d2b7-bd4a30a8ac2a@gmail.com>
 <CAKYAXd9-NjSjt-TrJ6fYcPDHcaUm-L=-h5OU98DTw97J2qwmXA@mail.gmail.com>
Content-Language: en-US
From: Manas Ghandat <ghandatmanas@gmail.com>
In-Reply-To: <CAKYAXd9-NjSjt-TrJ6fYcPDHcaUm-L=-h5OU98DTw97J2qwmXA@mail.gmail.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I was looking at this issue for some time now. As suggested
 by Anton, that the vol->sparse_compression_unit is set at the mount. I cannot
 seem to find the code for that part. It seems that the ntfs_in [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.181 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qafU2-0002h9-My
X-Mailman-Approved-At: Mon, 28 Aug 2023 18:16:02 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v4] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

I was looking at this issue for some time now. As suggested by Anton, 
that the vol->sparse_compression_unit is set at the mount. I cannot seem 
to find the code for that part. It seems that the ntfs_inode struct does 
not have any sparse_compression_unit. So I am stuck at that part of the 
problem.

On 28/08/23 08:30, Namjae Jeon wrote:
> 2023-08-18 15:34 GMT+09:00, Manas Ghandat <ghandatmanas@gmail.com>:
>> Sorry for the last reply Greg. The last tag specifies the commit id.
>> Also, I have sent the v5 of the patch in which I have made some critical
>> changes. Please take a look at that.
> Have you checked build error report from kernel test robot ?


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
