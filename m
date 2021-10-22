Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C79534376AA
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Oct 2021 14:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdtVp-0000x2-00; Fri, 22 Oct 2021 12:19:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xiang@kernel.org>) id 1mdiLa-00067X-66
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 00:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WJ6nBnadaJ4lSZINm9Vs4I78RIQKD2uWRcYRwvpML78=; b=HgUV/F0Fd4HxnAiRoWyXv2TUzp
 twTMtsZBCGZkVh7HL3i76fYW/luCPH5y8Xa+uMgZgFNA/RQH5cs4rAtKrwL9oh9ulZkvsOVubu4JX
 B4b1cHFZXpLj8Jrqp3XltbP65Y5N9/1Yyb9yTTJm7EMP6dGSc7qYWj/HUS3vRW0ElN0g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WJ6nBnadaJ4lSZINm9Vs4I78RIQKD2uWRcYRwvpML78=; b=KsJ5vlkrPwoUPitDEpQ8a869kG
 2JDEIBVil8BTm34CzgU+qaAkLakdQUIHm7nTn/xCrQWYxnVxov1E6A7vM6dl1eENL4iUjKQ7kKnN0
 sbmUMcoxtvdMaiMPjyT/2K7S+A9s3rqG2qyJmTRGyypZ/Z1WvfsLBo3mYr8q3rT89+1o=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdiLZ-00B6yC-GA
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 00:23:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD50E60EBB;
 Fri, 22 Oct 2021 00:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634862220;
 bh=OSajkPGWXV3rm9LiIZWq+VM94+j5+N3IhWdn05dUZZM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jKvliVvnMbqrUrSce1ypIw/s3fWULNKwDK6NLsRszlOmtuzS1avPw5uNyjGqIg09v
 jphb1wQbvWSeq7BRWmHCof3Xqr1k5YkXGzcseIKWql9eZ/fh+Zgf525iVlWnX0UDib
 s1A0Yq2bIWuWC+CY+d30L74kyPqQDqEXJYjKpifRLKDG+NwXmBOUIZP+Ac2wU+u0Uw
 F284NyI3+HOlZpjPz+YJHcUvoGO6tg1y9Fg6ixyLxGrW6lvB6LGRBM8DOfntytk9Kl
 Km3KVvqGjBYha4rkQ+YOtJmMSE+cUs0Xi0VIru0sTS1IF2s4a+JTDPCDdE0cpNlxIb
 HdZ210xX8zUAQ==
Date: Fri, 22 Oct 2021 08:22:14 +0800
From: Gao Xiang <xiang@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20211022002135.GA19226@hsiangkao-HP-ZHAN-66-Pro-G1>
Mail-Followup-To: Matthew Wilcox <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev,
 linux-bcache@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXHK5HrQpJu9oy8w@casper.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 21, 2021 at 09:17:40PM +0100,
 Matthew Wilcox wrote:
 > As far as I can tell, the following filesystems support compressed data:
 > > bcachefs, btrfs, erofs, ntfs, squashfs, zisofs > > I'd li [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdiLZ-00B6yC-GA
X-Mailman-Approved-At: Fri, 22 Oct 2021 12:19:01 +0000
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
Cc: Jan Kara <jack@suse.cz>, linux-ntfs-dev@lists.sourceforge.net,
 David Howells <dhowells@redhat.com>, linux-bcache@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Oct 21, 2021 at 09:17:40PM +0100, Matthew Wilcox wrote:
> As far as I can tell, the following filesystems support compressed data:
> 
> bcachefs, btrfs, erofs, ntfs, squashfs, zisofs
> 
> I'd like to make it easier and more efficient for filesystems to
> implement compressed data.  There are a lot of approaches in use today,
> but none of them seem quite right to me.  I'm going to lay out a few
> design considerations next and then propose a solution.  Feel free to
> tell me I've got the constraints wrong, or suggest alternative solutions.
> 
> When we call ->readahead from the VFS, the VFS has decided which pages
> are going to be the most useful to bring in, but it doesn't know how
> pages are bundled together into blocks.  As I've learned from talking to
> Gao Xiang, sometimes the filesystem doesn't know either, so this isn't
> something we can teach the VFS.
> 
> We (David) added readahead_expand() recently to let the filesystem
> opportunistically add pages to the page cache "around" the area requested
> by the VFS.  That reduces the number of times the filesystem has to
> decompress the same block.  But it can fail (due to memory allocation
> failures or pages already being present in the cache).  So filesystems
> still have to implement some kind of fallback.
> 
> For many (all?) compression algorithms (all?) the data must be mapped at
> all times.  Calling kmap() and kunmap() would be an intolerable overhead.
> At the same time, we cannot write to a page in the page cache which is
> marked Uptodate.  It might be mapped into userspace, or a read() be in
> progress against it.  For writable filesystems, it might even be dirty!
> As far as I know, no compression algorithm supports "holes", implying
> that we must allocate memory which is then discarded.
> 
> To me, this calls for a vmap() based approach.  So I'm thinking
> something like ...
> 
> void *readahead_get_block(struct readahead_control *ractl, loff_t start,
> 			size_t len);
> void readahead_put_block(struct readahead_control *ractl, void *addr,
> 			bool success);
> 
> Once you've figured out which bytes this encrypted block expands to, you
> call readahead_get_block(), specifying the offset in the file and length
> and get back a pointer.  When you're done decompressing that block of
> the file, you get rid of it again.
> 
> It's the job of readahead_get_block() to allocate additional pages
> into the page cache or temporary pages.  readahead_put_block() will
> mark page cache pages as Uptodate if 'success' is true, and unlock
> them.  It'll free any temporary pages.
> 
> Thoughts?  Anyone want to be the guinea pig?  ;-)

Copied from IRC for reference as well..

As for vmap() strategy, No need to allocate some temporary pages in advance
before compressed I/O is done and async work is triggered, since I/Os /
works could cause noticable latencies. Logically, only inplace or cached
I/O strategy should be decided before I/O and compressed pages need to be
prepared. The benefits of fixed-sized output compression aside from the
relative higher compression ratios is that each compressed pcluster can
be completely decompressed independently, you can select inplace or cache
I/O for each pclusters. And when you decide inplace I/O for some pcluster,
no extra incompressible data is readed from disk or cached uselessly.

As I said, even overall read request (with many pclusters) is 1MiB or
2MiB or some else, also only need allocate 16 pages (64KiB) at most for lz4
for each read request (used for lz4 sliding window), no need such many
extra temporary pages.

Allocating too many pages in advance before I/O IMO is just increasing the
overall memory overhead. Low-ended devices cannot handle I/O quickly but
has limited memory. Temporary pages are only needed before decompression,
not exactly before I/O.

Thanks,
Gao Xiang


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
