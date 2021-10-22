Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD694376A8
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Oct 2021 14:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdtVo-0000wk-NM; Fri, 22 Oct 2021 12:19:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quwenruo.btrfs@gmx.com>) id 1mdqlN-00005D-50
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 09:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zPe07iQPQMqk5EDP9qnxFNokNoR5IcfP1LD4i3caSe8=; b=lplZQd8jdK3Ejtf0/DHjzUBHFA
 epSKm/K6TH8xf8sySnbv/FGeIoh70lw89G6v7Lp1RAhkmS8d6RqrbGIaj2C71W8MSFgC+vS5JVSV6
 /5Whxvn/AFilJv5BhUCbaikgs4vLPX50bUIB11pw+nvE/UJ5YvWmBc6Zp8jz1DshpMss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zPe07iQPQMqk5EDP9qnxFNokNoR5IcfP1LD4i3caSe8=; b=RcdET8e9Bf7Fse8Ox1BkP3R6eM
 dCmAb/Y5fnnpYhdNBH213ow+0k2mzsifCRnSUoicknKfqUMZLWjxMZIOIz9pFoUqV+5jwvCuAo8BP
 uEFJ3F/1d7QE4eWq07i/NCfjcHix0aGrnd37Z/h//osKDWqPZWi0N7a5EtKuGwziY+w4=;
Received: from mout.gmx.net ([212.227.15.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdqlK-0008Qv-Tn
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 09:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634894557;
 bh=wYE5icMGjlbxqUC5vNAl8WPiRJIK0GBgDoDvJbZLhoM=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=kVmflJAuInwl0zPg/sdjb7LPZHWGL7zsQv6uylHvevozFIRi5e52MiCEvjKuSTFr4
 fTRcVsovAZ7LKb9JzpaLIqklB3PvNHpTFr9ewffQfbsXiQ+ffIXK4zW85MjkSSacAd
 8xJidmRh6DO7lrh8yMpQEKIsE6JekAlhihXQyULY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [0.0.0.0] ([149.28.201.231]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MV67o-1mE6g70IXW-00S3VI; Fri, 22
 Oct 2021 11:22:37 +0200
Message-ID: <62f5f68d-7e3f-9238-5417-c64d8dcf2214@gmx.com>
Date: Fri, 22 Oct 2021 17:22:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Jan Kara <jack@suse.cz>, Phillip Susi <phill@thesusis.net>,
 linux-ntfs-dev@lists.sourceforge.net, Matthew Wilcox <willy@infradead.org>,
 David Howells <dhowells@redhat.com>, linux-bcache@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
 <87tuh9n9w2.fsf@vps.thesusis.net> <20211022084127.GA1026@quack2.suse.cz>
 <YXKARs0QpAZWl6Hi@B-P7TQMD6M-0146.local>
From: Qu Wenruo <quwenruo.btrfs@gmx.com>
In-Reply-To: <YXKARs0QpAZWl6Hi@B-P7TQMD6M-0146.local>
X-Provags-ID: V03:K1:Dm44L66HxZZOvJluzMF4iV9LIJ3EEb9YYGAOwv/YTcc29C93Oa8
 7KnlE2MPl5pfyoJD36N8kmOjeqjj/MpmWbl2IXs3ugp+GogwlG7LLWpfllDVb2bJzUgSjGJ
 U7EozDK5tBZnCu2+1dfjirOPJkP+aIl9u9A0d9s9C1WxWZMltcnqp9oBdgTsGS5P3cDjHNH
 bbmR1YSQ/OF2k5E2mR6oA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ncqkcUNDPZQ=:WDIXBzbRX/r4KBqrMdtwU3
 dvGLa7khY9U1o9cIsEiwIoHhveAmE0q/FeqMbNj6uuNy6r3peUcoo30M6EE6FayctYHn+2eWV
 0jGMvOfJSWEWuQMigrYO18Ycrc6QfWjFDCiYEngXYPbMWwWIYZVCvg7xtBj4E5qxirSC8StcH
 UDxhMGbrYQRsWXGtJGVeP05WJYinrVBacftKTnDya+trwhORFIL0QD4f9MwGhuYKAbIawWVki
 426fDcvr3CL8/4BVg94magNsJonUAUhcy40ytV+PFtJ7quCUPC/SSwPnkSoJ01Z+b/ro9qxUl
 VjBPy6rFefcnh3hqjAli5AH7SHW4OLQtf4vg9MaOh8xeizSOjz2mcZoj6cfNEQ7uT4apl7EKb
 KaCP6neLti8g99+RAO/59/TsuBJuXCBpuJBVw0oArUCwSpdMiZlekXp07P2fhRk1wI4nvmI//
 whIfesqLOxHinUnMbp6nU4g3oLCnLRRoifKYNil4fviEhYA8DJ4CDd9t+X2CsPaYqZ5gHY8Z4
 MCGRy2Kc/2R38pPHquvbX4RU7ia+cCVX8BFuVq8Lzpd/grVIyFjDAbJAcQAH8kuVpj2rzu8YR
 IacYZ2f5mZhX6aWw+KIUkjJxrsyuO7w6Sn1fF5e8P0Opzdh8jHvUGjxPMb7F3yAbyPB6+3Y0G
 k7d6fI3Wp+budjM5An2OWBiiXtdyOg/w6HtsYDAfS2CbREisjHKzVy3g9DpUmzyDZCw3rlehR
 SSiLYjG26jB95YdPPVanhepGF0/vJimeT4UzMsgw9fkfgZt0UZA48Ls+FQhExCd/WDvZ6YFoK
 U1GwkwAjiOTtQo6MP+z3Pa1xWOo+M86IAY8OFdiUhcteCXOLKvh1S/jnHncojEy0K9PWkEkD3
 gxZkHdqtahiTTQD6+b1lWDFXMZpp9c7mjja0SpGdemqGGHMGG4bMfIin/gGSSi7kt6g5vwdhR
 GR2UYGrz0mzfo6cK12tdGizDhFxyAscI0YnDOPhkpBBB26ISjaxhW03MlbwxxlHGmmUjIqWil
 TI7SJA/cWuHmMzR7ai5oEw463UaCB+zCg32zWZfvFKkCB6aKIR/oFKqo4rsY76JVvG2SuVIE6
 FLvi4lYqPZKK8o=
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2021/10/22 17:11, Gao Xiang wrote: > On Fri, Oct 22, 2021
 at 10:41:27AM +0200, Jan Kara wrote: >> On Thu 21-10-21 21:04:45, Phillip
 Susi wrote: >>> >>> Matthew Wilcox writes: >>> >>>> As far as I [...] 
 Content analysis details:   (-2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [quwenruo.btrfs[at]gmx.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mdqlK-0008Qv-Tn
X-Mailman-Approved-At: Fri, 22 Oct 2021 12:19:00 +0000
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net



On 2021/10/22 17:11, Gao Xiang wrote:
> On Fri, Oct 22, 2021 at 10:41:27AM +0200, Jan Kara wrote:
>> On Thu 21-10-21 21:04:45, Phillip Susi wrote:
>>>
>>> Matthew Wilcox <willy@infradead.org> writes:
>>>
>>>> As far as I can tell, the following filesystems support compressed data:
>>>>
>>>> bcachefs, btrfs, erofs, ntfs, squashfs, zisofs
>>>>
>>>> I'd like to make it easier and more efficient for filesystems to
>>>> implement compressed data.  There are a lot of approaches in use today,
>>>> but none of them seem quite right to me.  I'm going to lay out a few
>>>> design considerations next and then propose a solution.  Feel free to
>>>> tell me I've got the constraints wrong, or suggest alternative solutions.
>>>>
>>>> When we call ->readahead from the VFS, the VFS has decided which pages
>>>> are going to be the most useful to bring in, but it doesn't know how
>>>> pages are bundled together into blocks.  As I've learned from talking to
>>>> Gao Xiang, sometimes the filesystem doesn't know either, so this isn't
>>>> something we can teach the VFS.
>>>>
>>>> We (David) added readahead_expand() recently to let the filesystem
>>>> opportunistically add pages to the page cache "around" the area requested
>>>> by the VFS.  That reduces the number of times the filesystem has to
>>>> decompress the same block.  But it can fail (due to memory allocation
>>>> failures or pages already being present in the cache).  So filesystems
>>>> still have to implement some kind of fallback.
>>>
>>> Wouldn't it be better to keep the *compressed* data in the cache and
>>> decompress it multiple times if needed rather than decompress it once
>>> and cache the decompressed data?  You would use more CPU time
>>> decompressing multiple times, but be able to cache more data and avoid
>>> more disk IO, which is generally far slower than the CPU can decompress
>>> the data.
>>
>> Well, one of the problems with keeping compressed data is that for mmap(2)
>> you have to have pages decompressed so that CPU can access them. So keeping
>> compressed data in the page cache would add a bunch of complexity. That
>> being said keeping compressed data cached somewhere else than in the page
>> cache may certainly me worth it and then just filling page cache on demand
>> from this data...
>
> It can be cached with a special internal inode, so no need to take
> care of the memory reclaim or migration by yourself.

There is another problem for btrfs (and maybe other fses).

Btrfs can refer to part of the uncompressed data extent.

Thus we could have the following cases:

	0	4K	8K	12K
	|	|	|	|
		    |	    \- 4K of an 128K compressed extent,
		    |		compressed size is 16K
		    \- 4K of an 64K compressed extent,
			compressed size is 8K

In above case, we really only need 8K for page cache, but if we're
caching the compressed extent, it will take extra 24K.

It's definitely not really worthy for this particular corner case.

But it would be pretty common for btrfs, as CoW on compressed data can
easily lead to above cases.

Thanks,
Qu

>
> Otherwise, these all need to be take care of. For fixed-sized input
> compression, since they are reclaimed in page unit, so it won't be
> quite friendly since such data is all coupling. But for fixed-sized
> output compression, it's quite natural.
>
> Thanks,
> Gao Xiang
>
>>
>> 								Honza
>> --
>> Jan Kara <jack@suse.com>
>> SUSE Labs, CR


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
