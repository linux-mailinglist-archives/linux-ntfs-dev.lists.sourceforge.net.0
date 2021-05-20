Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC30394534
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXl-00030g-Ki; Fri, 28 May 2021 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lee.jones@linaro.org>) id 1ljhmk-0004hh-Dd
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RmIzqZ1vxn50jmDhJrSjkM4TUNU/Mv1FO2GF43pfOTE=; b=j13+1nT6wxCFBRzZVYtuPSKK7p
 rldXilOXefkQIOWMpu4KzymG5lw8jSPMMvbSp91xmokgJjkR+j1VyRfhZYfvZjJZhKc/gmrhrbbwR
 Y4Uq6cX9LvMut6OTmH6oo9FWI4Tc1G+w5JZhDK2J2lLcOtL4P5cig7RAB74qN4HUs+20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RmIzqZ1vxn50jmDhJrSjkM4TUNU/Mv1FO2GF43pfOTE=; b=Gd1hUdYtmStVqSYHULj48lu0uO
 C9hbTVtjaF6R+eGvCS6pJSdNu681XeCCf3xV11f9377JMwG7Zv5Lg0HtGsXkSWXiXYV7c/NiXxlg0
 4ak2Vz9Id5WNLa5+eonrDQTwm7RITNtcv2mqsnOMzDh8PlQb6dzShMbjSVEpa/xz/7LE=;
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljhmb-0004li-7z
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:28:16 +0000
Received: by mail-lf1-f45.google.com with SMTP id j6so21549788lfr.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RmIzqZ1vxn50jmDhJrSjkM4TUNU/Mv1FO2GF43pfOTE=;
 b=kBQBqlR/7lraonsM2N+Fyep4B8UizGXLVJeo5rraP6VR4DqJskq7f0dXZd2KnogYnN
 aJMh/LdYRwOKUO6gZ/Jc1jLg6mNN7yYCONybr5KKVFN0BYj+uBBtVkTQArvGPLMQbSZ8
 lxIZ1qgq+ztZ2SwijJiWyuvI5MDNVC5XF0toY24agdbW9WoJjAxxUygDflPbEcLTwGlT
 4N5/40ouNruiNN+j46JZ+BssRfuhnk2niHjXUcLYeUFUo3/jyPSGZkubA91vEepZgHaO
 NXpHg2mPyyNwHXcxGLJRyNCgnloL/vlZqdrTZhRmIy4YJ/NVHDKto7yCThVNP8UD6HR9
 5c/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RmIzqZ1vxn50jmDhJrSjkM4TUNU/Mv1FO2GF43pfOTE=;
 b=d3mFSLWzXrJktUjEnUiHvuJQ8UUgYTu+BdrXNtOzSETqqmbpj2LQwoDob1cgroQPSG
 F1v2rayAqujJmug+altbIBC/cxghsz2o22lavmq8u9ARwlMH8bEAZ2E3zi7jO4n76nxL
 KOnQjudcjckzAC+A9qa8+isE4QSZarcWpf0CEgD62352BQshAWSiaEIQtQ6vOQdWlFRc
 tpZFoR3jd0TVMOhoT+AvxvxNz6y1EF5dChp5oOmvpXUQOC0c5+1ZanJVtuGDfZa38TYO
 z4NwyZB2mKDZhoQA2WaUhBX/kHmdGjx2JaHEKcMMOWRf0ymVfLBdzRYs27+TsoLUtiG9
 Gv7g==
X-Gm-Message-State: AOAM532M89CX3XO5MMunMn4DvfK+/YI9AGe903/f6dJ62bCcc3A2K6vc
 doXvd/nVo99GqzfxXHW11F/toHXUm1T5Jg==
X-Google-Smtp-Source: ABdhPJxeShEtHbO3i7XfshSUArsOOf9UFESQ8PBmRmFbaClKPJz3v9p3bh6bnyWkmc5vs3OKqgzc4A==
X-Received: by 2002:adf:d081:: with SMTP id y1mr3844589wrh.179.1621512048447; 
 Thu, 20 May 2021 05:00:48 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:47 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:31 +0100
Message-Id: <20210520120043.3462759-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120043.3462759-1-lee.jones@linaro.org>
References: <20210520120043.3462759-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhmb-0004li-7z
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 03/15] fs: ntfs: namei: Demote
 non-conformant kernel-doc headers
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fixes the following W=1 kernel build warning(s):

 fs/ntfs/namei.c:263: warning: wrong kernel-doc identifier on line:
 fs/ntfs/namei.c:368: warning: wrong kernel-doc identifier on line:

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/namei.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/namei.c b/fs/ntfs/namei.c
index 4e6a44bc654ce..ab44f2db533be 100644
--- a/fs/ntfs/namei.c
+++ b/fs/ntfs/namei.c
@@ -259,7 +259,7 @@ static struct dentry *ntfs_lookup(struct inode *dir_ino, struct dentry *dent,
    }
 }
 
-/**
+/*
  * Inode operations for directories.
  */
 const struct inode_operations ntfs_dir_inode_ops = {
@@ -364,7 +364,7 @@ static struct dentry *ntfs_fh_to_parent(struct super_block *sb, struct fid *fid,
 				    ntfs_nfs_get_inode);
 }
 
-/**
+/*
  * Export operations allowing NFS exporting of mounted NTFS partitions.
  *
  * We use the default ->encode_fh() for now.  Note that they
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
