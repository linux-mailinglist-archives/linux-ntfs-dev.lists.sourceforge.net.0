Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 134CA6B9414
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xD-0001Sv-8f;
	Tue, 14 Mar 2023 12:40:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pbgVy-0007an-TO
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 13 Mar 2023 11:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5D9bnWygFJseTMOzPFFJaaFbBOYVMLeXq/AvF8bWQGo=; b=EENG2sXgE4NWVn6UkisAoEpXLK
 KGDoUxWV/mF7C7aEPBZKke6vH8+NKohq1DNus2qR1VLA6of8T5KH6uFICtTYluI1mlnjlt3fVuggl
 BbBkd+HgC97dk4KO/iU4ad8Czm9z9zhKur/ynLC2mn6pFzIoXfdd+aoynM0sjnaQOpOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5D9bnWygFJseTMOzPFFJaaFbBOYVMLeXq/AvF8bWQGo=; b=gWbARvN33BL3XNlaQpBqnEn423
 q+YkKZBIKMHt+qkpxrqaoDRfuM9lnturSa3K+qD6URE6N/zy81Qkh62DnmIBhr1Yo3NZW8rxsAnyz
 vo9l2W2Jg/iolnd2iY5z3eLB5hc7exT52HJfOCZ8803yihD0Xg/enGui91FzqjjO6JGs=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbgVz-006SUn-Ak for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 13 Mar 2023 11:38:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 092D5B81049;
 Mon, 13 Mar 2023 11:38:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E75CFC433D2;
 Mon, 13 Mar 2023 11:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678707527;
 bh=S4n4HT8Q6zO639j2exjZJcPIuREtYf6PgD5AffBEIlE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Um3qdroXjFHpiyQhRiNcTrUXv7rvkN6Ou67qFdpCTJnXhXZb3wS4ERHizHYzUrvLM
 PeVS+ErAV+1KtlAIWkc8NufqPonC/8/71aO20hOKKKq3KBnBMaGsk5aeBVmzV6YLGd
 ABvur/Pz+wEMNJ3oG+Vvp80eHnbT6Xq510ZkDoQ62Zm18ePgWcjdFu8ciNd8vYCLbW
 cENVM108VmAX9oca9gFM8eJEZ0F8qNuWzYNO0FW7IzH0BtQh3bieAh/l/N3gaHPe6Q
 1HEKwKGi5/ZTnu1Rfzjp0GktsFLSOO4wh3s5rP3YB5j9jiCbAnVd6HK5Qus7Fk4z+Z
 ktmfotKa0W8bw==
Date: Mon, 13 Mar 2023 12:38:40 +0100
From: Christian Brauner <brauner@kernel.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20230313113840.75eyj66ydgbvln6p@wittgenstein>
References: <20230310231206.3952808-1-mcgrof@kernel.org>
 <20230310231206.3952808-3-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230310231206.3952808-3-mcgrof@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Mar 10, 2023 at 03:12:03PM -0800, Luis Chamberlain
 wrote: > There is no need to declare two tables to just create directories,
 > this can be easily be done with a prefix path with register_sys [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pbgVz-006SUn-Ak
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/5] devpts: simplify two-level sysctl
 registration for pty_kern_table
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
Cc: j.granados@samsung.com, jaharkes@cs.cmu.edu, keescook@chromium.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 patches@lists.linux.dev, codalist@coda.cs.cmu.edu, dhowells@redhat.com,
 coda@cs.cmu.edu, linux-cachefs@redhat.com, ebiederm@xmission.com,
 jack@suse.com, linux-fsdevel@vger.kernel.org, yzaikin@google.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Mar 10, 2023 at 03:12:03PM -0800, Luis Chamberlain wrote:
> There is no need to declare two tables to just create directories,
> this can be easily be done with a prefix path with register_sysctl().
> 
> Simplify this registration.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---

I can take this one, Luis. Thanks!


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
