Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63898278F84
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 25 Sep 2020 19:22:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kLrQd-0005aE-AK; Fri, 25 Sep 2020 17:22:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1kLrKM-0002O8-0o
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 25 Sep 2020 17:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0hS1K5DV4zOsoUNq09y5ZXUNhFC/e7JiKPi9imxEFPM=; b=Kl45B1RLC+JwjobxVfVog3mPRx
 N+QEZFpeXXbHMStA6MO+/6eXZph3tBm2UlAr9MHwdCKPE5Q0qAX5+pj3hyvWVOCmzKUaWzZmpN02+
 fiwj1AWFBgHLL8eomFkNW3J8x8KTmjpQn7PTvWpXYOb4xBl3P55+sIb8dU+lAUAPPitE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0hS1K5DV4zOsoUNq09y5ZXUNhFC/e7JiKPi9imxEFPM=; b=G1DjrPMX0NOsjGRCZYLKMMC9+u
 krF6S2r214XVHRzyiSSpwYAb+Ajx89zHe2vGysX4h3pdNJ8sKI/c/cJldu9QTvP726IxCV6lxTFX6
 GJtLBWt4NIbRDShB0cUANeUhc9UaRT6ZawookPJmN8hQtwtoAslCHabaZjFIeTdg60d4=;
Received: from smtprelay0102.hostedemail.com ([216.40.44.102]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kLrKI-005lZF-0J
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 25 Sep 2020 17:16:09 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id DA0DF182CED5B;
 Fri, 25 Sep 2020 17:15:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:988:989:1042:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2691:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3865:3867:3868:3870:3871:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6117:6120:7901:7903:9010:9025:10004:10400:10848:11232:11658:11914:12043:12297:12555:12740:12760:12895:12986:13069:13149:13230:13255:13311:13357:13439:13845:14181:14659:14721:21080:21451:21627:21772:21811:21939:30012:30054:30060:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: park51_4d137d227169
X-Filterd-Recvd-Size: 1836
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Fri, 25 Sep 2020 17:15:50 +0000 (UTC)
Message-ID: <670bc2f60983d9d08c697031ea5a59937f5ed489.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, 
 linux-fsdevel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>
Date: Fri, 25 Sep 2020 10:15:48 -0700
In-Reply-To: <20200925155537.1030046-1-almaz.alexandrovich@paragon-software.com>
References: <20200925155537.1030046-1-almaz.alexandrovich@paragon-software.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.102 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.102 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kLrKI-005lZF-0J
X-Mailman-Approved-At: Fri, 25 Sep 2020 17:22:37 +0000
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
Cc: nborisov@suse.com, linux-kernel@vger.kernel.org, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 linux-ntfs-dev <linux-ntfs-dev@lists.sourceforge.net>, viro@zeniv.linux.org.uk,
 pali@kernel.org, mark@harmstone.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

(adding cc's to Anton Altaparmakov and linux-ntfs-dev)

On Fri, 2020-09-25 at 18:55 +0300, Konstantin Komarov wrote:
> This patch adds NTFS Read-Write driver to fs/ntfs3.

This code should eventually supplant the existing NTFS
implementation right?

Unless there is some specific reason you have not done so,
I believe you should cc the current NTFS maintainer and
NTFS mailing list on all these patches in the future.

MAINTAINERS-NTFS FILESYSTEM
MAINTAINERS-M:  Anton Altaparmakov <anton@tuxera.com>
MAINTAINERS-L:  linux-ntfs-dev@lists.sourceforge.net

Link to the v7 patches:
https://lore.kernel.org/lkml/20200925155537.1030046-1-almaz.alexandrovich@paragon-software.com/




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
