Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A55A76B940F
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xA-0001Qs-QR;
	Tue, 14 Mar 2023 12:40:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1paluc-0001Wy-4E
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R85E7uQimX2SAhrrjoHNWpuZL+HB0XZL3iNXIzJ+Yfs=; b=ME86/RYI2d6qzIPWqukQaa1tkK
 4ZJimNHHuOQT6Ttzt/aSsIXlMENMircCGJWSMXKDcS0Bxd7S47WERxxbmBGagUVbGt95Om+epWWzC
 pE1pkDLCybKJGXVNxteFqWLPSm6LW6nKMRQ48Ouh3qDI6Fqxb/Cjxg02IM1htJ1Y2YvA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:
 To:From:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=R85E7uQimX2SAhrrjoHNWpuZL+HB0XZL3iNXIzJ+Yfs=; b=V
 Ymq800iGy+BODWzGkPw7CdVtB0pEl144/PdVJgEyFj8Ur4NxM7U2P6q8+OkFabBXBB1xMhyhmiCbI
 fvxUcgj+/9Z+nAR725yJUc7WUyrVU7jNjp+0MhUOGROVQuorxffZJlof+G8NwDJDYUCFQGWPllFFA
 KK964c0A0/OMmjIY=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paluX-0004zW-SD for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=R85E7uQimX2SAhrrjoHNWpuZL+HB0XZL3iNXIzJ+Yfs=; b=OeX4YM2GdD8E9RJo04tNLmwNCS
 x0hqiWJ9Z9ahNS7XwVJSZAXDZmPJo9nNWL7aKXjzydSAFrO0m6dO6xG10dB7jQyx1g+t5152jH5iu
 RFr0CdSqQ1zqYuqLq9UzUk6qXWbt0SggkiG/waVG0ox+0oYz4KKQt9TDjTX9C+sU11JxpkXuF5At9
 hqsCniEWdxR4bSmO2f0ffGRd8rtvqjmmhjNVxfRHtdMb6/eiMnLbt7FhrJ58cNFVQurJ9CVvZt6xY
 8FNgLoLk4rFGNlH3BRUowvYNtRZEF3bvPNqNpJCLZt611qS7AsyT0l+T0DRfcoTDg+2wbym9JFlgy
 voypE+7A==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1paluB-00GaJB-50; Fri, 10 Mar 2023 23:12:07 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: dhowells@redhat.com, linux-cachefs@redhat.com, jack@suse.com,
 jaharkes@cs.cmu.edu, coda@cs.cmu.edu, codalist@coda.cs.cmu.edu,
 anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net
Date: Fri, 10 Mar 2023 15:12:01 -0800
Message-Id: <20230310231206.3952808-1-mcgrof@kernel.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This simplifies syctl registration for a few misc filesystems
 according to our latest preference / guidance [0]. register_sysctl_table()
 incurs possible recursion and we can avoid that by dealing with [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1paluX-0004zW-SD
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: [Linux-ntfs-dev] [PATCH 0/5] misc filesystems: simplify sysctl
 registration
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
Cc: j.granados@samsung.com, keescook@chromium.org, patches@lists.linux.dev,
 linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 ebiederm@xmission.com, linux-fsdevel@vger.kernel.org, yzaikin@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This simplifies syctl registration for a few misc filesystems according
to our latest preference / guidance [0]. register_sysctl_table() incurs
possible recursion and we can avoid that by dealing with flat
directories with files in them, and having the subdirectories explicitly
named with register_sysctl().

As we phase these callers out we can deprecate / remove register_sysctl_table()
eventually.

If you're a maintainer feel free to pick up the patch or I'm also happy
to take it through sysctl-next if you like. These don't create
conflicts so there is no requirement they go throug sysclt-next at all.

I can pick up stragglers later.

[0] https://lore.kernel.org/all/20230310223947.3917711-1-mcgrof@kernel.org/T/#u     

Luis Chamberlain (5):
  fs/cachefiles: simplify one-level sysctl registration for
    cachefiles_sysctls
  devpts: simplify two-level sysctl registration for pty_kern_table
  quota: simplify two-level sysctl registration for fs_dqstats_table
  coda: simplify one-level sysctl registration for coda_table
  ntfs: simplfy one-level sysctl registration for ntfs_sysctls

 fs/cachefiles/error_inject.c | 11 +----------
 fs/coda/sysctl.c             | 11 +----------
 fs/devpts/inode.c            | 20 +-------------------
 fs/ntfs/sysctl.c             | 12 +-----------
 fs/quota/dquot.c             | 20 +-------------------
 5 files changed, 5 insertions(+), 69 deletions(-)

-- 
2.39.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
