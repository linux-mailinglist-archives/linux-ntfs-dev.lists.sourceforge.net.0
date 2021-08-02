Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 600223DE346
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  3 Aug 2021 01:54:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mAhld-00040G-VB; Mon, 02 Aug 2021 23:54:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tytso@mit.edu>) id 1mAZVm-0006tM-4l
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 02 Aug 2021 15:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gFYFCl2P3YgcCH/+daUPDkYnyciHZOs+EH7fyhwbg8Q=; b=ay+PQ5EafkQX+Jl8urptqvBZwH
 HbiHsZJCY+VHn058O0P/bdYQZqnWG3PCXDygGHUaqM2kjjWroLSgLaoZH11UgpoMo3mQqhmi+3E22
 2f6Tm0wK9a58zpyORjszKv0i1EuWmRpiP2Zd3QDrfr250kDuwi9D2tMego4bPd19CvT0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gFYFCl2P3YgcCH/+daUPDkYnyciHZOs+EH7fyhwbg8Q=; b=Yn4cE5DiZs06A1O6NUjpgGN849
 QClZF8ta9mWVpMawwZEZx4QIWec/v1VD1v8GeSOCSQt4/C/JWya1XGVa1RN29qrEOqcZWiANrHmdL
 xBLPI7qPGS9BiZIarpgvJBjYTMf8BosmGAHpjznr5staP7NlplnAOHGVcvwSJo7RTtvs=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mAZVh-0004NX-7s
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 02 Aug 2021 15:05:50 +0000
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net
 [72.74.133.215]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 172F5HMY027185
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 2 Aug 2021 11:05:18 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 7350D15C3DD2; Mon,  2 Aug 2021 11:05:17 -0400 (EDT)
Date: Mon, 2 Aug 2021 11:05:17 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <YQgJrYPphDC4W4Q3@mit.edu>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729162459.GA3601405@magnolia> <YQdlJM6ngxPoeq4U@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YQdlJM6ngxPoeq4U@mit.edu>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mAZVh-0004NX-7s
X-Mailman-Approved-At: Mon, 02 Aug 2021 23:54:44 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: andy.lavr@gmail.com, kari.argillander@gmail.com, nborisov@suse.com,
 "Darrick J. Wong" <djwong@kernel.org>, oleksandr@natalenko.name,
 rdunlap@infradead.org, dsterba@suse.cz, willy@infradead.org,
 linux-kernel@vger.kernel.org, ebiggers@kernel.org, joe@perches.com, hch@lst.de,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

It should also noted that apparently ntfs3 does not properly support
user namespaces, such that generic/317 fails:

generic/317		[10:37:19][    7.024574] run fstests generic/317 at 2021-08-02 10:37:19
 [10:37:19]- output mismatch (see /results/ntfs3/results-default/generic/317.out.bad)
    --- tests/generic/317.out	2021-08-01 20:47:35.000000000 -0400
    +++ /results/ntfs3/results-default/generic/317.out.bad	2021-08-02 10:37:19.930687003 -0400
    @@ -13,8 +13,8 @@
     From init_user_ns
       File: "$SCRATCH_MNT/file1"
       Size: 0            Filetype: Regular File
    -  Mode: (0644/-rw-r--r--)         Uid: (qa_user)  Gid: (qa_user)
    +  Mode: (0755/-rwxr-xr-x)         Uid: (0)  Gid: (0)
     From user_ns
       File: "$SCRATCH_MNT/file1"
    ...
    (Run 'diff -u /root/xfstests/tests/generic/317.out /results/ntfs3/results-default/generic/317.out.bad'  to see the entire diff)
Ran: generic/317
Failures: generic/317


Is Paragon Software willing to commit to fixing these and other bugs?
Better yet, it would be nice if Paragon Software could improve its
testing and other QA processes.

Furthermore, container developers should note that ntfs3 is not
currently safe for use with containers.

   	   	    	       	      - Ted


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
