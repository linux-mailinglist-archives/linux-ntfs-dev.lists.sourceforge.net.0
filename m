Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D59382A4C
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 17 May 2021 12:54:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1liasu-0002RP-DB; Mon, 17 May 2021 10:54:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <BATV+803dabce8fb28c02b2ee+6476+infradead.org+hch@casper.srs.infradead.org>)
 id 1liaUc-0004is-9F
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 May 2021 10:28:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rLb4WLtzCt3pie0yCq3Bk7nNX431oFC9urgUQrI6e5M=; b=Uo4O2HJbdqBaVmICWLLgkO40/P
 D1F/To9JajGWD/H9dscCYzZmWp7XzIJzwgn2ULYkxMLc9nNvPEiy91m4YqniZMIcJxuaY3xfd9gND
 2yjAi7A021YZ5ZsacPKneA01MiV4dnbjaNsAlFzXAyw3aV7r/MJUpuWjb4Ekx/+O3kUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rLb4WLtzCt3pie0yCq3Bk7nNX431oFC9urgUQrI6e5M=; b=HYvVycOa3CjpsTxr579ltgERgM
 ag1bGr5Nu3DFIy2+4Go0RfQrUiBsjpU2jwDmdOJomCkZn0lERKpLJcRs00222V7bQrBdVcqpOz4Ig
 vbcT+U5sVkNA8KATk1apm7JfHSJeNjkMHwxx0ps/vi3UPzKXzjRF+AuKMuVbtjGfXqrM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1liaUT-0003ud-Jc
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 May 2021 10:28:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=rLb4WLtzCt3pie0yCq3Bk7nNX431oFC9urgUQrI6e5M=; b=T5KqDgEGebvZJeUWDVNQiDGwTa
 NNoHyW62q49jKgsXYwK78QaPy5xeR4Cg/M8rc170REZY7NOLg+DyyF+lumRmJCniHnJ4EbuB7Nm8x
 NzVUVDZhY2i47siTBq+19E7YR85JnNgxkw11HHMLdUywbB7O/PgKz4B7zshG75IX/cvXVzylxlN5a
 7QJmwg+5Q/5ZrxS44koU4mUR8YBwkvoAP4CopaYteTco7rDPpgzY2KYkGcYt3vs5Mp+bN3ianV7Rt
 3O7mA+H269wN+6wVra9xssfzah82jROCgcmcGkpLwEK2jmqGfG/hmOGg3ps1scoFK37oNlRQHZsJo
 BKrTpFLw==;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1liaU0-00Co94-3k; Mon, 17 May 2021 10:28:20 +0000
Date: Mon, 17 May 2021 11:28:20 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <YKJFRBynJXoFtTyy@infradead.org>
References: <20210514100106.3404011-1-arnd@kernel.org>
 <20210514100106.3404011-9-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514100106.3404011-9-arnd@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1liaUT-0003ud-Jc
X-Mailman-Approved-At: Mon, 17 May 2021 10:54:02 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2 08/13] partitions: msdos: fix
 one-byte get_unaligned()
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
Cc: linux-arch@vger.kernel.org, Jens Axboe <axboe@kernel.dk>,
 Arnd Bergmann <arnd@arndb.de>, linux-ntfs-dev@lists.sourceforge.net,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, May 14, 2021 at 12:00:56PM +0200, Arnd Bergmann wrote:
>  /* Borrowed from msdos.c */
> -#define SYS_IND(p)		(get_unaligned(&(p)->sys_ind))
> +#define SYS_IND(p)		((p)->sys_ind)

Please just kill this macro entirely.

> -#define SYS_IND(p)	get_unaligned(&p->sys_ind)
> +#define SYS_IND(p)	(p->sys_ind)

Same here.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
