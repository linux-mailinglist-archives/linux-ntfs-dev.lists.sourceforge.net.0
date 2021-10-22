Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 621F84376AE
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Oct 2021 14:19:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdtVp-0000yK-EE; Fri, 22 Oct 2021 12:19:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hsiangkao@linux.alibaba.com>) id 1mdr1a-0000Sp-Mn
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 09:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wN8EVf3/D301/YxRHlMmoXATr2YuElDUH1DCSvcrnfU=; b=eOFpZroxn1KTL/+GLWVq4bB5Ti
 9eZrjo3RBd4HxLzZTpYEqciw8iI20mtq0+FozP+RLnoGccyycRcaCq75+YvUoGJxldyrYy7qDhYNB
 35YTlghKhiqBZb7seCFr7hRim/SfPhXdgbpS8ZVSm3KqE27pbROwbQmvwpSk+M2svq8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wN8EVf3/D301/YxRHlMmoXATr2YuElDUH1DCSvcrnfU=; b=fWGsWDq82Fh7zU7YwQZ1+t837s
 DOm+Libzqoa8VJD47yAI7sYYm1IheCGAHe0xjRzGbiee+Vs4zkFid5ws/fhV4jYFIQlNQiy0q7txW
 7/kEr4ZbHsxOrJbc+BP5vWbi3LIaqOOPvFYAIEnh5zBKKeEKqvDk5T4Z9aupvCe21Gzk=;
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdr1Z-00BbGF-1q
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 09:39:42 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R851e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04400; MF=hsiangkao@linux.alibaba.com;
 NM=1; PH=DS; RN=13; SR=0; TI=SMTPD_---0UtFDUY5_1634895569; 
Received: from B-P7TQMD6M-0146.local(mailfrom:hsiangkao@linux.alibaba.com
 fp:SMTPD_---0UtFDUY5_1634895569) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 22 Oct 2021 17:39:31 +0800
Date: Fri, 22 Oct 2021 17:39:29 +0800
From: Gao Xiang <hsiangkao@linux.alibaba.com>
To: Qu Wenruo <quwenruo.btrfs@gmx.com>
Message-ID: <YXKG0V99Ph9KhDyg@B-P7TQMD6M-0146.local>
Mail-Followup-To: Qu Wenruo <quwenruo.btrfs@gmx.com>,
 Jan Kara <jack@suse.cz>, Phillip Susi <phill@thesusis.net>,
 linux-ntfs-dev@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>,
 David Howells <dhowells@redhat.com>, linux-bcache@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
 <87tuh9n9w2.fsf@vps.thesusis.net>
 <20211022084127.GA1026@quack2.suse.cz>
 <YXKARs0QpAZWl6Hi@B-P7TQMD6M-0146.local>
 <62f5f68d-7e3f-9238-5417-c64d8dcf2214@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62f5f68d-7e3f-9238-5417-c64d8dcf2214@gmx.com>
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Qu, On Fri, Oct 22, 2021 at 05:22:28PM +0800, Qu Wenruo
 wrote: > > > On 2021/10/22 17:11, Gao Xiang wrote: > > On Fri, Oct 22, 2021
 at 10:41:27AM +0200, Jan Kara wrote: > > > On Thu 21-10-21 21:04:45, Phi
 [...] Content analysis details:   (-8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mdr1Z-00BbGF-1q
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
 Matthew Wilcox <willy@infradead.org>, David Howells <dhowells@redhat.com>,
 linux-bcache@vger.kernel.org, Phillip Susi <phill@thesusis.net>,
 Hsin-Yi Wang <hsinyi@chromium.org>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Qu,

On Fri, Oct 22, 2021 at 05:22:28PM +0800, Qu Wenruo wrote:
> 
> 
> On 2021/10/22 17:11, Gao Xiang wrote:
> > On Fri, Oct 22, 2021 at 10:41:27AM +0200, Jan Kara wrote:
> > > On Thu 21-10-21 21:04:45, Phillip Susi wrote:
> > > > 
> > > > Matthew Wilcox <willy@infradead.org> writes:
> > > > 
> > > > > As far as I can tell, the following filesystems support compressed data:
> > > > > 
> > > > > bcachefs, btrfs, erofs, ntfs, squashfs, zisofs
> > > > > 
> > > > > I'd like to make it easier and more efficient for filesystems to
> > > > > implement compressed data.  There are a lot of approaches in use today,
> > > > > but none of them seem quite right to me.  I'm going to lay out a few
> > > > > design considerations next and then propose a solution.  Feel free to
> > > > > tell me I've got the constraints wrong, or suggest alternative solutions.
> > > > > 
> > > > > When we call ->readahead from the VFS, the VFS has decided which pages
> > > > > are going to be the most useful to bring in, but it doesn't know how
> > > > > pages are bundled together into blocks.  As I've learned from talking to
> > > > > Gao Xiang, sometimes the filesystem doesn't know either, so this isn't
> > > > > something we can teach the VFS.
> > > > > 
> > > > > We (David) added readahead_expand() recently to let the filesystem
> > > > > opportunistically add pages to the page cache "around" the area requested
> > > > > by the VFS.  That reduces the number of times the filesystem has to
> > > > > decompress the same block.  But it can fail (due to memory allocation
> > > > > failures or pages already being present in the cache).  So filesystems
> > > > > still have to implement some kind of fallback.
> > > > 
> > > > Wouldn't it be better to keep the *compressed* data in the cache and
> > > > decompress it multiple times if needed rather than decompress it once
> > > > and cache the decompressed data?  You would use more CPU time
> > > > decompressing multiple times, but be able to cache more data and avoid
> > > > more disk IO, which is generally far slower than the CPU can decompress
> > > > the data.
> > > 
> > > Well, one of the problems with keeping compressed data is that for mmap(2)
> > > you have to have pages decompressed so that CPU can access them. So keeping
> > > compressed data in the page cache would add a bunch of complexity. That
> > > being said keeping compressed data cached somewhere else than in the page
> > > cache may certainly me worth it and then just filling page cache on demand
> > > from this data...
> > 
> > It can be cached with a special internal inode, so no need to take
> > care of the memory reclaim or migration by yourself.
> 
> There is another problem for btrfs (and maybe other fses).
> 
> Btrfs can refer to part of the uncompressed data extent.
> 
> Thus we could have the following cases:
> 
> 	0	4K	8K	12K
> 	|	|	|	|
> 		    |	    \- 4K of an 128K compressed extent,
> 		    |		compressed size is 16K
> 		    \- 4K of an 64K compressed extent,
> 			compressed size is 8K

Thanks for this, but the diagram is broken on my side.
Could you help fix this?

> 
> In above case, we really only need 8K for page cache, but if we're
> caching the compressed extent, it will take extra 24K.

Apart from that, with my wild guess, could we cache whatever the
real I/O is rather than the whole compressed extent unconditionally?
If the whole compressed extent is needed then, we could check if
it's all available in cache, or read the rest instead?

Also, I think no need to cache uncompressed COW data...

Thanks,
Gao Xiang

> 
> It's definitely not really worthy for this particular corner case.
> 
> But it would be pretty common for btrfs, as CoW on compressed data can
> easily lead to above cases.
> 
> Thanks,
> Qu
> 
> > 
> > Otherwise, these all need to be take care of. For fixed-sized input
> > compression, since they are reclaimed in page unit, so it won't be
> > quite friendly since such data is all coupling. But for fixed-sized
> > output compression, it's quite natural.
> > 
> > Thanks,
> > Gao Xiang
> > 
> > > 
> > > 								Honza
> > > --
> > > Jan Kara <jack@suse.com>
> > > SUSE Labs, CR


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
