Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B7D804D51
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  5 Dec 2023 10:12:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rARTG-0005z1-2u;
	Tue, 05 Dec 2023 09:12:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1rAPq0-0006oz-PR
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 05 Dec 2023 07:27:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q4Xwwf+R6mg0IVTeK/i6oqCoh3sFn0GWCi0J13JBtfc=; b=D/h8s8EWy3v7j0o7i8q50XMvD3
 oB+Kx/YVfEynqmwz3UL7jH6Wyme1aMOcCmmKaEyJ1vXBlLqJaTIeWGIOIKT6qq8KuqZsb/G7DeEye
 0kirBgxY7jzGnTMPtvNdj1gADuiOnlh6+PPpAZsKZ/jBdyAcVAQxsbIxX/LsL/YamqLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q4Xwwf+R6mg0IVTeK/i6oqCoh3sFn0GWCi0J13JBtfc=; b=HZqcVaaPiblWyEz8Yp0lemkSVp
 YcjDBqfh1fmXz1UMozxumtk8rkw+Bq82tZ8O4rSp4lDhy7h5OTBl6VQeUozeejS9p6/mP7jnC4IQj
 +uyASJdVL+iuuZ/tGGkWXBVw1e+/Stu0z5Dl7oxqidirogTqrv71tN2RcysYWp4ZOQI0=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rAPpw-0004ah-2s for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 05 Dec 2023 07:27:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Q4Xwwf+R6mg0IVTeK/i6oqCoh3sFn0GWCi0J13JBtfc=; b=qOb9FyCpYK/4KobvP2uwty+RVC
 aKcs8RCIM1GaB+jEVQmkuGJdy+OoBGLcX1doQi0if7JBzag9665/MK5OtORAivTDbIIcdyUq2OKzV
 Xx9UbaJnUzGeeh5RsPVPgY4YqT0DJlxUw1VN1F2mTNvBjhpShrX42o5RXnUV/cXjSQUrRLToGUZSE
 FmCu84mXqdwf31dZ+O2oxaY3dpe0YxR2cKwZT0rDW7WEmsffmHSRy5nKQqPyOJ72usqptScFFNBh6
 rYGN3D8F7qyjExbcouVqdX/XtjSmjlnWSxIY2bpgheRYBytg9CEj+V1w3MZOcvh3sPXc3Hqk7855F
 MMIPMB3g==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1rAOEM-006KRP-0r; Tue, 05 Dec 2023 05:44:26 +0000
Date: Mon, 4 Dec 2023 21:44:26 -0800
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <ZW64um8/nJaxBw5i@bombadil.infradead.org>
References: <20231121-jag-sysctl_remove_empty_elem_fs-v2-0-39eab723a034@samsung.com>
 <20231122-undifferenziert-weitschuss-a5d8cc56fbd1@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122-undifferenziert-weitschuss-a5d8cc56fbd1@brauner>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 22, 2023 at 03:00:29PM +0100, Christian Brauner
 wrote: > Looks fine, > Acked-by: Christian Brauner <brauner@kernel.org> Series
 applied, thanks! Luis 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rAPpw-0004ah-2s
X-Mailman-Approved-At: Tue, 05 Dec 2023 09:11:59 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2 0/4] sysctl: Remove sentinel
 elements from fs dir
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
Cc: j.granados@samsung.com, linux-aio@kvack.org, Jan Kara <jack@suse.cz>,
 linux-cachefs@redhat.com, Neil Brown <neilb@suse.de>,
 "Darrick J. Wong" <djwong@kernel.org>, Amir Goldstein <amir73il@gmail.com>,
 David Howells <dhowells@redhat.com>, Olga Kornievskaia <kolga@netapp.com>,
 coda@cs.cmu.edu, Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 willy@infradead.org, codalist@coda.cs.cmu.edu,
 Eric Biggers <ebiggers@kernel.org>, Matthew Bobrowski <repnop@google.com>,
 Chuck Lever <chuck.lever@oracle.com>, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, josh@joshtriplett.org,
 Tom Talpey <tom@talpey.com>, ocfs2-devel@lists.linux.dev,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, fsverity@lists.linux.dev,
 Jan Harkes <jaharkes@cs.cmu.edu>, linux-nfs@vger.kernel.org,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-ntfs-dev@lists.sourceforge.net, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 Benjamin LaHaise <bcrl@kvack.org>, Eric Biederman <ebiederm@xmission.com>,
 Anna Schumaker <anna@kernel.org>, linux-fsdevel@vger.kernel.org,
 Chandan Babu R <chandan.babu@oracle.com>, linux-mm@kvack.org,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Nov 22, 2023 at 03:00:29PM +0100, Christian Brauner wrote:
> Looks fine,
> Acked-by: Christian Brauner <brauner@kernel.org>

Series applied, thanks!

  Luis


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
