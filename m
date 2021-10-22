Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D8C4376A5
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Oct 2021 14:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdtVo-0000wJ-BU; Fri, 22 Oct 2021 12:19:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <phillip@squashfs.org.uk>) id 1mdlb5-0008Ud-Vy
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 03:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HG1nkqrsAf1kxNn4PxLFIQE0P0nLuzgb4Rfgn4LpGAo=; b=TDfDJ4EX2M/xfCK5oU71/jYlLL
 LnlDFRjdoeeJz+i/jhjt8C0CnTp+0u+h9z4ZGp3k0kKRkYG4FNpz3EbAJkT3wwG1YgG/GJgbd+Mlb
 ZyQsZp4hAisF9N6+BZa6HpyNPQcjOGm/Mayj0o0FOesGA0/BB2H13t9f2rb0qBTUWpKU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HG1nkqrsAf1kxNn4PxLFIQE0P0nLuzgb4Rfgn4LpGAo=; b=DBHHdPdfDAUePC9PRzXBvtwfk3
 otwTxx5tAUSB8IvHvTC9zz/dnM/nhqlMmgclga2/QitnP8S+sdbGif57bkY1gN3R9NzWHLNAgfm5b
 nHQW4uquamftFlatKiT1PRKU+gGkG1/g1tz3uDilE6JiXL+i36rcXK06u7AEPuEEKJD4=;
Received: from p3plsmtp21-06-2.prod.phx3.secureserver.net ([68.178.252.72]
 helo=p3plwbeout21-06.prod.phx3.secureserver.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdlb5-00BIPd-6D
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 03:51:59 +0000
Received: from mailex.mailcore.me ([94.136.40.145]) by :WBEOUT: with ESMTP
 id djzXmzQXlZN8LdjzYmb2mc; Thu, 21 Oct 2021 19:09:08 -0700
X-CMAE-Analysis: v=2.4 cv=Tu4jOBbh c=1 sm=1 tr=0 ts=61721d44
 a=7e6w4QD8YWtpVJ/7+iiidw==:117 a=84ok6UeoqCVsigPHarzEiQ==:17
 a=ggZhUymU-5wA:10 a=IkcTkHD0fZMA:10 a=8gfv0ekSlNoA:10 a=JfrnYn6hAAAA:8
 a=qzs_ciw9LVpZ-E7SRj0A:9 a=QEXdDO2ut3YA:10 a=1CNFftbPRP8L7MoqJWF3:22
X-SECURESERVER-ACCT: phillip@squashfs.org.uk  
X-SID: djzXmzQXlZN8L
Received: from 82-69-79-175.dsl.in-addr.zen.co.uk ([82.69.79.175]
 helo=[192.168.178.33])
 by smtp06.mailcore.me with esmtpa (Exim 4.94.2)
 (envelope-from <phillip@squashfs.org.uk>)
 id 1mdjzW-00029M-HX; Fri, 22 Oct 2021 03:09:07 +0100
To: Phillip Susi <phill@thesusis.net>, Matthew Wilcox <willy@infradead.org>
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
 <87tuh9n9w2.fsf@vps.thesusis.net>
From: Phillip Lougher <phillip@squashfs.org.uk>
Message-ID: <ea03d018-b9ef-9eed-c382-e1a3db7e4e5f@squashfs.org.uk>
Date: Fri, 22 Oct 2021 03:09:03 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <87tuh9n9w2.fsf@vps.thesusis.net>
Content-Language: en-GB
X-Mailcore-Auth: 439999529
X-Mailcore-Domain: 1394945
X-123-reg-Authenticated: phillip@squashfs.org.uk  
X-Originating-IP: 82.69.79.175
X-CMAE-Envelope: MS4xfErrXdu5CC4Fi1U+pN2rvvzY987cYV5wlTLbGs8fvdn4+e8l4vV/bhKscC+TVjcwyrpCkDEiaCWJBNdhRdmwRN05UxL/WHdV1lXGG8E9kyTcqbDVqX9n
 5QYiy1FTianH5IB0JlHKrFfcpwbtgVkouxM+tJCDuXVwCZZakhsRSDADBgpDn0q7xoX7BNsvBbhcNqztzWey4+kMbBOWW4igktpauwPQ79vw7cBQm/rhBWPp
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 22/10/2021 02:04, Phillip Susi wrote: > > Matthew Wilcox
 <willy@infradead.org> writes: > >> As far as I can tell,
 the following filesystems
 support compressed data: >> >> bcachefs, btrfs, erofs, nt [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.178.252.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [68.178.252.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mdlb5-00BIPd-6D
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
 ntfs3@lists.linux.dev, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 22/10/2021 02:04, Phillip Susi wrote:
> 
> Matthew Wilcox <willy@infradead.org> writes:
> 
>> As far as I can tell, the following filesystems support compressed data:
>>
>> bcachefs, btrfs, erofs, ntfs, squashfs, zisofs
>>
>> I'd like to make it easier and more efficient for filesystems to
>> implement compressed data.  There are a lot of approaches in use today,
>> but none of them seem quite right to me.  I'm going to lay out a few
>> design considerations next and then propose a solution.  Feel free to
>> tell me I've got the constraints wrong, or suggest alternative solutions.
>>
>> When we call ->readahead from the VFS, the VFS has decided which pages
>> are going to be the most useful to bring in, but it doesn't know how
>> pages are bundled together into blocks.  As I've learned from talking to
>> Gao Xiang, sometimes the filesystem doesn't know either, so this isn't
>> something we can teach the VFS.
>>
>> We (David) added readahead_expand() recently to let the filesystem
>> opportunistically add pages to the page cache "around" the area requested
>> by the VFS.  That reduces the number of times the filesystem has to
>> decompress the same block.  But it can fail (due to memory allocation
>> failures or pages already being present in the cache).  So filesystems
>> still have to implement some kind of fallback.
> 
> Wouldn't it be better to keep the *compressed* data in the cache and
> decompress it multiple times if needed rather than decompress it once
> and cache the decompressed data?  You would use more CPU time
> decompressing multiple times

There is a fairly obvious problem here.   A malicious attacker could
"trick" the filesystem into endlessly decompressing the same blocks,
which because the compressed data is cached, could cause it to use
all CPU, and cause a DOS attack.  Caching the uncompressed data prevents
these decompression attacks from occurring so easily.

Phillip




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
