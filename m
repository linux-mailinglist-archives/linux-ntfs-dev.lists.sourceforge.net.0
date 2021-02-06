Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A30312063
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  7 Feb 2021 00:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PYpByUFhiTkdKW9fUvrbV1SwElKjB08i8idXGbDvS3w=; b=db7X8W/iHxtfedE1DqmR9SHA5
	EAQWvbUV7Jnj/g9EnirhBGQmbtTpm6nxGC0wyUe4PY09yJT3zdpWp4QRI/h3gC5pxU+YxcIResPBd
	OzMBXM1mXzFK+anguQ38QenDC7xQFAYW6diZXL9JXpmYI2nON4VKE6HDqf+YwQbDvmhhc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l8WcS-0006xS-HN; Sat, 06 Feb 2021 23:04:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oleksandr@natalenko.name>) id 1l8RYD-0008QQ-Qz
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 06 Feb 2021 17:39:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gq6JJeg3Xo7Bi0Tayld7WrowagUnBEY6WRZxDsEhUiE=; b=Cznvy/ahDD1BcGQ45b6BoyxKfd
 m3ycMNDrNkSjrGfS8FZMFQMmOGp0v45lLIg1oyR0Nj9sWAZO2JDWyssQ0sqGL6Il7n1SNGhx+0viL
 1M09o7z+aUeTb+COxx6D4IJ2VF74R4dx6OOCk+Ex/gosPHXXOqxJZbZkkrT5KpphJ86Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gq6JJeg3Xo7Bi0Tayld7WrowagUnBEY6WRZxDsEhUiE=; b=FN95zvVOmdooaCWMEIX6bKWb6W
 2OZoV2426LPgF7hu/+VRgPX7L5VzjEVA0NpmeQ3eUU/N7KeDRxM3btr/PkoO7drrmf8LcBx33xi5G
 hB+AsKti0hLWrQ2Kio3Ng9fTJMf6thq1NHBV7Lhz5qAobq8DWHMaeNgL0w3fJ0vAVuCQ=;
Received: from vulcan.natalenko.name ([104.207.131.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l8RY7-00BSeT-2H
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 06 Feb 2021 17:39:17 +0000
Received: from localhost (kaktus.kanapka.ml [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 151329778B0;
 Sat,  6 Feb 2021 18:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1612633144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gq6JJeg3Xo7Bi0Tayld7WrowagUnBEY6WRZxDsEhUiE=;
 b=avxO4YRrhO/d/aFQKGCqgkgTm30xqTFRPr5H7ej6mD1ip34fW7Seagep/cPto6vVhjvmzI
 gN7md5PHsELuCBwopAJD7LdLIrG1oR4Sc84onJ8SYV1RO81FI4xeikAX7FZvtyAtXCTGnA
 q4cFewhftronjCP3QJm7l8WagFnC5j8=
Date: Sat, 6 Feb 2021 18:39:03 +0100
To: Hanabishi Recca <irecca.kun@gmail.com>
Message-ID: <20210206173903.i75ir5x7ksexyptu@spock.localdomain>
References: <CAOehnrO-qjA4-YbqjyQCc27SyE_T2_bPRfWNg=jb8_tTetRUkw@mail.gmail.com>
 <20210206165744.q6sjcujezxg3ho2z@spock.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210206165744.q6sjcujezxg3ho2z@spock.localdomain>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ix.io]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l8RY7-00BSeT-2H
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

On Sat, Feb 06, 2021 at 05:57:45PM +0100, Oleksandr Natalenko wrote:
> On Sat, Feb 06, 2021 at 01:43:10AM +0500, Hanabishi Recca wrote:
> > Can't even build v20 due to compilation errors.
> 
> Try this please: http://ix.io/2OwR

Slightly reworked version: http://ix.io/2Oxa

-- 
  Oleksandr Natalenko (post-factum)


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
