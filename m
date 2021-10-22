Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A214376A4
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Oct 2021 14:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdtVo-0000wS-FQ; Fri, 22 Oct 2021 12:19:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <phillip@squashfs.org.uk>) id 1mdmay-0003ny-5o
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 04:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f9PgLFUMsi/eAAiik9sQMRH789h1jgFUFRLuehvaRWM=; b=U2Ac638ZnttTt0cW28thMDPgah
 WcE95VtCfBP+EpZQd/FUPW8gjZ2HBSpINEOuu03Sw+mqvXNzN+EigddZZjOZz8qMA8yNa4gBQoHig
 pNksXv05cqlkMqc1RqFvDoDfoh0sRC3oF58zUqNju+wSUH18nhXhpgIuxIV8pqlDBaGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f9PgLFUMsi/eAAiik9sQMRH789h1jgFUFRLuehvaRWM=; b=Bsm0rph4SZmSzOXufIKjAlPbDx
 Jq3frqhZ6ridaj41F/7cwyb1930GHUsSswC/OY/nVo9ilOyOA/umHtpbASvSjILCUCu9SamQY33IA
 5tXPUFel0qPdyTuJstVy8JXljyCeLdRewsjxLIA/nBIQIEW9Ijk5FUrwtfOuZNdJuwd8=;
Received: from p3plsmtp16-01-2.prod.phx3.secureserver.net ([173.201.193.54]
 helo=p3plwbeout16-01.prod.phx3.secureserver.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdmax-00BLQn-6i
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 04:55:56 +0000
Received: from mailex.mailcore.me ([94.136.40.144]) by :WBEOUT: with ESMTP
 id dmHzmrBU9buDOdmI0muH6D; Thu, 21 Oct 2021 21:36:20 -0700
X-CMAE-Analysis: v=2.4 cv=PMDKRdmC c=1 sm=1 tr=0 ts=61723fc4
 a=wXHyRMViKMYRd//SnbHIqA==:117 a=84ok6UeoqCVsigPHarzEiQ==:17
 a=ggZhUymU-5wA:10 a=IkcTkHD0fZMA:10 a=8gfv0ekSlNoA:10
 a=A-M8zVwSJslglwQpLHsA:9 a=QEXdDO2ut3YA:10
X-SECURESERVER-ACCT: phillip@squashfs.org.uk  
X-SID: dmHzmrBU9buDO
Received: from 82-69-79-175.dsl.in-addr.zen.co.uk ([82.69.79.175]
 helo=[192.168.178.33])
 by smtp01.mailcore.me with esmtpa (Exim 4.94.2)
 (envelope-from <phillip@squashfs.org.uk>)
 id 1mdmHy-0007Zy-7e; Fri, 22 Oct 2021 05:36:19 +0100
To: Matthew Wilcox <willy@infradead.org>, linux-fsdevel@vger.kernel.org,
 Jan Kara <jack@suse.cz>, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 ntfs3@lists.linux.dev, linux-bcache@vger.kernel.org
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
From: Phillip Lougher <phillip@squashfs.org.uk>
Message-ID: <69359b86-9999-e484-8ca4-ed34b64e65c7@squashfs.org.uk>
Date: Fri, 22 Oct 2021 05:36:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YXHK5HrQpJu9oy8w@casper.infradead.org>
Content-Language: en-GB
X-Mailcore-Auth: 439999529
X-Mailcore-Domain: 1394945
X-123-reg-Authenticated: phillip@squashfs.org.uk  
X-Originating-IP: 82.69.79.175
X-CMAE-Envelope: MS4xfJ2LHvaFdKnZDIbSBzZWLUOECKoJgrk2DnBjVacIP1L40On5L+KS7ouEiu2uITUbmiz71MdAIS+JMRGbcbprKvyveWACMjKFCxv31VbWiJT8DT9481uH
 +OcD++KGaUeIJnyDmDfsUxMWk1rNDmov9Ny3ojPevCSddlUoZsyjTWGSY6qN1kNcLqdR+foxKI3kIKllleZrQubtKtCnce0dblVDsarZc0eJxs5vdc1h4PDE
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 21/10/2021 21:17, Matthew Wilcox wrote: > As far as I can
 tell, the following filesystems support compressed data: > > bcachefs, btrfs, 
 erofs, ntfs, squashfs, zisofs > > I'd like to make it easier [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.201.193.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [173.201.193.54 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mdmax-00BLQn-6i
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
Cc: David Howells <dhowells@redhat.com>, Hsin-Yi Wang <hsinyi@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 21/10/2021 21:17, Matthew Wilcox wrote:
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

Hi Matthew,

I quite like this new interface.  It should be fairly straight-forward
to make Squashfs use this interface, and it will simplify some of the
code, and make some of the decompressors more efficient.

As I see it, it removes many of the hoops that Squashfs has to go
through to push the additional uncompressed data into the page cache.

It is also a generic solution, and one which doesn't rely on a 
particular decompressor API or way of working, which means it shouldn't 
break any of the existing decompressor usage in the kernel.

The one issue with this generic solution is I fear a lot of people
will complain it is too generic, and prevents some optimisations
which they could have made on their particular decompressor or
filesystem.  The issue that it requires temporary pages to be
allocated upfront (if the page cannot be added to the page cache) has
already been brought up.

At this point I will try to play devil's advocate.  What is the
alternative to passing back a vmapped area of memory to the
filesystem?  The obvious alternative is to pass back an array
of pointers to the individual page structures, or a NULL pointer
representing a hole where the page could not be allocated in the
cache.

This alternative interface has the advantage that a NULL pointer is
passed representing a hole, rather than temporary memory being allocated
upfront.  It is then up to the filesystem and/or decompressor to
deal with the NULL pointer hole which may avoid the use of so
much temporary memory.

But the fact is in the kernel there are many different decompressors
with different APIs and different ways of working.  There are some
(like zlib, zstd, xz) which are "multi-shot" and some (like lzo, lz4)
which are "single-shot".

Multi-shot decompressors allow themselves to be called with only a small
output buffer.  Once the output buffer runs out, they exit and ask to be
called again with another output buffer.  Squashfs uses that to pass in
the set of discontiguous PAGE sized buffers allocated from the page
cache.  Obviously, if Squashfs got a NULL pointer hole, it could switch
to using a single temporary 4K buffer at that point.

But single-shot decompressors expect to be called once, with a single
contiguous output buffer.  They don't work with a set of discontiguous 
PAGE sized buffers.  Due to this Squashfs has to use a contiguous 
"bounce buffer" which the decompressor outputs to, and then copy it to 
the page cache buffers.

The vmap based interface proposed is a generic interface, it works with
both "multi-shot" and "single-shot" decompressors, because it presents
a single contiguous output buffer, and avoids making the filesystem
work with page structures.  There is a lot to like about this approach.

Avoiding using page structures also ties in with some of the other
work Matthew has been doing to clean up the kernel's over reliance
on page structures.  This is something which I am in agreement.

Phillip



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
