Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C063F566640
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  5 Jul 2022 11:37:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o8f08-0006bF-5F; Tue, 05 Jul 2022 09:37:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1o8dHQ-0005jX-CJ
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 05 Jul 2022 07:47:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rVfQWJaIQy/In2wBEW2mJJ8z3LRK3QoqQlDB/xYBsN4=; b=VyGh5nRuGwc2UwQPXiv6l5+D0P
 jL2o7XalcogIzrvT8X4fzp/8DeCic6SsfgGeYIuR9/AF5FH7WPkn0NmbsBgLJDAeawXKyskgJVaz0
 xLOyRCgKgSeW7RZU1S/pVp7CE1QsIpVHterr2x8TBE4xvlSDC+r6BCCTOZYoiTuzuBns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rVfQWJaIQy/In2wBEW2mJJ8z3LRK3QoqQlDB/xYBsN4=; b=He01uYEO7+Ly7wupZeGgVYOsic
 Al/H6Bv9kb5GlfSQH7bFzCCTJIZmqd7QNB8+BUAcymzZ4IKGD3EibflEZhCphdLzEsaLhLELyqfdJ
 Dayk/9dw1I0L+x0Qt2pTAIdxYuW/xQZ/VQitvpd4CWAoQsQzbjqHMYhbPfk/MGPREmJc=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8dHJ-007gyo-WA
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 05 Jul 2022 07:47:30 +0000
Received: by mail-pj1-f41.google.com with SMTP id fz10so5288722pjb.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 05 Jul 2022 00:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:from:to:cc:subject:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=rVfQWJaIQy/In2wBEW2mJJ8z3LRK3QoqQlDB/xYBsN4=;
 b=gn4eRcS7V35rzfDq02Cg2y9jtimd08xeNcAVPuWQ+eL7NnVI2OOY6WIx/BoaVQD4d+
 G0/qTv6JYBw84wmV46p+/sK1nbJAC7sA/2Z0ixPu0AVgD4oLdgagPSbJh5HodQLtl2rB
 M9jZYUVYPCxUm9MwH6i98IyVVWJnRVSak/IyiNkA/b7O0hxOjjnDkf9tvTxzVZyDCmbm
 9B83Y9HKH0Xhx1YqUBq8JeRLYNegGcElThe+oaWVPFtlisziw3niq1eDeF7cWVbOxLMQ
 d0Nyc5i1wNhAnfAzD7rK97mVQSzcoq2ZPN7j9FPiwx11cgZqK2zJM+7OdU03dLE7vwx8
 GzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=rVfQWJaIQy/In2wBEW2mJJ8z3LRK3QoqQlDB/xYBsN4=;
 b=H0c1fk7LyByZTdsgjUdFIbZ86ZrZmW6tQMgoaL6NBGyaoKPNurCADRIgnD3FMp/Nf8
 FmvugwUPAxO9rouNxae83feIvHVukiAm/f87XnZs+rtB+AI/uNfOBmuvxpK3bm3abY2b
 +UYsKtus5crFCPmAAJFyLehvqBGTjCD3MKUaHwrtxry8DbQRq7g4iVWv5YIcvjNJK/P3
 xS4FpEssoukF0WdQ1NFYwyThEeuT/k1CNgYrlSxOTld4DJCt75NK8lIx6DyJnD63necK
 jIVt7cvSDHpBvX9TnMVjjlUUHqB1B8r3WRhM6rqhFOLlQv+7CCppDfT4YgTI8qgF26MC
 tZzQ==
X-Gm-Message-State: AJIora9S1wq9X00vOoH7lJd8CTlyNsUmh21IA4DxqKhTuiOUB1SITJwT
 KueB6eOtXQP9tsWdVigho5g=
X-Google-Smtp-Source: AGRyM1tz4nq+HThPF+SdxAaxp5hFlo3JVLlTmTOkJFPA4U/z1++LLg+iZ23uqxe/TYlsl59IRUMZDw==
X-Received: by 2002:a17:902:8f89:b0:168:d336:ddba with SMTP id
 z9-20020a1709028f8900b00168d336ddbamr38757829plo.1.1657007240452; 
 Tue, 05 Jul 2022 00:47:20 -0700 (PDT)
Received: from localhost ([193.203.214.57]) by smtp.gmail.com with ESMTPSA id
 f4-20020a655504000000b0040de29f847asm17007894pgr.52.2022.07.05.00.47.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jul 2022 00:47:20 -0700 (PDT)
Message-ID: <62c3ec88.1c69fb81.b5648.7f2b@mx.google.com>
X-Google-Original-Message-ID: <20220705074718.GA1276177@cgel.zte@gmail.com>
Date: Tue, 5 Jul 2022 07:47:18 +0000
From: CGEL <cgel.zte@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623094956.977053-1-xu.xin16@zte.com.cn>
 <YrSeAGmk4GZndtdn@sol.localdomain>
 <CAKYAXd8qoLKbWGX7omYUfarSugRnose8X8o3Zhb1XctiUtamQg@mail.gmail.com>
 <7FBC6FD2-5D60-4EB8-96D5-A6014D271950@tuxera.com>
 <CAKYAXd-cg5rvXo-MYZ29+wiE3BYbg4vqDHrOHtu77ox-+7dPBw@mail.gmail.com>
 <790E333B-FFA5-4C8E-95D3-BCBA7679F9C4@tuxera.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <790E333B-FFA5-4C8E-95D3-BCBA7679F9C4@tuxera.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 24, 2022 at 03:26:27PM +0000, Anton Altaparmakov
 wrote: > Hi, > > > On 24 Jun 2022, at 15:37, Namjae Jeon wrote: > > 2022-06-24
 21:19 GMT+09:00, Anton Altaparmakov : > >> Hi, > >> > >> [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.41 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o8dHJ-007gyo-WA
X-Mailman-Approved-At: Tue, 05 Jul 2022 09:37:48 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs/ntfs: fix BUG_ON of
 ntfs_read_block()
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
Cc: Yang Yang <yang.yang29@zte.com.cn>, "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, Zeal Robot <zealci@zte.com.cn>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Eric Biggers <ebiggers@kernel.org>,
 "xu.xin16@zte.com.cn" <xu.xin16@zte.com.cn>,
 Jiang Xuexin <jiang.xuexin@zte.com.cn>,
 "syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com"
 <syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Zhang wenya <zhang.wenya1@zte.com.cn>, Namjae Jeon <linkinjeon@kernel.org>,
 Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Jun 24, 2022 at 03:26:27PM +0000, Anton Altaparmakov wrote:
> Hi,
> 
> > On 24 Jun 2022, at 15:37, Namjae Jeon <linkinjeon@kernel.org> wrote:
> > 2022-06-24 21:19 GMT+09:00, Anton Altaparmakov <anton@tuxera.com>:
> >> Hi,
> >> 
> >> On 24 Jun 2022, at 03:33, Namjae Jeon
> >> <linkinjeon@kernel.org<mailto:linkinjeon@kernel.org>> wrote:
> >> 
> >> 2022-06-24 2:08 GMT+09:00, Eric Biggers
> >> <ebiggers@kernel.org<mailto:ebiggers@kernel.org>>:
> >> On Thu, Jun 23, 2022 at 09:49:56AM +0000,
> >> cgel.zte@gmail.com<mailto:cgel.zte@gmail.com> wrote:
> >> From: xu xin <xu.xin16@zte.com.cn<mailto:xu.xin16@zte.com.cn>>
> >> 
> >> As the bug description at
> >> https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@zte.com.cn/
> >> attckers can use this bug to crash the system.
> >> 
> >> 
> 
> >> The correct solution is to use IS_ERR_OR_NULL() in places where an empty
> >> attribute is not acceptable. Such a case is for example when mounting the
> >> $MFT::$DATA::unnamed attribute cannot be empty which should then be
> >> addressed inside in fs/ntfs/inode.c::ntfs_read_inode_mount(). There may be
> >> more call sites to ntfs_mapping_pairs_decompress() which require similar
> >> treatment. Need to go through the code to see...
> > I think that it is needed everywhere that calls it. Am I missing something ?
> 
> It is not needed everywhere.  It is only needed in code paths that require there be a runlist afterwards because the code paths assume there must be one.  So for example for $MFT it by definition cannot have an empty runlist as we are already reading from the $MFT so it has an allocation so the runlist cannot be empty.  But the fuzzed image that is showing the problem that you are trying to fix has such a corrupt volume that the runlist is in fact empty - note it is NOT corrupt but it is valid but empty.  This then leads to the problem that we try to load the runlist for the $MFT and we do not check whether the result is empty because we assume it cannot be empty.  Clearly when you have a corrupted image that assumption can be wrong so we need to check for both error and for it being empty, hence IS_ERR_OR_NULL().  But if we are accessing an attribute elsewhere in the driver and that happens to be empty then we want a NULL runlist to be obtained so we can then operate with the attribute.  We do not want attempting to map the runlist to fail.  The code can try to map the runlist for all non-resident attributes before working with them and if the attribute is zero length then the runlist is NULL until we write something to the attribute at which point it becomes non-NULL describing the allocated clusters.


So to fix the current bug, how about this patch?

--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -183,7 +183,14 @@ static int ntfs_read_block(struct page *page)
     vol = ni->vol;
      
           /* $MFT/$DATA must have its complete runlist in memory at all
	    * times. */
	    -    BUG_ON(!ni->runlist.rl && !ni->mft_no &&
		 !NInoAttr(ni));
		 +    if (IS_ERR_OR_NULL(ni->runlist.rl) && !ni->mft_no
		 && !NInoAttr(ni)) {
		 +        ntfs_error(vol->sb, "Runlist of $MFT/$DATA is not cached. "
		 +                    "$MFT is corrupt.");
		 +        unlock_page(page);
		 +        if (IS_ERR(ni->runlist.rl))
		 +            return PTR_ERR(ni->runlist.rl);
		 +        return -EFAULT;
		 +    }
--

Thanks
xu xin

> 
> Your patch violates the design of the code which is that empty attribute inodes have a NULL runlist and your patch will cause perfectly good attributes to be rejected if their runlist is attempted to be mapped when they are empty.  You would then have to start checking everywhere in the code whether an attribute has zero allocated_size (or compressed_size if compressed and/or sparse) and if so you would need to then not attempt to map the runlist which would be ugly.  Much better to have the code path streamline so it just returns an empty runlist...
> 
> It may be possible that the current OSS ntfs driver can indeed function with your patch but it still violates how the code is designed to work which is why I am not happy to take your patch.
> 
> > I can not understand why the below code is needed in
> > ntfs_mapping_pairs_decompress().
> > 
> > /* If the mapping pairs array is valid but empty, nothing to do. */
> > if (!vcn && !*buf) {
> > return old_rl;
> > }
> > 
> >> +++ b/fs/ntfs/runlist.c
> >> @@ -766,8 +766,11 @@ runlist_element
> >> *ntfs_mapping_pairs_decompress(const ntfs_volume *vol,
> >> return ERR_PTR(-EIO);
> >> }
> >> /* If the mapping pairs array is valid but empty, nothing to do. */
> >> - if (!vcn && !*buf)
> >> + if (!vcn && !*buf) {
> >> + if (!old_rl)
> >> + return ERR_PTR(-EIO);
> >> return old_rl;
> >> + }
> >> /* Current position in runlist array. */
> >> rlpos = 0;
> >> /* Allocate first page and set current runlist size to one page. */
> >> 
> >> 
> >> - Eric


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
