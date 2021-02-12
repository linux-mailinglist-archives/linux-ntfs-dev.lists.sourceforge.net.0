Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D9531A73C
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 12 Feb 2021 23:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gAfypa10AzOpYAtEZJYGJiPCeXwDfJdCVLGOHs7Fc7I=; b=AgdyHEr8eVr+aDaY9KAMuLn3u
	Qr0YQ5wojnCDJxNIrEjwsYoQNdCg5THB2SMwtginzoyxNKStHMTEzBgsszHF9mCollNA+ZqmZgAer
	f7Gb/25VS5zY9XqJxKUovsOEDjL97xisgpjBGjE8uqba59X4RrjdZeJICi+xxihKc6Q6E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lAgWL-0005Jk-HB; Fri, 12 Feb 2021 22:02:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oleksandr@natalenko.name>) id 1lAfz3-0002AE-Rh
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 12 Feb 2021 21:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2mjYffK+zMGEpM0j9pXBNGRQO7ZCRVVsHBrv+6cjjGI=; b=HDNRZB+DKs9SbA0EmECstIEHBN
 PHLM6ul8t+KjZyXBeMr2uVvAMb4ZaZfs1MzGGS5sWJ8AurQ7+uralXJf1GxJpm1ZFWJWpdxgxEgiF
 Qs5ywYIS81O8RK7pGCZgBivzoBuUzxyTibJPASjpcAb2ZpAbc65V/ZmMdsNbxvsuDGTY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2mjYffK+zMGEpM0j9pXBNGRQO7ZCRVVsHBrv+6cjjGI=; b=JP3Sc512/odX5vAo5imD76ruQP
 GOGQOHpuJ4MeLkvRPMunnHTYBxjRzp4/eZCKC4uexN4LYEvoZQUmkDzd4Nn+R6tUQNNjX5qzNse76
 9Pcp7BoPXuyu87653drOGQ+zKvOuuSjOoOoYC75YyDCmu3DKhC3Usav7sVmw98CjbvjE=;
Received: from vulcan.natalenko.name ([104.207.131.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lAfyl-006hrD-CF
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 12 Feb 2021 21:28:13 +0000
Received: from localhost (kaktus.kanapka.ml [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 6903098C705;
 Fri, 12 Feb 2021 22:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1613165258;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2mjYffK+zMGEpM0j9pXBNGRQO7ZCRVVsHBrv+6cjjGI=;
 b=X8fFhVhw4zK3PJT/b3dj7oUqtbVRYCp6q+Ph7yoyECn0ZHTFFewgKc2WdVpi/dd3Dco74a
 sEeOEWTdcfTCgGSLeDlawmiOHfY0HUFQ37gHIKp2HFsZ/mf4opfzWxv1ktxGdMwg80C6rm
 LxWfqVEV6XGuvpCizwal3yZdt5eOc8k=
Date: Fri, 12 Feb 2021 22:27:37 +0100
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210212212737.d4fwocea3rbxbfle@spock.localdomain>
References: <20210212162416.2756937-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212162416.2756937-1-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: archlinux.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lAfyl-006hrD-CF
X-Mailman-Approved-At: Fri, 12 Feb 2021 22:02:32 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v21 00/10] NTFS read-write driver GPL
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
Cc: andy.lavr@gmail.com, kasep pisan <babam.yes@gmail.com>, nborisov@suse.com,
 linux-kernel@vger.kernel.org, Hanabishi Recca <irecca.kun@gmail.com>,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGkuCgpPbiBGcmksIEZlYiAxMiwgMjAyMSBhdCAwNzoyNDowNlBNICswMzAwLCBLb25zdGFudGlu
IEtvbWFyb3Ygd3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIE5URlMgUmVhZC1Xcml0ZSBkcml2ZXIg
dG8gZnMvbnRmczMuCj4g4oCmCj4gdjIxOgo+IC0gZml4ZXMgZm9yIGNsYW5nIENGSSBjaGVja3MK
PiAtIGZpeGVkIHNiLT5zX21heGJ5dGVzIGZvciAzMmJpdCBjbHVzdGVycwo+IC0gdXNlci5ET1NB
VFRSSUIgaXMgbm8gbW9yZSBpbnRlcmNlcHRlZCBieSBudGZzMwo+IC0gY29ycmVjdGVkIHhhdHRy
IGxpbWl0czsgIGlzIHVzZWQKPiAtIGNvcnJlY3RlZCBDT05GSUdfTlRGUzNfNjRCSVRfQ0xVU1RF
UiB1c2FnZQo+IC0gaW5mbyBhYm91dCBjdXJyZW50IGJ1aWxkIGlzIGFkZGVkIGludG8gbW9kdWxl
IGluZm8gYW5kIHByaW50aW5nCj4gb24gaW5zbW9kIChieSBBbmR5IExhdnIncyByZXF1ZXN0KQo+
IG5vdGU6IHYyMSBpcyBhcHBsaWNhYmxlIGZvciAnbGludXgtbmV4dCcgbm90IG9sZGVyIHRoYW4g
MjAyMS4wMS4yOAoKRm9yIHRob3NlIHdobyB1c2UgdGhpcyBvbiB2NS4xMC92NS4xMSwgdGhlcmUn
cyBhbiBleHRyYSBwYXRjaCBhdmFpbGFibGUKdGhhdCBhcHBsaWVzIG9uIHRvcCBvZiB0aGlzIHN1
Ym1pc3Npb246IFsxXS4KCkhhbmFiaXNoaSwgYmFiYW0gKGJvdGggaW4gQ2MpLCBoZXJlIFsyXSB5
b3UndmUgcmVwb3J0ZWQgc29tZSBpc3N1ZXMgd2l0aAphY2Nlc3Npbmcgc29tZSBmaWxlcyBhbmQg
d2l0aCBoaWRkZW4gYXR0cmlidXRlcy4gWW91IG1heSByZXBseSB0byB0aGlzCmVtYWlsIG9mIG1p
bmUgd2l0aCBkZXRhaWxlZCBkZXNjcmlwdGlvbiBvZiB5b3VyIGlzc3VlcywgYW5kIG1heWJlCmRl
dmVsb3BlcnMgd2lsbCBhbnN3ZXIgeW91LgoKVGhhbmtzLgoKWzFdIGh0dHBzOi8vZ2l0bGFiLmNv
bS9wb3N0LWZhY3R1bS9wZi1rZXJuZWwvLS9jb21taXQvZTQ4NzQyN2VmMDdjNzM1ZmRjNzExYTU2
ZDFjZWFjNjYyOWMzNGRjZi5wYXRjaApbMl0gaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNr
YWdlcy9udGZzMy1ka21zLwoKLS0gCiAgT2xla3NhbmRyIE5hdGFsZW5rbyAocG9zdC1mYWN0dW0p
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
TlRGUy1EZXYgbWFpbGluZyBsaXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZz
LWRldgo=
