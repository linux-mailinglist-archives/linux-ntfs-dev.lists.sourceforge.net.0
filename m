Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85ADC302F26
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Jan 2021 23:38:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l4AUj-0007s3-Jg; Mon, 25 Jan 2021 22:38:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1l47sK-0005qb-6q
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 25 Jan 2021 19:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JCt8Xz6iMYYmXPAUHZqX3DBBjm5slw3913VPH4LauYk=; b=ThDfqWoTyVodJT7E9yoA1WzRo0
 Il98nk5ahZRDrXXCMH1cOSTt4Sq65T6RmvNNE0bTHt3rB/AwazX6V4skYAUPilJrFuPXNx3rw+O82
 GwEMaNQstaUSbQN3hsnzPVzcCvGR4H9Ncsvgg1mYVON4iweMVPHu6jJ2KPTm+sG2e6/I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JCt8Xz6iMYYmXPAUHZqX3DBBjm5slw3913VPH4LauYk=; b=l
 D4RnIxqDRlCnquqa8svm08v6dHF1LCe7U+yHdkhNS1V8AcVXjQJJKumxmBrdfeNiTT3Zdiasd63os
 beCGRFGv3cvWizYOQZ4FwlgQmODJbZbcVd8qVAAlFxqxg3RYtcNZHXvvZiRZ6OewbGIK2d+ZKhCpB
 tEJ+nkHezRb+L8x8=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l47s8-007LkO-OU
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 25 Jan 2021 19:50:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=JCt8Xz6iMYYmXPAUHZqX3DBBjm5slw3913VPH4LauYk=; b=SaSrZLN8K9AmzmEiVTTHtuO2li
 FWqXP1Z7b9whcLdQ8Rwk8hUDEWtZW5QDigILcgXusCEvfNBX2S1iIhI48Ws8nWA1OZox7YXNlidh4
 ke8enUzMOE1jBpw2YHQHGDVTnmA0wmwNhEQrQN02QEbY9tX7P0iVEtWhwOwskXz0t1W+eHTAOMliJ
 GR8uUPypLCXJGklC7F5vUi2npA8RJ5hzAcmkSU7BUf+LzqJ6oP3WacKDzcsyjzfDAmdSic3TS2nmy
 BOVr7tuWwjcDlVw6+JvnngL08UMmfUnPsH+/yyhin6KLo24oHFtwJug+c2WV14YBSQ2lZFXtCxnqB
 LQaI5ADg==;
Received: from [2601:1c0:6280:3f0::7650] (helo=merlin.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l47rr-0006un-3u; Mon, 25 Jan 2021 19:49:43 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 25 Jan 2021 11:49:37 -0800
Message-Id: <20210125194937.24627-1-rdunlap@infradead.org>
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
X-Headers-End: 1l47s8-007LkO-OU
X-Mailman-Approved-At: Mon, 25 Jan 2021 22:37:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH RESEND2] ntfs: layout.h: delete duplicated
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
Acked-by: Anton Altaparmakov <anton@tuxera.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
---
Andrew, Anton asked you to merge this patch:
  https://lore.kernel.org/lkml/7CF99C49-7EB0-455C-808A-72EA117E113B@tuxera.com/

 fs/ntfs/layout.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200717.orig/fs/ntfs/layout.h
+++ linux-next-20200717/fs/ntfs/layout.h
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
