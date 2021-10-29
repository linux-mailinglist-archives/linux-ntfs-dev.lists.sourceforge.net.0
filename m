Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3A84405B2
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 30 Oct 2021 01:14:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mgb4U-0005D7-Pa; Fri, 29 Oct 2021 23:14:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <colyli@suse.de>) id 1mgLAp-0007WZ-HD
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 29 Oct 2021 06:15:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E919aeXK8dC3N34MDRziiU6STn2FmtpVBAk+ecOLJjo=; b=F3wXQMKIwSejsMm1VqwNJgI6lu
 b5n78z/Q2F+KnUH2vHqL22BAonBgWOzi4JTAJwQxGp6hqDS3HNI6k+MPO52Wywf+z6LJuuDFfUcHK
 8VEmabVG+8lC3Z98z/koUwsHyNwV43TzV5Qa0yJwIg1sAorStxtJK74ar7g2H8bRFxQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E919aeXK8dC3N34MDRziiU6STn2FmtpVBAk+ecOLJjo=; b=DurvgQEq2HP24u/la84F8rNw9p
 fTUVXYk3ad4SjA1ETGSUXkI0ZsO4fS3etRFljx12cyz1I8Lf+vHvnqe33YiftjOzT1RLSZoSQ97dV
 efPVvGUKeax6f5Z6Pb/5DOYlssLl9TB+yWWeq7Vv2QOz4jxws5h2D9Xx5gm8cN+HgUcE=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mgLAi-0007Ph-Bp
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 29 Oct 2021 06:15:30 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 2CA2721968;
 Fri, 29 Oct 2021 06:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1635488112; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E919aeXK8dC3N34MDRziiU6STn2FmtpVBAk+ecOLJjo=;
 b=rHi5YhKLU0rlCRHyPeKnauDRrrKyNolq7E6F6dDcjkjrYygp8K9iGOEHJj1sMmsNmnFoqm
 JXUgJyq68i9P1XXycPxZOj9RRmHZ61CddjBbgHSqzeBEgXTEn3O/eT1/pGQOrrjanxFKqN
 Ws1Xa0M9ZepgclsMvVLPpSC9aP/pzDs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1635488112;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E919aeXK8dC3N34MDRziiU6STn2FmtpVBAk+ecOLJjo=;
 b=S6CjmYqZCZ0yYeJGy3BiUS6TxG8jiMGcenKddoe10AYo6bdOAQvrpluZxu5uvYpr7RJ4EU
 3KaNhyzDb7UqKtAg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 55C5313AF5;
 Fri, 29 Oct 2021 06:15:09 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id Ah71CW2Re2HXXAAAMHmgww
 (envelope-from <colyli@suse.de>); Fri, 29 Oct 2021 06:15:09 +0000
Message-ID: <b11bb34b-8fdf-b6ed-b305-e7145f2a7ab2@suse.de>
Date: Fri, 29 Oct 2021 14:15:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.2.1
Content-Language: en-US
To: Matthew Wilcox <willy@infradead.org>, linux-fsdevel@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Phillip Lougher <phillip@squashfs.org.uk>,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev,
 linux-bcache@vger.kernel.org, Hsin-Yi Wang <hsinyi@chromium.org>,
 David Howells <dhowells@redhat.com>
References: <YXHK5HrQpJu9oy8w@casper.infradead.org>
From: Coly Li <colyli@suse.de>
In-Reply-To: <YXHK5HrQpJu9oy8w@casper.infradead.org>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/22/21 4:17 AM, Matthew Wilcox wrote: > As far as I can
 tell, the following filesystems support compressed data: > > bcachefs, btrfs, 
 erofs, ntfs, squashfs, zisofs Hi Matthew, There is a new bcachefs mailing
 list linux-bcachefs@vger.kernel.org for bcachefs. I add it in Cc in this
 reply email. 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.8 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mgLAi-0007Ph-Bp
X-Mailman-Approved-At: Fri, 29 Oct 2021 23:14:01 +0000
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
Cc: linux-bcachefs@vger.kernel.org, Kent Overstreet <kent.overstreet@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 10/22/21 4:17 AM, Matthew Wilcox wrote:
> As far as I can tell, the following filesystems support compressed data:
>
> bcachefs, btrfs, erofs, ntfs, squashfs, zisofs

Hi Matthew,

There is a new bcachefs mailing list linux-bcachefs@vger.kernel.org for 
bcachefs. I add it in Cc in this reply email.

Just FYI for you and other receivers.

Thanks.

Coly Li


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



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
