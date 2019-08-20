Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8615195D19
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 20 Aug 2019 13:18:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i029j-00027t-OD; Tue, 20 Aug 2019 11:18:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@metux.net>) id 1i020w-0003JN-MT
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 11:09:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rlQQia/SeKNsSkH0KbKVVogoj3ob+PbSoAZHlqPpj9s=; b=MsrWLMR+jlJ/IF/etncDP0U7LR
 FpqFoX7dTtO0ScYEQJJI+hE0ACihRXR8UIScP3S4+J9D4U827POqT6Fap5K1LN0pXAUwMnXm+GzLp
 einpixtOPcbS6mMQaTtgrnTFakrTS3Lnau8rTyiVCEs8Da7RChzUshzaoYs64CRptw7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rlQQia/SeKNsSkH0KbKVVogoj3ob+PbSoAZHlqPpj9s=; b=DwiMmm21C4S3yjBOk9+oqMMps8
 gGybSDOyTormgCFaJgtczn2x6UjEBy5KX/K6Q1covCojsIkindh+Eeh80zjn40IniCHNkn3tNOwsB
 y3B8ItZXiZyN1cO2BtMlQnK6IGMv6E8Tjtd0DgFt2jV72BhIhyKWd0qOAx31ymXryOh4=;
Received: from mout.kundenserver.de ([212.227.126.187])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i020v-009otp-2h
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 11:09:22 +0000
Received: from orion.localdomain ([95.117.23.32]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N7zJj-1iL0so05K7-0154qV; Tue, 20 Aug 2019 12:56:13 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Date: Tue, 20 Aug 2019 12:56:12 +0200
Message-Id: <1566298572-12409-2-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566298572-12409-1-git-send-email-info@metux.net>
References: <1566298572-12409-1-git-send-email-info@metux.net>
X-Provags-ID: V03:K1:whkxWFqHpdHfrjQsHABxXf1siumYRLGP1V4hb0olYemOQT1Nzjf
 qMmymy5q7ZV5VEDz5lK7NyHZGO0O9prrItp68Ft6NqId8+BdUy0rqRRUJj53S9mX+ow93BY
 coIjXUof8+bn3SkO6vNDrjHwgPAHAZCtjVpliAtWXKgvs40v6di15iK2WEP1BWHC7hZDf+L
 VpunXR1NttP6PMIh/Ukog==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:je22kqk4MjQ=:03VIjBBnKPzotRVWgGtuBW
 RR8OtJKNJv5J71HBsBZn5Ba8Y68Rfdc+IUkJLPGnKzUBSsPDVvU5fK07BxTIMA/eS8FgS1yKz
 NYCWbS5SfsZfdp+Jhx0R8NTJSRsyKgPmWs8ou2khxaX8Qt/P4KwtqpeYe9EfD1+/dn4Gu8WfF
 iVpc3KOykoJzapyF1Hxr0r+js3NpuS/t9gvTsv4LGveQOFUiuBwj0yq2xf6aefEgy4qnR66ZC
 Tjg9Z2YlttDJndP2W71Er20Pj34o+ciO0KeJCeVuBeeKtJn5UP63J8nPw88zMfVPbvWsuCH61
 Xm8VA80FSscelDUfziCLmDrTpPuEpxKgtIw2yv+uj5IkB8sTp1/pYPezTb65cPO75kJtn6sc7
 0DMUG8ohFjnuLSg3X4DA1EdwQRFAa9NvMPwAt4dfRcdzSnKUh6pyJ086T2w6YXlFUlPMHJIUD
 xwAPnTa9zvECh4STPYeZaLQLuuKx7q3+kG620Tlte/leqNmgxN1IyvIhncx4rWaaA7dm4Zd/h
 3ep5K7bH7kRVH94xWHSJALiLEUj4xZNpsatrFhvDYAJBLtXTSi61ft8KDRFiO2Xht+1MeAWU2
 1UCHc9Ax4ylIG7GETOTXaNWMS63J4PGftK40wNoUft/B6m9+z5fsGJyOBYw9Clch8M9EEa9mG
 l4rUbJNBrq9tGFjE99Rslb++X+9bUQYSTDTINMD5GcU4YQ5pKM95UZLW2AYi5pricYHEZrZSE
 Y+FKAyRhvY9DyOqgrDUfzywVGxCdmkaVwojrGA==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: metux.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1i020v-009otp-2h
X-Mailman-Approved-At: Tue, 20 Aug 2019 11:18:26 +0000
Subject: [Linux-NTFS-Dev] [PATCH 2/2] drivers: input: mouse: alps: drop
 unneeded likely() call around IS_ERR()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-input@vger.kernel.org,
 dmitry.torokhov@gmail.com, pali.rohar@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Enrico Weigelt <info@metux.net>

IS_ERR() already calls unlikely(), so this extra unlikely() call
around IS_ERR() is not needed.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/input/mouse/alps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/input/mouse/alps.c b/drivers/input/mouse/alps.c
index 34700ed..ed16614 100644
--- a/drivers/input/mouse/alps.c
+++ b/drivers/input/mouse/alps.c
@@ -1476,7 +1476,7 @@ static void alps_report_bare_ps2_packet(struct psmouse *psmouse,
 		/* On V2 devices the DualPoint Stick reports bare packets */
 		dev = priv->dev2;
 		dev2 = psmouse->dev;
-	} else if (unlikely(IS_ERR_OR_NULL(priv->dev3))) {
+	} else if (IS_ERR_OR_NULL(priv->dev3)) {
 		/* Register dev3 mouse if we received PS/2 packet first time */
 		if (!IS_ERR(priv->dev3))
 			psmouse_queue_work(psmouse, &priv->dev3_register_work,
-- 
1.9.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
