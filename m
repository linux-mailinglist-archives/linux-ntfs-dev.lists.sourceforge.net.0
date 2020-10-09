Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 233E1288BFE
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  9 Oct 2020 16:59:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kQtre-00040M-G3; Fri, 09 Oct 2020 14:59:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kQtqZ-0005em-Nk
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 09 Oct 2020 14:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QxnLJ1s0AAVUtv6Yg0GXUFXfxq0lduuog+0DpMGrZ7A=; b=f5+a5DBrovHHEwjQJvFwgtHkLu
 1nFxNzvICw8ll22BZ6jTSurbriDHfH7Cy6bN8l4s76mMHr0okseu8j5DFJrXTWyUrjQQoGnoaMocm
 QQwwTxPXMDCJd7vp+ZNWgqGp+3e0T3P1Xcx+vsKuk+8lWE7AUmjm9x/lp7StOgKjKOzY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QxnLJ1s0AAVUtv6Yg0GXUFXfxq0lduuog+0DpMGrZ7A=; b=WhUuD0rV51mpgNaXXvWWNLCMxp
 octnh0Tcx0XR7u9idn85UbOXwq8vcm1hqdx207Vnt6dPylmex+426u7dUx647SuXUhLqGS6b2R9KA
 rfNBZl+PjU7kD8851F/ahFIvIOEqABbBdgxRtfWX2EQpELhCzgSyoOEna0STUBAFTIV0=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtqS-004Juq-9e
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 09 Oct 2020 14:58:15 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 363F2820AC;
 Fri,  9 Oct 2020 17:57:54 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1602255474;
 bh=QxnLJ1s0AAVUtv6Yg0GXUFXfxq0lduuog+0DpMGrZ7A=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=j9qF+kM/8+kd2mdoxtJlBVxjBCS/ndOR1Q19eyUpXohy8uSf7oJzKgryJ+zyxXMlK
 8sctQWqUsMB2/HgS09WlV17/JFdMeyJ1vjd/5AhYTEDgBMcnnUejTvCS3PKmPm9dmT
 kwX+/B3fWHALqwxdyqpqV7voG10IBo7TvxFKA4/Q=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 9 Oct 2020 17:57:53 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Fri, 9 Oct 2020 17:57:53 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: Joe Perches <joe@perches.com>, "linux-fsdevel@vger.kernel.org"
 <linux-fsdevel@vger.kernel.org>, Anton Altaparmakov <anton@tuxera.com>
Thread-Topic: [PATCH v7 00/10] NTFS read-write driver GPL implementation by
 Paragon Software
Thread-Index: AQHWk1Sa2wLqUS628U6j9N8+RWiOE6l5ZhEAgBYJkOA=
Date: Fri, 9 Oct 2020 14:57:53 +0000
Message-ID: <2fa19fb9767948ca920bead9e2e65f91@paragon-software.com>
References: <20200925155537.1030046-1-almaz.alexandrovich@paragon-software.com>
 <670bc2f60983d9d08c697031ea5a59937f5ed489.camel@perches.com>
In-Reply-To: <670bc2f60983d9d08c697031ea5a59937f5ed489.camel@perches.com>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.8.36]
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQtqS-004Juq-9e
X-Mailman-Approved-At: Fri, 09 Oct 2020 14:59:22 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v7 00/10] NTFS read-write driver GPL
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
Cc: "nborisov@suse.com" <nborisov@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "willy@infradead.org" <willy@infradead.org>,
 "dsterba@suse.cz" <dsterba@suse.cz>,
 linux-ntfs-dev <linux-ntfs-dev@lists.sourceforge.net>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Joe Perches <joe@perches.com>
Sent: Friday, September 25, 2020 8:16 PM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>; linux-fsdevel@vger.kernel.org; Anton Altaparmakov
> <anton@tuxera.com>
> Cc: viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz; aaptel@suse.com;
> willy@infradead.org; rdunlap@infradead.org; mark@harmstone.com; nborisov@suse.com; linux-ntfs-dev <linux-ntfs-
> dev@lists.sourceforge.net>
> Subject: Re: [PATCH v7 00/10] NTFS read-write driver GPL implementation by Paragon Software
> 
> (adding cc's to Anton Altaparmakov and linux-ntfs-dev)
> 
> On Fri, 2020-09-25 at 18:55 +0300, Konstantin Komarov wrote:
> > This patch adds NTFS Read-Write driver to fs/ntfs3.
> 
> This code should eventually supplant the existing NTFS
> implementation right?
> 
> Unless there is some specific reason you have not done so,
> I believe you should cc the current NTFS maintainer and
> NTFS mailing list on all these patches in the future.
> 
> MAINTAINERS-NTFS FILESYSTEM
> MAINTAINERS-M:  Anton Altaparmakov <anton@tuxera.com>
> MAINTAINERS-L:  linux-ntfs-dev@lists.sourceforge.net
> 
> Link to the v7 patches:
> https://lore.kernel.org/lkml/20200925155537.1030046-1-almaz.alexandrovich@paragon-software.com/
> 

Hi Joe. Thanks a lot! Added both Anton and linux-ntfs-dev to the v8 cc list.
Hi Anton. Did you have a chance to look at NTFS3 code?

Thanks.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
