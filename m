Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C234997813
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 21 Aug 2019 13:40:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i0OyP-0001lc-P1; Wed, 21 Aug 2019 11:40:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkml@metux.net>) id 1i0OvX-00024I-0G
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 21 Aug 2019 11:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fpkc/rMxKYK2gl5ZGdywYcmrtfb4YchBZamk8PUpyhQ=; b=FXjShIbDNvw1J6PAwNDTq4QW4c
 YPszyXxYQOYZDr4tHo/dl2yQPCSKgkvA4M0ToLVbThRDqMh2qfrO3vmFOOZaGEVMadx5a5PRotHvT
 YGJXeLR3J3Jr6/ZN8IpuuWDMLL4x34NMpLRUGlQnfjqLKJh/XLnw57vqspCMv/CUTkkk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fpkc/rMxKYK2gl5ZGdywYcmrtfb4YchBZamk8PUpyhQ=; b=c8Fol9MX8yU7JWc4EU0eat0qb9
 j4EhyZBOtCSJw2anR+YZRkGZih0In6LSHuYSvShMMfH3seRKUhR6tGAQeW0AyhcyW0FzZUf+fAgwO
 cWLCrwMn5MZlDl3KtYSCaqqQ7799INKiKXCH3oYJdCUGSlp3sgz3Hs1zs+2OfVVPoEA0=;
Received: from mout.kundenserver.de ([217.72.192.74])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i0OvV-00Aydf-8W
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 21 Aug 2019 11:37:18 +0000
Received: from [192.168.1.110] ([77.2.122.154]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MEmtx-1i2qxq3AXj-00GHHv; Wed, 21 Aug 2019 13:37:09 +0200
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
To: =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali.rohar@gmail.com>
References: <1566298572-12409-1-git-send-email-info@metux.net>
 <1566298572-12409-2-git-send-email-info@metux.net>
 <20190820111719.7blyk5jstgwde2ae@pali>
 <02f5b546-5c30-4998-19b2-76b816a35371@metux.net>
 <20190820142204.x352bftlvnb7s57n@pali>
Organization: metux IT consult
Message-ID: <2cd7178e-9713-7678-a02d-dde91e990c1e@metux.net>
Date: Wed, 21 Aug 2019 13:37:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190820142204.x352bftlvnb7s57n@pali>
Content-Language: en-US
X-Provags-ID: V03:K1:TAM1S1diYp1x9eYX3uAvyZMSjHGQSUnUc1WSjiNRocDkmneY3z0
 iXGpXmT1t2oyCz25vKG8Y6k73a4SVxurukNsHHcpLnYsf3xT/CACA1PIZoz9t4/ZHw2NPQv
 bEz28CK1uMnfHL2hWdEgJYdtZFI2guJPEO7blvOtHkh6qZH3VEfNA1xdjYIUEVvPGNgVImd
 iaYmz6eLxcUFsX4ZVbJWg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9eE30JboH3Q=:m0XNk5lqcwxYcs38IkYSz0
 s5btQg24tWKE1ZN2aB/frmeLpCh1qytc6l4d2WnDlqPNZNeI4+kptRhJW/uJxL9Md8UJGHLIZ
 idyXKUyLjqZmL2zScviARSetepvK5DzGY0GYQVENhjnv99vvSnrhTzxVYRCkyWZFGlWCOCcj8
 79PO6s0b72W/Bv7tA6gfWVeVhyUMtZaUU8WkRRFj/IqdCaaeHQl3BHWLGNdL3iT6RCxNn+eaz
 hcp9cyuUgwVXTIb7JPJdPp8v8owDjRxqWBwF496ZOhblgrryfumOsthUkm0S3BW8fHUeAd4q/
 y9RrjdPdEcdwlyfcboj2+fppz4Rggjrj+INLGDcQKZxDn2gKL6ly23bojt3z5/eOPlsvVDeI7
 KzUjp2jmKYB1MBI9nFB08NeJkxXmJFXLsR1bWvE2/vsS/pZmJp5XoFLlbuJmGElfamOrJkXKO
 7fIgxZsUSDAukblKdkooJgvbzFaQpQocoplEyhzlhpiO4f7mocYJ0gUo6IIjCiHDnLhBOx+YU
 dzP/m5qeacJimpZUebMsGXHsr/v/Ycc1tFV8HnU/KUa3On7s5OQE1BaAHqA4VTccmNAVA34fX
 nkU4x8mq0op/z5NRbKA/IcXWt51iFKb9dIk/KO4DDWETOecFzOnhbRrfAcwGBWAcScywgQSok
 KHd6BbV3j/pLbE+5hmDbnWkupOo8q4ueH6vmny3Q0Q+wEl2RcTH3XSj/V1YN2US6SRmuzCUl3
 Ob4A8PqzIbXp321LyAArYddZXW9Kd31isTcgb4Hks6QfLRAL+5DnMA1ERQw=
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [217.72.192.74 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: metux.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1i0OvV-00Aydf-8W
X-Mailman-Approved-At: Wed, 21 Aug 2019 11:40:16 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 2/2] drivers: input: mouse: alps: drop
 unneeded likely() call around IS_ERR()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, dmitry.torokhov@gmail.com,
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gMjAuMDguMTkgMTY6MjIsIFBhbGkgUm9ow6FyIHdyb3RlOgoKSGksCgo+PiBJbiB0aGF0IGNh
c2UsIHdvdWxkbid0IGEgY29tbWVudCBiZSBtb3JlIHN1aXRhYmxlIGZvciB0aGF0ID8KPiAKPiBB
bmQgd2h5IHRvIGFkZCBjb21tZW50IGlmIGN1cnJlbnQgc3RhdGUgb2YgY29kZSBpcyBtb3JlLXJl
YWRhYmxlIGFuZAo+IGRvZXMgbm90IG5lZWQgaXQ/CgpSZWFkYWJpbGl0eSBpcyBwcm9iYWJseSBh
IGJpdCBzdWJqZWN0aXZlIDpwCgpXaXRoIG9uZ29pbmcgZWZmb3J0cyBvZiBhdXRvbWF0aWNhbGx5
IGlkZW50aWZ5aW5nIHJlZHVuZGFudCBjb2RlIHBhdGhlcywKdGhlIGN1cnJlbnQgc2l0dWF0aW9u
IGNhdXNlcyB0aGUgc2FtZSBkaXNjdXNzaW9uIGNvbWluZyB1cCBvdmVyIGFuZCBvdmVyCmFnYWlu
LiBTb29uZXIgb3IgbGF0ZXIgc29tZWJvZHkgbWlnaHQgZ2V0IHRoZSBpZGVhIHRvIGFkZCBhIGNv
bW1lbnQgb24KdGhhdCBsaW5lLCB0aGF0IGl0J3MgZXhhY3RseSBhcyBpbnRlbnRlZCA6bwoKT1RP
SCwgSSdtIHVuc3VyZSB3aGV0aGVyIGl0J3MgaW1wb3J0YW50IHRvIGRvY3VtZW50IHRoYXQgaXMg
cGFydGljdWxhcgplcnJvciBwYXRoIGlzIHVubGlrZWx5LCB3aGlsZSB3ZSBkb24ndCBkbyBpdCBp
biB0aG91c2FuZHMgb2Ygb3RoZXIKcGxhY2VzLiBJTUhPLCBlcnJvciBwYXRoZXMgYXJlIHN1cHBv
c2VkIHRvIGJlIHVubGlrZWx5IGJ5IG5hdHVyZSwKb3RoZXJ3aXNlIHdlIHdvdWxkbid0IGNhbGwg
aXQgYW4gZXJyb3Igc2l0dWF0aW9uIDstKQoKPiBQZW9wbGUgbm9ybWFsbHkgYWRkIGNvbW1lbnRz
IHRvIGNvZGUgd2hpY2ggaXMgcHJvYmxlbWF0aWMgdG8gdW5kZXJzdGFuZAo+IG9yIGlzIHNvbWVo
b3cgdHJpY2t5LCBubyBzbyBvYnZpb3VzIG9yIGRvY3VtZW50IGhvdyBzaG91bGQgY29kZSBiZWhh
dmUuCgpZZXMsIGJ1dCBpc24ndCB0aGlzIGNhc2Ugc28gb2J2aW91cyB0aGF0IGl0IGRvZXNuJ3Qg
bmVlZCBhbnkKZG9jdW1lbnRhdGlvbiBhdCBhbGwgPyBJcyBpdCBzbyBpbXBvcnRhbnQgdG8gbmV2
ZXIgZXZlciBmb3JnZXQgdGhhdCB0aGlzCnBhcnRpY3VsYXIgcGF0aCBpcyBhIHJhcmUgc2l0dWF0
aW9uID8KCkkgbWlnaHQgYmUgd3JvbmcsIGJ1dCBJTUhPIHRoZSBsaWtlbHkoKS91bmxpa2VseSgp
IG1hY3JvcyBoYXZlIGJlZW4KaW50cm9kdWNlZCBmb3Igb3B0aW1pemF0aW9uIChiZXR0ZXIgcGlw
ZWxpbmUgb3B0aW1pemF0aW9uIGZvciB0aGUKZnJlcXVlbnQgY2FzZXMpLgoKPiBQZW9wbGUgZmly
c3QgbmVlZCB0byB1bmRlcnN0YW5kIHRoYXQgc3RhdGljIGNvZGUgYW5hbHlzaXMgY2Fubm90IHdv
cmsKPiAxMDAlIHJlbGlhYmx5IGFuZCBhbHdheXMgaXMgbmVlZGVkIHRvIHByb3Blcmx5IHJldmll
dyBjaGFuZ2VzLgoKWWVzLCBidXQgd2Ugc2VlIHRoYXQgdGhpcyBwYXJ0aWN1bGFyIGNhc2UgaXMg
Y29taW5nIHVwIGFnYWluIGFuZCBhZ2FpbiwKZnJvbSBkaWZmZXJlbnQgcGVvcGxlLCB3aG8gY2Fu
J3Qga25vdyB0aGUgYmFja2dyb3VuZCBvZiB0aGlzIChub2JvZHkKY2FuIHJlYWQgdGhlIHdob2xl
IGxrbWwgYW5kIHJlbWVtYmVyIGV2ZXJ5dGhpbmcpLiBUaGlzIGNvdWxkIGJlCnByZXZlbnRlZCBi
eSBhZGRpbmcgYSBjb21tZW50IG9uIHRoYXQgbGluZSwgYnV0IHRoZW4gdGhlIG1hY3JvIGNhbGwK
anVzdCBmb3IgZG9jdW1lbnRhdGlvbiB3b3VsZG4ndCBiZSBuZWNlc3NhcnkgYW55bW9yZS4KCj4g
QW5kIGlmIHRoZSBvbmx5IHJlYXNvbiBmb3IgdGhpcyBjaGFuZ2UgaXMgdG8gc2F0aXNmeSBzb21l
IHN0YXRpYyBjb2RlCj4gYW5hbHlzaXMgcHJvZ3JhbSwKCkFjdHVhbGx5LCBpdCdzIG1vcmUgZm9y
IHBlb3BsZSB3aG8ncmUgdXNpbmcgdGhlIHRvb2xzIGZvciB0aGUgcHVycG9zZQpvZiB0aWR5aW5n
IHVwIHRoZSBjb2RlIGFuZCBmaW5kIHBvdGVudGlhbCBwcm9ibGVtcy4gVGhleSBuZWVkIHNvbWUK
aW5mb3JtYXRpb24gdG8gYWN0IG9uIHByb3Blcmx5LCB3aGljaCBpcyBjdXJyZW50bHkgbWlzc2lu
ZyAuLi4KCj4gd291bGQgbm90IGl0IGJldHRlciB0byB0ZWFjaCB0aGlzIHByb2dyYW0gdG8gbm8K
PiBnZW5lcmF0ZSBzdWNoIGZhbHNlLXBvc2l0aXZlIHJlc3VsdHM/CgpPa2F5LCBidXQgaG93IHRv
IGRvIHRoYXQgcHJhY3RpY2FsbHkgPyBUaGVyZSdzIG5vIGluZm9ybWF0aW9uIGluIHRoZQpjb2Rl
IHdoaWNoIG5laXRoZXIgc29tZSB0b29sIG5vciBhbnkgaHVtYW4gY291bGQgcmVjb2duaXplIHRo
aXMgZmFsc2UKYWxhcm0uIFRoYXQgaW5mb3JtYXRpb24gaXMganVzdCBpbiB5b3VyIGJyYWluLCBu
b3cgYWxzbyBpbiBtaW5lLCBhbmQKdGhlIG90aGVyIGZvbGtzIHdobyBwcmV2aW91c2x5IHByb3Bv
c2VkIHRoZSBzYW1lIGNoYW5nZSAoYXNzdW1pbmcgdGhleQpzdGlsbCByZWNhbGwgaXQgYWZ0ZXIg
eWVhcnMpLgoKQmxhY2tsaXN0aW5nIGRvZXNuJ3Qgc2VlbSB0byBiZSBhIGdvb2QgaWRlYSBpbiB0
aGUgbG9uZyBydW4uIE9uY2UgZ29pbmcKdGhhdCByb3V0ZSwgc3VjaCBibGFja2xpc3RzIGdyb3cg
cXVpY2tseSBhbmQgZ2V0IGhhcmQgdG8gbWFpbnRhaW4gKHdlCm5vdyBoYXZlIHR3byBlbnRpcmVs
eSBzZXBhcmF0ZWx5IG1haW50YWluZWQgZGF0YSBzb3VyY2VzIHRoYXQgbmVlZCB0bwpiZSBzeW5j
ZWQgbWFudWFsbHksIHdoZW4gc29tZXRoaW5nIGNoYW5nZXMpLgoKSSBiZWxpZXZlIHRoZSBjb2Rl
IHNob3VsZCBiZSBraW5kYSBzZWxmLWRvY3VtZW50aW5nLCBzbyB0aGUgcmVhZGVyCnNob3VsZG4n
dCBuZWVkIGFueSBkZXRhaWxlZCBzcGVjaWFsIGtub3dsZWRnZSB0byB1bmRlcnN0YW5kIGl0LiBJ
TUhPLAp3aGVuIHN1Y2ggZGlzY3Vzc2lvbnMgb24gYWN0dWFsIGltcGxlbWVudGF0aW9uIGRldGFp
bHMgY29tZSB1cCwgdGhlCmNvZGUgaXNuJ3QgZXhwcmVzc2l2ZSBlbm91Z2guCgpIb3cgY2FuIHdl
IGltcHJvdmUgdGhlIHNpdHVhdGlvbiA/CgpTaGFsbCB3ZSBjb25zaWRlciBpbnRyb2R1Y2luZyB5
ZXQgYW5vdGhlciBtYWNybyAoZXhwbGljaXRseSBkaWZmZXJlbnQKbmFtZSkgZm9yIHN0YXRpbmcv
ZG9jdW1lbnRpbmcgc3VjaCBjYXNlcyA/CgoKLS1tdHgKCi0tIApFbnJpY28gV2VpZ2VsdCwgbWV0
dXggSVQgY29uc3VsdApGcmVlIHNvZnR3YXJlIGFuZCBMaW51eCBlbWJlZGRlZCBlbmdpbmVlcmlu
ZwppbmZvQG1ldHV4Lm5ldCAtLSArNDktMTUxLTI3NTY1Mjg3CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtTlRGUy1EZXYgbWFpbGluZyBsaXN0
CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
