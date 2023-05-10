Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D65A16FDC6A
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 10 May 2023 13:15:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pwhn7-0002LA-Cf;
	Wed, 10 May 2023 11:15:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pwYu6-00015m-48
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 May 2023 01:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B4pceyflB6O68L8oueI/kuHTf/K1LJwG3DOY6/LWUG8=; b=JAhcd6yfxhfOpVKW8M9LkfZ36L
 uU/4LMbKpnOQc+2i/Ts+4EV1FaAq8cKkEuylsX7PKLZRw4vAn7dUYbKIlwBsjxJYfoFRPZZATzgKh
 c3UOP54RfiYZ3KQ0+7MTjWwP9ErZlLrKs9hD6gvthwDOQCdC+2o2fLy+p7y22xIMe3C8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B4pceyflB6O68L8oueI/kuHTf/K1LJwG3DOY6/LWUG8=; b=PxD35TE5woA+i9a5lHv7hlRaVw
 +gCTumRw1wVZTAyAxAtSz8IA66yFCXRFBEMDADRzq4GncJkdvutJTOeltYg2b5XA7fVLdMIHPirai
 OQFf3G4xRWYCmOrH2ji4NE/pOT3BnRpYmWKGM8qPQdC7k22hAxaQrD8vEnTFpbvoYOrk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pwYu3-0007P2-LO for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 May 2023 01:46:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id ABAE663537
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 10 May 2023 01:45:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E73D4C433D2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 10 May 2023 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683683153;
 bh=B4pceyflB6O68L8oueI/kuHTf/K1LJwG3DOY6/LWUG8=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=Kc5b0sKXIYIv7hJmOB0OQT4LIMUH+tlRO0O/nkiCjBKDmQ0VHXn6Pfi6XrXVqANKg
 /Zvu2YoKhJT0T78vE6vT/3STulW1643anV3MhkcxHryO430dlHAj9ZzYabaVpSIPgh
 9WAhH6zEhlBg42voG6NsBJxkK44a2ErPefks+RAziMGrm6FMeruG7OvyO39ipq6rva
 eBlPyavGxvyGdZMADUNHFyylHiDaBAy/xp8oya1hUrpl2dmBrEh3SFFmmjaTJNY4cf
 NQTiK97mGr9mvhhSG74wuEbFjQC2XTIGTGz9xij7+O6ydJWs/9Jxzmh8R01zY3EB77
 jpeHRVLcPJJNg==
Received: by mail-oo1-f44.google.com with SMTP id
 006d021491bc7-54fba751417so596800eaf.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 09 May 2023 18:45:53 -0700 (PDT)
X-Gm-Message-State: AC+VfDyOeMnD/K3H86rCO0yLUFOsJWuWZH6GRmveWtt9Uc3LT5CYU/FM
 VLqiY8tnupA8q+8iRrdSzmH+dSrVQ9+5uCwaLdU=
X-Google-Smtp-Source: ACHHUZ4AwXWk6pXI3HwwQblfrMoGxRULWH1RtE+4rPsd4pxR/rNLSB0Avu9tGFxkjE8PjgBT2yTesDb7DwAHkth323g=
X-Received: by 2002:aca:130c:0:b0:394:9a9:3c7b with SMTP id
 e12-20020aca130c000000b0039409a93c7bmr1703188oii.1.1683683153133; Tue, 09 May
 2023 18:45:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:290:0:b0:4da:311c:525d with HTTP; Tue, 9 May 2023
 18:45:52 -0700 (PDT)
In-Reply-To: <20220813161220.6039-1-tangmin@cdjrlc.com>
References: <20220813161220.6039-1-tangmin@cdjrlc.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Wed, 10 May 2023 10:45:52 +0900
X-Gmail-Original-Message-ID: <CAKYAXd_+kCTU6Hng0b8_9hdq+4Ge9s6DbXcw7hTCy-JOU7ArPg@mail.gmail.com>
Message-ID: <CAKYAXd_+kCTU6Hng0b8_9hdq+4Ge9s6DbXcw7hTCy-JOU7ArPg@mail.gmail.com>
To: min tang <tangmin@cdjrlc.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2022-08-14 1:12 GMT+09:00, min tang <tangmin@cdjrlc.com>:
 > There is no semicolon after '}' in line 902. > > Signed-off-by: min tang
 <tangmin@cdjrlc.com> Reviewed-by: Namjae Jeon <linkinjeon@kernel.or [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pwYu3-0007P2-LO
X-Mailman-Approved-At: Wed, 10 May 2023 11:15:14 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] NTFS: Unneeded semicolon
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Christian Brauner <brauner@kernel.org>, linux-kernel@vger.kernel.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2022-08-14 1:12 GMT+09:00, min tang <tangmin@cdjrlc.com>:
> There is no semicolon after '}' in line 902.
>
> Signed-off-by: min tang <tangmin@cdjrlc.com>
Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
