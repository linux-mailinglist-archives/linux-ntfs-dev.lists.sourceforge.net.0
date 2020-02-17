Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E73F16C284
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 25 Feb 2020 14:39:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1j6aQN-0004sI-4k; Tue, 25 Feb 2020 13:38:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@bombadil.infradead.org>) id 1j3j11-0001oC-Lj
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 Feb 2020 16:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fkgCak0HpoKPRxyFS7qQUCVcx1Xo4TBY4b50DbSOe0Q=; b=UR9TFkBuvrJZulal5bzkN9xqDO
 y9bnqabd9PVLpu7pw8/sM4oA1AE744Ch4lKfx2JIPBZ0MPUXrY0VePz7zNUmBoCHXDspzNRe55rwC
 fk24Io/HIHeWpKuUct+WjMYEHwH248NVFNB2M+XqIs/pEWqNw3iXv8mbveLCmzmoLSN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fkgCak0HpoKPRxyFS7qQUCVcx1Xo4TBY4b50DbSOe0Q=; b=L/GIrW8Fyq6wEf3OSpMQeqVfc2
 Je+5yTtg4ci+JLiQ1MdVedn5J+NA30jzMeZYw9MW8XsBwbP4m9GHXfS5TgdMwr3YF2PZoUNgnUH3i
 aLjJdDPVZIicVvc1Db83BYYZHW1Zxbu1D2hPYOyxftDvIjOvGuomzV/roWmrWoI7gVf0=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j3j10-006cbZ-1y
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 Feb 2020 16:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=fkgCak0HpoKPRxyFS7qQUCVcx1Xo4TBY4b50DbSOe0Q=; b=qzK/w1Pv6PbAFUuhWfCFGzs3IR
 5EtyUE1C0U5G7s6OcuKiAPUeNujNbvVXS+Ar0Q2nXQHwGxlilRLYJIAKiRCRvlwmQT3F9q4qFsCPj
 28jP7Zt8SZfEDpRUa+KGpp+Hkw5bpKo1n7f9q2LRMdI1Um8MP2f9t9YZAj2Yu2LSXLvwKNNI/2jCM
 Xq+2Fs/kVUekcZmeNo9RHlVIw7stk7rsKIYNteD4QnczFNvD0sufWzgQdTsOT8W2ci7TH4wQZzrxd
 7SFV+A/+h/j3BN3ZR6zZMIwdIgUuKrdAAhrn8pTIf62jkS/ThL8lX/Nx5M1PqJRNVc+8WA522U5Mh
 uNerRHaA==;
Received: from x2f7f83d.dyn.telefonica.de ([2.247.248.61]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3j0q-0006up-J0; Mon, 17 Feb 2020 16:12:49 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92.3)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1j3j0a-000fb7-PZ; Mon, 17 Feb 2020 17:12:32 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Mon, 17 Feb 2020 17:12:13 +0100
Message-Id: <f09ca6c9bdd4e7aa7208f3dba0b8753080b38d03.1581955849.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1581955849.git.mchehab+huawei@kernel.org>
References: <cover.1581955849.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1j3j10-006cbZ-1y
X-Mailman-Approved-At: Tue, 25 Feb 2020 13:38:57 +0000
Subject: [Linux-NTFS-Dev] [PATCH 27/44] docs: filesystems: convert ntfs.txt
 to ReST
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 Anton Altaparmakov <anton@tuxera.com>, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

- Add a SPDX header;
- Adjust document title;
- Comment out text-only ToC;
- Some whitespace fixes and new line breaks;
- Mark literal blocks as such;
- Add table markups;
- Add it to filesystems/index.rst.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/filesystems/index.rst           |   3 +-
 .../filesystems/{ntfs.txt => ntfs.rst}        | 143 ++++++++++--------
 2 files changed, 81 insertions(+), 65 deletions(-)
 rename Documentation/filesystems/{ntfs.txt => ntfs.rst} (85%)

diff --git a/Documentation/filesystems/index.rst b/Documentation/filesystems/index.rst
index 01587704fcc9..62be53c4755d 100644
--- a/Documentation/filesystems/index.rst
+++ b/Documentation/filesystems/index.rst
@@ -74,7 +74,8 @@ Documentation for filesystem implementations.
    inotify
    isofs
    nilfs2
+   nfs/index
+   ntfs
    overlayfs
    virtiofs
    vfat
-   nfs/index
diff --git a/Documentation/filesystems/ntfs.txt b/Documentation/filesystems/ntfs.rst
similarity index 85%
rename from Documentation/filesystems/ntfs.txt
rename to Documentation/filesystems/ntfs.rst
index 553f10d03076..5bb093a26485 100644
--- a/Documentation/filesystems/ntfs.txt
+++ b/Documentation/filesystems/ntfs.rst
@@ -1,19 +1,21 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+================================
 The Linux NTFS filesystem driver
 ================================
 
 
-Table of contents
-=================
+.. Table of contents
 
-- Overview
-- Web site
-- Features
-- Supported mount options
-- Known bugs and (mis-)features
-- Using NTFS volume and stripe sets
-  - The Device-Mapper driver
-  - The Software RAID / MD driver
-  - Limitations when using the MD driver
+   - Overview
+   - Web site
+   - Features
+   - Supported mount options
+   - Known bugs and (mis-)features
+   - Using NTFS volume and stripe sets
+     - The Device-Mapper driver
+     - The Software RAID / MD driver
+     - Limitations when using the MD driver
 
 
 Overview
@@ -66,8 +68,10 @@ Features
   partition by creating a large file while in Windows and then loopback
   mounting the file while in Linux and creating a Linux filesystem on it that
   is used to install Linux on it.
-- A comparison of the two drivers using:
+- A comparison of the two drivers using::
+
 	time find . -type f -exec md5sum "{}" \;
+
   run three times in sequence with each driver (after a reboot) on a 1.4GiB
   NTFS partition, showed the new driver to be 20% faster in total time elapsed
   (from 9:43 minutes on average down to 7:53).  The time spent in user space
@@ -104,6 +108,7 @@ In addition to the generic mount options described by the manual page for the
 mount command (man 8 mount, also see man 5 fstab), the NTFS driver supports the
 following mount options:
 
+======================= =======================================================
 iocharset=name		Deprecated option.  Still supported but please use
 			nls=name in the future.  See description for nls=name.
 
@@ -175,16 +180,22 @@ disable_sparse=<BOOL>	If disable_sparse is specified, creation of sparse
 
 errors=opt		What to do when critical filesystem errors are found.
 			Following values can be used for "opt":
-			  continue: DEFAULT, try to clean-up as much as
+
+			  ========  =========================================
+			  continue  DEFAULT, try to clean-up as much as
 				    possible, e.g. marking a corrupt inode as
 				    bad so it is no longer accessed, and then
 				    continue.
-			  recover:  At present only supported is recovery of
+			  recover   At present only supported is recovery of
 				    the boot sector from the backup copy.
 				    If read-only mount, the recovery is done
 				    in memory only and not written to disk.
-			Note that the options are additive, i.e. specifying:
+			  ========  =========================================
+
+			Note that the options are additive, i.e. specifying::
+
 			   errors=continue,errors=recover
+
 			means the driver will attempt to recover and if that
 			fails it will clean-up as much as possible and
 			continue.
@@ -202,12 +213,18 @@ mft_zone_multiplier=	Set the MFT zone multiplier for the volume (this
 			In general use the default.  If you have a lot of small
 			files then use a higher value.  The values have the
 			following meaning:
+
+			      =====	    =================================
 			      Value	     MFT zone size (% of volume size)
+			      =====	    =================================
 				1		12.5%
 				2		25%
 				3		37.5%
 				4		50%
+			      =====	    =================================
+
 			Note this option is irrelevant for read-only mounts.
+======================= =======================================================
 
 
 Known bugs and (mis-)features
@@ -252,18 +269,18 @@ To create the table describing your volume you will need to know each of its
 components and their sizes in sectors, i.e. multiples of 512-byte blocks.
 
 For NT4 fault tolerant volumes you can obtain the sizes using fdisk.  So for
-example if one of your partitions is /dev/hda2 you would do:
+example if one of your partitions is /dev/hda2 you would do::
 
-$ fdisk -ul /dev/hda
+    $ fdisk -ul /dev/hda
 
-Disk /dev/hda: 81.9 GB, 81964302336 bytes
-255 heads, 63 sectors/track, 9964 cylinders, total 160086528 sectors
-Units = sectors of 1 * 512 = 512 bytes
+    Disk /dev/hda: 81.9 GB, 81964302336 bytes
+    255 heads, 63 sectors/track, 9964 cylinders, total 160086528 sectors
+    Units = sectors of 1 * 512 = 512 bytes
 
-   Device Boot      Start         End      Blocks   Id  System
-   /dev/hda1   *          63     4209029     2104483+  83  Linux
-   /dev/hda2         4209030    37768814    16779892+  86  NTFS
-   /dev/hda3        37768815    46170809     4200997+  83  Linux
+	Device Boot      Start         End      Blocks   Id  System
+	/dev/hda1   *          63     4209029     2104483+  83  Linux
+	/dev/hda2         4209030    37768814    16779892+  86  NTFS
+	/dev/hda3        37768815    46170809     4200997+  83  Linux
 
 And you would know that /dev/hda2 has a size of 37768814 - 4209030 + 1 =
 33559785 sectors.
@@ -271,15 +288,17 @@ And you would know that /dev/hda2 has a size of 37768814 - 4209030 + 1 =
 For Win2k and later dynamic disks, you can for example use the ldminfo utility
 which is part of the Linux LDM tools (the latest version at the time of
 writing is linux-ldm-0.0.8.tar.bz2).  You can download it from:
+
 	http://www.linux-ntfs.org/
+
 Simply extract the downloaded archive (tar xvjf linux-ldm-0.0.8.tar.bz2), go
 into it (cd linux-ldm-0.0.8) and change to the test directory (cd test).  You
 will find the precompiled (i386) ldminfo utility there.  NOTE: You will not be
 able to compile this yourself easily so use the binary version!
 
-Then you would use ldminfo in dump mode to obtain the necessary information:
+Then you would use ldminfo in dump mode to obtain the necessary information::
 
-$ ./ldminfo --dump /dev/hda
+    $ ./ldminfo --dump /dev/hda
 
 This would dump the LDM database found on /dev/hda which describes all of your
 dynamic disks and all the volumes on them.  At the bottom you will see the
@@ -305,42 +324,36 @@ give you the correct information to do this.
 Assuming you know all your devices and their sizes things are easy.
 
 For a linear raid the table would look like this (note all values are in
-512-byte sectors):
+512-byte sectors)::
 
---- cut here ---
-# Offset into	Size of this	Raid type	Device		Start sector
-# volume	device						of device
-0		1028161		linear		/dev/hda1	0
-1028161		3903762		linear		/dev/hdb2	0
-4931923		2103211		linear		/dev/hdc1	0
---- cut here ---
+    # Offset into	Size of this	Raid type	Device		Start sector
+    # volume	device						of device
+    0		1028161		linear		/dev/hda1	0
+    1028161		3903762		linear		/dev/hdb2	0
+    4931923		2103211		linear		/dev/hdc1	0
 
 For a striped volume, i.e. raid level 0, you will need to know the chunk size
 you used when creating the volume.  Windows uses 64kiB as the default, so it
 will probably be this unless you changes the defaults when creating the array.
 
 For a raid level 0 the table would look like this (note all values are in
-512-byte sectors):
+512-byte sectors)::
 
---- cut here ---
-# Offset   Size	    Raid     Number   Chunk  1st        Start	2nd	  Start
-# into     of the   type     of	      size   Device	in	Device	  in
-# volume   volume	     stripes			device		  device
-0	   2056320  striped  2	      128    /dev/hda1	0	/dev/hdb1 0
---- cut here ---
+    # Offset   Size	    Raid     Number   Chunk  1st        Start	2nd	  Start
+    # into     of the   type     of	      size   Device	in	Device	  in
+    # volume   volume	     stripes			device		  device
+    0	   2056320  striped  2	      128    /dev/hda1	0	/dev/hdb1 0
 
 If there are more than two devices, just add each of them to the end of the
 line.
 
 Finally, for a mirrored volume, i.e. raid level 1, the table would look like
-this (note all values are in 512-byte sectors):
+this (note all values are in 512-byte sectors)::
 
---- cut here ---
-# Ofs Size   Raid   Log  Number Region Should Number Source  Start Target Start
-# in  of the type   type of log size   sync?  of     Device  in    Device in
-# vol volume		 params		     mirrors	     Device	  Device
-0    2056320 mirror core 2	16     nosync 2	   /dev/hda1 0   /dev/hdb1 0
---- cut here ---
+    # Ofs Size   Raid   Log  Number Region Should Number Source  Start Target Start
+    # in  of the type   type of log size   sync?  of     Device  in    Device in
+    # vol volume		 params		     mirrors	     Device	  Device
+    0    2056320 mirror core 2	16     nosync 2	   /dev/hda1 0   /dev/hdb1 0
 
 If you are mirroring to multiple devices you can specify further targets at the
 end of the line.
@@ -353,17 +366,17 @@ to the "Target Device" or if you specified multiple target devices to all of
 them.
 
 Once you have your table, save it in a file somewhere (e.g. /etc/ntfsvolume1),
-and hand it over to dmsetup to work with, like so:
+and hand it over to dmsetup to work with, like so::
 
-$ dmsetup create myvolume1 /etc/ntfsvolume1
+    $ dmsetup create myvolume1 /etc/ntfsvolume1
 
 You can obviously replace "myvolume1" with whatever name you like.
 
 If it all worked, you will now have the device /dev/device-mapper/myvolume1
 which you can then just use as an argument to the mount command as usual to
-mount the ntfs volume.  For example:
+mount the ntfs volume.  For example::
 
-$ mount -t ntfs -o ro /dev/device-mapper/myvolume1 /mnt/myvol1
+    $ mount -t ntfs -o ro /dev/device-mapper/myvolume1 /mnt/myvol1
 
 (You need to create the directory /mnt/myvol1 first and of course you can use
 anything you like instead of /mnt/myvol1 as long as it is an existing
@@ -395,18 +408,18 @@ Windows by default uses a stripe chunk size of 64k, so you probably want the
 "chunk-size 64k" option for each raid-disk, too.
 
 For example, if you have a stripe set consisting of two partitions /dev/hda5
-and /dev/hdb1 your /etc/raidtab would look like this:
+and /dev/hdb1 your /etc/raidtab would look like this::
 
-raiddev /dev/md0
-	raid-level	0
-	nr-raid-disks	2
-	nr-spare-disks	0
-	persistent-superblock	0
-	chunk-size	64k
-	device		/dev/hda5
-	raid-disk	0
-	device		/dev/hdb1
-	raid-disk	1
+    raiddev /dev/md0
+	    raid-level	0
+	    nr-raid-disks	2
+	    nr-spare-disks	0
+	    persistent-superblock	0
+	    chunk-size	64k
+	    device		/dev/hda5
+	    raid-disk	0
+	    device		/dev/hdb1
+	    raid-disk	1
 
 For linear raid, just change the raid-level above to "raid-level linear", for
 mirrors, change it to "raid-level 1", and for stripe sets with parity, change
@@ -427,7 +440,9 @@ Once the raidtab is setup, run for example raid0run -a to start all devices or
 raid0run /dev/md0 to start a particular md device, in this case /dev/md0.
 
 Then just use the mount command as usual to mount the ntfs volume using for
-example:	mount -t ntfs -o ro /dev/md0 /mnt/myntfsvolume
+example::
+
+    mount -t ntfs -o ro /dev/md0 /mnt/myntfsvolume
 
 It is advisable to do the mount read-only to see if the md volume has been
 setup correctly to avoid the possibility of causing damage to the data on the
-- 
2.24.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
