Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 670AA709586
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 May 2023 12:58:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzxoz-0005wS-3D;
	Fri, 19 May 2023 10:58:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pzwvw-0000Id-8U
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 10:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oa170J19E2ZF5s/HNNafUH9cpF4L8nzHUTAKBP1KfM8=; b=jyW1cOcOw408K18SRUI0B5/Vaa
 rrdYsjaeZeQ35hr+2OhBtUFej6ODrKqhM3PDkMAkV7dZ3SyOru4yem6+SqgyKkssZKNKJby4Ca9IH
 o5KJEA2anBP878cWh6/1o0b3fK1Qgz4cyz0s92O1+hTpI4HvDDNhDg2i1tUTSkeMYGp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oa170J19E2ZF5s/HNNafUH9cpF4L8nzHUTAKBP1KfM8=; b=YxreaCmgIwweuym4oTlbQlCE4G
 /ljFUduXPLW+Oo2y3ODE4r/m2kDwKFIrILdFVPRm1J/3T12KO+htUHL7XXZKPKauSzN6laDR7SpR8
 eYJyzFvorWh1NeU3dm1xWbrps2y0o26BOo730BTPrv8Nt8A0cQLP9ApuW+tFYvpCSwWY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzwvv-00DFH3-Ls for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 10:02:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A8ADE655DD;
 Fri, 19 May 2023 10:01:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78BAFC433EF;
 Fri, 19 May 2023 10:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684490508;
 bh=H8RMAZL7xHu9vWV/p6h3V7y8VIc6YcFhh9uGGULvGrc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KOMzZeTmosNPzqskREMLJdn09AQKqz/J2haccdORRUcpYfObqPXL/3SrGsph0/Bot
 vAVCPLJlALNeJtBLu+2EmjtPxF41flQW79LAzixck0ikdSeXNbUOXPmq5U2XQPiGDO
 a/9GlcSiYGNPkCkAoUKlLkmBLpX/lIW6fzmcXT1+UDZSmJnr1hXqBk5N8VJ/Oh+uU3
 F8EMl/cLmfiN69XqQzb/kSO4Lh68CrGaZjccpmaP4nzxk9tBoHLsfQwVKKE4pC2+TU
 gjK88t0317FuIVnPVaXtpkHVm+mUYcXPNSQ/wrFFi7+5tShApOoCsYhJGBVQyGRnHA
 hVwG75x5mhVyQ==
From: Christian Brauner <brauner@kernel.org>
To: anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Shaomin Deng <dengshaomin@cdjrlc.com>
Date: Fri, 19 May 2023 12:01:39 +0200
Message-Id: <20230519-gebinde-piloten-ce29e4cdc4a8@brauner>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221105153135.5975-1-dengshaomin@cdjrlc.com>
References: <20221105153135.5975-1-dengshaomin@cdjrlc.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=708; i=brauner@kernel.org;
 h=from:subject:message-id; bh=H8RMAZL7xHu9vWV/p6h3V7y8VIc6YcFhh9uGGULvGrc=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaSke3z7fTNKOmHtQe8Vt7aYNHzkCUhRvsp1I61W2urgHJX7
 P58adJSyMIhxMciKKbI4tJuEyy3nqdhslKkBM4eVCWQIAxenAEzEoIqR4fy0v4/3l+3YWRu44ZP6Cv
 Hmn1k/lD5XTkyVrZ3yS2Nq2RtGhgnXOIVX6VvsnylaeFjK5Ff86gyDR3ef675fvodP/Ft5JSMA
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 05 Nov 2022 11:31:35 -0400, Shaomin Deng wrote: >
 Remove the unneeded semicolon after curly braces. > > Applied to the fs.ntfs
 branch of the vfs/vfs.git tree. Patches in the fs.ntfs branch should appear
 in linux-next soon. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzwvv-00DFH3-Ls
X-Mailman-Approved-At: Fri, 19 May 2023 10:58:50 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: Remove unneeded semicolon
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
Cc: Christian Brauner <brauner@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, 05 Nov 2022 11:31:35 -0400, Shaomin Deng wrote:
> Remove the unneeded semicolon after curly braces.
> 
> 

Applied to the fs.ntfs branch of the vfs/vfs.git tree.
Patches in the fs.ntfs branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: fs.ntfs

[1/1] ntfs: Remove unneeded semicolon
      https://git.kernel.org/vfs/vfs/c/6405fee9b0d0


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
