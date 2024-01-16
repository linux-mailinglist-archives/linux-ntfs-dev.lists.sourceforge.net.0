Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF0482EB9A
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Jan 2024 10:34:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPfpx-0001HV-Qs;
	Tue, 16 Jan 2024 09:34:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rPfpw-0001HO-1f
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 09:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hnrkb01gmPqVmxXiP5NFuE5SQ0mLHIoIvkxyhii8QN4=; b=hPz4u8q9/AbnE4fiWc95W3Ce8T
 vJtZ7W4SWF/DQo4D9oywfx8PVTmKNDB2kk7TJxqxvD0CexQvXDSZzGX9MPe+7lSAkFqliYJcNOWrM
 IOJSg9GDX/Sm2MDx+bJeo43e8OrV/8d2lvAt18rIanNigtdG90aaOXUt6VDjkObtbwcg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hnrkb01gmPqVmxXiP5NFuE5SQ0mLHIoIvkxyhii8QN4=; b=P9MwxlUWHnpx643L1hu5Fsnq6j
 g7EiU09o027EjA/jF1eZZzB2vvAdBlNYDVCyhGec+yCpX9ArGaotrKf2FwIaiC1T8F/7qudFU9+VN
 02Pj9b92q3v8EZmbGCurFgUwQ4XXYF+67kDkh9WBukAsb0adtdbSAGY5hD/RP1BfPw8k=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPfps-0002Q5-Pc for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 09:34:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id D73CCB80D52;
 Tue, 16 Jan 2024 09:34:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04642C433C7;
 Tue, 16 Jan 2024 09:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705397650;
 bh=hmCmYEgqz59L8XvQn3RmH21Xr8NvEzN3ZqWmfeSuhRQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nO2AItRAwKSzZUnTc/U/CXtKR/QHWmKoSfiaW1stIwv01/U41sU07zK8tTtDghlI7
 bxL/2KHjYqjWueMZEap6a2bSfExm2AoiSnYHOClyFQFsjfiJd3qRk5skrovupOPySB
 fqFXvL3mr9XI22N9/iloCbQg0tieBc/L2056g/754TRCLOA+gZTkVqMIPTtU8ckmYd
 P6FI0AnEBB6KiGwTNCDn+ynm0r5C8ktnhRIsMF1rzPz89X5pHzdhGqlUw4PIKd3YS9
 +T8f+ZBjU1mvB8hS+OYZ3ALuPU4CtjAKGO3viL2y1CkMvTtGNkHhdSbeG6jUF5KRQq
 sDvxmAAA12hwg==
From: Christian Brauner <brauner@kernel.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 16 Jan 2024 10:33:49 +0100
Message-ID: <20240116-fernbedienung-vorwort-a21384fd7962@brauner>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240115072025.2071931-1-willy@infradead.org>
References: <20240115072025.2071931-1-willy@infradead.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1152; i=brauner@kernel.org;
 h=from:subject:message-id; bh=hmCmYEgqz59L8XvQn3RmH21Xr8NvEzN3ZqWmfeSuhRQ=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaQu821+Y3k3N+zavn1r/H6ceFtc8MzkdWdE9gf9UquKB
 /JL7giodZSyMIhxMciKKbI4tJuEyy3nqdhslKkBM4eVCWQIAxenAEzkoTEjw4EbMss+i66Nj1ma
 ZhO1YbXTu83PRVp/zd+3XE11raHt8wuMDA+rLt70zZhb6hh259ABOd0LQs3CO/kmx17lXBdcvHU
 zNxsA
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle)
 wrote: > The replacement, NTFS3, was merged over two years ago. It is now
 time to > remove the original from the tree as it is the last user [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPfps-0002Q5-Pc
Subject: Re: [Linux-ntfs-dev] [PATCH] fs: Remove NTFS classic
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
Cc: Christian Brauner <brauner@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle) wrote:
> The replacement, NTFS3, was merged over two years ago.  It is now time to
> remove the original from the tree as it is the last user of several APIs,
> and it is not worth changing.
> 
> 

I see no reason to not at least try and remove it given that we have
ntfs3 as a replacement. Worst case is we have to put it back in. Let's
try it.

---

Applied to the vfs.fs branch of the vfs/vfs.git tree.
Patches in the vfs.fs branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

Note that commit hashes shown below are subject to change due to rebase,
trailer updates or similar. If in doubt, please check the listed branch.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs.fs

[1/1] fs: Remove NTFS classic
      https://git.kernel.org/vfs/vfs/c/9c67092ed339


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
