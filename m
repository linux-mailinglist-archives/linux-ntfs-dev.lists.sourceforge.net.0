Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFA3436CA4
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 21 Oct 2021 23:26:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdfaC-0001tU-Kn; Thu, 21 Oct 2021 21:26:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1mdeXY-00086y-14
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 21 Oct 2021 20:19:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y8JHDYkPJzIgkqIK04aJFKPmGCunlhTpxDzk6/5wJ6k=; b=Q9aetymMZiCN/HOcxjcDS+JXbc
 wITfWWFzKEq/Z19UWRJ4EnJvjql1BI41THlCRqbSkhIyZjBm2igNuDqQkoMZ5uuAEa8wrNoG1YFS/
 gJfE38VDSpi9eZGLuZ5mqTzCuVZZld0uIHGv9W8VrjsdR2aDbwYEjw1xXdt0p2VODbpc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y8JHDYkPJzIgkqIK04aJFKPmGCunlhTpxDzk6/5wJ6k=; b=I
 dEog3PBChGeaeFgAaxQkA72FJDJRWnfTAACjxEQ3W2Avo9ofcv7TQ/lnfhmxbCm7EYQq/iKq4s9wS
 0HXQtL/okGHlInqLePodgZXtswgdmvz5f5Mufec+02WkadsSzDd+BzLnRtJNxFo6gy6T5pwr1BlC9
 EhxRVHjTmawKQAbE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdeXW-0000PM-HX
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 21 Oct 2021 20:19:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=y8JHDYkPJzIgkqIK04aJFKPmGCunlhTpxDzk6/5wJ6k=; b=imSnGuN5gACmlntKD2y7aDIcAu
 ew/YvoiSKRxLyXfYxlwO66ByAfMXP5I03MyNPErjXLufNiQWS2TWYfqHl6yNpVwiL4QbbK+GUJUsF
 q4BV+dXecs9YueWam7eUoXdjuNuoZ/jCa9k0JqlQsKBntxmFQEoxSaJX9d+862mkfJR4FFwkrW18+
 JtuN6VSCxEhva705ABKaJ5Hint+7qKU/AloddUcxKh8lxB7CciPkREirPiu91kHNeEtOxnEF7i/fx
 OLRULCIezXEw2SATL2d9qyvEKCpxd19nVczRYAdrbp/hWcMK+x4PRB7W+F+nuIBDKgo2LiEq0QM2q
 1RbJ+WSA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mdeVQ-00DW0g-3x; Thu, 21 Oct 2021 20:17:57 +0000
Date: Thu, 21 Oct 2021 21:17:40 +0100
From: Matthew Wilcox <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev,
 linux-bcache@vger.kernel.org
Message-ID: <YXHK5HrQpJu9oy8w@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As far as I can tell,
 the following filesystems support compressed
 data: bcachefs, btrfs, erofs, ntfs, squashfs, zisofs I'd like to make it
 easier and more efficient for filesystems to implement compressed data. There
 are a lot of approaches in use today, but none of them seem quite right to
 me. I'm going to lay out a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mdeXW-0000PM-HX
X-Mailman-Approved-At: Thu, 21 Oct 2021 21:26:39 +0000
Subject: [Linux-NTFS-Dev] Readahead for compressed data
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

As far as I can tell, the following filesystems support compressed data:

bcachefs, btrfs, erofs, ntfs, squashfs, zisofs

I'd like to make it easier and more efficient for filesystems to
implement compressed data.  There are a lot of approaches in use today,
but none of them seem quite right to me.  I'm going to lay out a few
design considerations next and then propose a solution.  Feel free to
tell me I've got the constraints wrong, or suggest alternative solutions.

When we call ->readahead from the VFS, the VFS has decided which pages
are going to be the most useful to bring in, but it doesn't know how
pages are bundled together into blocks.  As I've learned from talking to
Gao Xiang, sometimes the filesystem doesn't know either, so this isn't
something we can teach the VFS.

We (David) added readahead_expand() recently to let the filesystem
opportunistically add pages to the page cache "around" the area requested
by the VFS.  That reduces the number of times the filesystem has to
decompress the same block.  But it can fail (due to memory allocation
failures or pages already being present in the cache).  So filesystems
still have to implement some kind of fallback.

For many (all?) compression algorithms (all?) the data must be mapped at
all times.  Calling kmap() and kunmap() would be an intolerable overhead.
At the same time, we cannot write to a page in the page cache which is
marked Uptodate.  It might be mapped into userspace, or a read() be in
progress against it.  For writable filesystems, it might even be dirty!
As far as I know, no compression algorithm supports "holes", implying
that we must allocate memory which is then discarded.

To me, this calls for a vmap() based approach.  So I'm thinking
something like ...

void *readahead_get_block(struct readahead_control *ractl, loff_t start,
			size_t len);
void readahead_put_block(struct readahead_control *ractl, void *addr,
			bool success);

Once you've figured out which bytes this encrypted block expands to, you
call readahead_get_block(), specifying the offset in the file and length
and get back a pointer.  When you're done decompressing that block of
the file, you get rid of it again.

It's the job of readahead_get_block() to allocate additional pages
into the page cache or temporary pages.  readahead_put_block() will
mark page cache pages as Uptodate if 'success' is true, and unlock
them.  It'll free any temporary pages.

Thoughts?  Anyone want to be the guinea pig?  ;-)


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
