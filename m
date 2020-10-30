Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0738C2A1B61
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Nov 2020 01:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kZ1EC-0001vQ-QD; Sun, 01 Nov 2020 00:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>) id 1kYXD7-0007rC-Ut
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 16:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yd2Ve8ohk4vSYx34AId6jboXmiHzD+T0FFW8/Cbdi1U=; b=hr9Wc30LgNykXKXqiejrszR6jl
 RotfFIHnvtZ5T6e0J+mfHwmQw0esGMFr9sDPv2MTFRTFWRt4pCgyYMiU+My1/afFKC0c0jo72R8NX
 8X0A2xV7LTZjBzfKtmA1zPsRynuDanRb1GNMV6Nuv2p3iIkn7GUzYF+5SRCFhPih/Ay4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yd2Ve8ohk4vSYx34AId6jboXmiHzD+T0FFW8/Cbdi1U=; b=V+EF8FCGSViNVFctw91DofANva
 fSpCkGpNWK6os0LznOLnmbQhK79yB61PVWyh0y0I/Rhfbsucf9nlzodtMjzdSItaffhB0oSRPHARX
 8KUHqmlQrwsTrOVXqws8luoqbTYqyYIlSq1FQxyydlmhR2EYKMdj0nRFaVx9CcCI72js=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYXD1-00DAps-U9
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 16:25:05 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6EE020A8B;
 Fri, 30 Oct 2020 16:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604075082;
 bh=JsEAfGGgoOV85RaVdC5H8YDmaqo/M0m8S3exAQEGvmI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mk0rODp+2RGw0c85aihYBKBFpCgl/1h4tNccV3Iq5LT510uI7O/GYH9VqdtGLy4dy
 9bNAg+TJWTLJj6geLwsawPpm4jO09ieIhXr3+q/vTB+AoeYcWBjjpPh0CC+KOtUbHp
 TADzb4NTvF7Wl2F6WUuuGARezXxw4Uv96M3I5u8Q=
Received: by pali.im (Postfix)
 id 39EB486D; Fri, 30 Oct 2020 17:24:39 +0100 (CET)
Date: Fri, 30 Oct 2020 17:24:39 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20201030162439.byd6p3flwjyimuae@pali>
References: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
 <20201030152450.77mtzkxjove36qfd@pali>
 <5313baaad14c40d09738bf63e4659ac9@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5313baaad14c40d09738bf63e4659ac9@paragon-software.com>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kYXD1-00DAps-U9
X-Mailman-Approved-At: Sun, 01 Nov 2020 00:28:09 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v11 00/10] NTFS read-write driver GPL
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
 "dsterba@suse.cz" <dsterba@suse.cz>, "joe@perches.com" <joe@perches.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGVsbG8hCgpPbiBGcmlkYXkgMzAgT2N0b2JlciAyMDIwIDE1OjUxOjEwIEtvbnN0YW50aW4gS29t
YXJvdiB3cm90ZToKPiBGcm9tOiBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPgo+IFNlbnQ6
IEZyaWRheSwgT2N0b2JlciAzMCwgMjAyMCA2OjI1IFBNCj4gPiBUbzogS29uc3RhbnRpbiBLb21h
cm92IDxhbG1hei5hbGV4YW5kcm92aWNoQHBhcmFnb24tc29mdHdhcmUuY29tPgo+ID4gQ2M6IGxp
bnV4LWZzZGV2ZWxAdmdlci5rZXJuZWwub3JnOyB2aXJvQHplbml2LmxpbnV4Lm9yZy51azsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgZHN0ZXJiYUBzdXNlLmN6OyBhYXB0ZWxAc3VzZS5j
b207Cj4gPiB3aWxseUBpbmZyYWRlYWQub3JnOyByZHVubGFwQGluZnJhZGVhZC5vcmc7IGpvZUBw
ZXJjaGVzLmNvbTsgbWFya0BoYXJtc3RvbmUuY29tOyBuYm9yaXNvdkBzdXNlLmNvbTsgbGludXgt
bnRmcy0KPiA+IGRldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ7IGFudG9uQHR1eGVyYS5jb20KPiA+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjExIDAwLzEwXSBOVEZTIHJlYWQtd3JpdGUgZHJpdmVyIEdQ
TCBpbXBsZW1lbnRhdGlvbiBieSBQYXJhZ29uIFNvZnR3YXJlCj4gPiAKPiA+IEhlbGxvIGFuZCB0
aGFua3MgZm9yIHVwZGF0ZSEKPiA+IAo+ID4gSSBoYXZlIGp1c3QgdHdvIGNvbW1lbnRzIGZvciB0
aGUgbGFzdCB2MTEgdmVyc2lvbi4KPiA+IAo+ID4gSSByZWFsbHkgZG8gbm90IGxpa2UgbmxzX2Fs
dCBtb3VudCBvcHRpb24gYW5kIEkgZG8gbm90IHRoaW5rIHdlIHNob3VsZAo+ID4gbWVyZ2UgdGhp
cyBtb3VudCBvcHRpb24gaW50byBudGZzIGtlcm5lbCBkcml2ZXIuIERldGFpbHMgSSBkZXNjcmli
ZWQgaW46Cj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1mc2RldmVsLzIwMjAxMDA5
MTU0NzM0LmFuZHY0ZXMzYXpra3NrbTVAcGFsaS8KPiA+IAo+ID4gdGw7ZHIgaXQgaXMgbm90IHN5
c3RlbWF0aWMgc29sdXRpb24gYW5kIGlzIGluY29tcGF0aWJsZSB3aXRoIGV4aXN0aW5nCj4gPiBp
bi1rZXJuZWwgbnRmcyBkcml2ZXIsIGFsc28gaW5jb21wYXRpYmxlIHdpdGggaW4ta2VybmVsIHZm
YXQsIHVkZiBhbmQKPiA+IGV4dDQgKHdpdGggVU5JQ09ERSBzdXBwb3J0KSBkcml2ZXJzLiBJbiBt
eSBvcGluaW9uLCBhbGwga2VybmVsIGZzCj4gPiBkcml2ZXJzIHdoaWNoIGRlYWxzIHdpdGggVU5J
Q09ERSBzaG91bGQgaGFuZGxlIGl0IGluIHNpbWlsYXIgd2F5Lgo+ID4gCj4gCj4gSGVsbG8gUGFs
aSEgRmlyc3Qgb2YgYWxsLCBhcG9sb2dpZXMgZm9yIG5vdCBwcm92aWRpbmcgYSBmZWVkYmFjayBv
biB5b3VyIHByZXZpb3VzCj4gbWVzc2FnZSByZWdhcmRpbmcgdGhlICdubHNfYWx0Jy4gV2UgaGFk
IGludGVybmFsIGRpc2N1c3Npb25zIG9uIHRoZSB0b3BpYyBhbmQKPiBvdmVyYWxsIGNvbmNsdXNp
b24gaXMgdGhhdDogd2UgZG8gbm90IHdhbnQgdG8gY29tcHJvbWlzZSBLZXJuZWwgc3RhbmRhcmRz
IHdpdGgKPiBvdXIgc3VibWlzc2lvbi4gU28gd2Ugd2lsbCByZW1vdmUgdGhlICdubHNfYWx0JyBv
cHRpb24gaW4gdGhlIG5leHQgdmVyc2lvbi4KPiAKPiBIb3dldmVyLCB0aGVyZSBhcmUgc3RpbGwg
ZmV3IHBvaW50cyB3ZSBoYXZlIG9uIHRoZSB0b3BpYywgcGxlYXNlIHJlYWQgYmVsb3cuCj4gCj4g
PiBJdCB3b3VsZCBiZSByZWFsbHkgYmFkIGlmIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBuZWVkIHRv
IGJlaGF2ZQo+ID4gZGlmZmVyZW50bHkgZm9yIHRoaXMgbmV3IG50ZnMgZHJpdmVyIGFuZCBkaWZm
ZXJlbnRseSBmb3IgYWxsIG90aGVyCj4gPiBVTklDT0RFIGRyaXZlcnMuCj4gPiAKPiAKPiBUaGUg
b3B0aW9uIGRvZXMgbm90IGFueWhvdyBhZmZlY3QgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucy4gRm9y
IHRoZSAiZGVmYXVsdCIgZXhhbXBsZQo+IG9mIHVuemlwL3RhcjoKPiAxIC0gaWYgdGhpcyBvcHRp
b24gaXMgbm90IGFwcGxpZWQgKGUuZy4gInZmYXQgY2FzZSIpLCB0cnlpbmcgdG8gdW56aXAgYW4g
YXJjaGl2ZSB3aXRoLCBlLmcuIENQLTEyNTEsCj4gbmFtZXMgaW5zaWRlIHRvIHRoZSB0YXJnZXQg
ZnMgdm9sdW1lLCB3aWxsIHJldHVybiBlcnJvciwgYW5kIGlzc3VlZCBmaWxlKHMpIHdvbid0IGJl
IHVuemlwcGVkOwo+IDIgLSBpZiB0aGlzIG9wdGlvbiBpcyBhcHBsaWVkIGFuZCAibmxzX2FsdCIg
aXMgc2V0LCB0aGUgYWJvdmUgY2FzZSB3aWxsIHJlc3VsdCBpbiB1bnppcHBpbmcgYWxsIHRoZSBm
aWxlczsKCkkgdW5kZXJzdGFuZCB3aGF0IGlzIHRoZSBwb2ludCBhbmQgSSdtIG5vdCBhZ2FpbnN0
IGRpc2N1c3Npb24gaG93IHRvIGZpeAppdC4gQnV0IGl0IHNob3VsZCBiZSBpbXBsZW1lbnRlZCBm
b3IgYWxsIGZpbGVzeXN0ZW1zIHdpdGggVU5JQ09ERQpzZW1hbnRpYywgc28gYmVoYXZpb3Igd291
bGQgYmUgc2FtZS4KCkZvciB1c2VyIGFwcGxpY2F0aW9uIHBvaW50IG9mIHZpZXcsIGJlaGF2aW9y
IG9mIHZmYXQsIG50ZnMsIHVkZiBhbmQgZXh0NAood2l0aCBVTklDT0RFIHN1cHBvcnQ7IHNlZSBi
ZWxvdykgaW4gaGFuZGxpbmcgZmlsZSBuYW1lcyBzaG91bGQgYmUgdmVyeQpzaW1pbGFyIChvciBl
eGFjdGx5IHNhbWUgaWYgZnMgdGVjaCBkZXRhaWxzIGFsbG93cyBpdCkuCgo+IEFsc28sIHRoaXMg
aXNzdWUgaW4gZ2VuZXJhbCBvbmx5IGFwcGxpZXMgdG8gIm5vbi1uYXRpdmUiIGZpbGVzeXN0ZW1z
LiBJLmUuIGV4dDQgaXMgbm90IGFmZmVjdGVkIGJ5IGl0Cj4gaW4gYW55IGNhc2UsIGFzIGl0IGp1
c3Qgc3RvcmVzIHRoZSBuYW1lIGFzIGJ5dGVzLCBubyBtYXR0ZXIgd2hhdCB0aG9zZSBieXRlcyBh
cmUuIFRoZSBhYm92ZSBjYXNlCj4gd29uJ3QgZ2l2ZSBhbiB1bnppcCBlcnJvciBvbiBleHQ0LiBU
aGUgb25seSBzeW1wdG9tIG9mIHRoaXMgd291bGQgYmUsIG1heWJlLCAiaW5jb3JyZWN0IGVuY29k
aW5nIgo+IG1hcmtpbmcgd2l0aGluIHRoZSBsaXN0aW5nIG9mIHN1Y2ggZmlsZXMgKGluIEZpbGUg
TWFuYWdlciBvciBUZXJtaW5hbCwgZS5nLiBpbiBVYnVudHUpLCBidXQgdGhlcmUgd29uJ3QKPiBi
ZSBhbiB1bnppcCBwcm9jZXNzIHRlcm1pbmF0aW9uIHdpdGggaW5jb21wbGV0ZSB1bmFyY2hpdmVk
IGZpbGVzZXQsIHVubGlrZSBpdCBpcyBmb3IgdmZhdC9leGZhdC9udGZzCj4gd2l0aG91dCAibmxz
X2FsdCIuCgpXaGVuIHVzaW5nIGV4dDQgaW4gZGVmYXVsdCBtb2RlIHRoZW4gaXQgcmVhbGx5IGRv
ZXMgbm90IGFwcGx5IGhlcmUuIEJ1dApJIHdyb3RlIHRoYXQgaXQgYXBwbGllcyBmb3IgZXh0NCB3
aXRoIFVOSUNPREUgc3VwcG9ydC4gVGhpcyBtb2RlIG5lZWRzCnRvIGJlIGZpcnN0IGVuYWJsZWQg
Zm9yIGRpcmVjdG9yeSwgaXQgaXMgcmVsYXRpdmVseSBuZXcgZmVhdHVyZSBhbmQgSSBkbwpub3Qg
a25vdyBpZiB0aGVyZSBhcmUgdXNlcnMgb2YgaXQgYW5kIGhvdyBtYW55IHBlb3BsZSB0cmllZCBk
aWZmZXJlbnQKY3JhenkgdGVzdCBzY2VuYXJpb3Mgd2l0aCBub3JtYWxpemF0aW9uLCBldGMuLi4K
Cj4gPiBTZWNvbmQgY29tbWVudCBpcyBzaW1wbGlmaWNhdGlvbiBvZiB1c2FnZSBubHNfbG9hZCgp
IHdpdGggVVRGLTggcGFyYW1ldGVyCj4gPiB3aGljaCBJIGRlc2NyaWJlZCBpbiBvbGRlciBlbWFp
bDoKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWZzZGV2ZWwvOTQ4YWM4OTQ0NTBk
NDk0ZWExNTQ5NmMyZTViOGM5MDZAcGFyYWdvbi1zb2Z0d2FyZS5jb20vCj4gPiAKPiA+IFlvdSB3
cm90ZSB0aGF0IHlvdSBoYXZlIGFwcGxpZWQgaXQsIGJ1dCBzZWVtcyBpdCB3YXMgbG9zdCAobWF5
YmUgZHVyaW5nCj4gPiByZWJhc2U/KSBhcyBpdCBpcyBub3QgcHJlc2VudCBpbiB0aGUgbGFzdCB2
MTEgdmVyc2lvbi4KPiA+IAo+ID4gSSBzdWdnZXN0ZWQgdG8gbm90IHVzZSBubHNfbG9hZCgpIHdp
dGggVVRGLTggYXQgYWxsLiBZb3VyIHZlcnNpb24gb2YKPiA+IG50ZnMgZHJpdmVyIGRvZXMgbm90
IHVzZSBrZXJuZWwncyBubHMgdXRmOCBtb2R1bGUgZm9yIFVURi04IHN1cHBvcnQsIHNvCj4gPiB0
cnlpbmcgdG8gbG9hZCBpdCBzaG91bGQgYmUgYXZvaWRlZC4gQWxzbyBrZXJuZWwgY2FuIGJlIGNv
bXBpbGVkIHdpdGhvdXQKPiA+IHV0ZjggbmxzIG1vZHVsZSAod2hpY2ggaXMgbW9yZW92ZXIgYnJv
a2VuKSBhbmQgd2l0aCBteSBhYm92ZSBzdWdnZXN0aW9uLAo+ID4gbnRmcyBkcml2ZXIgd291bGQg
d29yayBjb3JyZWN0bHkuIFdpdGhvdXQgdGhhdCBzdWdnZXN0aW9uLCBtb3VudGluZwo+ID4gd291
bGQgZmFpbC4KPiAKPiBUaGFua3MgZm9yIHBvaW50aW5nIHRoYXQgb3V0LiBJdCBpcyBsaWtlbHkg
dGhlICJubHNfbG9hZCgpIiBmaXhlcyB3ZXJlIGxvc3QgZHVyaW5nIHJlYmFzZS4KPiBXaWxsIHJl
Y2hlY2sgaXQgYW5kIHJldHVybiB0aGVtIHRvIHRoZSB2MTIuCgpPSyEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5n
IGxpc3QKTGludXgtTlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
