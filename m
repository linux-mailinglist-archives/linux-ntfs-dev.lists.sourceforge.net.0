Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A3E343026
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 20 Mar 2021 23:50:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lNkQE-0000jN-DV; Sat, 20 Mar 2021 22:50:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1lNf31-0002q7-Rw
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 20 Mar 2021 17:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y6ev/S60/HNebOaHyGgfUCQe+A2W0+aqw6QjjL6rHiI=; b=M+xTRv1pV5AryQOx+tF4nUvpF
 FO8SGPLybTFxIzcUleRoTJxkJk7atb7kdCtntDy8/yokDhoO3cHZdmrpZnQKvUMeGFdGLr+WLDxut
 yzIe6ijnckVU+5SezrR4N26IaPO3v+imiFDQ8Cbb1Tn/AzPg+mXkawZ5DIfZ+LKNchqUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:MIME-Version:References:Message-ID:In-Reply-To:
 Subject:cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y6ev/S60/HNebOaHyGgfUCQe+A2W0+aqw6QjjL6rHiI=; b=d1C8G0BZPkEHoO6hEXeAI6GVg3
 kF43vrYMV8G1bx1/phC18BLu1flok/US7Lo6SaMadjpzut2YKGA7hKLcQoT9LKoXjQWd16d2IPBWu
 fuwDSsMEtQ8zC9EL/DRK+cy/Mo7SdwetCi+SKs9N/ZphLUDgyWGAezZOo0WuyaulUyJg=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lNf2p-006VrA-PP
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 20 Mar 2021 17:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Type:MIME-Version:
 References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Y6ev/S60/HNebOaHyGgfUCQe+A2W0+aqw6QjjL6rHiI=; b=V9/+VJy40SYLUA9lxHDjTtaoWm
 51s+AiknwRUhKVkLlyX/mjHwB1emhYm7p+6yHYXtLcr/d4VmYh1u+iEthlH2nb8QV3yFqFvtw3ru3
 JMaPLZjOHPZdYr1uS2Bk9LSNyH7pi/Po2LREx4QuAOtjMK0XxQ95UmB+qjROqFX669p0hNlho8piv
 7yzHo4x09XfexhTd2/79CDt11wlXjGxT/CPeZ4rFiZfYgaBJ/fz9IWY+8PPvBzkcwBbw6Wi1BhScY
 Fqw+kChcdO5NSiyYRDcfI5s0ONdi2lqaOuzgi1hVGRDr8+ru3kp6CjkgxIoV1BrOprfqwSNzRd5CS
 DvQFVHlg==;
Received: from rdunlap (helo=localhost)
 by bombadil.infradead.org with local-esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lNeZs-001wGD-4D; Sat, 20 Mar 2021 16:35:53 +0000
Date: Sat, 20 Mar 2021 09:35:52 -0700 (PDT)
From: Randy Dunlap <rdunlap@bombadil.infradead.org>
To: Aditya Srivastava <yashsri421@gmail.com>
In-Reply-To: <20210320162939.32707-1-yashsri421@gmail.com>
Message-ID: <e583cfe6-6b79-c35f-3bf7-2b47f7ee52be@bombadil.infradead.org>
References: <20210320162939.32707-1-yashsri421@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210320_093552_188116_09A1E9CA 
X-CRM114-Status: UNSURE (   2.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "bombadil.infradead.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: LGTM. Thanks. Reviewed-by: Randy Dunlap
 <rdunlap@infradead.org>
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 NO_RELAYS              Informational: message was not relayed via SMTP
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lNf2p-006VrA-PP
X-Mailman-Approved-At: Sat, 20 Mar 2021 22:50:14 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: fix incorrect kernel-doc comment
 syntax in files
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
Cc: corbet@lwn.net, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, anton@tuxera.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


LGTM. Thanks.

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
