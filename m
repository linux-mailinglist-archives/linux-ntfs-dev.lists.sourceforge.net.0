Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CA224F104
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 24 Aug 2020 04:14:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kA203-00089R-L1; Mon, 24 Aug 2020 02:14:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rkovhaev@gmail.com>) id 1kA1nZ-0002Ni-6K
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 24 Aug 2020 02:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/EPwsOjNAOJnCAlukSWZN+FIBKRBbYip6lL2WUYmrb4=; b=jRwW6LLFOzJ54a0XCGmCh+mV5F
 ZLUR/FrX1EdgHsCWxxw6DgjBtCqn7SeXGgwP33h4wYPHihsdfN6RhsoFodrblGrXDBAYQo+gQJ3cM
 BkRAu/j/FWWpxsA3ClWE8Oex7pUFL5qVt7FkoZ39/vEYPu6GH8k3IqBWuU0/Q8xGuvHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/EPwsOjNAOJnCAlukSWZN+FIBKRBbYip6lL2WUYmrb4=; b=YUUEASY2fKHq3ObeEdeuyv0Q0I
 VDvprhYWpWvVaYdGFH9XrC49uMQmMTf3zoDsgY252Ug/XVvU2FjK5lJrVTKZBF50asdf+oPeaE5qq
 Q05BfowON8OY59z9munOmZtL6cv1ZCxkgPsRv0m/8C0RwVHtnYVwTndnAolHYKONSoUo=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kA1nW-004woD-Nm
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 24 Aug 2020 02:01:25 +0000
Received: by mail-pg1-f195.google.com with SMTP id o13so3827936pgf.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 23 Aug 2020 19:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/EPwsOjNAOJnCAlukSWZN+FIBKRBbYip6lL2WUYmrb4=;
 b=X4fLhJpuYLT9HBTn0MCHAO23k+DOxUoepGCYCLJcNCdkw+2uo7fXEY2BA340MEwfCB
 d7ehL2aAhL9p7UzcVSCa/KI+OtxPiIGcHErN1yKPlmoLaZ6JHwHpQv2vcsZ+PkhRQTpI
 QAvDmyLsOe56m9Oi9rNodzo3h6xmKIWMx76q4O7F47NpfdMRMvgxZqwTlgWceDZALmEq
 Pwk9ImMaYtalMkB9TCaYwDXh947gnkugHtsHtH5OFaiXi/nqm7TvgzBU9OEhbldHvpoG
 ABJ70gaXptcBtQYXwkH4Cc8dj8kSy0DBXjfEp/4dNUcGYanJ/nqJeUBNCxyrJgCG8Nxj
 Ma/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/EPwsOjNAOJnCAlukSWZN+FIBKRBbYip6lL2WUYmrb4=;
 b=M+/kVPLPci3kGYNRXGkZnkoxdiKwVZtNTh764BSCY+WlwYIOZ/cRMqI0OfDB5rzh4t
 CCnBKZBn6izSO2B3/XHX8vI/Q/xjAN50uIp+fxhoH7JZKQcEvFqKt6tIJBCCUyzjJ3nU
 FGqEIND+PmB5P5KIGNIadE5yVaYzAb/fIxVhKz3WYemjDVgwLpozYQ8ly2/vnkOz3+1b
 qPC5Fmv+is6HVgqZvA5BkiV5rb+Ydp2zr4tie0L+QOu6hYzVY05TXGryaJ3JnsDLkgM+
 Rai1UHOQTuajJ7klMEoQNPQjkTHtHrlsRx5aBeR7kLEtwAetnTyLbYas6jUetZpT7S67
 5Ueg==
X-Gm-Message-State: AOAM533yHs5hXPoCT2tLfpwNaNS0VDVmA40A3tsgRxrSre/pRmFYr80/
 LYYhyE8f4bYJYwicDbOinJA=
X-Google-Smtp-Source: ABdhPJxFfBdTcZQPgJcrxm+oQh/zQtDnzfKaFDqAVIatruFMa4d8yl7DsgEe6TtRST/nV59dfqRmlg==
X-Received: by 2002:a63:6a47:: with SMTP id f68mr2052164pgc.170.1598234469821; 
 Sun, 23 Aug 2020 19:01:09 -0700 (PDT)
Received: from thinkpad (104.36.148.139.aurocloud.com. [104.36.148.139])
 by smtp.gmail.com with ESMTPSA id y72sm9584176pfg.58.2020.08.23.19.01.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Aug 2020 19:01:09 -0700 (PDT)
Date: Sun, 23 Aug 2020 19:01:46 -0700
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
Message-ID: <20200824020146.GA209078@thinkpad>
References: <20200823152147.55766-1-rkovhaev@gmail.com>
 <F206DE99-102C-475D-9129-5B9ACBAED8E6@tuxera.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F206DE99-102C-475D-9129-5B9ACBAED8E6@tuxera.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rkovhaev[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kA1nW-004woD-Nm
X-Mailman-Approved-At: Mon, 24 Aug 2020 02:14:17 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: add check for mft record size in
 superblock
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Aug 24, 2020 at 01:44:06AM +0000, Anton Altaparmakov wrote:
> Hi Rustam,
> 
> Thank you for the patch but it introduces an endianness bug - you have to us le32_to_cpu(m->bytes_allocated) both when doing the comparison and then printing the message.
> 
> Also, please drop the square brackets.  Wherever the driver prints such things it never uses brackets around the numbers and it would be better to have this consistent throughout.
> 
> Can you please resend with the above issues addressed?  You can then also add to the commit message:
> 
> 	Acked-by: Anton Altaparmakov <anton@tuxera.com>
> 
> Thanks!
> 
> Best regards,
> 
> 	Anton
> 
hi Anton,
thank you for the review, my bad, i'll get it fixed and i'll resend the patch


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
