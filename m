Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A398C5EF9EC
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 29 Sep 2022 18:13:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1odwAJ-0005HV-A7;
	Thu, 29 Sep 2022 16:13:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tytso@mit.edu>) id 1odv00-0008Rb-PE
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 29 Sep 2022 14:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e4fgP6dFIaXmrLv7sqbKbojxLHJoPOZrEJq+eOpDnuw=; b=U5UrdEHh9AxQw/4JjIAmf6qeko
 YxCyf16Ag2pZj9Hokyu/ZC30mbfWvyxwpTQixpRhE93EkOexLfZShXvTUOGof6AH3XMLOPxTJS3uv
 hs626QgXwEvMO6uVR0D/v+NHS4RHcDtmougCbWOjuA02G4mBitVkN+Npnvc750a2LGVM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e4fgP6dFIaXmrLv7sqbKbojxLHJoPOZrEJq+eOpDnuw=; b=cEJNtRXeKom3uqwNrx5FI6oJQv
 YxvSRvWk79ooEGdLfl0urO4GM9yxCMj+ztcx4CHmnpQRSwiUTsU1xuLgQbIg43v32futI8npyn9v8
 uJjvm1wlgBI2l+E2DX1I7HRIz+Qa2ckrZEL9Amx30DQpnMBPmDNpFsLoa3GBrjUxYAtk=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oduzu-006iNR-4N for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 29 Sep 2022 14:58:51 +0000
Received: from cwcc.thunk.org (pool-173-48-120-46.bstnma.fios.verizon.net
 [173.48.120.46]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 28TEwTlI008338
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 29 Sep 2022 10:58:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
 t=1664463512; bh=e4fgP6dFIaXmrLv7sqbKbojxLHJoPOZrEJq+eOpDnuw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LDdM0sRMcyQRV3IOh8BHZAbdG4piE/edNqnawPobaeXx6dGOw74jaq/K0Y/fG3w+G
 Nt3ybJDeJH+MS1kudMl4bUrrHr3isq7mwwNrUGqNE6qlNgZucaX7y4lVYLtm50eYLX
 N22fQJlsFBFfZjtYGZZ484PWtakLy2p7Cqnaz2PnekPt10lfw19lrzU9lMZR1x1nuV
 RJFro3OGZGzQI/L2JaInyMq6oBC4U31cbWcHvxAy6YwaY/S+vuA9ImU2dVwlsnTYIT
 YxlrU9xbaY3Oh8KA+xMckD9qxFmOaBIik/aLWlj2qmJGe3elTvDSJzalxbiLGeaKo8
 nDHf2bE0fNmFA==
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 7BBC715C3443; Thu, 29 Sep 2022 10:58:29 -0400 (EDT)
From: "Theodore Ts'o" <tytso@mit.edu>
To: ritesh.list@gmail.com, linux-ext4@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Date: Thu, 29 Sep 2022 10:58:27 -0400
Message-Id: <166446350046.149484.7882160010010426978.b4-ty@mit.edu>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <cover.1660788334.git.ritesh.list@gmail.com>
References: <cover.1660788334.git.ritesh.list@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 18 Aug 2022 10:34:36 +0530,
 Ritesh Harjani (IBM) wrote:
 > submit_bh/submit_bh_wbc are non-blocking functions which just submits >
 the bio and returns. The caller of submit_bh/submit_bh_wbc nee [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1oduzu-006iNR-4N
X-Mailman-Approved-At: Thu, 29 Sep 2022 16:13:35 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCHv3 0/4] submit_bh: Drop unnecessary
 return value
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Theodore Ts'o <tytso@mit.edu>,
 Christoph Hellwig <hch@lst.de>, Al Viro <viro@zeniv.linux.org.uk>,
 jack@suse.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, 18 Aug 2022 10:34:36 +0530, Ritesh Harjani (IBM) wrote:
> submit_bh/submit_bh_wbc are non-blocking functions which just submits
> the bio and returns. The caller of submit_bh/submit_bh_wbc needs to wait
> on buffer till I/O completion and then check buffer head's b_state field
> to know if there was any I/O error.
> 
> Hence there is no need for these functions to have any return type.
> Even now they always returns 0. Hence drop the return value and make
> their return type as void to avoid any confusion.
> 
> [...]

Applied, thanks!

[1/4] jbd2: Drop useless return value of submit_bh
      commit: c2939da1fe8b25c82c1991eb983638463ed84a0c
[2/4] fs/ntfs: Drop useless return value of submit_bh from ntfs_submit_bh_for_read
      commit: f102f1ab784c91c559a3505d024008ff2decc77f
[3/4] fs/buffer: Drop useless return value of submit_bh
      commit: 7cb83d3c0c485b3b035cdcac4c6ef4937f920c59
[4/4] fs/buffer: Make submit_bh & submit_bh_wbc return type as void
      commit: 54a55bcabb92f7522e006ca38575159c41914c56

Best regards,
-- 
Theodore Ts'o <tytso@mit.edu>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
