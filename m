Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC87D7CB453
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxe-0006Xi-Ct;
	Mon, 16 Oct 2023 20:13:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwI-00041s-L8
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ww/KyQmZLUBfrbCXL0JtfwVQmCdaEySGJqhTjl+W3Yo=; b=IPKurr2gYnW2Tvn1h2fKdzF77o
 jeJi5hImWfZO/GXlRkFIJYuQh+OUrHg9FFkpYwBRIWSq/XPp2XoFSOHuHMg3xb6/7QH/QoPY9qs5P
 p9DvjC+w8rPHm2wiLGqZiW5BldGpQXo71/zc64yfmNmxvXki62bqYQ8SQSzeAkG6uttY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ww/KyQmZLUBfrbCXL0JtfwVQmCdaEySGJqhTjl+W3Yo=; b=H
 jBHqJkkNmEuLkNLXRDddtS3eE/Jf9MPxd3sP3i7iI6rOVjiViSGzkKOLGSLWYc6I8KOSgwCfGHoIj
 gr0zd/8oI82OyrcpI7kpdfAeLK4DNIvOAw3FY1PpArj6VuvZdYbhSJcFfO7VP0poyI/Ad+1M+KZTt
 3Ij+GzcGUdFAL0/A=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwF-00H4xW-D8 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=ww/KyQmZLUBfrbCXL0JtfwVQmCdaEySGJqhTjl+W3Yo=; b=eeeHRWZP6iP9MVTlau71wh1/Ye
 hlycThR6DJpI5xME/aBZpsTFNev59ay9bJK87wFSeA/jaREIoxsm5TmSB5aLFhypZskVPhq4ZK5UZ
 Si/5VKLeA8v80BgmswicOKx5uUhehBheDVu6DXV0XV0Jr3qlhyyUJcihl/bO/xFX+ctpRIDgqomBZ
 QoUiabWvLs+fRull59qucgK0UmE1F1lDqFNomWYWr5GTuwXIEqxIZ6wAFj9OUZgzSG+OY7piO6nHZ
 b2uwk8N0YRur7vAl2YSviS8Hfwr+Pq0lfH/b5av3RhPPEkLcmOR+GFIAZB9X6/45o50IMX/G3gQ8V
 xwHgURaA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvo-0085aK-FF; Mon, 16 Oct 2023 20:11:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:47 +0100
Message-Id: <20231016201114.1928083-1-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Pankaj recently added folio_create_empty_buffers() as the
 folio equivalent to create_empty_buffers(). This patch set finishes the
 conversion
 by first converting all remaining filesystems to call folio [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qsTwF-00H4xW-D8
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 00/27] Finish the create_empty_buffers()
 transition
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
Cc: Pankaj Raghav <p.raghav@samsung.com>, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, gfs2@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Pankaj recently added folio_create_empty_buffers() as the folio
equivalent to create_empty_buffers().  This patch set finishes
the conversion by first converting all remaining filesystems
to call folio_create_empty_buffers(), then renaming it back
to create_empty_buffers().  I took the opportunity to make a few
simplifications like making folio_create_empty_buffers() return the head
buffer and extracting get_nth_bh() from nilfs2.

A few of the patches in this series aren't directly related to
create_empty_buffers(), but I saw them while I was working on this and
thought they'd be easy enough to add to this series.  Compile-tested only,
other than ext4.

v2:
 - Added the patch to fix the return type from grow_dev_page()
 - Fixed typo in subject line noticed by Andreas
 - Fixed missed assignment to 'bh' spotted by Andreas
 - Exported folio_copy() spotted by Ryusuke
 - Added various Reviewed-by tags from Pankaj, Ryusuke & Andreas

Matthew Wilcox (Oracle) (27):
  buffer: Return bool from grow_dev_folio()
  buffer: Make folio_create_empty_buffers() return a buffer_head
  mpage: Convert map_buffer_to_folio() to folio_create_empty_buffers()
  ext4: Convert to folio_create_empty_buffers
  buffer: Add get_nth_bh()
  gfs2: Convert inode unstuffing to use a folio
  gfs2: Convert gfs2_getbuf() to folios
  gfs2: Convert gfs2_getjdatabuf to use a folio
  gfs2: Convert gfs2_write_buf_to_page() to use a folio
  nilfs2: Convert nilfs_mdt_freeze_buffer to use a folio
  nilfs2: Convert nilfs_grab_buffer() to use a folio
  nilfs2: Convert nilfs_copy_page() to nilfs_copy_folio()
  nilfs2: Convert nilfs_mdt_forget_block() to use a folio
  nilfs2: Convert nilfs_mdt_get_frozen_buffer to use a folio
  nilfs2: Remove nilfs_page_get_nth_block
  nilfs2: Convert nilfs_lookup_dirty_data_buffers to use
    folio_create_empty_buffers
  ntfs: Convert ntfs_read_block() to use a folio
  ntfs: Convert ntfs_writepage to use a folio
  ntfs: Convert ntfs_prepare_pages_for_non_resident_write() to folios
  ntfs3: Convert ntfs_zero_range() to use a folio
  ocfs2: Convert ocfs2_map_page_blocks to use a folio
  reiserfs: Convert writepage to use a folio
  ufs: Add ufs_get_locked_folio and ufs_put_locked_folio
  ufs: Use ufs_get_locked_folio() in ufs_alloc_lastblock()
  ufs; Convert ufs_change_blocknr() to use folios
  ufs: Remove ufs_get_locked_page()
  buffer: Remove folio_create_empty_buffers()

 fs/buffer.c                 |  68 +++++-----
 fs/ext4/inode.c             |  14 +-
 fs/ext4/move_extent.c       |  11 +-
 fs/gfs2/aops.c              |   2 +-
 fs/gfs2/bmap.c              |  48 ++++---
 fs/gfs2/meta_io.c           |  61 ++++-----
 fs/gfs2/quota.c             |  37 +++---
 fs/mpage.c                  |   3 +-
 fs/nilfs2/mdt.c             |  66 +++++-----
 fs/nilfs2/page.c            |  76 +++++------
 fs/nilfs2/page.h            |  11 --
 fs/nilfs2/segment.c         |   7 +-
 fs/ntfs/aops.c              | 255 +++++++++++++++++-------------------
 fs/ntfs/file.c              |  89 ++++++-------
 fs/ntfs3/file.c             |  31 ++---
 fs/ocfs2/aops.c             |  19 +--
 fs/reiserfs/inode.c         |  80 +++++------
 fs/ufs/balloc.c             |  20 ++-
 fs/ufs/inode.c              |  25 ++--
 fs/ufs/util.c               |  34 +++--
 fs/ufs/util.h               |  10 +-
 include/linux/buffer_head.h |  28 +++-
 mm/util.c                   |   1 +
 23 files changed, 481 insertions(+), 515 deletions(-)

-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
