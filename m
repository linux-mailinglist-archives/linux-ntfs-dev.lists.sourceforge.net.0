Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CE27E855B
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zlc-0005At-Kl;
	Fri, 10 Nov 2023 22:14:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1r0MO4-0004O7-Up for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 07 Nov 2023 13:44:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i3eEE97nUh64hYb+YdPOqGLydyNHyy+mucGg+aBHkD0=; b=HkcwJ24Im8ZTJiQIcCFLPPSxsh
 5UyRYV5ROIiiLyh/F/C7GjlmUST/OHT4tFRavelsGjoEMUQLhQimZ9aFuaDb5c4BCdPj0t5cp5g4A
 X+sgdD33d+TrV6qvmA5WvPj8oceLR7iGgPHEPm+TyvanTzCTzHAuMymN3rToMiOE739U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Reply-To:Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-Id:Date:Subject:From:Sender:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i3eEE97nUh64hYb+YdPOqGLydyNHyy+mucGg+aBHkD0=; b=dMAB97VWj9Cr3T0nXPaYJGEN3T
 Po70SA3fFsbKmq9wUIy2P0dnNgBs1ml0oRgEIMGYk8lDzCVazGMNsob5YbRyB0PiGln5Q8fOFCmrC
 5MuJZ2r/fKoiSVgIoq3Y3uvcUAmjLdEO+4sa5Sn7XQb+cnTB3aZ5ecAVaNS241ItrY2o=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0MNz-0002Yc-Jl for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 07 Nov 2023 13:44:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BDCC361215;
 Tue,  7 Nov 2023 13:44:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60C3BC433C7;
 Tue,  7 Nov 2023 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699364686;
 bh=BX2Tgmusj22t2ImeDH/Db41rnYDA2OpBkrkY6HkG4Vg=;
 h=From:Subject:Date:To:Cc:Reply-To:From;
 b=ERDEsjJ3jcdzHK7bGuPyilBC+mNvR9achV7BxWqpA9vmn/7dGCm2UD8je32dYJ0yL
 EH/z/AlZTTt5tMCVS0Ztel5kr8+H7vRNE9cqWDzpShnGJEL4Q0duuzuFZvDWAul9A+
 NwrIR3u7rOZwPqZ4diVaGnkW36pVZ4UPFUueEFvVVlnFD8TUnTCM5E5TDh4te6Qm2m
 r1VV0TjIlTUso7Dufe1ctz5VLG6uvzr1ig+xGdcPBkQPBVIYmkZpgw062kQ+O6lnOy
 xspmbVbYYGYlLwU1k3f0ClKiUvpn0FMp4PNbZZuYJBCY95YoMVloKemUIAasvsO86p
 AW3wn0D1cl9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 3B81AC4332F;
 Tue,  7 Nov 2023 13:44:46 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Tue, 07 Nov 2023 14:44:19 +0100
Message-Id: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADQ/SmUC/x3NQQqDMBBG4avIrBswFrV4FSlBkz86xahkRCri3
 Q0uv817JwkiQ6jJTorYWXiZE/QrIzt28wDFLpmKvHhrndfq1w1KDrHbZCLCssMgrNthMCEYL8r
 1zvqq/Gjfg1JljfD8fw7t97pun+G/83EAAAA=
To: Luis Chamberlain <mcgrof@kernel.org>, willy@infradead.org, 
 josh@joshtriplett.org, Kees Cook <keescook@chromium.org>, 
 David Howells <dhowells@redhat.com>, 
 Alexander Viro <viro@zeniv.linux.org.uk>, 
 Christian Brauner <brauner@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>, 
 Eric Biederman <ebiederm@xmission.com>, 
 Trond Myklebust <trond.myklebust@hammerspace.com>, 
 Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, 
 Jeff Layton <jlayton@kernel.org>, Neil Brown <neilb@suse.de>, 
 Olga Kornievskaia <kolga@netapp.com>, Dai Ngo <Dai.Ngo@oracle.com>, 
 Tom Talpey <tom@talpey.com>, Jan Kara <jack@suse.cz>, 
 Amir Goldstein <amir73il@gmail.com>, Matthew Bobrowski <repnop@google.com>, 
 Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>, 
 Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, 
 Joseph Qi <joseph.qi@linux.alibaba.com>, Iurii Zaikin <yzaikin@google.com>, 
 Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, 
 Chandan Babu R <chandan.babu@oracle.com>, 
 "Darrick J. Wong" <djwong@kernel.org>, Jan Harkes <jaharkes@cs.cmu.edu>, 
 coda@cs.cmu.edu
X-Mailer: b4 0.13-dev-86aa5
X-Developer-Signature: v=1; a=openpgp-sha256; l=10141;
 i=j.granados@samsung.com; h=from:subject:message-id;
 bh=C3DmFO8Hz7l/cldXER9EIJKfHb6WTQfVYhuohw0jqAA=;
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlSj9LnKbg9Qxr7Dcd99rtLU0xLDCzZRMTGLwh9
 e1zls1ye9uJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZUo/SwAKCRC6l81St5ZB
 TznpC/9XunhpTHq+xhr6kaz5TZDhfTOnYmqXhvejjQi1MwmqTIgaQYEoUiM8w/0O2RIxJU9hChR
 oc3TSlJwhTQGpLQtD329xMm+cVx20uakbjIQXuXTZ0y/E8i1LgUSnxqVDKg3miAzLbNzdRqFmKX
 QxXwnz63qIkYH1Wcb90i08RJpCmWOgGwSZ+fg8GknruPYtsHMFRpFM7oghZ5SNY7h7d8e5rjP5i
 j9fRYr5WD34ytCrJaBKJsTemlRPKBtw8UNnHEPd9BzTQnRCCf6cC+czRbL7ygTKoa25lciGy6Nl
 4jXSqUir9bE9+U2Uzf3PbjH+oJ90jjCmIjBmxghSOae4S6UByh+bWnzc3F23IpvLv/xHnr7pyHM
 +lNSgUCZhWV1RrN8Z0VWHX3h+PoKFmRDTlQwHMPmUGfW4SCFfY8fAXS5dq3W+Bda4cFz+7iQStz
 BDArwlJ7y7nT+ps9/4EHCT0yEwIT9FmOjOAOAGps9FiDih14BG3BGz4t4z09jACJz1wHo=
X-Developer-Key: i=j.granados@samsung.com; a=openpgp;
 fpr=F1F8E46D30F0F6C4A45FF4465895FAAC338C6E77
X-Endpoint-Received: by B4 Relay for j.granados@samsung.com/default with
 auth_id=70
X-Original-From: Joel Granados <j.granados@samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Joel Granados <j.granados@samsung.com> What? These
 commits
 remove the sentinel element (last empty element) from the sysctl arrays of
 all the files under the "fs/" directory that use a sysctl array for
 registration. The merging of the prep [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0MNz-0002Yc-Jl
X-Mailman-Approved-At: Fri, 10 Nov 2023 22:14:18 +0000
Subject: [Linux-ntfs-dev] [PATCH 0/4] sysctl: Remove sentinel elements from
 fs dir
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
Reply-To: j.granados@samsung.com
Cc: fsverity@lists.linux.dev, linux-aio@kvack.org, linux-nfs@vger.kernel.org,
 Joel Granados <j.granados@samsung.com>, ocfs2-devel@lists.linux.dev,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 codalist@coda.cs.cmu.edu, linux-xfs@vger.kernel.org, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Joel Granados <j.granados@samsung.com>

What?
These commits remove the sentinel element (last empty element) from the
sysctl arrays of all the files under the "fs/" directory that use a
sysctl array for registration. The merging of the preparation patches
(in https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)
to mainline allows us to just remove sentinel elements without changing
behavior (more info here [1]).

These commits are part of a bigger set (here
https://github.com/Joelgranados/linux/tree/tag/sysctl_remove_empty_elem_V5)
that remove the ctl_table sentinel. We make the review process easier by
chunking the commits into manageable pieces. Each chunk can be reviewed
separately without noise from parallel sets.

Sending the "fs/*" chunk now that the "drivers/" has been mostly
reviewed [6]. After this and the "kernel/*" are reviewed we only have 2 more
chunks ("net/*" and miscellaneous) to complete the sentinel removal.
Hurray!!!

Why?
By removing the sysctl sentinel elements we avoid kernel bloat as
ctl_table arrays get moved out of kernel/sysctl.c into their own
respective subsystems. This move was started long ago to avoid merge
conflicts; the sentinel removal bit came after Mathew Wilcox suggested
it to avoid bloating the kernel by one element as arrays moved out. This
patchset will reduce the overall build time size of the kernel and run
time memory bloat by about ~64 bytes per declared ctl_table array. I
have consolidated some links that shed light on the history of this
effort [2].

Testing:
* Ran sysctl selftests (./tools/testing/selftests/sysctl/sysctl.sh)
* Ran this through 0-day with no errors or warnings

Size saving after this patchset:
    * bloat-o-meter
        - The "yesall" config saves 1920 bytes [4]
        - The "tiny" config saves 576 bytes [5]
    * If you want to know how many bytes are saved after all the chunks
      are merged see [3]

Base commit:
tag: sysctl-6.7-rc1 (8b793bcda61f)

Comments/feedback greatly appreciated

Best

Joel

[1]
We are able to remove a sentinel table without behavioral change by
introducing a table_size argument in the same place where procname is
checked for NULL. The idea is for it to keep stopping when it hits
->procname == NULL, while the sentinel is still present. And when the
sentinel is removed, it will stop on the table_size. You can go to 
(https://lore.kernel.org/all/20230809105006.1198165-1-j.granados@samsung.com/)
for more information.

[2]
Links Related to the ctl_table sentinel removal:
* E-mail threads that summarize the sentinel effort
  https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/
  https://lore.kernel.org/all/ZMFizKFkVxUFtSqa@bombadil.infradead.org/
* Replacing the register functions:
  https://lore.kernel.org/all/20230302204612.782387-1-mcgrof@kernel.org/
  https://lore.kernel.org/all/20230302202826.776286-1-mcgrof@kernel.org/
* E-mail threads discussing prposal
  https://lore.kernel.org/all/20230321130908.6972-1-frank.li@vivo.com
  https://lore.kernel.org/all/20220220060626.15885-1-tangmeng@uniontech.com

[3]
Size saving after removing all sentinels:
  These are the bytes that we save after removing all the sentinels
  (this plus all the other chunks). I included them to get an idea of
  how much memory we are talking about.
    * bloat-o-meter:
        - The "yesall" configuration results save 9158 bytes
          https://lore.kernel.org/all/20230621091000.424843-1-j.granados@samsung.com/
        - The "tiny" config + CONFIG_SYSCTL save 1215 bytes
          https://lore.kernel.org/all/20230809105006.1198165-1-j.granados@samsung.com/
    * memory usage:
        In memory savings are measured to be 7296 bytes. (here is how to
        measure [7])

[4]
add/remove: 0/0 grow/shrink: 0/30 up/down: 0/-1920 (-1920)
Function                                     old     new   delta
xfs_table                                   1024     960     -64
vm_userfaultfd_table                         128      64     -64
test_table_unregister                        128      64     -64
test_table                                   576     512     -64
root_table                                   128      64     -64
pty_table                                    256     192     -64
ocfs2_nm_table                               128      64     -64
ntfs_sysctls                                 128      64     -64
nlm_sysctls                                  448     384     -64
nfs_cb_sysctls                               192     128     -64
nfs4_cb_sysctls                              192     128     -64
namei_sysctls                                320     256     -64
locks_sysctls                                192     128     -64
inotify_table                                256     192     -64
inodes_sysctls                               192     128     -64
fsverity_sysctl_table                        128      64     -64
fs_stat_sysctls                              256     192     -64
fs_shared_sysctls                            192     128     -64
fs_pipe_sysctls                              256     192     -64
fs_namespace_sysctls                         128      64     -64
fs_exec_sysctls                              128      64     -64
fs_dqstats_table                             576     512     -64
fs_dcache_sysctls                            128      64     -64
fanotify_table                               256     192     -64
epoll_table                                  128      64     -64
dnotify_sysctls                              128      64     -64
coredump_sysctls                             256     192     -64
coda_table                                   256     192     -64
cachefiles_sysctls                           128      64     -64
aio_sysctls                                  192     128     -64
Total: Before=429912331, After=429910411, chg -0.00%

[5]
add/remove: 0/0 grow/shrink: 0/9 up/down: 0/-576 (-576)
Function                                     old     new   delta
root_table                                   128      64     -64
namei_sysctls                                320     256     -64
inodes_sysctls                               192     128     -64
fs_stat_sysctls                              256     192     -64
fs_shared_sysctls                            192     128     -64
fs_pipe_sysctls                              256     192     -64
fs_namespace_sysctls                         128      64     -64
fs_exec_sysctls                              128      64     -64
fs_dcache_sysctls                            128      64     -64
Total: Before=1886645, After=1886069, chg -0.03%

[6]
https://lore.kernel.org/all/20231002-jag-sysctl_remove_empty_elem_drivers-v2-0-02dd0d46f71e@samsung.com

[7]
To measure the in memory savings apply this on top of this patchset.

"
diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index c88854df0b62..e0073a627bac 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -976,6 +976,8 @@ static struct ctl_dir *new_dir(struct ctl_table_set *set,
        table[0].procname = new_name;
        table[0].mode = S_IFDIR|S_IRUGO|S_IXUGO;
        init_header(&new->header, set->dir.header.root, set, node, table, 1);
+       // Counts additional sentinel used for each new dir.
+       printk("%ld sysctl saved mem kzalloc \n", sizeof(struct ctl_table));

        return new;
 }
@@ -1199,6 +1201,9 @@ static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table_
                link_name += len;
                link++;
        }
+       // Counts additional sentinel used for each new registration
+       //
+               printk("%ld sysctl saved mem kzalloc \n", sizeof(struct ctl_table));
        init_header(links, dir->header.root, dir->header.set, node, link_table,
                    head->ctl_table_size);
        links->nreg = nr_entries;
"
and then run the following bash script in the kernel:

accum=0
for n in $(dmesg | grep kzalloc | awk '{print $3}') ; do
    echo $n
    accum=$(calc "$accum + $n")
done
echo $accum

---

Signed-off-by: Joel Granados <j.granados@samsung.com>

---
Joel Granados (4):
      cachefiles: Remove the now superfluous sentinel element from ctl_table array
      aio: Remove the now superfluous sentinel elements from ctl_table array
      sysctl:  Remove the now superfluous sentinel elements from ctl_table array
      coda:  Remove the now superfluous sentinel elements from ctl_table array

 fs/aio.c                           | 1 -
 fs/cachefiles/error_inject.c       | 1 -
 fs/coda/sysctl.c                   | 1 -
 fs/coredump.c                      | 1 -
 fs/dcache.c                        | 1 -
 fs/devpts/inode.c                  | 1 -
 fs/eventpoll.c                     | 1 -
 fs/exec.c                          | 1 -
 fs/file_table.c                    | 1 -
 fs/inode.c                         | 1 -
 fs/lockd/svc.c                     | 1 -
 fs/locks.c                         | 1 -
 fs/namei.c                         | 1 -
 fs/namespace.c                     | 1 -
 fs/nfs/nfs4sysctl.c                | 1 -
 fs/nfs/sysctl.c                    | 1 -
 fs/notify/dnotify/dnotify.c        | 1 -
 fs/notify/fanotify/fanotify_user.c | 1 -
 fs/notify/inotify/inotify_user.c   | 1 -
 fs/ntfs/sysctl.c                   | 1 -
 fs/ocfs2/stackglue.c               | 1 -
 fs/pipe.c                          | 1 -
 fs/proc/proc_sysctl.c              | 1 -
 fs/quota/dquot.c                   | 1 -
 fs/sysctls.c                       | 1 -
 fs/userfaultfd.c                   | 1 -
 fs/verity/fsverity_private.h       | 2 +-
 fs/verity/init.c                   | 8 +++++---
 fs/xfs/xfs_sysctl.c                | 2 --
 lib/test_sysctl.c                  | 2 --
 30 files changed, 6 insertions(+), 34 deletions(-)
---
base-commit: 8b793bcda61f6c3ed4f5b2ded7530ef6749580cb
change-id: 20231107-jag-sysctl_remove_empty_elem_fs-dbdcf6581fbe

Best regards,
-- 
Joel Granados <j.granados@samsung.com>



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
