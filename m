Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 422A459803E
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Aug 2022 10:42:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oOb73-0000BO-2f;
	Thu, 18 Aug 2022 08:42:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ritesh.list@gmail.com>) id 1oOXiO-0004Zf-F6
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zqyIaGt/ExqtQmslvy9xLCDQR0MrGNhaTrbDsaW27oI=; b=JFJiL+ByLxdsUTvwdehxejr1F0
 YvQjvOD5uxWO65tzqJwtdSc4LfegrXxnO+uDxTrb+wJ5y3TH9xHp8nmJTXxyyHC1l+R9iNm9Cye64
 G36MJnOaExHAfEb8xnYYOyk6ot2nCZVl0aq4ff8VQKV4l5gluKYZOZvr3bNI+prhshzg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zqyIaGt/ExqtQmslvy9xLCDQR0MrGNhaTrbDsaW27oI=; b=T
 uVYJ7ZLH6LrQC012R9oIyLnPaoUqY2palz3DQdcjIYuTTtRdIzuXXE7r8gQwK3bqEerPh8D+wwrlY
 fqqkgCtyKwFJeLEkLvhVfE3JB38TFvmtLRTYV+vvR+VCYuSmEp6YO1cF1sRIwA1R8jLlmsMHjkUVj
 cBV/PJRgHZ6vmfIw=;
Received: from mail-pf1-f172.google.com ([209.85.210.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oOXiK-007QkG-6N for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:08 +0000
Received: by mail-pf1-f172.google.com with SMTP id a22so559291pfg.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Aug 2022 22:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=zqyIaGt/ExqtQmslvy9xLCDQR0MrGNhaTrbDsaW27oI=;
 b=RzmzR3eAdxOXzboQinMz32niTOdFBYn3Mf29kgMNnSAW2rzWPcMPm8/p/44uxJ8nCS
 fsdzbWE18EYaI/JJQlHF2BcVWX8GX4+YT7q3X0HkDhEddW9Jd69nzXF1RT88Qo8Ur82h
 RBTxVzHXkhO99IB+oxNeXeV4CyAemFfqZYFIS9BGU8GgWl2XRKBgyEbRfTK6Fb8H2fzC
 peC9WSv1u0QegTkBdeAy+zf+P8DTuMlqSwy0cDmDEQp8DdKPaKVFsPfxCZcb0umHOLDW
 Lyvst7Fx/A9qPxt6cjRKQe7rfgHmMPkrStk+mzR8Y+tw68vkPkMSymEyu/W7yHgzB77T
 URhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=zqyIaGt/ExqtQmslvy9xLCDQR0MrGNhaTrbDsaW27oI=;
 b=lbPQ/yXVQL/45BnLtPGorNqEd7UaiPpYrCozFsRVa+kSdpV0rDXU225l1WrnWuKawh
 x70Ca4dCdVgHzmm1qvYxEwYN6tVrlF6mzdgwqEhHD1/ZoAnrgzhTSxD7CIBfeBYFXxvI
 O3AfrINF6VgejVi01QE8ijxCWlDdPxglV6NJDVskQF8QEqBu/dbtGQtgIBcLusoPNwVF
 UhgYZ6IIbL0Hi/wUxM0Zd3Ep81mwyxKGQmmVpTdF3OufkaBjlJfRSBYyULcacd/YOgAo
 qwM1VoGj3jGc0Ldjn7KyTRakvGXbK4YtKCBdEO5ZfFFnZRXqL+t2W+IVnvVga8rmog5p
 hpOw==
X-Gm-Message-State: ACgBeo3cTraVOd1mD2qhTw6YROSMbaVSg8Ly+x0A6EW9mCAKBEZfSYAD
 hciaZAvO/b33fuSBJHfxnkVxCeiGLIE=
X-Google-Smtp-Source: AA6agR71ckaXfe+LO01tzSzvuueKremnthqSkRj6McdiTjcD/DeXMRpwfxI4QvKm8R2stgNS7YCv7w==
X-Received: by 2002:a63:1b55:0:b0:41e:2cc8:4296 with SMTP id
 b21-20020a631b55000000b0041e2cc84296mr1225831pgm.510.1660799098528; 
 Wed, 17 Aug 2022 22:04:58 -0700 (PDT)
Received: from localhost ([2406:7400:63:e947:599c:6cd1:507f:801e])
 by smtp.gmail.com with ESMTPSA id
 k5-20020a17090a404500b001faaed06ce2sm425762pjg.28.2022.08.17.22.04.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Aug 2022 22:04:58 -0700 (PDT)
From: "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>
To: linux-ext4@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Thu, 18 Aug 2022 10:34:36 +0530
Message-Id: <cover.1660788334.git.ritesh.list@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: submit_bh/submit_bh_wbc are non-blocking functions which just
 submits the bio and returns. The caller of submit_bh/submit_bh_wbc needs
 to wait on buffer till I/O completion and then check buffer head' [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ritesh.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.172 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oOXiK-007QkG-6N
X-Mailman-Approved-At: Thu, 18 Aug 2022 08:42:44 +0000
Subject: [Linux-NTFS-Dev] [PATCHv3 0/4] submit_bh: Drop unnecessary return
 value
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
 "Ritesh Harjani \(IBM\)" <ritesh.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

submit_bh/submit_bh_wbc are non-blocking functions which just submits
the bio and returns. The caller of submit_bh/submit_bh_wbc needs to wait
on buffer till I/O completion and then check buffer head's b_state field
to know if there was any I/O error.

Hence there is no need for these functions to have any return type.
Even now they always returns 0. Hence drop the return value and make
their return type as void to avoid any confusion.

PATCHv2 -> PATCHv3
===================
1. Rebased on top of the latest 6.0-rc1 release.
   Recently REQ_OP_** req operations and REQ_** flags were combined as one
   parameter (blk_opf_t type) to submit_bh() API.
2. Since the patch series remains trivial on rebase, I have retained the
   reviewed-by from Jan and Christoph.

RFC -> PATCHv2
===============
1. Added Patch-2 to fix ntfs_submit_bh_for_read() caller.
2. Added Reviewed-by from Christoph.

Ritesh Harjani (IBM) (4):
  jbd2: Drop useless return value of submit_bh
  fs/ntfs: Drop useless return value of submit_bh from ntfs_submit_bh_for_read
  fs/buffer: Drop useless return value of submit_bh
  fs/buffer: Make submit_bh & submit_bh_wbc return type as void

 fs/buffer.c                 | 23 ++++++++++-------------
 fs/jbd2/commit.c            | 10 ++++------
 fs/jbd2/journal.c           |  9 ++++-----
 fs/ntfs/file.c              |  4 ++--
 include/linux/buffer_head.h |  2 +-
 5 files changed, 21 insertions(+), 27 deletions(-)

--
2.35.3



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
