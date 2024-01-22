Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CCE8374F6
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Jan 2024 22:11:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rS1Zm-0008UW-8u;
	Mon, 22 Jan 2024 21:11:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chandanbabu@kernel.org>) id 1rRtmf-0001yJ-3P
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 12:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oYs+OyRygTZUxxYWa0xQLieUOiH7k2b7WLVgy3jTVKA=; b=DqcZh86zZ2tb70MY/WDdSBlGXT
 hnKEU9ezXyDX9BoCEC7WepGIeuG2zqO9YUpQGtdRRVvn4D+yzPsAh1Pcy3EScq667qZu5mskCtW7Q
 +OJTf+Zzih1IhMOsbJmGcvsnkMLYqOJfdeRx8nQcmiYVfOaekDsh/LhyRmO8uJ3rYtgw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oYs+OyRygTZUxxYWa0xQLieUOiH7k2b7WLVgy3jTVKA=; b=T2znZZjvIJqx7vDev7Tigpiz+m
 5f3ba7S7KtXrqwhbbHuMDnclZzYwjM+CgcGxtR9+wlW7eQoAX8adr60sPnijo9ukgdfCzblXF5+RO
 77/DoG9t4cxwDaMtJsCvA3pzA0qrom4LLQqLJ8cXQL9PYTEB1lg7K0izKSxkyY2Egmy4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRtma-0001oV-4S for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 12:52:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 67E1B6144D;
 Mon, 22 Jan 2024 12:52:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92C93C433C7;
 Mon, 22 Jan 2024 12:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705927923;
 bh=ek12Fo9+h/4gxnTkeDIXoNZF4jS2nFpEnjFmagMNSVw=;
 h=References:From:To:Cc:Subject:Date:In-reply-to:From;
 b=NpDuKI7yKNYuy8wthqSQwDgQQBYVZqJvcFqo3awd88GUCmPF9FN0Fxb4UWuev00Pt
 8Ili9LGviWHYYkkR5jr7h1ejQf7khSKkLS/lFZ+2bQ8/gZZDN9N9IiB5k9HF57G51i
 C8hOjqvIXYakMF9uQbsa2COrnB8cwbbFbMwOZn1X5FWIsXZaYPkh4c5MllkP4zPdhV
 07jL4lUzKOZ93chhgwXdAmTKfvVeU8gSUNdvdQ6NJTWGhnV9Onj4155hB8GZmM55VA
 7b8go8un2NnBrAQPhWikohnHF906uYAUBQ5yA0k+QVV4nAe+mmyUMYzlc2qlAPh8NU
 0nbV1Nz5pAs2A==
References: <20240118080326.13137-1-sshegde@linux.ibm.com>
 <20240118080326.13137-3-sshegde@linux.ibm.com>
User-agent: mu4e 1.10.8; emacs 27.1
From: Chandan Babu R <chandanbabu@kernel.org>
To: Shrikanth Hegde <sshegde@linux.ibm.com>
Date: Mon, 22 Jan 2024 18:20:13 +0530
In-reply-to: <20240118080326.13137-3-sshegde@linux.ibm.com>
Message-ID: <87cyttedjj.fsf@debian-BULLSEYE-live-builder-AMD64>
MIME-Version: 1.0
X-Spam-Score: -6.5 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 18, 2024 at 01:33:25 PM +0530, Shrikanth Hegde
 wrote: > when a ifdef is used in the below manner,
 second one could be considered
 as > duplicate. > > ifdef DEFINE_A > ...code block... > ifd [...] 
 Content analysis details:   (-6.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rRtma-0001oV-4S
X-Mailman-Approved-At: Mon, 22 Jan 2024 21:11:25 +0000
Subject: Re: [Linux-ntfs-dev] [RFC PATCH 2/3] fs: remove duplicate ifdefs
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
Cc: linux-ntfs-dev@lists.sourceforge.net, mpe@ellerman.id.au,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, peterz@infradead.org,
 linuxppc-dev@lists.ozlabs.org, mingo@kernel.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jan 18, 2024 at 01:33:25 PM +0530, Shrikanth Hegde wrote:
> when a ifdef is used in the below manner, second one could be considered as
> duplicate.
>
> ifdef DEFINE_A
> ...code block...
> ifdef DEFINE_A
> ...code block...
> endif
> ...code block...
> endif
>
> There are few places in fs code where above pattern was seen.
> No functional change is intended here. It only aims to improve code
> readability.
>

Can you please post the xfs changes as a separate patch along with Darrick's
RVB tag? This will make it easy for me to apply the resulting patch to the XFS
tree.

-- 
Chandan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
