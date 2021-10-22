Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1F44376AB
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Oct 2021 14:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdtVp-0000xl-44; Fri, 22 Oct 2021 12:19:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hsiangkao@linux.alibaba.com>) id 1mdkQG-0007AY-FQ
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 02:36:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vbLuQ1y0z5GowiKvHXMTy1ijtOgiWZNP4B3HAAGN7ww=; b=IV1b/FsDRJfbk728veRrD9jqJX
 1YwRBfzHx81g2QmfTgM7U6cfjFES7sfbQL40X+euxOIxpaHVyJlo5BWlLW3mFxS/F7y5Pt6MPekej
 VmYtAwi6Co7/ctsRJOaRIyR8/14227iCeAiT2odpCF++2KbjcxjOt5nrmHdiVarFVaMM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vbLuQ1y0z5GowiKvHXMTy1ijtOgiWZNP4B3HAAGN7ww=; b=FGKVXWo7G0LiBdsuGEvZL63n4m
 q5seMLKT6LnmngM8SvbNOsQ8v486jh4evvM+PAUf1ou/JOEYj9404gzdcaZwV7wwAK7ry0t0qHIxE
 7LXnhJhd+CNgClAVWInBtZ360xr4vl0UF3K6zbrs2uOT4TM6yc46m0EiEGUBtzElBRQ0=;
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdkQB-00BE4Y-H5
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 02:36:44 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R101e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395; MF=hsiangkao@linux.alibaba.com;
 NM=1; PH=DS; RN=12; SR=0; TI=SMTPD_---0UtCTdiN_1634869863; 
Received: from B-P7TQMD6M-0146.local(mailfrom:hsiangkao@linux.alibaba.com
 fp:SMTPD_---0UtCTdiN_1634869863) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 22 Oct 2021 10:31:05 +0800
Date: Fri, 22 Oct 2021 10:31:03 +0800
From: Gao Xiang <hsiangkao@linux.alibaba.com>
To: Phillip Lougher <phillip@squashfs.org.uk>
Message-ID: <YXIiZ4CAfSP6FucF@B-P7TQMD6M-0146.local>
Mail-Followup-To: Phillip Lougher <phillip@squashfs.org.uk>,
 Phillip Susi <phill@thesusis.net>,
 Matthew Wilcox <willy@infradead.org>, linux-fsdevel@vger.kernel.org,
 Jan Kara <jack@suse.cz>, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 ntfs3@lists.linux.dev, linux-bcache@vger.kernel.org,
 David Howells <dhowells@redhat.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
 <87tuh9n9w2.fsf@vps.thesusis.net>
 <ea03d018-b9ef-9eed-c382-e1a3db7e4e5f@squashfs.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea03d018-b9ef-9eed-c382-e1a3db7e4e5f@squashfs.org.uk>
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 22, 2021 at 03:09:03AM +0100, Phillip Lougher
 wrote: > On 22/10/2021 02:04,
 Phillip Susi wrote: > > > > Matthew Wilcox <willy@infradead.org>
 writes: > > > > > As far as I can tell, the fol [...] 
 Content analysis details:   (-8.0 points, 6.0 required)
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
X-Headers-End: 1mdkQB-00BE4Y-H5
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
 ntfs3@lists.linux.dev, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Oct 22, 2021 at 03:09:03AM +0100, Phillip Lougher wrote:
> On 22/10/2021 02:04, Phillip Susi wrote:
> > 
> > Matthew Wilcox <willy@infradead.org> writes:
> > 
> > > As far as I can tell, the following filesystems support compressed data:
> > > 
> > > bcachefs, btrfs, erofs, ntfs, squashfs, zisofs
> > > 
> > > I'd like to make it easier and more efficient for filesystems to
> > > implement compressed data.  There are a lot of approaches in use today,
> > > but none of them seem quite right to me.  I'm going to lay out a few
> > > design considerations next and then propose a solution.  Feel free to
> > > tell me I've got the constraints wrong, or suggest alternative solutions.
> > > 
> > > When we call ->readahead from the VFS, the VFS has decided which pages
> > > are going to be the most useful to bring in, but it doesn't know how
> > > pages are bundled together into blocks.  As I've learned from talking to
> > > Gao Xiang, sometimes the filesystem doesn't know either, so this isn't
> > > something we can teach the VFS.
> > > 
> > > We (David) added readahead_expand() recently to let the filesystem
> > > opportunistically add pages to the page cache "around" the area requested
> > > by the VFS.  That reduces the number of times the filesystem has to
> > > decompress the same block.  But it can fail (due to memory allocation
> > > failures or pages already being present in the cache).  So filesystems
> > > still have to implement some kind of fallback.
> > 
> > Wouldn't it be better to keep the *compressed* data in the cache and
> > decompress it multiple times if needed rather than decompress it once
> > and cache the decompressed data?  You would use more CPU time
> > decompressing multiple times
> 
> There is a fairly obvious problem here.   A malicious attacker could
> "trick" the filesystem into endlessly decompressing the same blocks,
> which because the compressed data is cached, could cause it to use
> all CPU, and cause a DOS attack.  Caching the uncompressed data prevents
> these decompression attacks from occurring so easily.

Yes, that is another good point. But with artifact memory pressure,
there is no difference to cache compressed data or decompressed data,
otherwise these pages will be unreclaimable, reclaim any of cached
decompressed data will also need decompress the whole pcluster.

The same to zram or zswap or what else software compression solution,
what we can do is to limit the CPU utilization if any such requirement.
But that is quite hard for lz4 since in-memory lz4 decompression speed
is usually fast than the backend storage.

By the way, as far as I know there were some experimental hardware
accelerator integrated to storage devices. So they don't need to expand
decompress pages as well. And do inplace I/O only for such devices.

Thanks,
Gao Xiang

> 
> Phillip
> 
> 


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
