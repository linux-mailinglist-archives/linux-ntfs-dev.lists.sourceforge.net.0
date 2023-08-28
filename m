Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB21B78B716
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 28 Aug 2023 20:16:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qagmS-0001k2-7C;
	Mon, 28 Aug 2023 18:16:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1qaSUW-0007cE-Eb
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 28 Aug 2023 03:00:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ofj4a+Sr4kDnbjiIrmLs1QHmMJWavBBZY3e/Hnqt7HY=; b=GHN4RYerDwcUuuJB6GDObb7Eye
 os+/VyDF9CzdguAj+C4fjqpCtExKGxUohN6fv+/QIPjNCO+K9ZQjCg12FM9W1o1B1KVv3QoeZ5vCC
 eZXo9c6eL2S4Yj7z2K3g8uagTk3kHpAD0BvPdjeze7xpM2ty4wI0RYqtvDvp3anvEhSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ofj4a+Sr4kDnbjiIrmLs1QHmMJWavBBZY3e/Hnqt7HY=; b=YK9QseaClw3ja/81RPnDE3KRdK
 VFh5gvecMj9RHubLca7k4Grlex6201V8nWwwEVQj1PNqLgT0EdCIibCv0RvaNoMmjMaVQ5zb3DOPX
 D0ov9xxhHtecO9bVWwEolT2mMsPG/i/nEwoPew01q5elK1/UHjrtH1YQcXypyGXT2Ark=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qaSUS-0008Rn-Kk for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 28 Aug 2023 03:00:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E58AA61156
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 28 Aug 2023 03:00:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F687C433CB
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 28 Aug 2023 03:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1693191626;
 bh=otjFS/8nOzqMsBwSJ/OzkjYo/maytY8GZwVsaXFlmug=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=WX9rFIsMNS+yrTdGRuXMvADbB9RFUf1yjAQdLR7zTPLJEvcmaT5EErDfdas1WiFdT
 76i8sX+jykpTO542mqalzMpiANQm10VyLsC/iz9oIw2mADukDoDawsQWuzdPJbejHp
 qOglqbh7kV4ZWYg8Bm65OtSsdINsXwvG7muhZerelCe7Hf/qHMbeWK0p2rE0Vzf7EF
 d9G7jr+MULe2tcthn2OlS4PGjYM0/4+MPq5NBXPtNxVn0evao9YWNSITmDbwtkGKxr
 oV6G0RAKRUtQ66CpcjCHixM7vZ1cbZ3VfghQw4bRpdTLBg/BBye+nJsc5LUyetiKGO
 VXf048NQqXp5w==
Received: by mail-oo1-f46.google.com with SMTP id
 006d021491bc7-56d8bc0d909so1812462eaf.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 27 Aug 2023 20:00:26 -0700 (PDT)
X-Gm-Message-State: AOJu0YyyJtt+RjiY11gPj13rrDYZx0wcGhJMxChrDMVABy3/inG1+EHH
 JSAhYWBhHVfwMz3v1lhz39nXZJncpYyXYuKuYZE=
X-Google-Smtp-Source: AGHT+IHn+IZlq/F9TsDGUwaduR4k2lI9GSIkPRkjCukEQ4C/QzXTk6ZbBy3ti0e0YyvS2NHc2QQ+pkCPQO4kBE+KG40=
X-Received: by 2002:a4a:281a:0:b0:573:3711:51c4 with SMTP id
 h26-20020a4a281a000000b00573371151c4mr8363886ooa.8.1693191625380; Sun, 27 Aug
 2023 20:00:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6802:1090:b0:4f6:2c4a:5156 with HTTP; Sun, 27 Aug 2023
 20:00:24 -0700 (PDT)
In-Reply-To: <54a8ae10-71f4-9e91-d2b7-bd4a30a8ac2a@gmail.com>
References: <20230813055948.12513-1-ghandatmanas@gmail.com>
 <2023081621-mosaic-untwist-a786@gregkh>
 <54a8ae10-71f4-9e91-d2b7-bd4a30a8ac2a@gmail.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Mon, 28 Aug 2023 12:00:24 +0900
X-Gmail-Original-Message-ID: <CAKYAXd9-NjSjt-TrJ6fYcPDHcaUm-L=-h5OU98DTw97J2qwmXA@mail.gmail.com>
Message-ID: <CAKYAXd9-NjSjt-TrJ6fYcPDHcaUm-L=-h5OU98DTw97J2qwmXA@mail.gmail.com>
To: Manas Ghandat <ghandatmanas@gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-08-18 15:34 GMT+09:00,
 Manas Ghandat <ghandatmanas@gmail.com>:
 > Sorry for the last reply Greg. The last tag specifies the commit id. >
 Also, I have sent the v5 of the patch in which I have made [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qaSUS-0008Rn-Kk
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-08-18 15:34 GMT+09:00, Manas Ghandat <ghandatmanas@gmail.com>:
> Sorry for the last reply Greg. The last tag specifies the commit id.
> Also, I have sent the v5 of the patch in which I have made some critical
> changes. Please take a look at that.
Have you checked build error report from kernel test robot ?

>
> On 17/08/23 00:45, Greg KH wrote:
>> On Sun, Aug 13, 2023 at 11:29:49AM +0530, Manas Ghandat wrote:
>>> Currently there is not check for ni->itype.compressed.block_size when
>>> a->data.non_resident.compression_unit is present and NInoSparse(ni) is
>>> true. Added the required check to calculation of block size.
>>>
>>> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
>>> Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
>>> Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
>>> Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b
>> What is this last tag for?  That's a kernel release version, what can be
>> done with that?
>>
>> confused,
>>
>> greg k-h
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
