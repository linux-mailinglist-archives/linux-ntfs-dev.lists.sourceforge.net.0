Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A68F4376A7
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Oct 2021 14:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mdtVo-0000wb-JC; Fri, 22 Oct 2021 12:19:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jack@suse.cz>) id 1mdq7V-0004hs-8b
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 08:41:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jUTA5Jw5vXR7hfBklBPTGzgJVoiY+oGxN0ZIH2ohiuU=; b=GBXk16Iq2UA3txL6BnL41qzIEE
 ICUIRFlCH/rr74sqmx8QOTQoQGclzADmjHEJDsRuGKv5EB3cN3Iq4Y78vGNSCENoJTGa/pn8ssbJw
 LidAjtvOwzR5qKll0VaAwQyFcu+hdUDMPAgVPsccJ8u/DZZEr9pdnhOEMxO3cNEVSZkY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jUTA5Jw5vXR7hfBklBPTGzgJVoiY+oGxN0ZIH2ohiuU=; b=iPJYBX4feyHK81ZqsuI5Ug23zi
 J24Qs821yZldIICnh1A5aG74R83248uuloJW2JH8RL2zNYVozFc77Rja0uIPSj8oeP1MKOqpd78dU
 fEwudzDV6wN6TU7W/daHdDpFOQZaIeh7T8dvR4DLz6JYECJegL72d366KbBL4e/3x+7g=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdq7Q-00064h-Td
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Oct 2021 08:41:45 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 2E471212C8;
 Fri, 22 Oct 2021 08:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1634892092; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jUTA5Jw5vXR7hfBklBPTGzgJVoiY+oGxN0ZIH2ohiuU=;
 b=hUeet1mvoGA5h/fTMMNRWlNcPBNVd/vMlJXCdqzUYqCN21jWa8ML3xIM6eneby/KN3MBMv
 r+gStONFMg8gxkY48tjc6Z0Ol2/9ATChBGk3rx5XV2JzpG+CBKffrwj1CzkukmX+P54MoI
 tG9+6ycKKO6eEOPoQ97jRJBptPjACDA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1634892092;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jUTA5Jw5vXR7hfBklBPTGzgJVoiY+oGxN0ZIH2ohiuU=;
 b=93TfJ6AlqJHa9yXjCPyODn6CTm5FhUSb9kiJtGJhmueazloUFAr8rZS/ygrMCciVWT+AeN
 XIUcYzyPA9K4XXCg==
Received: from quack2.suse.cz (unknown [10.100.224.230])
 by relay2.suse.de (Postfix) with ESMTP id 0A738A3B81;
 Fri, 22 Oct 2021 08:41:32 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id B2BB51E11B6; Fri, 22 Oct 2021 10:41:27 +0200 (CEST)
Date: Fri, 22 Oct 2021 10:41:27 +0200
From: Jan Kara <jack@suse.cz>
To: Phillip Susi <phill@thesusis.net>
Message-ID: <20211022084127.GA1026@quack2.suse.cz>
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
 <87tuh9n9w2.fsf@vps.thesusis.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tuh9n9w2.fsf@vps.thesusis.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 21-10-21 21:04:45, Phillip Susi wrote: > > Matthew
 Wilcox <willy@infradead.org> writes: > > > As far as I can tell, the following
 filesystems support compressed data: > > > > bcachefs, btrfs, e [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.cz]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mdq7Q-00064h-Td
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
Cc: Jan Kara <jack@suse.cz>, linux-ntfs-dev@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, David Howells <dhowells@redhat.com>,
 linux-bcache@vger.kernel.org, Hsin-Yi Wang <hsinyi@chromium.org>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu 21-10-21 21:04:45, Phillip Susi wrote:
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

Well, one of the problems with keeping compressed data is that for mmap(2)
you have to have pages decompressed so that CPU can access them. So keeping
compressed data in the page cache would add a bunch of complexity. That
being said keeping compressed data cached somewhere else than in the page
cache may certainly me worth it and then just filling page cache on demand
from this data...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
