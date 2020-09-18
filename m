Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9DB26F603
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Sep 2020 08:41:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kJA5M-0001DS-Ad; Fri, 18 Sep 2020 06:41:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1kJ54w-0000V7-JY
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 18 Sep 2020 01:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QOyFuqFuoFRJREXHLPLsv6ehAQxmu8EWM0/aVtAEqw4=; b=mrS/hl8t9vtzNLTs97/34/ztb6
 veiHRajva6vefm7icr2XcgaY/kKOzCMApUqR1s3Ao9rq1zjwGdorff8HtOOWXiiVjaauGjHAuV5iw
 C6dKGF1N00VkUy7wqqJE1TJ/8cU1w9hj3fJdCLUcrkNAWz7B23ygIk0AAzlj0GUBpnS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QOyFuqFuoFRJREXHLPLsv6ehAQxmu8EWM0/aVtAEqw4=; b=E
 /Uqi/KlQfD0z2ObafIMDghEbGgHCfLc0buvPgEX+etbuGb0ztIaZuJdukzqmOKMZF2kkZ1wl0EAgE
 S4uvV2u9URskA0H4mKlIzVWy+0r6l4CREYZ6qxT69djI5mfpK9ful1E2ldeXhutPd46b2QrBbDMaz
 RG2rFbC+lt1+VuKQ=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ54n-00EwQe-4H
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 18 Sep 2020 01:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=QOyFuqFuoFRJREXHLPLsv6ehAQxmu8EWM0/aVtAEqw4=; b=ISjWHiWUWdHFNuLhg/4P+KsaVj
 W3yggqcP7tk74LUhe9FEWLBcoUgpoVeK+rpXFFNyRdfJX7zA089py91DqJWqjUjU6SAQ61Bp/xr80
 rdGLvEYfVz3WDTkzVs2QX/MKKKmB21vuCs8cTVPJB1Z0AK75Cr39mCF+2HHI51SZAjfVxzGm2Xrdh
 ZZV+6eQXjW31594qFvQs0NYwdD5VurQy1MkOFpB5YNMj+6q6/TQatYYD++g1DTBSN8gMQey4mmUev
 jb+7IVcrLeFgx18eq83BsgRchv69whQXuOumPeHZGDqzuOA1ZcUWmDa/vrvatCE9WXWIOAHSBWHAC
 3fTKbuAQ==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJ54c-0007sT-NT; Fri, 18 Sep 2020 01:20:27 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Thu, 17 Sep 2020 18:20:21 -0700
Message-Id: <20200918012021.6255-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kJ54n-00EwQe-4H
X-Mailman-Approved-At: Fri, 18 Sep 2020 06:41:31 +0000
Subject: [Linux-NTFS-Dev] [PATCH RESEND] ntfs: layout.h: delete duplicated
 words
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
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Drop the repeated words "the" and "in" in comments.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: Andrew Morton <akpm@linux-foundation.org>
---
Adding Andrew to recipients, otherwise this patch is lost/ignored.

 fs/ntfs/layout.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200917.orig/fs/ntfs/layout.h
+++ linux-next-20200917/fs/ntfs/layout.h
@@ -703,7 +703,7 @@ typedef struct {
 /* 14*/	le16 instance;		/* The instance of this attribute record. This
 				   number is unique within this mft record (see
 				   MFT_RECORD/next_attribute_instance notes in
-				   in mft.h for more details). */
+				   mft.h for more details). */
 /* 16*/	union {
 		/* Resident attributes. */
 		struct {
@@ -1838,7 +1838,7 @@ typedef struct {
  * Also, each security descriptor is stored twice in the $SDS stream with a
  * fixed offset of 0x40000 bytes (256kib, the Windows cache manager's max size)
  * between them; i.e. if a SDS_ENTRY specifies an offset of 0x51d0, then the
- * the first copy of the security descriptor will be at offset 0x51d0 in the
+ * first copy of the security descriptor will be at offset 0x51d0 in the
  * $SDS data stream and the second copy will be at offset 0x451d0.
  */
 typedef struct {


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
