Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE2B8A4D61
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 13:13:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwKGh-0001YQ-Kw;
	Mon, 15 Apr 2024 11:13:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rwJS0-0007oO-Jd
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 10:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eRBGReS71PA/tX4PRDCchLTWNGrxi50lO18k3xhxakc=; b=YMpY7pAcMnWwY1EsxR4CL6Pq/u
 bJQEFhdUwTY4HwpdgqVCsNdKAVwHeqwcFM1mZlJC8KvSTqFbtMq9ov4Nns9O2ciGJ6KolRULq4PaM
 UAfR2s3zD8tOSG8pwBmtPUWx8iySjjAaFGVMdhmeBt8vw3ia/8XpZYwyB+stL1MlNiwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eRBGReS71PA/tX4PRDCchLTWNGrxi50lO18k3xhxakc=; b=X7LNlI0A2GVnSrQ04vfAOu171h
 MraD+Az+4wyjQevcXndJ+lRdoU4NriLqItMmOM33NwQCT3MWpOjgke9dEkq47QAWYts7MUcr2NTzg
 t/phAfnquabml2sBHDe33tZs2aYGq7WIzwkbJ2b/2Mo5UIUkgxqtDZQzaal7n4kLuWRA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwJRz-0001UK-NE for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 10:20:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8C5E360C49;
 Mon, 15 Apr 2024 10:20:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E39FC3277B;
 Mon, 15 Apr 2024 10:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713176430;
 bh=6UMiFTsFhYEEGtZ4XEeOJrBgUc9eTGN5FBSgmMG3Te4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L9MLm8bjt1IxLJ0rEaiffh1+BwyrFVdDPVovgQkJ/ztiIFjIvE9165L6iGaAMpxHj
 0SuQm/x2Jpmw4EDJyWTYa6/91BIIbG+y7rbzMvOZNSUejURiP6DPMcqC5ZOB5tsIGL
 uflh5T33PYeBXj6XS8jnSTvV3HXO52Eh2MhjZIg18KBTCljLnNntHb60Duc3QQmGYG
 N67gob/i31qh1iwDXUE111QPqHC/BD2bIqonRlpkI7ag4/RQLrkHD72DqRZejVuIs5
 6xN8J+cwR/sURjV7iDUFvojZaIFzEpr3PHAMpmQ6TJ3H2zr9vwzpJq9ei3lPHo05Wg
 Di84efpLFpMQQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rwJRr-000000003Px-1IjG;
 Mon, 15 Apr 2024 12:20:28 +0200
Date: Mon, 15 Apr 2024 12:20:27 +0200
From: Johan Hovold <johan@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
 <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
 <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
 <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 11:54:19AM +0200, Johan Hovold wrote:
 > On Thu, Apr 11, 2024 at 02:03:52PM +0300, Konstantin Komarov wrote: > >
 Messages like this: > > > > diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
 > > index eb7a8c9fba01..8cc94a6a97ed 100644 > > --- a/fs/ntfs3/inode.c >
 > +++ b/fs/ntfs3/inode.c > > @@ -424,7 +424,6 [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwJRz-0001UK-NE
X-Mailman-Approved-At: Mon, 15 Apr 2024 11:12:58 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/2] ntfs3: remove warning
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
Cc: Christian Brauner <brauner@kernel.org>,
 Linux regressions mailing list <regressions@lists.linux.dev>,
 linux-ntfs-dev@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gTW9uLCBBcHIgMTUsIDIwMjQgYXQgMTE6NTQ6MTlBTSArMDIwMCwgSm9oYW4gSG92b2xkIHdy
b3RlOgo+IE9uIFRodSwgQXByIDExLCAyMDI0IGF0IDAyOjAzOjUyUE0gKzAzMDAsIEtvbnN0YW50
aW4gS29tYXJvdiB3cm90ZToKCj4gPiBNZXNzYWdlcyBsaWtlIHRoaXM6Cj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9mcy9udGZzMy9pbm9kZS5jIGIvZnMvbnRmczMvaW5vZGUuYwo+ID4gaW5kZXggZWI3
YThjOWZiYTAxLi44Y2M5NGE2YTk3ZWQgMTAwNjQ0Cj4gPiAtLS0gYS9mcy9udGZzMy9pbm9kZS5j
Cj4gPiArKysgYi9mcy9udGZzMy9pbm9kZS5jCj4gPiBAQCAtNDI0LDcgKzQyNCw2IEBAIHN0YXRp
YyBzdHJ1Y3QgaW5vZGUgKm50ZnNfcmVhZF9tZnQoc3RydWN0IGlub2RlICppbm9kZSwKPiA+ICDC
oMKgIMKgaWYgKG5hbWVzICE9IGxlMTZfdG9fY3B1KHJlYy0+aGFyZF9saW5rcykpIHsKPiA+ICDC
oMKgIMKgwqDCoMKgIC8qIENvcnJlY3QgbWlub3IgZXJyb3Igb24gdGhlIGZseS4gRG8gbm90IG1h
cmsgaW5vZGUgYXMgZGlydHkuICovCj4gPiAtwqDCoMKgIMKgwqDCoCBudGZzX2lub2RlX3dhcm4o
aW5vZGUsICJDb3JyZWN0IGxpbmtzIGNvdW50IC0+ICV1LiIsIG5hbWVzKTsKPiA+ICDCoMKgIMKg
wqDCoMKgIHJlYy0+aGFyZF9saW5rcyA9IGNwdV90b19sZTE2KG5hbWVzKTsKPiA+ICDCoMKgIMKg
wqDCoMKgIG5pLT5taS5kaXJ0eSA9IHRydWU7Cj4gPiAgwqDCoCDCoH0KPiA+IAo+ID4gY2FuIGFs
c28gYmUgc3VwcHJlc3NlZCBmb3IgdGhlIHNha2Ugb2Ygc2VhbWxlc3MgdHJhbnNpdGlvbiBmcm9t
IGEgcmVtb3RlIAo+ID4gTlRGUyBkcml2ZXIuCj4gPiBIb3dldmVyLCBJIGJlbGlldmUgdGhhdCBm
aWxlIHN5c3RlbSBjb3JyZWN0aW9ucyBzaG91bGQgYmUgcmVwb3J0ZWQgdG8gCj4gPiB0aGUgdXNl
ci4KPiAKPiBBIGNvbGxlYWd1ZSBvZiBtaW5lIGFsc28gdHJhY2tlZCBkb3duIGEgZmFpbGVkIGJv
b3QgdG8gdGhlIHJlbW92YWwgb2YKPiB0aGUgbnRmcyBkcml2ZXIgYW5kIHJlcG9ydGVkIHNlZWlu
ZyBzaW1pbGFyIHdhcm5pbmdzIHdpdGggdGhlIG50ZnMzCj4gZHJpdmVyLgo+IAo+IFdlJ3JlIGJv
dGggYWNjZXNzaW5nIGFuIE5URlMgcGFydGl0aW9uIG9uIGEgV2luZG93cyBvbiBBcm0gZGV2aWNl
LCBidXQKPiBpdCBtYWtlcyB5b3Ugd29uZGVyIHdoZXRoZXIgdGhlc2Ugd2FybmluZ3MgKGNvcnJl
Y3Rpb25zKSBhcmUgY29ycmVjdCBvcgo+IGluZGljYXRpdmUgb2YgYSBwcm9ibGVtIGluIHRoZSBk
cml2ZXI/CgpUaGlzIGlzIHdoYXQgSSBzZWUgd2l0aCBhIHJlY3Vyc2l2ZSBscyBvbiB0aGF0IHBh
cnRpdGlvbiAoSSd2ZSBhZGRlZApyZWMtPmhhcmRfbGlua3MgaW4gcGFyZW50aGVzZXMpOgoKWyAg
IDM4LjI4NzU1NV0gbnRmczM6IG52bWUwbjFwMzogaW5vPTJlMWU3LCBDb3JyZWN0IGxpbmtzIGNv
dW50IC0+IDEgKDIpLgpbICAgMzguMjg4NTkzXSBudGZzMzogbnZtZTBuMXAzOiBpbm89NzVmZiwg
Q29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDM4LjI4OTg4N10gbnRmczM6IG52bWUw
bjFwMzogaW5vPTFiNGUxLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgMzguMjkw
MTQ0XSBudGZzMzogbnZtZTBuMXAzOiBpbm89NzhjNiwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAx
ICgyKS4KWyAgIDM4LjI5MTMxM10gbnRmczM6IG52bWUwbjFwMzogaW5vPTg3ODFiLCBDb3JyZWN0
IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgMzguMjkxODIzXSBudGZzMzogbnZtZTBuMXAzOiBp
bm89ODc4MWUsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICAzOC4yOTIyODldIG50
ZnMzOiBudm1lMG4xcDM6IGlubz04NzgyMCwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4K
WyAgIDM4LjI5Mjk3OF0gbnRmczM6IG52bWUwbjFwMzogaW5vPTg3ODIzLCBDb3JyZWN0IGxpbmtz
IGNvdW50IC0+IDEgKDIpLgpbICAgMzguMzAwNTMxXSBudGZzMzogbnZtZTBuMXAzOiBpbm89YTMy
NCwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDM4LjMxMjIzNV0gbnRmczM6IG52
bWUwbjFwMzogaW5vPTg4MmMzLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNDMu
Mjg2ODQ2XSBudGZzMzogNTQ3OSBjYWxsYmFja3Mgc3VwcHJlc3NlZApbICAgNDMuMjg2ODU2XSBu
dGZzMzogbnZtZTBuMXAzOiBpbm89MTRhYSwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4K
WyAgIDQzLjI4Njk5OF0gbnRmczM6IG52bWUwbjFwMzogaW5vPTE0YWMsIENvcnJlY3QgbGlua3Mg
Y291bnQgLT4gMSAoMikuClsgICA0My4yODcxOTRdIG50ZnMzOiBudm1lMG4xcDM6IGlubz0xMmNj
MiwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDQzLjI4NzM4Nl0gbnRmczM6IG52
bWUwbjFwMzogaW5vPTEyY2NkLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNDMu
Mjg3NTc2XSBudGZzMzogbnZtZTBuMXAzOiBpbm89MTJkMTUsIENvcnJlY3QgbGlua3MgY291bnQg
LT4gMSAoMikuClsgICA0My4yODc2NjddIG50ZnMzOiBudm1lMG4xcDM6IGlubz0xMmQxOSwgQ29y
cmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDQzLjI4Nzg3N10gbnRmczM6IG52bWUwbjFw
MzogaW5vPTEyZDNhLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNDMuMjg4MDUx
XSBudGZzMzogbnZtZTBuMXAzOiBpbm89MTJkODgsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAo
MikuClsgICA0My4yODgyNjVdIG50ZnMzOiBudm1lMG4xcDM6IGlubz04NzQsIENvcnJlY3QgbGlu
a3MgY291bnQgLT4gMSAoMikuClsgICA0My4yODgzMjZdIG50ZnMzOiBudm1lMG4xcDM6IGlubz04
NzUsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA0OC4yODgyMTFdIG50ZnMzOiA3
NzM1IGNhbGxiYWNrcyBzdXBwcmVzc2VkClsgICA0OC4yODgyMjBdIG50ZnMzOiBudm1lMG4xcDM6
IGlubz0zMzM5MSwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDQ4LjI4OTExNV0g
bnRmczM6IG52bWUwbjFwMzogaW5vPTM0N2E0LCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIp
LgpbICAgNDguMjkwMjE0XSBudGZzMzogbnZtZTBuMXAzOiBpbm89MzU1M2YsIENvcnJlY3QgbGlu
a3MgY291bnQgLT4gMSAoMikuClsgICA0OC4yOTExOTNdIG50ZnMzOiBudm1lMG4xcDM6IGlubz0z
NTc5MywgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDQ4LjI5MjgxOF0gbnRmczM6
IG52bWUwbjFwMzogaW5vPTM1OGEwLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAg
NDguMjkzNTI5XSBudGZzMzogbnZtZTBuMXAzOiBpbm89MzhmNTQsIENvcnJlY3QgbGlua3MgY291
bnQgLT4gMSAoMikuClsgICA0OC4yOTM5MDFdIG50ZnMzOiBudm1lMG4xcDM6IGlubz0zOTFmNiwg
Q29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDQ4LjI5NDMwM10gbnRmczM6IG52bWUw
bjFwMzogaW5vPTM5MzI0LCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNDguMjk0
NzI5XSBudGZzMzogbnZtZTBuMXAzOiBpbm89Mzk0YTAsIENvcnJlY3QgbGlua3MgY291bnQgLT4g
MSAoMikuClsgICA0OC4yOTUwNjNdIG50ZnMzOiBudm1lMG4xcDM6IGlubz0zOTU2YSwgQ29ycmVj
dCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDUzLjI4OTM5Ml0gbnRmczM6IDExNDQyIGNhbGxi
YWNrcyBzdXBwcmVzc2VkClsgICA1My4yODk0MDFdIG50ZnMzOiBudm1lMG4xcDM6IGlubz02Mjkz
ZSwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDUzLjI4OTk3Ml0gbnRmczM6IG52
bWUwbjFwMzogaW5vPTYxZGYxLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNTMu
MjkwMjQxXSBudGZzMzogbnZtZTBuMXAzOiBpbm89NjFkZjMsIENvcnJlY3QgbGlua3MgY291bnQg
LT4gMSAoMikuClsgICA1My4yOTA1NzhdIG50ZnMzOiBudm1lMG4xcDM6IGlubz02MWYzYiwgQ29y
cmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDUzLjI5MDg4MV0gbnRmczM6IG52bWUwbjFw
MzogaW5vPTYyMDI1LCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNTMuMjkxMDQ1
XSBudGZzMzogbnZtZTBuMXAzOiBpbm89NjI5YWYsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAo
MikuClsgICA1My4yOTExODFdIG50ZnMzOiBudm1lMG4xcDM6IGlubz02MWUzYywgQ29ycmVjdCBs
aW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDUzLjI5MTQ2M10gbnRmczM6IG52bWUwbjFwMzogaW5v
PTYxZTIyLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNTMuMjkxNzQzXSBudGZz
MzogbnZtZTBuMXAzOiBpbm89NjI4ODIsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsg
ICA1My4yOTIwOTldIG50ZnMzOiBudm1lMG4xcDM6IGlubz02MWIzZCwgQ29ycmVjdCBsaW5rcyBj
b3VudCAtPiAxICgyKS4KWyAgIDU4LjI5MTc5MF0gbnRmczM6IDUzNzMgY2FsbGJhY2tzIHN1cHBy
ZXNzZWQKWyAgIDU4LjI5MTc5OV0gbnRmczM6IG52bWUwbjFwMzogaW5vPTZkNWE1LCBDb3JyZWN0
IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNTguMjkyMTA2XSBudGZzMzogbnZtZTBuMXAzOiBp
bm89NmQ3ZjYsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA1OC4yOTIzNzJdIG50
ZnMzOiBudm1lMG4xcDM6IGlubz02ZGI0MywgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4K
WyAgIDU4LjI5MjY1M10gbnRmczM6IG52bWUwbjFwMzogaW5vPTcyNTU3LCBDb3JyZWN0IGxpbmtz
IGNvdW50IC0+IDEgKDIpLgpbICAgNTguMjkzMjQ0XSBudGZzMzogbnZtZTBuMXAzOiBpbm89NzI4
ZDgsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA1OC4yOTQzMDZdIG50ZnMzOiBu
dm1lMG4xcDM6IGlubz03MmM2ZSwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDU4
LjI5NDk0NF0gbnRmczM6IG52bWUwbjFwMzogaW5vPTcyZmY3LCBDb3JyZWN0IGxpbmtzIGNvdW50
IC0+IDEgKDIpLgpbICAgNTguMjk1NjY2XSBudGZzMzogbnZtZTBuMXAzOiBpbm89NzMyNzEsIENv
cnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA1OC4yOTYyODFdIG50ZnMzOiBudm1lMG4x
cDM6IGlubz03MzVmZCwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDU4LjI5Njk5
MV0gbnRmczM6IG52bWUwbjFwMzogaW5vPTczODgwLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEg
KDIpLgpbICAgNjMuMjk1MDA5XSBudGZzMzogMTM5MjEgY2FsbGJhY2tzIHN1cHByZXNzZWQKWyAg
IDYzLjI5NTAxN10gbnRmczM6IG52bWUwbjFwMzogaW5vPTZiZTY1LCBDb3JyZWN0IGxpbmtzIGNv
dW50IC0+IDEgKDIpLgpbICAgNjMuMjk1OTAyXSBudGZzMzogbnZtZTBuMXAzOiBpbm89NmMwOGUs
IENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA2My4yOTYyNTJdIG50ZnMzOiBudm1l
MG4xcDM6IGlubz02YzJlMywgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDYzLjI5
NzU4MV0gbnRmczM6IG52bWUwbjFwMzogaW5vPTZjNjEwLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+
IDEgKDIpLgpbICAgNjMuMjk4MzIxXSBudGZzMzogbnZtZTBuMXAzOiBpbm89NmM3ZjksIENvcnJl
Y3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA2My4yOTg3MzBdIG50ZnMzOiBudm1lMG4xcDM6
IGlubz02Y2IyNCwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDYzLjI5OTA3OV0g
bnRmczM6IG52bWUwbjFwMzogaW5vPTZjZWRhLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIp
LgpbICAgNjMuMjk5NDA4XSBudGZzMzogbnZtZTBuMXAzOiBpbm89NmQyODgsIENvcnJlY3QgbGlu
a3MgY291bnQgLT4gMSAoMikuClsgICA2My4yOTk3MjddIG50ZnMzOiBudm1lMG4xcDM6IGlubz02
ZDUzMywgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDYzLjMwMDA4MF0gbnRmczM6
IG52bWUwbjFwMzogaW5vPTZkNzdiLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAg
NjguMjk5NDU3XSBudGZzMzogODIyOCBjYWxsYmFja3Mgc3VwcHJlc3NlZApbICAgNjguMjk5NDY3
XSBudGZzMzogbnZtZTBuMXAzOiBpbm89M2UyNDgsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAo
MikuClsgICA2OC4zMDEzOTFdIG50ZnMzOiBudm1lMG4xcDM6IGlubz01ZDdiNywgQ29ycmVjdCBs
aW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDY4LjMwMjQ0MF0gbnRmczM6IG52bWUwbjFwMzogaW5v
PTU4NTNkLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNjguMzAzMTIzXSBudGZz
MzogbnZtZTBuMXAzOiBpbm89M2NhMmUsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsg
ICA2OC4zMDM3MjJdIG50ZnMzOiBudm1lMG4xcDM6IGlubz01OWE5OCwgQ29ycmVjdCBsaW5rcyBj
b3VudCAtPiAxICgyKS4KWyAgIDY4LjMwNDI5Ml0gbnRmczM6IG52bWUwbjFwMzogaW5vPTU5YTli
LCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNjguMzA0OTgxXSBudGZzMzogbnZt
ZTBuMXAzOiBpbm89NTlhOWUsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA2OC4z
MDU2MjldIG50ZnMzOiBudm1lMG4xcDM6IGlubz01OWFhMSwgQ29ycmVjdCBsaW5rcyBjb3VudCAt
PiAxICgyKS4KWyAgIDY4LjMwNjEyMF0gbnRmczM6IG52bWUwbjFwMzogaW5vPTMyMTRmLCBDb3Jy
ZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNjguMzA2NTM5XSBudGZzMzogbnZtZTBuMXAz
OiBpbm89MjA3N2IsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA3My4zMDI3Mjdd
IG50ZnMzOiA4NTAyIGNhbGxiYWNrcyBzdXBwcmVzc2VkClsgICA3My4zMDI3MzZdIG50ZnMzOiBu
dm1lMG4xcDM6IGlubz01YWE5OSwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDcz
LjMwMzk5Ml0gbnRmczM6IG52bWUwbjFwMzogaW5vPTUwZWU5LCBDb3JyZWN0IGxpbmtzIGNvdW50
IC0+IDEgKDIpLgpbICAgNzMuMzA0NzQ0XSBudGZzMzogbnZtZTBuMXAzOiBpbm89MjA0MjAsIENv
cnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA3My4zMDUwODBdIG50ZnMzOiBudm1lMG4x
cDM6IGlubz0yNThjLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNzMuMzA1NDcw
XSBudGZzMzogbnZtZTBuMXAzOiBpbm89NWEzMGQsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAo
MikuClsgICA3My4zMDcyODNdIG50ZnMzOiBudm1lMG4xcDM6IGlubz01YTU0YywgQ29ycmVjdCBs
aW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDczLjMwNzg5MF0gbnRmczM6IG52bWUwbjFwMzogaW5v
PTVjOWRlLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNzMuMzA4NDk1XSBudGZz
MzogbnZtZTBuMXAzOiBpbm89M2Q4MmQsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsg
ICA3My4zMDk1ODFdIG50ZnMzOiBudm1lMG4xcDM6IGlubz0zZDgzOSwgQ29ycmVjdCBsaW5rcyBj
b3VudCAtPiAxICgyKS4KWyAgIDczLjMxMDAxNl0gbnRmczM6IG52bWUwbjFwMzogaW5vPTI1Yzc3
LCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNzguMzA0ODYxXSBudGZzMzogMTE0
NjIgY2FsbGJhY2tzIHN1cHByZXNzZWQKWyAgIDc4LjMwNDg2OF0gbnRmczM6IG52bWUwbjFwMzog
aW5vPTVjNzE0LCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEgKDIpLgpbICAgNzguMzA1NTc5XSBu
dGZzMzogbnZtZTBuMXAzOiBpbm89NTdkMTEsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMiku
ClsgICA3OC4zMDYxNTFdIG50ZnMzOiBudm1lMG4xcDM6IGlubz01ODQyZCwgQ29ycmVjdCBsaW5r
cyBjb3VudCAtPiAxICgyKS4KWyAgIDc4LjMwNzQxMl0gbnRmczM6IG52bWUwbjFwMzogaW5vPTM0
ZTYsIENvcnJlY3QgbGlua3MgY291bnQgLT4gMSAoMykuClsgICA3OC4zMDc4NDNdIG50ZnMzOiBu
dm1lMG4xcDM6IGlubz01YmIyMywgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgyKS4KWyAgIDc4
LjMwODUwOV0gbnRmczM6IG52bWUwbjFwMzogaW5vPTVjNzIyLCBDb3JyZWN0IGxpbmtzIGNvdW50
IC0+IDEgKDIpLgpbICAgNzguMzEwMDE4XSBudGZzMzogbnZtZTBuMXAzOiBpbm89NWQ3NjEsIENv
cnJlY3QgbGlua3MgY291bnQgLT4gMSAoMikuClsgICA3OC4zMTA3MTddIG50ZnMzOiBudm1lMG4x
cDM6IGlubz0zM2QxOCwgQ29ycmVjdCBsaW5rcyBjb3VudCAtPiAxICgzKS4KWyAgIDc4LjMxMTE3
OV0gbnRmczM6IG52bWUwbjFwMzogaW5vPTVkNzViLCBDb3JyZWN0IGxpbmtzIGNvdW50IC0+IDEg
KDMpLgpbICAgNzguMzExNjA1XSBudGZzMzogbnZtZTBuMXAzOiBpbm89NWM3MDgsIENvcnJlY3Qg
bGlua3MgY291bnQgLT4gMSAoMykuCgpKb2hhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW50ZnMtZGV2IG1haWxpbmcgbGlzdApMaW51eC1u
dGZzLWRldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
