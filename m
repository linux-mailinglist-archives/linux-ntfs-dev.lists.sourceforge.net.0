Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 378EC4376A3
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Oct 2021 14:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdtVo-0000vz-0y; Fri, 22 Oct 2021 12:19:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hsiangkao@linux.alibaba.com>) id 1mdjbV-00067W-F1
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 01:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WeVEyes6GCTfC/Bf39FtB7LvSDqLvqFnnrUib5h4BiE=; b=JcH0feG1URt7eTCLf7PRX/XKrG
 T+qdYyO9bha0DHKAHPe8VkxUDvN74ZgVxuKmDmGRCtVdQ8Liex7MIQuu/twNZ6PqPGSchk/7ABM1q
 r4IX6JROaY6YU25puqDsEqCjeCoZxZc6AtTnLOJwsv/BTrIEK0ecOEO7Sp7t6JTqJjbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WeVEyes6GCTfC/Bf39FtB7LvSDqLvqFnnrUib5h4BiE=; b=OAxzmKPeS4srTEmWdw5axS0j4Z
 BCmhoQINhfMoUtz/pOUCbyQovcEE56ufnh5naHwtAPlzPqK47YwQyo/DIdNUu0tpzey9Gkd/Fa7Hi
 9I07WbRk5yJ+otRtoioRgaSsnxsP+ZMvpJaQ0kZCyp/JDEpYVIpST6672a21ucKmZPv0=;
Received: from out30-43.freemail.mail.aliyun.com ([115.124.30.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdjbT-00BBcm-Va
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 01:44:17 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R121e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04394; MF=hsiangkao@linux.alibaba.com;
 NM=1; PH=DS; RN=12; SR=0; TI=SMTPD_---0UtC8Br5_1634866094; 
Received: from B-P7TQMD6M-0146.local(mailfrom:hsiangkao@linux.alibaba.com
 fp:SMTPD_---0UtC8Br5_1634866094) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 22 Oct 2021 09:28:16 +0800
Date: Fri, 22 Oct 2021 09:28:14 +0800
From: Gao Xiang <hsiangkao@linux.alibaba.com>
To: Phillip Susi <phill@thesusis.net>
Message-ID: <YXITrrwgFiTWXJB+@B-P7TQMD6M-0146.local>
Mail-Followup-To: Phillip Susi <phill@thesusis.net>,
 Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.cz>,
 linux-ntfs-dev@lists.sourceforge.net,
 David Howells <dhowells@redhat.com>, linux-bcache@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
 <87tuh9n9w2.fsf@vps.thesusis.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tuh9n9w2.fsf@vps.thesusis.net>
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 21, 2021 at 09:04:45PM -0400, Phillip Susi wrote:
 > > Matthew Wilcox <willy@infradead.org> writes: > > > As far as I can tell,
 the following filesystems support compressed data: > > > > bc [...] 
 Content analysis details:   (-8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mdjbT-00BBcm-Va
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
 linux-bcache@vger.kernel.org, Hsin-Yi Wang <hsinyi@chromium.org>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Oct 21, 2021 at 09:04:45PM -0400, Phillip Susi wrote:
> 
> Matthew Wilcox <willy@infradead.org> writes:
> 
> > As far as I can tell, the following filesystems support compressed data:
> >
> > bcachefs, btrfs, erofs, ntfs, squashfs, zisofs
> >
> > I'd like to make it easier and more efficient for filesystems to
> > implement compressed data.  There are a lot of approaches in use today,
> > but none of them seem quite right to me.  I'm going to lay out a few
> > design considerations next and then propose a solution.  Feel free to
> > tell me I've got the constraints wrong, or suggest alternative solutions.
> >
> > When we call ->readahead from the VFS, the VFS has decided which pages
> > are going to be the most useful to bring in, but it doesn't know how
> > pages are bundled together into blocks.  As I've learned from talking to
> > Gao Xiang, sometimes the filesystem doesn't know either, so this isn't
> > something we can teach the VFS.
> >
> > We (David) added readahead_expand() recently to let the filesystem
> > opportunistically add pages to the page cache "around" the area requested
> > by the VFS.  That reduces the number of times the filesystem has to
> > decompress the same block.  But it can fail (due to memory allocation
> > failures or pages already being present in the cache).  So filesystems
> > still have to implement some kind of fallback.
> 
> Wouldn't it be better to keep the *compressed* data in the cache and
> decompress it multiple times if needed rather than decompress it once
> and cache the decompressed data?  You would use more CPU time
> decompressing multiple times, but be able to cache more data and avoid
> more disk IO, which is generally far slower than the CPU can decompress
> the data.

Yes, that was also my another point yesterday talked on #xfs IRC. For
high-decompresion speed algorithms like lz4, yes, thinking about the
benefits of zcache or zram solutions, caching compressed data for
incomplete read requests is more effective than caching uncompressed
data (so we don't need zcache for EROFS at all). But if such data will
be used completely immediately, EROFS will only do inplace I/O only
(since cached compressed data can only increase memory overhead).
Also, considering some algorithms is slow, inplace I/O is more useful
for them. Anyway, it depends on the detail strategy of different
algorithms and can be fined later.

Thanks,
Gao Xiang

> 
> 


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
