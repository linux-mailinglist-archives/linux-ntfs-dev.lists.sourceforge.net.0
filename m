Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6259D394537
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXm-00031E-09; Fri, 28 May 2021 15:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhnk-0005JE-Bb
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hbOeaLHaZdzOotTNwai+IPwZLrwmiEGVhMGqTe5wzTI=; b=gd7uv1HHHhqqM+f8dOejjco731
 Jqvf9G0VL7SMi+GGgwVXC7t8FlNyNLJ7T0NX9uR7haZbJq0hFuLsPOImY/R/nAJ/jwv3G1g8qXGK9
 rU+gF/kZq5CxMU2w7r4I1Uy6xgOFR0aJwS3NfYqFhES4bncyHMj5uyTeaO5bvwIVQTw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hbOeaLHaZdzOotTNwai+IPwZLrwmiEGVhMGqTe5wzTI=; b=DJ23ZYuVOKdS6Rt4zMqgjpJKkl
 CceW4xFoTpLjK0FdmTFHkFXjWi/jlUCAI0yfgvFzAmTMw1UF9EPmBgnk3ytIkHG9xA9YTHZGmeMtA
 2ITu/IkJN4f7Hs3hikJBUNBkG1Su3N4lk5xKo+B5GsWvJ6kB3+Y3262O+YV2m5b7IrDU=;
Received: from mail-ed1-f50.google.com ([209.85.208.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljhnZ-0004ot-Ry
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:29:19 +0000
Received: by mail-ed1-f50.google.com with SMTP id y7so1656225eda.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hbOeaLHaZdzOotTNwai+IPwZLrwmiEGVhMGqTe5wzTI=;
 b=PGxl7GWDRI1/M1YA09Vz39LjVylOYYtutNYT2QeXCzNYwYMRc4EsaxHjcGOlsGO3FC
 PMW0PnbdNUXfAZaEesl1yhgSU7PhFwjJK4P4XOeziDoSPtNVcgA+h1JrJNhDQNc4HeBc
 ST+UTp+23b9EPukmxol9Wf/IVsSJ9uHiShv0/RbHPOdoZ114VKcCFAYEDgA2TCn+or/Q
 hGSo8NPJlgKjsw6s8NiBe3AAcQNk2+94qLdDSMsxRW7sOEzIukUB+9Fup8wM5HKPvmuB
 YZ4tRiqCHXQUfLuJpiHQmHM5YiXSTyenuV6bp0oVZyN5YHW7JKrPZGo0H5cgHqHokHF7
 oUVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hbOeaLHaZdzOotTNwai+IPwZLrwmiEGVhMGqTe5wzTI=;
 b=ZpEnFyjJvhFb2jBCGnperHIxKAFl61VLcFIerfwSuqbDtBIHzsPLXWJuAVj63PZ6b7
 HAlDbcCFbldbBL+pQYnZggchpzLsRk2xflh06BS2jXA4yV+KR4rK2pqhiMAi6Q4ARe/8
 +96heYIkXh1GrpR/FiYwwlc2bzvWTX6fD+jrHARkTHpaHJUTvNvs4d/6OGaYQpgdYkjC
 3Li6+2NFL00LmLkep/y5QF/X6mQYpYQql8++nnVq3Q/WgG3qdlBX2PMCIMUqcaEdN4Qd
 7mgqm3Kx9kx2eP783oxK0d6CnJA8tpo+TPbgSQx1mEaI4ZhztBSDEYIUUojilQp2JpqU
 EVig==
X-Gm-Message-State: AOAM531gwo3/yd52tY0yqhJ2byS0Xq+slX4VUVCr/N7VmW19xwEm4aw4
 G4v9rsAb/CZbYJP0csiaCAxU7ao2dvfn2A==
X-Google-Smtp-Source: ABdhPJzmI8EFwVW4tHkAIp5qfV3wXoUJe+jgzvnTaGoBAUvb+NlTj0sQkxW+kNtyLa22FScXwOpqvg==
X-Received: by 2002:adf:fe07:: with SMTP id n7mr3925495wrr.388.1621512055886; 
 Thu, 20 May 2021 05:00:55 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:55 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:40 +0100
Message-Id: <20210520120043.3462759-13-lee.jones@linaro.org>
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
 trust [209.85.208.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhnZ-0004ot-Ry
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 12/15] fs: ntfs: file: Provide missing
 descriptions for 'start' and 'end'
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

 fs/ntfs/file.c:1969: warning: Function parameter or member 'start' not described in 'ntfs_file_fsync'
 fs/ntfs/file.c:1969: warning: Function parameter or member 'end' not described in 'ntfs_file_fsync'

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/file.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index e5aab265dff19..1f3d8804324c1 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -1943,6 +1943,8 @@ static ssize_t ntfs_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
 /**
  * ntfs_file_fsync - sync a file to disk
  * @filp:	file to be synced
+ * @start:	offset in bytes where the range starts
+ * @end:	offset in bytes where the range ends (inclusive)
  * @datasync:	if non-zero only flush user data and not metadata
  *
  * Data integrity sync of a file to disk.  Used for fsync, fdatasync, and msync
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
