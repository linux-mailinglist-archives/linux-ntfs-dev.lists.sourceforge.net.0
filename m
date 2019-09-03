Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2832ABBAB
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjF-0004Eh-Cd; Fri, 06 Sep 2019 15:00:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1i5BMt-0003XR-MW
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Sep 2019 16:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KUy5l1aYg1BplaWt5hk1/LzklThfhOdIiUHfqLC9kmc=; b=HOOLb+2Q0r2TOYJMjwPdlLam+t
 KJRs0yVYxLfxsOQA3wrnHww5LFHvOjJA2gsNwTX9eyBD/HQRFhSN01+vFxAg/Cy9Rbool30mBEO0K
 GGLu0Ixg8tfDzh+ehzK4jbLJU0YSulDI9LMMMF/vW2EcqalAA7HWGdrmsf0T1L/cd5x8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KUy5l1aYg1BplaWt5hk1/LzklThfhOdIiUHfqLC9kmc=; b=j
 KO/Jj3xP/MAf6aXv7mpOjRfdxKf7JiT6IiUGNj+weMNGvTfiHEQxiEdbf7IJLn56c6HK5k1l2awgl
 BVExFrj9N48Ngyfz2Mw7clz4OeBxOnPeKJuaH0oZ2tmGx4N949+fgzhCqJafyqRxcZCc2QJJagZMU
 xEJJWce0EnMi6Utw=;
Received: from mout.web.de ([212.227.17.12])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i5BMs-007yQr-8e
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Sep 2019 16:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567526951;
 bh=vMgAzBXUWskQTecRcuVXqAK+gjDpq21bPltTH0WE3wk=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=lfUzzTsfbvf9yg8cyhmajplMic+HsbqHv4LJXLxf9O+MPS+/BYjYtY8ACSGtRsUlN
 8KfsOh7SRLCChXKH5Cb4W6b+MkMT2bGIHHlSXs215jpy3Ful0jzHJSDKWBxtk8o5lZ
 oOHMAczvoMTdEe0lEc+gWuNFCCxZRz7KfG0ibHHY=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.133.133.43]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MgwZQ-1hrs0h3yYy-00M3cJ; Tue, 03
 Sep 2019 16:20:44 +0200
To: linux-ntfs-dev@lists.sourceforge.net, Anton Altaparmakov <anton@tuxera.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <9d047687-af84-4688-c025-13103cc22a52@web.de>
Date: Tue, 3 Sep 2019 16:20:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:0jR0GS55GaFdFydxT9bQ63zyKh3AOSnu2BwcrtffX82rI2Nh+rd
 E1lvLYUJPtSUvdq56al/VyGkMSEP8fbHSQN0lzMuf3BvECj4VXYZgCgUaYUBTJ539pVJG6K
 rCYI84xyfu95ue3XHspWwGLE0PZfN1azwBZu244b2XEjvp8sUtRzLDnN9Z6uZl8UdwjVBpA
 /kYbBFBZ96+ogN7SMp6MQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6MIQKHDOJgE=:dv1Zuh9lqFPvE0HVrX2NSr
 rFhfsYBNyt8DbMu53nOsXyhUxQKnFDsyrX4GcA7g1HmgniVGLC0OLkXkycJ1n0EGpGpTB1iw/
 9DiVcsZ2YMAUtY9evh5ttMwZ09hLzLEQPjb8RJKXoICHx5uLyWSx1/T82N9NvBn526qr0RZdj
 zoRuDnoYmtYPyt9aVT0ESnT+Erc9GmbOZD6EDJoqhqF+R2zye/7i32GStoULmtlTb3V0UtK68
 9sqk7M/pPVaB6T6GHrVLbx+HL9CsKbO9KjU/SU7pBrt6IxNvI0RcFXGHnNm6teMcT462Czq8r
 7nz1xfKoT1KlISFLJZ5NCs3SOPkj6w798FDHJIqbJbqV0dVL1agt11js+0Gb16k8CyF//uL2s
 aelKAM8K/TDfUbdt5J3Ek9mRuQzeNgUms2mJSFzKevESefukn6PHDoLyBFWU3LV9N1qsV2HAj
 TKE1zik6TGZxl+FVgNQrKOW/BfFUVq6m45OC1DZX9JlOGXvDEmqCjP2zwYR1fiZTkhZIxdHe6
 duHM2EKZqO3GsuoeOpJFkMN+6coDBFg4f0MPu96bQj0fXCZv7IUUFXOTyWUtiWP+SrQZWpW8o
 a1CjwDO6oTu6rS4UTKcqzzKTiDRSKraieVoPq8J95+eDGk40pseTBQkzj2IZgKK0oyoFzROoM
 Kn7ReONUKWNOvxB/D92ATjJHZPKpEV0BWFfJpgfBNmfbZaS8etVv09BNYvtjCZ9fX5Ul+esNw
 XiNRJP1F4jbOXHsrIYP1fIR1IS0KPIMslL2AnuCwRU1tEQ9eu9NCoVdRzT4EZiycvZKhzIBYR
 m7h2CpNtXQIZOtVaordgKrJ6whpqYqjByRLUnK6Wed3ACV0O5eZRIeriY+4ialF8MZe/2Fy36
 6ojTJIwbSgr2uXvtS0e2QRvf8h+hZKb4jkPqXt7UFirafOpxuz1+cPYPrbizeT1Y9R3DU6YDG
 8kkkYpZ6J3k2nGS+dIX/Q40anh7ng077+uEkH/+1kYcIEi7Hh+X1V8giC26ThEEjrPuranOt9
 oMM1sPhR2ldwEncqRvOfuKrCcxBrq3sskH/r0RivfY67DrKG6gl9Rh6qiza7BFfV0lUcNhd1M
 f3pLrAFhmJfUZDonHXRPZt8mggtL/TO8AEPkxAKdOJ1ZrYYm/LozMlmQHigmICRU63mJgvoGl
 LTC+eAPy0J6HXNGC9g4d+Can92uEnB+zTNTQX66Z8RwnMg5A==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i5BMs-007yQr-8e
X-Mailman-Approved-At: Fri, 06 Sep 2019 15:00:43 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: Delete unnecessary checks before
 brelse()
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Tue, 3 Sep 2019 16:18:07 +0200

The brelse() function tests whether its argument is NULL
and then returns immediately.
Thus the tests around the shown calls are not needed.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 fs/ntfs/super.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 29621d40f448..f0ed1a3e5c7e 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -676,8 +676,7 @@ static struct buffer_head *read_ntfs_boot_sector(struct super_block *sb,
 	} else if (!silent)
 		ntfs_error(sb, read_err_str, "primary");
 	if (!(NTFS_SB(sb)->on_errors & ON_ERRORS_RECOVER)) {
-		if (bh_primary)
-			brelse(bh_primary);
+		brelse(bh_primary);
 		if (!silent)
 			ntfs_error(sb, "Mount option errors=recover not used. "
 					"Aborting without trying to recover.");
@@ -703,8 +702,7 @@ static struct buffer_head *read_ntfs_boot_sector(struct super_block *sb,
 	} else if (!silent)
 		ntfs_error(sb, read_err_str, "backup");
 	/* We failed. Cleanup and return. */
-	if (bh_primary)
-		brelse(bh_primary);
+	brelse(bh_primary);
 	return NULL;
 hotfix_primary_boot_sector:
 	if (bh_primary) {
--
2.23.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
