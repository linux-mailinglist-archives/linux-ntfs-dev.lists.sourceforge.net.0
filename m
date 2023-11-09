Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 065B87E8563
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zlf-0005Dn-6U;
	Fri, 10 Nov 2023 22:14:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ebiggers@kernel.org>) id 1r17aH-0006f3-PT
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 09 Nov 2023 16:08:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OLfHJng+ekbZc0dPIJOrFsWjC3S/PfrenF+HE+3bVGk=; b=Oz0mDJDhOiwUapWciQNGimnHbr
 JiS9FuEo72Rf13+0c62HdbnCphjgAJVbKH9MUeMXEwnJBSl3d5JbSkdnFahB8LYwDcg4HEAMw68cq
 5DyNhvJG2jFvrSpAIDmL993wJ0O0PB2UKzqwcEUojbHV88D18z7Z6Gzz1qqej5VmCONA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OLfHJng+ekbZc0dPIJOrFsWjC3S/PfrenF+HE+3bVGk=; b=WJGyr/YQQsEvgfS0zVDPzK8ZB7
 MThtDxciQOi9LQt5c3mlCQYf4yFmrta7kNucIPBQ4orA4fTgOGG/DFtx6cEX6BpgPQmAXt/ViH22l
 kKlJpUNZJBKRfHqQNrKSwZYnjJ3hH3zmjxDLHDARp7LMyykEyBmLZigYoHY6FqxFdiuc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r17aF-001Aln-SF for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 09 Nov 2023 16:08:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0891A618AC;
 Thu,  9 Nov 2023 16:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B540BC433BB;
 Thu,  9 Nov 2023 16:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699546114;
 bh=9jv2+syvODBbcmGY4ew2QNcGO1aZvABUK26yZSJvayg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=an4/usvbiRel89q01Pnvd+TES/B31/7WCTra21aJC2vR167RVrBTD0T4l0Np+n4v2
 EbNHWbE4mRlTd5664QNTBac6vz4tQNjuUPAC3mzSXSGjwmxfFbC0EtztrMUvvPWYxz
 sWh1REN/5Ta35snZBzzhuRnh6NPnaQUCGtFqSS6jbo4+qkTAM968xLrAL3uV5ktTpn
 y3QxjKJ6GsVIlGinqAPCFIpiDBiVj/TNhytdxD8mN4Z0u36nPI2e4kHizhl+ga9hTX
 YcrNLvLA/u2tD3L89PolcPCLJ71qSrC12ls7rhoKQqiMWBmhKAiZSNIRpl39WLT7qF
 OYkbTreIzsQaA==
Date: Thu, 9 Nov 2023 08:08:31 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Joel Granados <j.granados@samsung.com>
Message-ID: <20231109160831.GA1933@sol.localdomain>
References: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
 <20231107-jag-sysctl_remove_empty_elem_fs-v1-2-7176632fea9f@samsung.com>
 <CGME20231108034239eucas1p2e5dacae548e47694184df217ee168da9@eucas1p2.samsung.com>
 <20231108034231.GB2482@sol.localdomain>
 <20231109160040.bahkcsp44t5xu7qo@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231109160040.bahkcsp44t5xu7qo@localhost>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 09, 2023 at 05:00:40PM +0100,
 Joel Granados wrote:
 > > > static void __init fsverity_init_sysctl(void) > > > { > > > +#ifdef
 CONFIG_FS_VERITY_BUILTIN_SIGNATURES > > > fsverity_sysctl_heade [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r17aF-001Aln-SF
X-Mailman-Approved-At: Fri, 10 Nov 2023 22:14:18 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/4] aio: Remove the now superfluous
 sentinel elements from ctl_table array
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
Cc: linux-aio@kvack.org, Jan Kara <jack@suse.cz>, linux-cachefs@redhat.com,
 Neil Brown <neilb@suse.de>, "Darrick J. Wong" <djwong@kernel.org>,
 Amir Goldstein <amir73il@gmail.com>, David Howells <dhowells@redhat.com>,
 Olga Kornievskaia <kolga@netapp.com>, linux-nfs@vger.kernel.org,
 codalist@telemann.coda.cs.cmu.edu, coda@cs.cmu.edu,
 Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 willy@infradead.org, Matthew Bobrowski <repnop@google.com>,
 Chuck Lever <chuck.lever@oracle.com>, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, josh@joshtriplett.org,
 Tom Talpey <tom@talpey.com>, ocfs2-devel@lists.linux.dev,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, fsverity@lists.linux.dev,
 Jan Harkes <jaharkes@cs.cmu.edu>, Christian Brauner <brauner@kernel.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-ntfs-dev@lists.sourceforge.net, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 linux-fsdevel@vger.kernel.org, Chandan Babu R <chandan.babu@oracle.com>,
 linux-mm@kvack.org, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Nov 09, 2023 at 05:00:40PM +0100, Joel Granados wrote:
> > >  static void __init fsverity_init_sysctl(void)
> > >  {
> > > +#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
> > >  	fsverity_sysctl_header = register_sysctl("fs/verity",
> > >  						 fsverity_sysctl_table);
> > > +#else
> > > +	fsverity_sysctl_header = register_sysctl_sz("fs/verity",
> > > +						 fsverity_sysctl_table, 0);
> > > +#endif
> > >  	if (!fsverity_sysctl_header)
> > >  		panic("fsverity sysctl registration failed");
> > 
> > This does not make sense, and it causes a build error when CONFIG_FS_VERITY=y
> > and CONFIG_FS_VERITY_BUILTIN_SIGNATURES=n.
> > 
> > I think all you need to do is delete the sentinel element, the same as
> > everywhere else.  I just tested it, and it works fine.
> I found the reason why I added the CONFIG_FS_VERITY_BUILTIN_SIGNATURES
> here: it is related to
> https://lore.kernel.org/all/20230705212743.42180-3-ebiggers@kernel.org/
> where the directory is registered with an element only if
> CONFIG_FS_VERITY_BUILTIN_SIGNATURES is defined. I had forgotten, but I
> even asked for a clarification on the patch :).
> 
> I see that that patch made it to v6.6. So the solution is not to remove
> the CONFIG_FS_VERITY_BUILTIN_SIGNATURES, but for me to rebase on top of
> a more up to date base.
> 
> @Eric: Please get back to me if the patch in
> https://lore.kernel.org/all/20230705212743.42180-3-ebiggers@kernel.org/
> is no longer relevant.
> 
> Best.

Yes, that patch was merged in 6.6.  I don't think it really matters here though,
other than the fact that it moved the code to a different file.  I believe all
you need to do is remove the sentinel element, the same as anywhere else:

diff --git a/fs/verity/init.c b/fs/verity/init.c
index a29f062f6047b..b64a76b9ac362 100644
--- a/fs/verity/init.c
+++ b/fs/verity/init.c
@@ -24,7 +24,6 @@ static struct ctl_table fsverity_sysctl_table[] = {
 		.extra2         = SYSCTL_ONE,
 	},
 #endif
-	{ }
 };
 
 static void __init fsverity_init_sysctl(void)


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
