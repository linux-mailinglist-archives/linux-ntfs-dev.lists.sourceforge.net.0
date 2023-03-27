Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEF26CAC34
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 27 Mar 2023 19:49:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pgqyM-00079r-H3;
	Mon, 27 Mar 2023 17:49:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1pgqLy-0006h2-Ag
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 27 Mar 2023 17:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From
 :Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uUyJPYWWnez4dw00y14xOi6WdwcHq9WZ0Z+U+x8WdXo=; b=PCHrm0ddKuO8TPvcDWMToJA1q1
 U3gcNpnEiEKvtO3gedLtQ0SRPxwu53dZ2xEWSXnP3nARFoZUyHTcGxuBoJTYNvs8EVAVdtd8rEGPi
 +SLa7QMPKm4puv/OZer/TvZ6FPi4YJVkofdleswgB7TAdVdD/8Lc1pO9JkmwSRje4pMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:Cc:To:MIME-Version:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uUyJPYWWnez4dw00y14xOi6WdwcHq9WZ0Z+U+x8WdXo=; b=c
 /pKyKCv4pJ5hZsBq5YpReO8vK/ianorwMLm+NZKTvkpzAp/egeLr6MqfTI+FH/MKyBR9tt36MKitr
 OmOmuglgPBDKuHB0BBD77DGNLw3gTKhj1xC7ye+5rFTA6glWvoYg1Vo/9vNYDZLejz2BS5e2rSlbr
 4SRj1nRwPUPoWomE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgqLt-005z93-Jj for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 27 Mar 2023 17:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Subject:From:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=uUyJPYWWnez4dw00y14xOi6WdwcHq9WZ0Z+U+x8WdXo=; b=marKpoOt42pxeqVppXxhelnihZ
 MO0mvroNl/gEnHwVx4TVqquEEFxbo22WqQY/05x1c9E4nzIBNZVcsupssLyx7C0vLD3fS6OB+Phhe
 5JNTOO+0Pu7dv1vMUzzgwxKF1M6tmC/l2jAp0Zv/YU8ItR9v3IFRjjta9HgjTu/TAz47PmfSlqnDv
 jwb+upGbpEpNbg+BM+Ole9AgG0EHvNL/XbP25hI1mjlx+vxWDivMETdeqOT9qHT67Mm0WH2M8FylS
 RjTFx++Y0tuW2wNNRvM4NM5E+B1hzki0/Yo3dnQiXjiPDT3RWZk+yYY6+kGzojRAG5d3e4XANn3Pg
 PxuVHl3g==;
Received: from [2601:1c2:980:9ec0::2764]
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1pgqLk-00BqxD-2o; Mon, 27 Mar 2023 17:09:40 +0000
Message-ID: <3670bd58-d167-55d0-22d8-254c724025b9@infradead.org>
Date: Mon, 27 Mar 2023 10:09:40 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: linux-ntfs-dev@lists.sourceforge.net
From: Randy Dunlap <rdunlap@infradead.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Is anyone working on ntfs syzbot bug reports? Thanks.
 -- P.S.: This is also a test message for this mailing list. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pgqLt-005z93-Jj
X-Mailman-Approved-At: Mon, 27 Mar 2023 17:49:31 +0000
Subject: [Linux-ntfs-dev] ntfs and syzbot
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
Cc: Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi,

Is anyone working on ntfs syzbot bug reports?

Thanks.
-- 
P.S.: This is also a test message for this mailing list.



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
