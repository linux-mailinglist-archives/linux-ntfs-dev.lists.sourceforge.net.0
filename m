Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2BB22553A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 20 Jul 2020 03:16:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jxKPy-0004xX-VS; Mon, 20 Jul 2020 01:16:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1jxJRy-0004i6-T8
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 20 Jul 2020 00:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z+gYR5esdBMAGv34Rn3ZmXqEpEkmqBZwfvapW368RN8=; b=Z3M3Y0bJXKR25hHg04xapuMVSc
 KiQm28K1ZC0MV8wz9UXLjEwBKF/0Y9VmjOBxEhbeI3tFCIACpxD13Wz3PtdjXkLE+qtMDQex3UXeG
 +YKI7k0x9ziZVjOOoMmxBAoDjJhXk4Pltd6RevhQBf+gtz5gcKRWozIfGMWWdXevqRMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z+gYR5esdBMAGv34Rn3ZmXqEpEkmqBZwfvapW368RN8=; b=g
 DuZjgiF7z4bfNrLStulWdAYmmyiISbRVPuf3wjez3K00T42c3wpvuRnQ0842/TTN5FhMeK2MIf4L3
 DssDDApHxq3HmxUPq/k55sTJMONVdjJaiL9KD5/leA4l0asbdSPjbMaGfu5Wb8MZfWQ7VhyKKxTbS
 /DpzswxskmoJSbyU=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxJRx-0091aO-Gh
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 20 Jul 2020 00:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=Z+gYR5esdBMAGv34Rn3ZmXqEpEkmqBZwfvapW368RN8=; b=Kt62KGicHaUasKA2Y8zxnKYpm+
 RqD3n4VYeMBn4ltJasVeZu9zjiW4EKrPFD8rD7X8arA+zDmmywH0MGVAnlOGAveYRCY18zL5IxvXs
 VqvP4SEW7TNquFPUnAO9YflOtPko0WHqZzFAlhfExoVxP5bWBdkJDr4nzIKR77QL8tzoGCDT9Ptxi
 4JqZSEEr8/6QGvzCHwQib+7btwVBR4JF/qXgoePQk7ZPcAW+cIYKdNL3m3Quv/5yxXzm8Fdydrcz3
 JeoP81+2+n8Z4IJTonAbLtKPSG0Uo67q3ky7026fGd23zmJ3JlI71Lk0pI0LVASn2XIk5hXzxCHh7
 FOmWqLoQ==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxJRf-0003zN-Ri; Mon, 20 Jul 2020 00:14:16 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Sun, 19 Jul 2020 17:14:12 -0700
Message-Id: <20200720001412.27815-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxJRx-0091aO-Gh
X-Mailman-Approved-At: Mon, 20 Jul 2020 01:16:32 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: layout.h: delete duplicated words
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Randy Dunlap <rdunlap@infradead.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Drop the repeated words "the" and "in" in comments.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
---
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
