Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 647C23E5E00
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmT-0007k4-GR; Tue, 10 Aug 2021 14:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1mDNvA-0002gO-Py
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 09:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9dXulaCUrPQVyS2CV9G2NLUra2wYA+aHq+Rs95/WQoM=; b=gXizg5d0mlDw6dO57TrgSmnsPH
 x82mjgLupJFrGa0aWH0VZmL+on1IF9QSngotDqNPLnDWF+hwRRDeO6TFiOq3D+g82XjcAO7LAUom/
 c13sBortvWiqoN6fn0x76rPRUNUaThRirtu9Ti3sd5j/Cdz5JZlJcRS8NFWFZ80BbJPM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9dXulaCUrPQVyS2CV9G2NLUra2wYA+aHq+Rs95/WQoM=; b=ictQbTRqRS4IIipNu8YuS2VOfC
 +rAp4X1/uy09NpKcmRCQXFjR83RAULE1x8EWRXhGxN8Oq9x58GOamlJY8qun/w3hP63QhnSYVlzdW
 cGYVDa9XcRr4LAyHX46GiVb+TN7yoAmhccTR6L38jU5PMJ9El3IREaIwMzxxCSMHFDWE=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDNv8-0002QA-5f
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 09:19:40 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 88C5768AFE; Tue, 10 Aug 2021 11:02:34 +0200 (CEST)
Date: Tue, 10 Aug 2021 11:02:34 +0200
From: Christoph Hellwig <hch@lst.de>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210810090234.GA23732@lst.de>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-3-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729134943.778917-3-almaz.alexandrovich@paragon-software.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mDNv8-0002QA-5f
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 02/10] fs/ntfs3: Add initialization
 of super block
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

> +static struct dentry *ntfs_mount(struct file_system_type *fs_type, int flags,
> +				 const char *dev_name, void *data)
> +{
> +	return mount_bdev(fs_type, flags, dev_name, data, ntfs_fill_super);
> +}
> +
> +static struct file_system_type ntfs_fs_type = {
> +	.owner = THIS_MODULE,
> +	.name = "ntfs3",
> +	.mount = ntfs_mount,
> +	.kill_sb = kill_block_super,
> +	.fs_flags = FS_REQUIRES_DEV,
> +};

You can't add new callers of mount_bdev or users of the old mount
support.  Please switch to the file system context based API before
resending.  Take a look at e.g. XFS for how to implement it.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
