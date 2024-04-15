Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3912E8A4D62
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 13:13:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwKGh-0001YL-Bi;
	Mon, 15 Apr 2024 11:12:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rwJ2k-0006X7-8j
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 09:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XRsjAMKiscYh4pDZ28NNy1z2wPSG3GWgZvMIzmn0LNQ=; b=Gcs9S1m+LqRH6Kdj/AL75lvc1A
 jVojvP9PfRPHdDwaksCDCxmtU4nb6HdIweVO+5IV2kK/uLzyajBjEA0Ic4FM8t15w7zj42K7y1kjR
 BYoit6qoaRgOSiylBGzA1UgYbCvYc4/BRBOyNkO9WXM76z1CCe/ZNfA/blwovgHtW2zo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XRsjAMKiscYh4pDZ28NNy1z2wPSG3GWgZvMIzmn0LNQ=; b=jZ8f60SABrl96DTQGryN7IdcCU
 lvTFgjaBTPW7v/dnt//C8w8vwL569KqdRcoketVtt4qlcGvKDBCvKf9WLwI7apFHME6kinQy2pVuq
 hc5TI3r4tA6sw0dgXLwicp3JSC1EbSBnMKYiy1FbLGNOQJNjY3SX7qRbLo2O4gv3QJhA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwJ2j-0007fW-39 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 09:54:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 101BE60C0B;
 Mon, 15 Apr 2024 09:54:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9E07C113CC;
 Mon, 15 Apr 2024 09:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713174861;
 bh=NoEbOkT6xpKcfcjZdRZo7iJAnVMKsEeObPkosVfORFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NlGYN0CzRlOADAIXkZNUaiy1RbCw72AsWmRqt0l9v/IDG9KKoEyYEXW0b2BzHZ8hu
 Mbofryhvu9KtrKdKg72efLeeCZ0tdc66jtTV8H3lRq91amjot5uwr4gw2V7qrgCLyo
 g2kneAcIZS49T3dAD90kvrWnMOGAuTufUByPZEMEZAa2OMM563rRmMMbjJsP1lFZkj
 MzLBLHHB8sLWELwb07k9vSimPP5iUAF9oKzBohzUtj2TI/aceQvoV64PLtZKuLs1tE
 A5RVyVTds0uKDPPwj7h/yRqoHorS3YLfhZRUwzg/fL/AmgbwK4E54i15jZvQRdmGvg
 d7Ia7QEEOVYNg==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rwJ2Z-000000002OA-1ayb;
 Mon, 15 Apr 2024 11:54:19 +0200
Date: Mon, 15 Apr 2024 11:54:19 +0200
From: Johan Hovold <johan@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
 <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
 <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 11, 2024 at 02:03:52PM +0300, Konstantin Komarov
 wrote: > On 04.04.2024 11:06, Linux regression tracking (Thorsten Leemhuis)
 wrote: > > On 25.03.24 13:05, Christian Brauner wrote: > >> On [...] 
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
X-Headers-End: 1rwJ2j-0007fW-39
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

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMDI6MDM6NTJQTSArMDMwMCwgS29uc3RhbnRpbiBLb21h
cm92IHdyb3RlOgo+IE9uIDA0LjA0LjIwMjQgMTE6MDYsIExpbnV4IHJlZ3Jlc3Npb24gdHJhY2tp
bmcgKFRob3JzdGVuIExlZW1odWlzKSB3cm90ZToKPiA+IE9uIDI1LjAzLjI0IDEzOjA1LCBDaHJp
c3RpYW4gQnJhdW5lciB3cm90ZToKPiA+PiBPbiBNb24sIE1hciAyNSwgMjAyNCBhdCAxMToxMjow
MEFNICswMTAwLCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4gPj4+IE9uIE1vbiwgTWFyIDI1LCAyMDI0
IGF0IDA5OjM0OjM4QU0gKzAxMDAsIENocmlzdGlhbiBCcmF1bmVyIHdyb3RlOgo+ID4+Pj4gVGhp
cyBjYXVzZXMgdmlzaWJsZSBjaGFuZ2VzIGZvciB1c2VycyB0aGF0IHJlbHkgb24gbnRmczMgdG8g
c2VydmUgYXMgYW4KPiA+Pj4+IGFsdGVybmF0aXZlIGZvciB0aGUgbGVnYWN5IG50ZnMgZHJpdmVy
LiBQcmludCBzdGF0ZW1lbnRzIHN1Y2ggYXMgdGhpcwo+ID4+Pj4gc2hvdWxkIHByb2JhYmx5IGJl
IG1hZGUgY29uZGl0aW9uYWwgb24gYSBkZWJ1ZyBjb25maWcgb3B0aW9uIG9yIHNpbWlsYXIuCj4g
Pj4+Pgo+ID4+Pj4gQ2M6ICJNYXR0aGV3IFdpbGNveCAoT3JhY2xlKSIgPHdpbGx5QGluZnJhZGVh
ZC5vcmc+Cj4gPj4+PiBDYzogSm9oYW4gSG92b2xkIDxqb2hhbkBrZXJuZWwub3JnPgo+ID4+Pj4g
TGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci9aZjJ6UGY1VE81b1l0M0kzQGhvdm9sZGNv
bnN1bHRpbmcuY29tCj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gQnJhdW5lciA8YnJh
dW5lckBrZXJuZWwub3JnPgo+ID4+PiBUZXN0ZWQtYnk6IEpvaGFuIEhvdm9sZCA8am9oYW4rbGlu
YXJvQGtlcm5lbC5vcmc+Cj4gPj4+Cj4gPj4+IEkgYWxzbyBzZWUgYQo+ID4+Pgo+ID4+PiAJbnRm
czM6IE1heCBsaW5rIGNvdW50IDQwMDAKPiA+Pj4KPiA+Pj4gbWVzc2FnZSBvbiBtb3VudCB3aGlj
aCB3YXNuJ3QgdGhlcmUgd2l0aCBOVEZTIGxlZ2FjeS4gSXMgdGhhdCBiZW5pZ24KPiA+Pj4gYW5k
IHNob3VsZCBiZSBzdXBwcmVzc2VkIHRvbyBwZXJoYXBzPwo+ID4+IFdlIG5lZWQgYSByZXBseSBm
cm9tIHRoZSBudGZzMyBtYWludGFpbmVycyBoZXJlLgoKPiBUaGVyZSBpcyBubyBwcm9ibGVtIGlu
IHN1cHByZXNzaW5nIHRoZSBvdXRwdXQgb2YgYW55IG1lc3NhZ2VzIGR1cmluZyAKPiBtb3VudGlu
ZywgbGlrZToKCj4gTWVzc2FnZXMgbGlrZSB0aGlzOgo+IAo+IGRpZmYgLS1naXQgYS9mcy9udGZz
My9pbm9kZS5jIGIvZnMvbnRmczMvaW5vZGUuYwo+IGluZGV4IGViN2E4YzlmYmEwMS4uOGNjOTRh
NmE5N2VkIDEwMDY0NAo+IC0tLSBhL2ZzL250ZnMzL2lub2RlLmMKPiArKysgYi9mcy9udGZzMy9p
bm9kZS5jCj4gQEAgLTQyNCw3ICs0MjQsNiBAQCBzdGF0aWMgc3RydWN0IGlub2RlICpudGZzX3Jl
YWRfbWZ0KHN0cnVjdCBpbm9kZSAqaW5vZGUsCj4gIMKgwqAgwqBpZiAobmFtZXMgIT0gbGUxNl90
b19jcHUocmVjLT5oYXJkX2xpbmtzKSkgewo+ICDCoMKgIMKgwqDCoMKgIC8qIENvcnJlY3QgbWlu
b3IgZXJyb3Igb24gdGhlIGZseS4gRG8gbm90IG1hcmsgaW5vZGUgYXMgZGlydHkuICovCj4gLcKg
wqDCoCDCoMKgwqAgbnRmc19pbm9kZV93YXJuKGlub2RlLCAiQ29ycmVjdCBsaW5rcyBjb3VudCAt
PiAldS4iLCBuYW1lcyk7Cj4gIMKgwqAgwqDCoMKgwqAgcmVjLT5oYXJkX2xpbmtzID0gY3B1X3Rv
X2xlMTYobmFtZXMpOwo+ICDCoMKgIMKgwqDCoMKgIG5pLT5taS5kaXJ0eSA9IHRydWU7Cj4gIMKg
wqAgwqB9Cj4gCj4gY2FuIGFsc28gYmUgc3VwcHJlc3NlZCBmb3IgdGhlIHNha2Ugb2Ygc2VhbWxl
c3MgdHJhbnNpdGlvbiBmcm9tIGEgcmVtb3RlIAo+IE5URlMgZHJpdmVyLgo+IEhvd2V2ZXIsIEkg
YmVsaWV2ZSB0aGF0IGZpbGUgc3lzdGVtIGNvcnJlY3Rpb25zIHNob3VsZCBiZSByZXBvcnRlZCB0
byAKPiB0aGUgdXNlci4KCkEgY29sbGVhZ3VlIG9mIG1pbmUgYWxzbyB0cmFja2VkIGRvd24gYSBm
YWlsZWQgYm9vdCB0byB0aGUgcmVtb3ZhbCBvZgp0aGUgbnRmcyBkcml2ZXIgYW5kIHJlcG9ydGVk
IHNlZWluZyBzaW1pbGFyIHdhcm5pbmdzIHdpdGggdGhlIG50ZnMzCmRyaXZlci4KCldlJ3JlIGJv
dGggYWNjZXNzaW5nIGFuIE5URlMgcGFydGl0aW9uIG9uIGEgV2luZG93cyBvbiBBcm0gZGV2aWNl
LCBidXQKaXQgbWFrZXMgeW91IHdvbmRlciB3aGV0aGVyIHRoZXNlIHdhcm5pbmdzIChjb3JyZWN0
aW9ucykgYXJlIGNvcnJlY3Qgb3IKaW5kaWNhdGl2ZSBvZiBhIHByb2JsZW0gaW4gdGhlIGRyaXZl
cj8KCkpvaGFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnRmcy1kZXYgbWFpbGluZyBsaXN0CkxpbnV4LW50ZnMtZGV2QGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9s
aW51eC1udGZzLWRldgo=
