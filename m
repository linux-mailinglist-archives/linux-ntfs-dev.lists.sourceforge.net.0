Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 015EF3E48E1
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  9 Aug 2021 17:32:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mD7Fu-0000WF-8c; Mon, 09 Aug 2021 15:31:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dsterba@suse.cz>) id 1mD30z-00087x-5v
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 11:00:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+819Y6QMhTvZXoFwSHV0pNp7MewP22hxJjnmmnW1lo=; b=ZEB40nSucit1l4Q/uHYFbTeIQ9
 PmS4PjuGGOZwfskbXoU88x6U2C7pqPMcTnNmTaTgqxWDXUen9jdFIT6MKyPE/E0SZ0aS8wYvPelST
 QnS3n3ukSqfeMsYq2I/ClE3dcmPdbGXn30XllDc55GQ1jWLpY2Fax6wo/xYIIilTCwSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i+819Y6QMhTvZXoFwSHV0pNp7MewP22hxJjnmmnW1lo=; b=lK4L4NFpLFgSMD0iBg/rQXjrBw
 rHn+7EilPZ+Df9cSzS6aPP8oZvHaf3ldKe5G4pKQpzim5kfOyAis690eBm5pS1ztOu5PSKbDF+L1s
 mhBKgZdfV0V99GSo8zRa7F2A9n8ITxY0RU+RfAjvhqPVbfsM1G2HtbXq7bW/GpeSRukk=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mD30d-000Qkq-67
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 11:00:17 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id E505B21E7F;
 Mon,  9 Aug 2021 10:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1628506784;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=i+819Y6QMhTvZXoFwSHV0pNp7MewP22hxJjnmmnW1lo=;
 b=L7iNq+QO8kIx+jtgLE41cT9LClu7YvI3duAku3cSfi2XbLnSP9Mq6IN0gMHqcDHJFUKt4z
 NdpUZLJrbhDPbMvYUziR6TGqxej/USUzLzRRjpbXnAI1LefQ3GQz7WjAWeeUl6cEeCv3BV
 qHQkiKxJCi2OAlHQ0xWizHz9kCzQPUc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1628506784;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=i+819Y6QMhTvZXoFwSHV0pNp7MewP22hxJjnmmnW1lo=;
 b=be7gYdlgEviTolWcfsfJdFKIzb9Tns6XSfUJrxWftZ5oEHJ33Gvm4ikYyglqluZyBuObX4
 PzZmXavwV+bJcjAg==
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
 by relay2.suse.de (Postfix) with ESMTP id 3355BA3B89;
 Mon,  9 Aug 2021 10:59:44 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 7F240DA880; Mon,  9 Aug 2021 12:56:52 +0200 (CEST)
Date: Mon, 9 Aug 2021 12:56:52 +0200
From: David Sterba <dsterba@suse.cz>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210809105652.GK5047@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-fsdevel@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-kernel@vger.kernel.org, pali@kernel.org, aaptel@suse.com,
 willy@infradead.org, rdunlap@infradead.org, joe@perches.com,
 mark@harmstone.com, nborisov@suse.com,
 linux-ntfs-dev@lists.sourceforge.net, anton@tuxera.com,
 dan.carpenter@oracle.com, hch@lst.de, ebiggers@kernel.org,
 andy.lavr@gmail.com, kari.argillander@gmail.com,
 oleksandr@natalenko.name
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-11-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729134943.778917-11-almaz.alexandrovich@paragon-software.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mD30d-000Qkq-67
X-Mailman-Approved-At: Mon, 09 Aug 2021 15:31:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 10/10] fs/ntfs3: Add MAINTAINERS
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
Reply-To: dsterba@suse.cz
Cc: andy.lavr@gmail.com, kari.argillander@gmail.com, nborisov@suse.com,
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jul 29, 2021 at 04:49:43PM +0300, Konstantin Komarov wrote:
> This adds MAINTAINERS
> 
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 9c3428380..3b6b48537 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13279,6 +13279,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
>  F:	Documentation/filesystems/ntfs.rst
>  F:	fs/ntfs/
>  
> +NTFS3 FILESYSTEM
> +M:	Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> +S:	Supported
> +W:	http://www.paragon-software.com/
> +F:	Documentation/filesystems/ntfs3.rst
> +F:	fs/ntfs3/

Can you please add a git tree and mailing list entries?


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
