Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA2433E2BF
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 Mar 2021 01:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lud8Qc9SiLTLJDbu1XAM9Px9j12Q1TxB8bSxHwixXI4=; b=c5XExVZArupAkKXov9xXdVY0nj
	hTXi6FxOQibg1dAVlZ2ZdZQBd3AsYY3Nr82OJPtbLIUIakJlKtpGkvkkWTBbyWrqHsbGW/hGkCmbc
	IOipkBmbRpwF3vJqyVOAtTpTtvD042iYx4sXWaavrNeAcbaTBUtiZuNNm/t/ctJDLCN8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lMK7L-0001qB-6O; Wed, 17 Mar 2021 00:32:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1lLoUO-0006BZ-UK
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 15 Mar 2021 14:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TDjS8nHgkkG8HMEdf0tCHoM6ZmtaQGjPppDAQ57ocbE=; b=UYlydu2VJf+wtDe2ZymUFTwJIj
 d+9RqS1e4K3P+twA+Sd6ySnhhZ/ppXR+gCItXv0OR7nowhdTxdALrkENLkYJfqAxWDvi908FYDTb2
 wPDzn6FmuaDQs/SVewPkELQRET7Ng5qly7KEwnuCQztoKurfjuOdYY8/I1HlYI8Nf3cI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TDjS8nHgkkG8HMEdf0tCHoM6ZmtaQGjPppDAQ57ocbE=; b=E
 Xt0X/4ckJJgglMgYJAI5T7QOeMPI9KjtNsL7QUPKVL2EXoEOvN2S0FZIEJfujvYhvej39SSXUMusE
 tmW8SzbhKBSw00kXmOzJB1rnP5kSq2L2P07wpapzlAJ1JE9M2JYXOoLEBTmIaCEKvsldqkovQK/sW
 sgQWWT/VM5n03f/o=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lLoUH-00084A-Kh
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 15 Mar 2021 14:46:36 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id BF332244;
 Mon, 15 Mar 2021 17:46:20 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1615819580;
 bh=TDjS8nHgkkG8HMEdf0tCHoM6ZmtaQGjPppDAQ57ocbE=;
 h=From:To:CC:Subject:Date;
 b=SMixQioSpd8UuxcI2EobJVHaogwcqX/EFUSxkhjk8Uc8ffMVRpVI3yQeQv+SJosVX
 qKmPWaI857ATD0lXvgufNCQyCjbsaoHCB2TlSGQJEv9vGBs/bjiderol5qBwm/0yRB
 sy/JzYuhXRJMYqKDXLD48/4DnmWQB1S8t9o6ylP8=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 15 Mar 2021 17:46:20 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Mon, 15 Mar 2021 17:44:04 +0300
Message-ID: <20210315144414.3365314-1-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Originating-IP: [172.30.114.105]
X-ClientProxiedBy: vdlg-exch-02.paragon-software.com (172.30.1.105) To
 vdlg-exch-02.paragon-software.com (172.30.1.105)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [176.12.100.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lLoUH-00084A-Kh
X-Mailman-Approved-At: Wed, 17 Mar 2021 00:32:42 +0000
Subject: [Linux-NTFS-Dev] [PATCH v23 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
From: Konstantin Komarov via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Cc: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, linux-ntfs-dev@lists.sourceforge.net, hch@lst.de,
 viro@zeniv.linux.org.uk, joe@perches.com, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This patch adds NTFS Read-Write driver to fs/ntfs3.

Having decades of expertise in commercial file systems development and huge
test coverage, we at Paragon Software GmbH want to make our contribution to
the Open Source Community by providing implementation of NTFS Read-Write
driver for the Linux Kernel.

This is fully functional NTFS Read-Write driver. Current version works with
NTFS(including v3.1) and normal/compressed/sparse files and supports journal replaying.

We plan to support this version after the codebase once merged, and add new
features and fix bugs. For example, full journaling support over JBD will be
added in later updates.

v2:
 - patch splitted to chunks (file-wise)
 - build issues fixed
 - sparse and checkpatch.pl errors fixed
 - NULL pointer dereference on mkfs.ntfs-formatted volume mount fixed
 - cosmetics + code cleanup

v3:
 - added acl, noatime, no_acs_rules, prealloc mount options
 - added fiemap support
 - fixed encodings support
 - removed typedefs
 - adapted Kernel-way logging mechanisms
 - fixed typos and corner-case issues

v4:
 - atomic_open() refactored
 - code style updated
 - bugfixes

v5:
- nls/nls_alt mount options added
- Unicode conversion fixes
- Improved very fragmented files operations
- logging cosmetics

v6:
- Security Descriptors processing changed
  added system.ntfs_security xattr to set
  SD
- atomic_open() optimized
- cosmetics

v7:
- Security Descriptors validity checks added (by Mark Harmstone)
- atomic_open() fixed for the compressed file creation with directio
  case
- remount support
- temporarily removed readahead usage
- cosmetics

v8:
- Compressed files operations fixed

v9:
- Further cosmetics applied as suggested
by Joe Perches

v10:
- operations with compressed/sparse files on very fragmented volumes improved
- reduced memory consumption for above cases

v11:
- further compressed files optimizations: reads/writes are now skipping bufferization
- journal wipe to the initial state optimized (bufferization is also skipped)
- optimized run storage (re-packing cluster metainformation)
- fixes based on Matthew Wilcox feedback to the v10
- compressed/sparse/normal could be set for empty files with 'system.ntfs_attrib' xattr

v12:
- nls_alt mount option removed after discussion with Pali Rohar
- fixed ni_repack()
- fixed resident files transition to non-resident when size increasing

v13:
- nested_lock fix (lockdep)
- out-of-bounds read fix (KASAN warning)
- resident->nonresident transition fixed for compressed files
- load_nls() missed fix applied
- some sparse utility warnings fixes

v14:
- support for additional compression types (we've adapted WIMLIB's
  implementation, authored by Eric Biggers, into ntfs3)

v15:
- kernel test robot warnings fixed
- lzx/xpress compression license headers updated

v16:
- lzx/xpress moved to initial ntfs-3g plugin code
- mutexes instead of a global spinlock for compresions
- FALLOC_FL_PUNCH_HOLE and FALLOC_FL_COLLAPSE_RANGE implemented
- CONFIG_NTFS3_FS_POSIX_ACL added

v17:
- FALLOC_FL_COLLAPSE_RANGE fixed
- fixes for Mattew Wilcox's and Andy Lavr's concerns

v18:
- ntfs_alloc macro splitted into two ntfs_malloc + ntfs_zalloc
- attrlist.c: always use ntfs_cmp_names instead of memcmp; compare entry names
  only for entry with vcn == 0
- dir.c: remove unconditional ni_lock in ntfs_readdir
- fslog.c: corrected error case behavior
- index.c: refactored due to modification of ntfs_cmp_names; use rw_semaphore
  for read/write access to alloc_run and bitmap_run while ntfs_readdir
- run.c: separated big/little endian code in functions
- upcase.c: improved ntfs_cmp_names, thanks to Kari Argillander for idea
  and 'bothcase' implementation

v19:
- fixed directory bitmap for 2MB cluster size
- fixed rw_semaphore init for directories

v20:
- fixed issue with incorrect hidden/system attribute setting on
  root subdirectories
- use kvmalloc instead of kmalloc for runs array
- fixed index behavior on volumes with cluster size more than 4k
- current build info is added into module info instead of printing on insmod

v21:
- fixes for clang CFI checks
- fixed sb->s_maxbytes for 32bit clusters
- user.DOSATTRIB is no more intercepted by ntfs3
- corrected xattr limits;  is used
- corrected CONFIG_NTFS3_64BIT_CLUSTER usage
- info about current build is added into module info and printing
on insmod (by Andy Lavr's request)
note: v21 is applicable for 'linux-next' not older than 2021.01.28

v22:
- ntfs_cmp_names() fixed
- raise warning if 'nls->uni2char' fails
- hot fix free clusters code optimized
- use clang-format 11.0 instead of 10.0 to format code

v23:
- corrections for Kernel Test Robot warnings
- kmem_cache_create() utilized to allocate memory in bitmap.c
- cosmetics and comments thru the code

Konstantin Komarov (10):
  fs/ntfs3: Add headers and misc files
  fs/ntfs3: Add initialization of super block
  fs/ntfs3: Add bitmap
  fs/ntfs3: Add file operations and implementation
  fs/ntfs3: Add attrib operations
  fs/ntfs3: Add compression
  fs/ntfs3: Add NTFS journal
  fs/ntfs3: Add Kconfig, Makefile and doc
  fs/ntfs3: Add NTFS3 in fs/Kconfig and fs/Makefile
  fs/ntfs3: Add MAINTAINERS

 Documentation/filesystems/ntfs3.rst |  107 +
 MAINTAINERS                         |    7 +
 fs/Kconfig                          |    1 +
 fs/Makefile                         |    1 +
 fs/ntfs3/Kconfig                    |   46 +
 fs/ntfs3/Makefile                   |   31 +
 fs/ntfs3/attrib.c                   | 2083 +++++++++++
 fs/ntfs3/attrlist.c                 |  456 +++
 fs/ntfs3/bitfunc.c                  |  135 +
 fs/ntfs3/bitmap.c                   | 1519 ++++++++
 fs/ntfs3/debug.h                    |   64 +
 fs/ntfs3/dir.c                      |  594 +++
 fs/ntfs3/file.c                     | 1130 ++++++
 fs/ntfs3/frecord.c                  | 3083 ++++++++++++++++
 fs/ntfs3/fslog.c                    | 5202 +++++++++++++++++++++++++++
 fs/ntfs3/fsntfs.c                   | 2540 +++++++++++++
 fs/ntfs3/index.c                    | 2641 ++++++++++++++
 fs/ntfs3/inode.c                    | 2056 +++++++++++
 fs/ntfs3/lib/decompress_common.c    |  332 ++
 fs/ntfs3/lib/decompress_common.h    |  352 ++
 fs/ntfs3/lib/lib.h                  |   26 +
 fs/ntfs3/lib/lzx_decompress.c       |  683 ++++
 fs/ntfs3/lib/xpress_decompress.c    |  155 +
 fs/ntfs3/lznt.c                     |  452 +++
 fs/ntfs3/namei.c                    |  592 +++
 fs/ntfs3/ntfs.h                     | 1237 +++++++
 fs/ntfs3/ntfs_fs.h                  | 1075 ++++++
 fs/ntfs3/record.c                   |  609 ++++
 fs/ntfs3/run.c                      | 1111 ++++++
 fs/ntfs3/super.c                    | 1509 ++++++++
 fs/ntfs3/upcase.c                   |  105 +
 fs/ntfs3/xattr.c                    | 1050 ++++++
 32 files changed, 30984 insertions(+)
 create mode 100644 Documentation/filesystems/ntfs3.rst
 create mode 100644 fs/ntfs3/Kconfig
 create mode 100644 fs/ntfs3/Makefile
 create mode 100644 fs/ntfs3/attrib.c
 create mode 100644 fs/ntfs3/attrlist.c
 create mode 100644 fs/ntfs3/bitfunc.c
 create mode 100644 fs/ntfs3/bitmap.c
 create mode 100644 fs/ntfs3/debug.h
 create mode 100644 fs/ntfs3/dir.c
 create mode 100644 fs/ntfs3/file.c
 create mode 100644 fs/ntfs3/frecord.c
 create mode 100644 fs/ntfs3/fslog.c
 create mode 100644 fs/ntfs3/fsntfs.c
 create mode 100644 fs/ntfs3/index.c
 create mode 100644 fs/ntfs3/inode.c
 create mode 100644 fs/ntfs3/lib/decompress_common.c
 create mode 100644 fs/ntfs3/lib/decompress_common.h
 create mode 100644 fs/ntfs3/lib/lib.h
 create mode 100644 fs/ntfs3/lib/lzx_decompress.c
 create mode 100644 fs/ntfs3/lib/xpress_decompress.c
 create mode 100644 fs/ntfs3/lznt.c
 create mode 100644 fs/ntfs3/namei.c
 create mode 100644 fs/ntfs3/ntfs.h
 create mode 100644 fs/ntfs3/ntfs_fs.h
 create mode 100644 fs/ntfs3/record.c
 create mode 100644 fs/ntfs3/run.c
 create mode 100644 fs/ntfs3/super.c
 create mode 100644 fs/ntfs3/upcase.c
 create mode 100644 fs/ntfs3/xattr.c


base-commit: 1e28eed17697bcf343c6743f0028cc3b5dd88bf0
-- 
2.25.4



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
