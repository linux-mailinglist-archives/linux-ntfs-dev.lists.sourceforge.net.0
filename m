Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB38343023
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 20 Mar 2021 23:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4RJ8TYcGvaBRZT5RCu0cznYIyBwvtyN7AHQcF+MfIqc=; b=TeDp+ZnX3IeDbrzM1T+k54EEk
	IyvK3qzJdItdXF+3+HZ6PtBzL7E1VjrNDk4U7wxw9AKnNvy+oiq585CDbqe1NV8DIvk/oY0P93aVz
	BuDo48toldcwTLbJLK3r3AbfFe4eJTz8jixG4CZXCJbJ4nAdDlFkmWBnAL6qQeoWvb9eQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lNkQD-0000gS-39; Sat, 20 Mar 2021 22:50:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1lNKGg-000818-1k
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 19 Mar 2021 18:54:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gdOfMSbRJ4TVzbUubxKM41tvH38yIV1ZmCzdcLku3B8=; b=EH1NONRSS+RgTKqlflZe5lpe59
 UgQxOQxqUio7HUlhafkyQJ7XkC56iOtCnWVhcNj1p2pkNPsClJ3U8OupUbUPXIXDz52Gq2EyR1WmR
 sp+gp7HrjSy87/4iMwbotu8SZZOaNwESoT3CGCYOqQo2hj9wFWlfcv73P5cHocIElH9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gdOfMSbRJ4TVzbUubxKM41tvH38yIV1ZmCzdcLku3B8=; b=kv4sb4r929bgDkQZeY/c181pHP
 5ZGe2saS5P1DvTzem+tWwYt4gcDaGqyeEIHQUtMow/2bXA7KtPPnqPvAHHEEwG/5B1Oh9biE9J3C/
 yyJdrCQAyaN83xN2UvzLjPFbhkRCbdcXWvF6pM08WItIaP1q/KOsMLY/Bb75m52b0DxQ=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lNKGO-0001JH-Pp
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 19 Mar 2021 18:54:39 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 3D5B4822B1;
 Fri, 19 Mar 2021 21:54:18 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1616180058;
 bh=gdOfMSbRJ4TVzbUubxKM41tvH38yIV1ZmCzdcLku3B8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=MNARbVSyDhlojcmzRGHgs6sRK+UD2tJr23HynsxUdi9pULZ5gmHL2pXOjEDcbtIKH
 iOqmvkSieU0f20VvgQLKzV55+FEL6hQ4yeVXTDWb2iLXSQDCCbRf9LeVQzdK++mFng
 8GgaMFilJV2cmV7s24bjXQmDXDFojsZH1KD34VVI=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 19 Mar 2021 21:54:17 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 19 Mar 2021 21:52:08 +0300
Message-ID: <20210319185210.1703925-9-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210319185210.1703925-1-almaz.alexandrovich@paragon-software.com>
References: <20210319185210.1703925-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
X-Originating-IP: [172.30.114.105]
X-ClientProxiedBy: vdlg-exch-02.paragon-software.com (172.30.1.105) To
 vdlg-exch-02.paragon-software.com (172.30.1.105)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lNKGO-0001JH-Pp
X-Mailman-Approved-At: Sat, 20 Mar 2021 22:50:13 +0000
Subject: [Linux-NTFS-Dev] [PATCH v24 08/10] fs/ntfs3: Add Kconfig,
 Makefile and doc
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

This adds Kconfig, Makefile and doc

Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
---
 Documentation/filesystems/ntfs3.rst | 107 ++++++++++++++++++++++++++++
 fs/ntfs3/Kconfig                    |  46 ++++++++++++
 fs/ntfs3/Makefile                   |  34 +++++++++
 3 files changed, 187 insertions(+)
 create mode 100644 Documentation/filesystems/ntfs3.rst
 create mode 100644 fs/ntfs3/Kconfig
 create mode 100644 fs/ntfs3/Makefile

diff --git a/Documentation/filesystems/ntfs3.rst b/Documentation/filesystems/ntfs3.rst
new file mode 100644
index 000000000000..fb29067360cc
--- /dev/null
+++ b/Documentation/filesystems/ntfs3.rst
@@ -0,0 +1,107 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=====
+NTFS3
+=====
+
+
+Summary and Features
+====================
+
+NTFS3 is fully functional NTFS Read-Write driver. The driver works with
+NTFS versions up to 3.1, normal/compressed/sparse files
+and journal replaying. File system type to use on mount is 'ntfs3'.
+
+- This driver implements NTFS read/write support for normal, sparse and
+  compressed files.
+- Supports native journal replaying;
+- Supports extended attributes
+	Predefined extended attributes:
+	- 'system.ntfs_security' gets/sets security
+			descriptor (SECURITY_DESCRIPTOR_RELATIVE)
+	- 'system.ntfs_attrib' gets/sets ntfs file/dir attributes.
+		Note: applied to empty files, this allows to switch type between
+		sparse(0x200), compressed(0x800) and normal;
+- Supports NFS export of mounted NTFS volumes.
+
+Mount Options
+=============
+
+The list below describes mount options supported by NTFS3 driver in addition to
+generic ones.
+
+===============================================================================
+
+nls=name		This option informs the driver how to interpret path
+			strings and translate them to Unicode and back. If
+			this option is not set, the default codepage will be
+			used (CONFIG_NLS_DEFAULT).
+			Examples:
+				'nls=utf8'
+
+uid=
+gid=
+umask=			Controls the default permissions for files/directories created
+			after the NTFS volume is mounted.
+
+fmask=
+dmask=			Instead of specifying umask which applies both to
+			files and directories, fmask applies only to files and
+			dmask only to directories.
+
+nohidden		Files with the Windows-specific HIDDEN (FILE_ATTRIBUTE_HIDDEN)
+			attribute will not be shown under Linux.
+
+sys_immutable		Files with the Windows-specific SYSTEM
+			(FILE_ATTRIBUTE_SYSTEM) attribute will be marked as system
+			immutable files.
+
+discard			Enable support of the TRIM command for improved performance
+			on delete operations, which is recommended for use with the
+			solid-state drives (SSD).
+
+force			Forces the driver to mount partitions even if 'dirty' flag
+			(volume dirty) is set. Not recommended for use.
+
+sparse			Create new files as "sparse".
+
+showmeta		Use this parameter to show all meta-files (System Files) on
+			a mounted NTFS partition.
+			By default, all meta-files are hidden.
+
+prealloc		Preallocate space for files excessively when file size is
+			increasing on writes. Decreases fragmentation in case of
+			parallel write operations to different files.
+
+no_acs_rules		"No access rules" mount option sets access rights for
+			files/folders to 777 and owner/group to root. This mount
+			option absorbs all other permissions:
+			- permissions change for files/folders will be reported
+				as successful, but they will remain 777;
+			- owner/group change will be reported as successful, but
+				they will stay as root
+
+acl			Support POSIX ACLs (Access Control Lists). Effective if
+			supported by Kernel. Not to be confused with NTFS ACLs.
+			The option specified as acl enables support for POSIX ACLs.
+
+noatime			All files and directories will not update their last access
+			time attribute if a partition is mounted with this parameter.
+			This option can speed up file system operation.
+
+===============================================================================
+
+ToDo list
+=========
+
+- Full journaling support (currently journal replaying is supported) over JBD.
+
+
+References
+==========
+https://www.paragon-software.com/home/ntfs-linux-professional/
+	- Commercial version of the NTFS driver for Linux.
+
+almaz.alexandrovich@paragon-software.com
+	- Direct e-mail address for feedback and requests on the NTFS3 implementation.
+
diff --git a/fs/ntfs3/Kconfig b/fs/ntfs3/Kconfig
new file mode 100644
index 000000000000..6e4cbc48ab8e
--- /dev/null
+++ b/fs/ntfs3/Kconfig
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config NTFS3_FS
+	tristate "NTFS Read-Write file system support"
+	select NLS
+	help
+	  Windows OS native file system (NTFS) support up to NTFS version 3.1.
+
+	  Y or M enables the NTFS3 driver with full features enabled (read,
+	  write, journal replaying, sparse/compressed files support).
+	  File system type to use on mount is "ntfs3". Module name (M option)
+	  is also "ntfs3".
+
+	  Documentation: <file:Documentation/filesystems/ntfs3.rst>
+
+config NTFS3_64BIT_CLUSTER
+	bool "64 bits per NTFS clusters"
+	depends on NTFS3_FS && 64BIT
+	help
+	  Windows implementation of ntfs.sys uses 32 bits per clusters.
+	  If activated 64 bits per clusters you will be able to use 4k cluster
+	  for 16T+ volumes. Windows will not be able to mount such volumes.
+
+	  It is recommended to say N here.
+
+config NTFS3_LZX_XPRESS
+	bool "activate support of external compressions lzx/xpress"
+	depends on NTFS3_FS
+	help
+	  In Windows 10 one can use command "compact" to compress any files.
+	  4 possible variants of compression are: xpress4k, xpress8k, xpress16k and lzx.
+	  If activated you will be able to read such files correctly.
+
+	  It is recommended to say Y here.
+
+config NTFS3_FS_POSIX_ACL
+	bool "NTFS POSIX Access Control Lists"
+	depends on NTFS3_FS
+	select FS_POSIX_ACL
+	help
+	  POSIX Access Control Lists (ACLs) support additional access rights
+	  for users and groups beyond the standard owner/group/world scheme,
+	  and this option selects support for ACLs specifically for ntfs
+	  filesystems.
+	  NOTE: this is linux only feature. Windows will ignore these ACLs.
+
+	  If you don't know what Access Control Lists are, say N.
diff --git a/fs/ntfs3/Makefile b/fs/ntfs3/Makefile
new file mode 100644
index 000000000000..b06a06cc006f
--- /dev/null
+++ b/fs/ntfs3/Makefile
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for the ntfs3 filesystem support.
+#
+
+# to check robot warnings
+ccflags-y += -Wunused-but-set-variable -Wold-style-declaration -Wint-to-pointer-cast
+
+obj-$(CONFIG_NTFS3_FS) += ntfs3.o
+
+ntfs3-y :=	attrib.o \
+		attrlist.o \
+		bitfunc.o \
+		bitmap.o \
+		dir.o \
+		fsntfs.o \
+		frecord.o \
+		file.o \
+		fslog.o \
+		inode.o \
+		index.o \
+		lznt.o \
+		namei.o \
+		record.o \
+		run.o \
+		super.o \
+		upcase.o \
+		xattr.o
+
+ntfs3-$(CONFIG_NTFS3_LZX_XPRESS) += $(addprefix lib/,\
+		decompress_common.o \
+		lzx_decompress.o \
+		xpress_decompress.o \
+		)
\ No newline at end of file
-- 
2.25.4



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
