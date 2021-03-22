Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8484A344D27
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Mar 2021 18:22:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lOOFe-0003Ed-1H; Mon, 22 Mar 2021 17:22:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yashsri421@gmail.com>) id 1lOO5q-0006mq-JM
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Mar 2021 17:11:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o+rQOUxD6ns2rafwTLx1FeOmKC6/rz2dWQIZ1qXVO2g=; b=Izd4Z9+Cl2jX84opeqjOgOEF9G
 1f6YJPGwU8zoMGRYrK3v1LFUA9Ft+OcYnpJc3hP8CjAuOF+ClkzYTJTluTxbKK5x+LoDVTT4AuI5O
 aUiHky8J8uXwdVv530+QALw2t/jmPEaymocHZUMrOLSBWCbCAwCTCT/dQgv7FeNIi4c4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o+rQOUxD6ns2rafwTLx1FeOmKC6/rz2dWQIZ1qXVO2g=; b=MVDq+e4+zyEc7abiM3vb9dk0lF
 LXOi/U3VaPYyrS6DdCWTlUNTXL4wu/1U5XhXoiPuMzl2xMQ3pjdP5NvOFblycx8b0gGPFUec7fjkJ
 +rWPV8aRmuH83wxIUDL7m8I3CVoT9l0g/wTXxoqEqJRddj+wz5d2YoFjytqKGfy+abUQ=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lOO5j-00F26V-17
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Mar 2021 17:11:54 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 lr1-20020a17090b4b81b02900ea0a3f38c1so11409535pjb.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Mar 2021 10:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o+rQOUxD6ns2rafwTLx1FeOmKC6/rz2dWQIZ1qXVO2g=;
 b=P06Qb3YQCSLVPYX6Nr5a46z3wuOI8LCkOcQXeBERoJ6Mupnb05RgMv+tJ9/trhYFlH
 uX0bH0l57lVR8x4iAW1t3Hg6gTYrNQQgdICjO7qCGHpCOTA2mrwIqgOnS7sbrnNva/2M
 1OzXombe//QOnzqOp6QB9NWh8HucwiR52vwgJQix/Gk+0oBmZOVv8zvucEI9RgDrzqWT
 FC3rgaRp9/iXUTcFVnvz4/ijPrdTcV4jrXDrqlZMcTzqbfT+rEqp+wKMdSnThVONb62f
 fJValpxedDDzMwPmngI/AVUSVoo5HcU0HW14EVbpu6+5gjOyRs3t1QGob7yYbgo9Ke93
 zzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o+rQOUxD6ns2rafwTLx1FeOmKC6/rz2dWQIZ1qXVO2g=;
 b=FOndtQ4EFoEkpzi7+X53C1FXXkXLB4NLj03O0OCf0rzN7/t0zgH/GBjXYDOSm+P80W
 IzqR8vJwKEDwnKv8Ju15ogyrri7Zg0occLX2EEDEJqt/Ec6dGnJkhaWE5jJKvlcpM4Ro
 5mFvngIztjli2YxPJ9XlSHlg7BXiaGi2By/WmiLaXo5CL+RMB4ur3h8vaExPwYXoAGAf
 2kpPwpQPRYB6En12EyvEqJUlkOXgDVo+vT+gCaf00iG093tF1SyltXnCp3aAy6+B5gQg
 ErVSvhRLivrGnx9ilGIt4jBClVxWgIHd2DPukZZZ1tH6polKigq+5R5eBsV7O10WKV69
 nbtg==
X-Gm-Message-State: AOAM530sa6ALvEE15i58ZJyhQW8bUHiD4WLDcRMALADZA24fCTlKjWpq
 wnQ4hyj+gkFVYS8myWMRReuLAY+jifyH3Q==
X-Google-Smtp-Source: ABdhPJwocaqQy8EUvKQL4IXXZB9gIfgFzHdd7Y4RpAjwBP01S/HxhrKYC5l3MR+j0HnKsNspxhd1FQ==
X-Received: by 2002:a17:90a:a481:: with SMTP id z1mr55015pjp.161.1616433101337; 
 Mon, 22 Mar 2021 10:11:41 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:600d:a089:2d32:3b1b:5d5:13d8])
 by smtp.googlemail.com with ESMTPSA id
 x7sm14599013pfp.23.2021.03.22.10.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 10:11:40 -0700 (PDT)
From: Aditya Srivastava <yashsri421@gmail.com>
To: anton@tuxera.com
Date: Mon, 22 Mar 2021 22:41:31 +0530
Message-Id: <20210322171131.14347-1-yashsri421@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <CAKXUXMxU_7YBqyEeip5kpN5LpYmtR0MFF4QbdtOebxJHC1pkTA@mail.gmail.com>
References: <CAKXUXMxU_7YBqyEeip5kpN5LpYmtR0MFF4QbdtOebxJHC1pkTA@mail.gmail.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yashsri421[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (yashsri421[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lOO5j-00F26V-17
X-Mailman-Approved-At: Mon, 22 Mar 2021 17:22:00 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2] ntfs: fix incorrect kernel-doc comment
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
due to the presence of kernel-doc like comment syntax(i.e, '/**'),
which causes unexpected warnings from kernel-doc.

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

Also fix enum documentation format at "ntfs_compression_constants", in
fs/ntfs/compress.c, by prefixing 'enum' keyword to the comment
description.

Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
---
Changes in v2:
- prefix 'enum' keyword at "ntfs_compression_constants - enum of constants used in the compression code" comment in fs/ntfs/compress.c
- modify comment message correspondingly

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
index d2f9d6a0ee32..e4e7587e8f7b 100644
--- a/fs/ntfs/compress.c
+++ b/fs/ntfs/compress.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * compress.c - NTFS kernel compressed attributes handling.
  *		Part of the Linux-NTFS project.
  *
@@ -19,7 +19,7 @@
 #include "ntfs.h"
 
 /**
- * ntfs_compression_constants - enum of constants used in the compression code
+ * enum ntfs_compression_constants - enum of constants used in the compression code
  */
 typedef enum {
 	/* Token types and access mask. */
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
