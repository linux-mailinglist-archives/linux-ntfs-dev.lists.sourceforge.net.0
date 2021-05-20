Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2F539452E
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXl-000312-PE; Fri, 28 May 2021 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lee.jones@linaro.org>) id 1ljhnT-0004jQ-BY
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:29:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QTjS1lV5/2FTT6PaKbPLNrY5CGW03uQdFbkA9bdxFfg=; b=L9EHamdnkJ6IiYAGsD7hYjSY6E
 NWWY2hdkODkGwgwXmFHCeU3EHVUGs+UhBbD0UQN29zZVIgbbKmyJsWUcdDbh3SAtiTqkVrqc707OK
 UfhR8jpMPz8I8qeWjiZBOEv+f4V9T8I0T0WZT1lDbQGCnMdU2FJv6SZ8cveIDXAeFEW8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QTjS1lV5/2FTT6PaKbPLNrY5CGW03uQdFbkA9bdxFfg=; b=c
 Mw5tCUqBp2Bz0AkyV6kqajUUaatuR9krDMdGEEzdg5QxmgPiBVRWsAnV5FPXlKlVUmcpFya1Syxu8
 dX5v5BJVREThwQuGzafeup2JcxiVVKoEWLT1Wd4hXWEmsxtZtPDvyk9Tjb9JxfC5hGxx3gvfby+ET
 COt3v3xn66mvZY6Y=;
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljhnK-00GSXK-UD
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:29:04 +0000
Received: by mail-ej1-f46.google.com with SMTP id l1so24993189ejb.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QTjS1lV5/2FTT6PaKbPLNrY5CGW03uQdFbkA9bdxFfg=;
 b=kX4RRyxS9naxTiQnFH1J5mN+nwOSBILz6i08OCD+AaK+ucCenu9TlGNO5+S37VKLzu
 0eCm0DSFtWN5eK/n31bNjeefmaSggoWZ3Ej/rUvOsH8wZmsdA8096XBbgRfuqFTURDUw
 yirRTgM9pNQVa1FIkxhT0Ibx/9CGQ6i4FyImB+xD7TB6L8t15sd6tIwpelA3/l97luA2
 FiWwlAup1iWAmN935cuEzdFRrHGW1cCqpjnifIzI0GaLNcg2gZXfDOCEiabv+sRzZMYt
 5uZU27tw7QoGNaHT9cfZR7PmnhnD580XB4UkNFFqVhTXHyo+QNc9uT821dYdGC8DsUsq
 f5fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QTjS1lV5/2FTT6PaKbPLNrY5CGW03uQdFbkA9bdxFfg=;
 b=tmabQ60e9BIXI+TYtj57IhH7aiVEwY2sM40x+KO6W1EEgtOlZ8CDkLjoh2VqBpurhH
 yWclXMOykC6/2n0eabmZDe5/742pqBhkwm/x8gMQLNBobXrFxyjZxolYuBT3U7Sd+WBj
 aHBAI/wC+e+eORmdPS58h6bXYJ7XMQsAE41yQTyE34Cx0fQw3+HsiHMnPuZeg8IvlwBK
 BtuLMTgKammpJbAVjQNeYlKwkVfWjj6nOLUGxE1eKlJ0C/z0iHG4JEHsD1KGuSI8qtea
 h2CosWRy2ipm0Xt8PDnjyU/v3+E32xFJuaIFw/+x1ot0QQwajStqPv9QFZIilUPwvYlL
 bD2Q==
X-Gm-Message-State: AOAM530g8lHM0VrKDmg3ozKkpGaHDfZO/eT/5rdnYIiUx43mEUQt8fsd
 tnlJxFJi+HBMPkZ2m8gr7TTOtxch547JJA==
X-Google-Smtp-Source: ABdhPJz0uPVw4uTkRdrIO7TzhB2Lba173UNDrRCxhWTmJsoVc5B9xp6IVviROg24clsZ0WL2ywrxIQ==
X-Received: by 2002:a5d:4e8c:: with SMTP id e12mr3955329wru.94.1621512045562; 
 Thu, 20 May 2021 05:00:45 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:45 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:28 +0100
Message-Id: <20210520120043.3462759-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ljhnK-00GSXK-UD
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 00/15] Rid W=1 warnings from FS {GFS2, NTFS}
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
Cc: Andreas Gruenbacher <agruenba@redhat.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 cluster-devel@redhat.com, to <linux-ntfs-dev@lists.sourceforge>,
 Bob Peterson <rpeterso@redhat.com>, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This set is part of a larger effort attempting to clean-up W=1
kernel builds, which are currently overwhelmingly riddled with
niggly little warnings.

Lee Jones (15):
  fs: gfs2: bmap: Demote half-complete kernel-doc headers fix others
  fs: gfs2: glock: Fix some deficient kernel-doc headers and demote
    non-conformant ones
  fs: ntfs: namei: Demote non-conformant kernel-doc headers
  fs: ntfs: unistr: Add missing param descriptions for 'name{1,2}_len'
  fs: ntfs: compress: Demote a few non-conformant kernel-doc headers
  fs: ntfs: dir: Supply missing descriptions for 'start' and 'end' and
    demote other headers
  fs: ntfs: runlist: Demote non-conformant kernel-doc headers
  fs: ntfs: inode: Fix incorrect function name and demote file header
  fs: ntfs: attrib: File headers are not good candidates for kernel-doc
  fs: ntfs: aops: Demote kernel-doc abuses
  fs: ntfs: super: Provide missing description and demote non-conformant
    headers
  fs: ntfs: file: Provide missing descriptions for 'start' and 'end'
  fs: ntfs: mft: File headers to not make good candidates for kernel-doc
  fs: ntfs: compress: File headers are not good candidates for
    kernel-doc
  fs: ntfs: runlist: File headers are not good candidates for kernel-doc

 fs/gfs2/bmap.c     |  2 +-
 fs/gfs2/glock.c    |  4 ++--
 fs/ntfs/aops.c     |  8 ++++----
 fs/ntfs/attrib.c   |  2 +-
 fs/ntfs/compress.c | 12 ++++++------
 fs/ntfs/dir.c      |  7 ++++---
 fs/ntfs/file.c     |  2 ++
 fs/ntfs/inode.c    |  4 ++--
 fs/ntfs/mft.c      |  2 +-
 fs/ntfs/namei.c    |  4 ++--
 fs/ntfs/runlist.c  |  6 +++---
 fs/ntfs/super.c    |  5 +++--
 fs/ntfs/unistr.c   |  2 ++
 13 files changed, 33 insertions(+), 27 deletions(-)

Cc: Andreas Gruenbacher <agruenba@redhat.com>
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: Bob Peterson <rpeterso@redhat.com>
Cc: cluster-devel@redhat.com
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: to <linux-ntfs-dev@lists.sourceforge>
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
