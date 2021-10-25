Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2314243A815
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 26 Oct 2021 01:20:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mf9GA-0003gn-Ew; Mon, 25 Oct 2021 23:20:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <phill@thesusis.net>) id 1mf5Ex-00015b-Kh
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 25 Oct 2021 19:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lTqCGcswe3FFBXvFp0h6vtRvrjn3tTRqgQCyuRUWLDI=; b=dYJqPiiXCKfXzuzj9utW91M1mg
 QG1GwpVnA+93+qCitq2uvTNR60qNSvwZJo5dGd3pStE3YX+JCdLF1zK27S/VTSDlboaxkpo4bAEuH
 9km81/UIjEQsZVIE+Zr1p7o+Tg5r6cuC7HwpwGqiGzLPANDqNm4tSTBCSNGjmpooBx74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lTqCGcswe3FFBXvFp0h6vtRvrjn3tTRqgQCyuRUWLDI=; b=jkGdgZtGvSYjo+8e20M7bOGfaS
 OioDoJbBG0QjBJXS7NPGSLniYishKoP1d3JJ8jIANRhJJmgqvLTsBDuTdy03p5jMUNiDjBFduuulp
 D6Gw2MpJgl0DYxq69JjGFIyUaOjJtNcs20WdDoa0ieE2m4ls2EzhBVdaYk7/BdiLH9FA=;
Received: from vps.thesusis.net ([34.202.238.73])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mf5Ew-00Fzq6-BX
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 25 Oct 2021 19:02:35 +0000
Received: by vps.thesusis.net (Postfix, from userid 1000)
 id 0C83861FD2; Mon, 25 Oct 2021 15:02:27 -0400 (EDT)
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
 <87tuh9n9w2.fsf@vps.thesusis.net> <20211022084127.GA1026@quack2.suse.cz>
User-agent: mu4e 1.7.0; emacs 27.1
From: Phillip Susi <phill@thesusis.net>
To: Jan Kara <jack@suse.cz>
Date: Mon, 25 Oct 2021 14:59:45 -0400
In-reply-to: <20211022084127.GA1026@quack2.suse.cz>
Message-ID: <87fssprkql.fsf@vps.thesusis.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jan Kara <jack@suse.cz> writes: > Well, one of the problems
 with keeping compressed data is that for mmap(2) > you have to have pages
 decompressed so that CPU can access them. So keeping > compressed data in
 the page cache would add [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mf5Ew-00Fzq6-BX
X-Mailman-Approved-At: Mon, 25 Oct 2021 23:20:05 +0000
Subject: Re: [Linux-NTFS-Dev] Readahead for compressed data
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Matthew Wilcox <willy@infradead.org>,
 David Howells <dhowells@redhat.com>, linux-bcache@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


Jan Kara <jack@suse.cz> writes:

> Well, one of the problems with keeping compressed data is that for mmap(2)
> you have to have pages decompressed so that CPU can access them. So keeping
> compressed data in the page cache would add a bunch of complexity. That
> being said keeping compressed data cached somewhere else than in the page
> cache may certainly me worth it and then just filling page cache on demand
> from this data...

True... Did that multi generational LRU cache ever get merged?  I was
thinking you could use that to make sure that the kernel prefers to
reclaim the decompressed pages in favor of keeping the compressed ones
around.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
