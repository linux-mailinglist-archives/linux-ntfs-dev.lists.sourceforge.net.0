Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D42343022
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 20 Mar 2021 23:50:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lNkQE-0000ig-9X; Sat, 20 Mar 2021 22:50:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yashsri421@gmail.com>) id 1lNeUK-0006Jd-1d
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 20 Mar 2021 16:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=adNz31gWLDJnKipBeS3psUT6pbf5Zn26UZ0xNc92lTo=; b=cjy3kZNwJZvhA2URsVWU1KAiYr
 BvRCSxMnoqkhuaufoj5xoKVpTb/wnsrw94goGVFNKmwR2MT5u+sqQkv9Y8TVI4Jk6S+vC6Jcmv0WM
 MUwqBs+RkTC5L0bOG9VL5qJ1do8XcB0tGnhmJ4VOjiRCUfQ4hExzVwg30F4LP+8K6b6c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=adNz31gWLDJnKipBeS3psUT6pbf5Zn26UZ0xNc92lTo=; b=JRzfu6GnY95u9kIbBYo1IVSHeJ
 pnQD28rxl0b7Rt5p84Fqkiq1Zboc39pO3fDFAYTTDdQa7NU4LpytiHBr7sPV4csSsha4Tul9Y52E0
 2DCIbM3PZ2PzfBvhZ8Ii64/O7oFaKnL83pNJYfZqWQ6Hw+CszGKH892OJb4mycAtNzeI=;
Received: from mail-pg1-f177.google.com ([209.85.215.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lNeUA-006TnG-LI
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 20 Mar 2021 16:30:07 +0000
Received: by mail-pg1-f177.google.com with SMTP id n11so5764578pgm.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 20 Mar 2021 09:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=adNz31gWLDJnKipBeS3psUT6pbf5Zn26UZ0xNc92lTo=;
 b=TNpz7CbfJPuFdmN4VA992lMaDYNJykgyhtqf/5uhRP2+eduMul71GumqKkoUNwFjh4
 SEyiKB1bIn2GbTYdGLLL3knNSZN8HhvAEXlRsTsJDYQEdeNJmb8FhJI6jXLY7SC1yraH
 NtBeDCVHu38Z1vemyDnE31S7cF+aaUgdYpfFH34+6W7HWkK/HOir6uGtQZCJrW9G8VAu
 /tG/umOGx8LEzZFIDKvk59axJjk/liW2PW/z0gGSPPiKTC1z0NVXWgv17o0meZNsH0i8
 T6/VB1yOlk0/5MvAuyqwmcrsztqXpEsKu0v61dGwoIkbrNmuu18AzYsmRgEoVSvGcbvd
 nBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=adNz31gWLDJnKipBeS3psUT6pbf5Zn26UZ0xNc92lTo=;
 b=akV5sV+7EBxT37/SGeeYk1NNyx5h4ahcxU5mGXRV1YHJ9YQJyc+TPyO6OUk4d9yJjL
 OEfOTkSYdS1VKOIGRGuwxGeR2r+YhhEbPgn+ebA2dOomRR5c9EmUvC9j9vlL+3XE6acd
 Ulnzdq3ioS2Fvr4z+t+m8jQHOMPrj4h3DzXRLd/T20AqLFxA2KgSuW024Yb4zI3UvbA0
 AZhAYUzojqGYnhN6YrBtX5VGYz8o3JdoFql1MeJ+SQn3mEfalSL+687wB/C0F7pLbWbR
 Hb8gdJFDJGvEkETVeri/XpFwLMkBUI3zW+RU25Zsq4rh/hWkR2mllt6zp6zQtDdv4b8a
 RFwA==
X-Gm-Message-State: AOAM533dCzS8OcKr3UEzHv32YhJ5P+AbFp8SfXfT9T0VhRrlUc1i63wP
 FYarc9EQBNNbNLCJqY1HeQE=
X-Google-Smtp-Source: ABdhPJwhFZI6DBOYuVPsCROsir8j232Inr//PlcZIV9IdgideHzoqzYTiofrr6egsD7vPMo8bVQh1Q==
X-Received: by 2002:a63:356:: with SMTP id 83mr419552pgd.344.1616257792925;
 Sat, 20 Mar 2021 09:29:52 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:600d:a089:1ce8:18d9:6e3d:8c29])
 by smtp.googlemail.com with ESMTPSA id 2sm8740919pfi.116.2021.03.20.09.29.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Mar 2021 09:29:52 -0700 (PDT)
From: Aditya Srivastava <yashsri421@gmail.com>
To: anton@tuxera.com
Date: Sat, 20 Mar 2021 21:59:39 +0530
Message-Id: <20210320162939.32707-1-yashsri421@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yashsri421[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (yashsri421[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.177 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lNeUA-006TnG-LI
X-Mailman-Approved-At: Sat, 20 Mar 2021 22:50:13 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: fix incorrect kernel-doc comment
 syntax in files
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
Cc: rdunlap@infradead.org, corbet@lwn.net, linux-ntfs-dev@lists.sourceforge.net,
 yashsri421@gmail.com, linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

The opening comment mark '/**' is used for highlighting the beginning of
kernel-doc comments.
There are certain files in fs/ntfs which follow this syntax, but the
content inside does not comply with kernel-doc.
Such lines were probably not meant for kernel-doc parsing, but are parsed
due to the presence of kernel-doc like comment syntax(i.e, '/**'), which
causes unexpected warnings from kernel-doc.

E.g., presence of kernel-doc like comment in the header for
fs/ntfs/attrib.c, causes these unexpected warnings by kernel-doc:
"warning: Incorrect use of kernel-doc format:  * ntfs_map_runlist_nolock - map (a part of) a runlist of an ntfs inode"
"warning: Function parameter or member 'ni' not described in 'ntfs_map_runlist_nolock'"
"warning: Function parameter or member 'vcn' not described in 'ntfs_map_runlist_nolock'"
"warning: Function parameter or member 'ctx' not described in 'ntfs_map_runlist_nolock'"
"warning: expecting prototype for c(). Prototype was for ntfs_map_runlist_nolock() instead"

Similarly for other files too.

Provide a simple fix by replacing such occurrences with general comment
format, i.e. '/*', to prevent kernel-doc from parsing it.

Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
---
* Applies perfectly on next-20210319

 fs/ntfs/aops.c     | 2 +-
 fs/ntfs/aops.h     | 2 +-
 fs/ntfs/attrib.c   | 2 +-
 fs/ntfs/compress.c | 8 ++++----
 fs/ntfs/dir.c      | 4 ++--
 fs/ntfs/inode.c    | 2 +-
 fs/ntfs/mft.c      | 2 +-
 fs/ntfs/runlist.c  | 2 +-
 8 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index bb0a43860ad2..1024cdec136a 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * aops.c - NTFS kernel address space operations and page cache handling.
  *
  * Copyright (c) 2001-2014 Anton Altaparmakov and Tuxera Inc.
diff --git a/fs/ntfs/aops.h b/fs/ntfs/aops.h
index f0962d46bd67..2dcd46befdff 100644
--- a/fs/ntfs/aops.h
+++ b/fs/ntfs/aops.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
-/**
+/*
  * aops.h - Defines for NTFS kernel address space operations and page cache
  *	    handling.  Part of the Linux-NTFS project.
  *
diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index d563abc3e136..2911c04a33e0 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * attrib.c - NTFS attribute operations.  Part of the Linux-NTFS project.
  *
  * Copyright (c) 2001-2012 Anton Altaparmakov and Tuxera Inc.
diff --git a/fs/ntfs/compress.c b/fs/ntfs/compress.c
index d2f9d6a0ee32..014dbd079ad5 100644
--- a/fs/ntfs/compress.c
+++ b/fs/ntfs/compress.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * compress.c - NTFS kernel compressed attributes handling.
  *		Part of the Linux-NTFS project.
  *
@@ -18,7 +18,7 @@
 #include "debug.h"
 #include "ntfs.h"
 
-/**
+/*
  * ntfs_compression_constants - enum of constants used in the compression code
  */
 typedef enum {
@@ -41,12 +41,12 @@ typedef enum {
 	NTFS_MAX_CB_SIZE	= 64 * 1024,
 } ntfs_compression_constants;
 
-/**
+/*
  * ntfs_compression_buffer - one buffer for the decompression engine
  */
 static u8 *ntfs_compression_buffer;
 
-/**
+/*
  * ntfs_cb_lock - spinlock which protects ntfs_compression_buffer
  */
 static DEFINE_SPINLOCK(ntfs_cb_lock);
diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index cd96083a12c8..518c3a21a556 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * dir.c - NTFS kernel directory operations. Part of the Linux-NTFS project.
  *
  * Copyright (c) 2001-2007 Anton Altaparmakov
@@ -17,7 +17,7 @@
 #include "debug.h"
 #include "ntfs.h"
 
-/**
+/*
  * The little endian Unicode string $I30 as a global constant.
  */
 ntfschar I30[5] = { cpu_to_le16('$'), cpu_to_le16('I'),
diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index f5c058b3192c..4277d0fd7d88 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * inode.c - NTFS kernel inode handling.
  *
  * Copyright (c) 2001-2014 Anton Altaparmakov and Tuxera Inc.
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 0d62cd5bb7f8..d197d402933a 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * mft.c - NTFS kernel mft record operations. Part of the Linux-NTFS project.
  *
  * Copyright (c) 2001-2012 Anton Altaparmakov and Tuxera Inc.
diff --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c
index 97932fb5179c..0d448e9881f7 100644
--- a/fs/ntfs/runlist.c
+++ b/fs/ntfs/runlist.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * runlist.c - NTFS runlist handling code.  Part of the Linux-NTFS project.
  *
  * Copyright (c) 2001-2007 Anton Altaparmakov
-- 
2.17.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
