Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 064BE312065
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  7 Feb 2021 00:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G9Mmx4euYwmXQ00ELYqYUlbFpXdezptg6TzktLecBcY=; b=i1qX61t7vQOE35Bp9RXBCPVIs
	IdtpcdLXo94lwv0UpCi3D7OgmcTaptQWEB6fusObJSN1XVAhArey4XS1QG2vyixn+qdjtcth5XSLm
	jw7r2BjtJkUXTySujIgqM3kmcjHjx7BQHEyl1m5Hy9c3juskt1ZuXFisAytO4TbARiMws=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l8WcS-0006xK-FG; Sat, 06 Feb 2021 23:04:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oleksandr@natalenko.name>) id 1l8R5R-0006iO-9z
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 06 Feb 2021 17:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nL54iWMpoSnIbP1+Qd7tBjjYvN2BWAFko+iYvkNs/Co=; b=iUUfqsZwoBxR/BME3erM/XcBNF
 qwXZ7m5YrMrqf/ijYqCz0qEGM5+QX3XNVw0Haw9FdGymTG9NTATz6Jig/JGmaEm122TYHkyN/8WGx
 IvHSwxVekrT3DJTH7n2Hpg8X/00nlgXknmVBYP8h4D9vaZNy4dWgftJrx0vZ7E0DSAf4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nL54iWMpoSnIbP1+Qd7tBjjYvN2BWAFko+iYvkNs/Co=; b=XmpopdPY2OBdwOIgXyr4+Y9hxO
 lcJqx6J/YWEXkGrvaLRq4Hou+/dMWkSFixmxvn8caA4Q+y1MEOSJw7ToGZHQz+cOZy1WbMC64Pw3e
 V23NDJr4HmObW++RdoGWZLnWFgbXh/PG7Z4PlC1lhl8XugsTdHcQVpiACPCDglgGvbPY=;
Received: from vulcan.natalenko.name ([104.207.131.136])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l8R5I-0000oQ-Qd
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 06 Feb 2021 17:09:31 +0000
Received: from localhost (kaktus.kanapka.ml [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 2F4A5977746;
 Sat,  6 Feb 2021 17:44:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1612629851;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nL54iWMpoSnIbP1+Qd7tBjjYvN2BWAFko+iYvkNs/Co=;
 b=YXIwO6Kc7XcvyxxobFRIPkmPFm7JgKr1G4QvPWGK+MToyiBy2oyf38tXV0ZdGyyMOyRRAQ
 l5V2Hi99szEJqedUDHfZFFQY2IzbByE40SErTY6LoM/z56WKxD+Wa6E54p4h0RG7HhsLYn
 ys6TZNaDuNXoGKLhZCg7O/5Osv/mPVs=
Date: Sat, 6 Feb 2021 17:44:10 +0100
To: Hanabishi Recca <irecca.kun@gmail.com>
Message-ID: <20210206164410.eebttjuswbcvbxxz@spock.localdomain>
References: <CAOehnrO-qjA4-YbqjyQCc27SyE_T2_bPRfWNg=jb8_tTetRUkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOehnrO-qjA4-YbqjyQCc27SyE_T2_bPRfWNg=jb8_tTetRUkw@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l8R5I-0000oQ-Qd
X-Mailman-Approved-At: Sat, 06 Feb 2021 23:03:58 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v20 00/10] NTFS read-write driver GPL
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
From: Oleksandr Natalenko via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Oleksandr Natalenko <oleksandr@natalenko.name>
Cc: ebiggers@kernel.org, nborisov@suse.com,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 almaz.alexandrovich@paragon-software.com, linux-fsdevel@vger.kernel.org,
 anton@tuxera.com, joe@perches.com, mark@harmstone.com, andy.lavr@gmail.com,
 pali@kernel.org, hch@lst.de, dan.carpenter@oracle.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, Feb 06, 2021 at 01:43:10AM +0500, Hanabishi Recca wrote:
> Can't even build v20 due to compilation errors.

I think this submission is based against linux-next branch where
idmapped mounts are introduced, hence it is not applicable to v5.10 and
v5.11 any more.

-- 
  Oleksandr Natalenko (post-factum)


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
