Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D71ABBA9
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjF-0004EF-5K; Fri, 06 Sep 2019 15:00:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1i5BMp-0002QM-2V
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Sep 2019 16:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KUy5l1aYg1BplaWt5hk1/LzklThfhOdIiUHfqLC9kmc=; b=hJSWojL4Rjh40kfC8WbyzwMsl6
 52nOnvBBZNqlAcUjR0IxfO++Hl7OCc9UuBckZWPjAacjey9/kVJ3RhHId1D/eoY0xCfveUc1Mtmyj
 KFpox1R5rtvluahzFsVB1VccCNNhgKjyPDGkZ+zbe9A8df3W1apFZoM50fzVz10RxbZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KUy5l1aYg1BplaWt5hk1/LzklThfhOdIiUHfqLC9kmc=; b=f
 kuBcqqYvZd54llp5tZO6qDrAqBMp2Qn4oEl5aWA1siMySj03V7qptrFTLqsEBOZjny86KwSB3y84m
 +NRsDORGQqeiB/7se1DeS9yz0K5+DU9WvEDhX0uvtY3Rqeoi18XTrhnLJuGUqC+Omnj+PxdVLEwbE
 bPuvkPyUzPHG84sA=;
Received: from mout.web.de ([212.227.17.12])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i5BMn-007yQj-BZ
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Sep 2019 16:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567526946;
 bh=vMgAzBXUWskQTecRcuVXqAK+gjDpq21bPltTH0WE3wk=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=OJ8VupIU7C+2baKH/1W0z+ODszuol5s80aYhzQbm1HwnnHpbjid9dAMGRg0e/1IW3
 321etAG/dJPtXIl3rNqLsy92SZCxTNPGSFdIvu3B12KnZQevfv73kMf08SQz65arF+
 AGcd/H/dG9WMz1fe8Ux2yabfOj7vHFPc9InReKL0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.133.133.43]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MbQKW-1hmNpv439g-00Ii7G; Tue, 03
 Sep 2019 16:20:44 +0200
To: linux-ntfs-dev@lists.sourceforge.net, Anton Altaparmakov <anton@tuxera.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <43a59c6a-3635-1fab-1945-292d637663c9@web.de>
Date: Tue, 3 Sep 2019 16:20:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:ztnoEwB7aMfeVUajX7qUfS9p3bmeZ+tI6B5JJX3RDPEb+rx6u+e
 AhF0Nmvk8ckkG0Q7m1ou9EBafIyIc/fDLaZHj+dQrcISogiH4Y7ZDSxK6wN/yRgRMn7S895
 2kly7v5wiPInx6nwBoJjJRnr14EGgm0f7TFdNdBFf5tUwQh2vrOxh7LaQqVkT4Q9DgSgpkr
 MCLp1Y2CUuWabv3RfAmJw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/N5txeF2U/A=:Z+kuxXeuCyWMIUJKwlvBlW
 Y3/Zcuuwdc1+6twq2KWlm3U/wr/SbCjjHe/Jq/RGjeC6s5+BMEVv2c7oOkKKoeotNlOREiQmu
 DNU73uzLUBwO+hUK49lqP4+7bnmdAC8pFnhrEpfhblp5XG324+4wWfibD7eopy6DvL2CZZw96
 OqtopoMOvEYrp7WdZhhPmNy/XMa/kB4dSTpumJBFY0CNEvFLwgq1o/UIpoK6v95JhYZ48KJU0
 9teOKej7WJYDWRLSsnjKoHzPiVfCoOeUpbM0R1ZL+62HNCaFHA3Mbog5872QHBNBWL9SEOwSk
 zGBJOws1/zTOnOJYwizz8tmm/s6T3UmyUXTVM1C5Gj4xQfq84ZikMGTzj+wu7SZjtbgVa9VpB
 nmo/xBFF/4LzBmfsuWNSUJqFJmJqil2zsViMfCN22m1k4oqJKBkKVblEWycOcsslT9YOzIFHK
 vPafOdtsC91MKCATahn40davcr0MMtQnbErsJhuPhYUxhTfHIAwcYpexbU5fOwXlbMyn+lxRm
 mvhfhPa9ZDNwoIVKeOUv7gjNM8cIXlHF2S9Q3Jz1c0uG4KZaMsH+Nk1DBIHYi1lLeC8mcUjO2
 e+QSX8dfMRrkLKywBroHYJc3edn5O2nBC6BGiIY8urSh312iij8HJGzKqw5fbI10mSW8YOUbD
 rQiaM/KCrAYBjM25QvKAnM9GnyXI1Sik05JfUQprhPA5DNSDZXe7sd9wbaAoDoBDPR4j9ePFD
 vm/zSoOMs21xNNi2U2WpElFvcwjroqLnHbqzyST6eutd8F0i0O+IqXJo+HVsN5uJupyItLCdb
 IyO20K5xIqcnv0Xy5j19mGF69Ga4EhoSCTSMzQe3UtyklwPISyofdqaWS+jEI/Q743XonxQLh
 2Gf6F++R5Gas412m+DaAiW+NzRJfuIMaDnkY6OkloZfkM+q2RSER8+w1W2Gkfu1iaZZx+/fKU
 kIa56R11OEMG8qRSeFUsLsnpqB1vUqjgtkvJgjprIGsPXyk/suqFbbD5NzT52tK0lIc+zPre1
 da0l7qlUHjeb4b7/Aa0gxBFKBGfRFh+9gbR/EodTov83rF1YHictrYxx8CtapXYVqx4D+deyr
 aUa6jwwRLIJQwhxj78joZT23LJWAwJckSZGkwXaDWfzMQxqukFTINRhZDho4vmYGIRIhvM33d
 KPntE1FQqx6QPmtRDeHHtFw8z+8u2TRwAZ+8fUpa9YN2YEWQ==
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
X-Headers-End: 1i5BMn-007yQj-BZ
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
