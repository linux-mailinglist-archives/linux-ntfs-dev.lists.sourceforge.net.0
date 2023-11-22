Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD09804D4F
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  5 Dec 2023 10:12:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rARTF-0005yE-F0;
	Tue, 05 Dec 2023 09:12:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1r5nmc-0001dC-D9
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 22 Nov 2023 14:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CKpWtcakXU6WLfkLUYMnK2MftqPDlyVQofJh5L4ipog=; b=TUOD/ocnB//TVxm8UFd9pKv+6c
 jqoM+i2evfiwqS2iyU91zZTzm7E1rrKdyD6kmBiLS70bslDb2Ljh8u6u74T8wRhqtJzW9Uj0zGo35
 spi/BICYB2cxlDGK2NZHxlMDLcDFoun+Kgsf1o16PayD3OaLGdNXvVabgRjWV4J7PpTA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CKpWtcakXU6WLfkLUYMnK2MftqPDlyVQofJh5L4ipog=; b=B+nTyKf1EVBYvDZ86UHXgJnHwK
 8kykYCcyIDLIaPqSBeBBB3EoR2elxp1kbuqyeO1P96hTX7Es39Tp3thr4qlGByeHG2B1jJi+3T/AC
 fP4oym2mbQKT34bRZVRodWUMhbh14bVVDNXBm1yQVaxKzfX8/lyBUwfoP1/99x5wzzJA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r5nmY-0004vZ-NX for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 22 Nov 2023 14:00:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4BE8B61C2A;
 Wed, 22 Nov 2023 14:00:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE673C433C8;
 Wed, 22 Nov 2023 14:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1700661641;
 bh=CKpWtcakXU6WLfkLUYMnK2MftqPDlyVQofJh5L4ipog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BfQB384hXCtGbDq3OEp+k+dC8Y95OtcvnToRFARS3SDWJ6KN61NI6F7znWBpzVRZy
 blYNyv3BkMn8/fMRiDzO1wyob3LYygCpQVnZmCWxpglAOIy6qZeHz6EWpbcx6oEnOQ
 ZD1UymrrTktDwQAdyHxQf0fDGf8zTfossoLSeTUZ6pjaVE/PjBDNbDLRKOPWYc+CRb
 2hKNctjCDvzK9jCLYwIjwa14u6LOKRZpaQ5fRQhowQWJhI4nHVL83nQSoBQmUEpRzJ
 XLCy/aOL44CWepHZTKNk0rkoBdAVTaeY3706+7M2UJUp/16I81Xi0ZCKrlm+l+vLC9
 NR+fFXfKYY1/g==
Date: Wed, 22 Nov 2023 15:00:29 +0100
From: Christian Brauner <brauner@kernel.org>
To: j.granados@samsung.com
Message-ID: <20231122-undifferenziert-weitschuss-a5d8cc56fbd1@brauner>
References: <20231121-jag-sysctl_remove_empty_elem_fs-v2-0-39eab723a034@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121-jag-sysctl_remove_empty_elem_fs-v2-0-39eab723a034@samsung.com>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Looks fine, Acked-by: Christian Brauner <brauner@kernel.org>
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r5nmY-0004vZ-NX
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
Cc: linux-aio@kvack.org, Jan Kara <jack@suse.cz>, linux-cachefs@redhat.com,
 Neil Brown <neilb@suse.de>, "Darrick J. Wong" <djwong@kernel.org>,
 Amir Goldstein <amir73il@gmail.com>, David Howells <dhowells@redhat.com>,
 Olga Kornievskaia <kolga@netapp.com>, coda@cs.cmu.edu,
 Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
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
 Luis Chamberlain <mcgrof@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 linux-fsdevel@vger.kernel.org, Chandan Babu R <chandan.babu@oracle.com>,
 linux-mm@kvack.org, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Looks fine,
Acked-by: Christian Brauner <brauner@kernel.org>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
