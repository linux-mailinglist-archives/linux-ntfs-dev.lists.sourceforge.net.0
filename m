Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BEF4038FB
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Sep 2021 13:40:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mNvvr-0002w1-Hb; Wed, 08 Sep 2021 11:39:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>) id 1mIUgB-0005VA-S4
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 24 Aug 2021 11:33:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=66CH6bEidrjofLi6OYUi39WmF06ox5BLHQpv9zF540A=; b=YUsT0YzI8gdyiQT4ymjZwxFgJZ
 cde9gZ7sJoGKK6YZq4DMBnHpoKyb+d5WnaV8pkebXRh2y3MF10f/WT9qYVS4qMD44MPPmm/yUAeS+
 OHMOt636KDP6RAMtpBO50ZmbEH7Fh9LFyzMoQk7fOyxso3SRrsI72vwOpyXETq1ojD0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=66CH6bEidrjofLi6OYUi39WmF06ox5BLHQpv9zF540A=; b=OGmbZ3IiYg/wd9+2899YBgcizD
 zfgjs9I9DFHOqNvKcPSHF0uhf0JDZ0+eXLwr4F/tGIVN3BFJ2JQxGWZO2AsM4GMl1xOcf/Dto260N
 Rf4SeYT65pnVl4KQRNJ2UOwFo5//w+0ssr8PvctayY/oh4G78WxnFVATVRx21jpPeZPM=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIUg9-00GnSx-GU
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 24 Aug 2021 11:33:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B4E47610F8;
 Tue, 24 Aug 2021 11:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629804788;
 bh=2Hc2s5MP8VgjPj7miIH53TIMlz5XScjpv+wx8O+JKHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VHD2NIU/6yYZ1HNWv2I2wmTJNvlnhCJO30OIr+QFykf75+O0TDyWO8ocfcXI/f9YK
 yRMY7TMhVlrQ+eFRL8V/StoL3NpCmS1tXo47Ahu9d5Ia7sR+y6f7OimzzepX0wYtN8
 8DkyNbRbPZn6Vcnx0DWgwlZZ6cKBOid3LgG2xMQc77XDE6KGsiBg8tjQc2V8jYZck4
 GpvZ8xp2wIx7e1cgOmP7yGV+LMaXUC67JTlP2qn8HhMJPri2pcn8uI3CNXImW5FMpq
 qT0BC2CKxrdShXFFaLMdb8mHsz6/jYYGehQaLgRtBrLKHgieuj/CU7BtJRMYH/X4vw
 9U3RsSqf0FBHw==
Received: by pali.im (Postfix)
 id 43EB67A5; Tue, 24 Aug 2021 13:33:05 +0200 (CEST)
Date: Tue, 24 Aug 2021 13:33:04 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20210824113304.eabzy7ulbuouzlac@pali>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-5-almaz.alexandrovich@paragon-software.com>
 <20210822122003.kb56lexgvv6prf2t@pali>
 <20210822143133.4meiisx2tbfgrz5l@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210822143133.4meiisx2tbfgrz5l@kari-VirtualBox>
User-Agent: NeoMutt/20180716
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sunday 22 August 2021 17:31:33 Kari Argillander wrote:
   > On Sun, Aug 22, 2021 at 02:20:03PM +0200, Pali Rohár wrote: > > On Thursday
    29 July 2021 16:49:37 Konstantin Komarov wrote: > > > diff --gi [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mIUg9-00GnSx-GU
X-Mailman-Approved-At: Wed, 08 Sep 2021 11:39:39 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 04/10] fs/ntfs3: Add file
 operations and implementation
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
Cc: ebiggers@kernel.org, andy.lavr@gmail.com, nborisov@suse.com,
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com, hch@lst.de,
 mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gU3VuZGF5IDIyIEF1Z3VzdCAyMDIxIDE3OjMxOjMzIEthcmkgQXJnaWxsYW5kZXIgd3JvdGU6
Cj4gT24gU3VuLCBBdWcgMjIsIDIwMjEgYXQgMDI6MjA6MDNQTSArMDIwMCwgUGFsaSBSb2jDoXIg
d3JvdGU6Cj4gPiBPbiBUaHVyc2RheSAyOSBKdWx5IDIwMjEgMTY6NDk6MzcgS29uc3RhbnRpbiBL
b21hcm92IHdyb3RlOgo+ID4gPiBkaWZmIC0tZ2l0IGEvZnMvbnRmczMvZmlsZS5jIGIvZnMvbnRm
czMvZmlsZS5jCj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAw
MC4uYjQzNjljNjFhCj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvZnMvbnRmczMvZmls
ZS5jCj4gPiA+IEBAIC0wLDAgKzEsMTEzMCBAQAo+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAKPiA+ID4gKy8qCj4gPiA+ICsgKgo+ID4gPiArICogQ29weXJpZ2h0IChD
KSAyMDE5LTIwMjEgUGFyYWdvbiBTb2Z0d2FyZSBHbWJILCBBbGwgcmlnaHRzIHJlc2VydmVkLgo+
ID4gPiArICoKPiA+ID4gKyAqICByZWd1bGFyIGZpbGUgaGFuZGxpbmcgcHJpbWl0aXZlcyBmb3Ig
bnRmcy1iYXNlZCBmaWxlc3lzdGVtcwo+ID4gPiArICovCj4gPiA+ICsjaW5jbHVkZSA8bGludXgv
YmFja2luZy1kZXYuaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9idWZmZXJfaGVhZC5oPgo+ID4g
PiArI2luY2x1ZGUgPGxpbnV4L2NvbXBhdC5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2ZhbGxv
Yy5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2ZpZW1hcC5oPgo+ID4gPiArI2luY2x1ZGUgPGxp
bnV4L21zZG9zX2ZzLmg+IC8qIEZBVF9JT0NUTF9YWFggKi8KPiA+ID4gKyNpbmNsdWRlIDxsaW51
eC9ubHMuaD4KPiA+ID4gKwo+ID4gPiArI2luY2x1ZGUgImRlYnVnLmgiCj4gPiA+ICsjaW5jbHVk
ZSAibnRmcy5oIgo+ID4gPiArI2luY2x1ZGUgIm50ZnNfZnMuaCIKPiA+ID4gKwo+ID4gPiArc3Rh
dGljIGludCBudGZzX2lvY3RsX2ZpdHJpbShzdHJ1Y3QgbnRmc19zYl9pbmZvICpzYmksIHVuc2ln
bmVkIGxvbmcgYXJnKQo+ID4gPiArewo+ID4gPiArCXN0cnVjdCBmc3RyaW1fcmFuZ2UgX191c2Vy
ICp1c2VyX3JhbmdlOwo+ID4gPiArCXN0cnVjdCBmc3RyaW1fcmFuZ2UgcmFuZ2U7Cj4gPiA+ICsJ
c3RydWN0IHJlcXVlc3RfcXVldWUgKnEgPSBiZGV2X2dldF9xdWV1ZShzYmktPnNiLT5zX2JkZXYp
Owo+ID4gPiArCWludCBlcnI7Cj4gPiA+ICsKPiA+ID4gKwlpZiAoIWNhcGFibGUoQ0FQX1NZU19B
RE1JTikpCj4gPiA+ICsJCXJldHVybiAtRVBFUk07Cj4gPiA+ICsKPiA+ID4gKwlpZiAoIWJsa19x
dWV1ZV9kaXNjYXJkKHEpKQo+ID4gPiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7Cj4gPiA+ICsKPiA+
ID4gKwl1c2VyX3JhbmdlID0gKHN0cnVjdCBmc3RyaW1fcmFuZ2UgX191c2VyICopYXJnOwo+ID4g
PiArCWlmIChjb3B5X2Zyb21fdXNlcigmcmFuZ2UsIHVzZXJfcmFuZ2UsIHNpemVvZihyYW5nZSkp
KQo+ID4gPiArCQlyZXR1cm4gLUVGQVVMVDsKPiA+ID4gKwo+ID4gPiArCXJhbmdlLm1pbmxlbiA9
IG1heF90KHUzMiwgcmFuZ2UubWlubGVuLCBxLT5saW1pdHMuZGlzY2FyZF9ncmFudWxhcml0eSk7
Cj4gPiA+ICsKPiA+ID4gKwllcnIgPSBudGZzX3RyaW1fZnMoc2JpLCAmcmFuZ2UpOwo+ID4gPiAr
CWlmIChlcnIgPCAwKQo+ID4gPiArCQlyZXR1cm4gZXJyOwo+ID4gPiArCj4gPiA+ICsJaWYgKGNv
cHlfdG9fdXNlcih1c2VyX3JhbmdlLCAmcmFuZ2UsIHNpemVvZihyYW5nZSkpKQo+ID4gPiArCQly
ZXR1cm4gLUVGQVVMVDsKPiA+ID4gKwo+ID4gPiArCXJldHVybiAwOwo+ID4gPiArfQo+ID4gPiAr
Cj4gPiA+ICtzdGF0aWMgbG9uZyBudGZzX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxwLCB1MzIgY21k
LCB1bnNpZ25lZCBsb25nIGFyZykKPiA+ID4gK3sKPiA+ID4gKwlzdHJ1Y3QgaW5vZGUgKmlub2Rl
ID0gZmlsZV9pbm9kZShmaWxwKTsKPiA+ID4gKwlzdHJ1Y3QgbnRmc19zYl9pbmZvICpzYmkgPSBp
bm9kZS0+aV9zYi0+c19mc19pbmZvOwo+ID4gPiArCXUzMiBfX3VzZXIgKnVzZXJfYXR0ciA9ICh1
MzIgX191c2VyICopYXJnOwo+ID4gPiArCj4gPiA+ICsJc3dpdGNoIChjbWQpIHsKPiA+ID4gKwlj
YXNlIEZBVF9JT0NUTF9HRVRfQVRUUklCVVRFUzoKPiA+ID4gKwkJcmV0dXJuIHB1dF91c2VyKGxl
MzJfdG9fY3B1KG50ZnNfaShpbm9kZSktPnN0ZF9mYSksIHVzZXJfYXR0cik7Cj4gPiA+ICsKPiA+
ID4gKwljYXNlIEZBVF9JT0NUTF9HRVRfVk9MVU1FX0lEOgo+ID4gPiArCQlyZXR1cm4gcHV0X3Vz
ZXIoc2JpLT52b2x1bWUuc2VyX251bSwgdXNlcl9hdHRyKTsKPiA+ID4gKwo+ID4gPiArCWNhc2Ug
RklUUklNOgo+ID4gPiArCQlyZXR1cm4gbnRmc19pb2N0bF9maXRyaW0oc2JpLCBhcmcpOwo+ID4g
PiArCX0KPiA+ID4gKwlyZXR1cm4gLUVOT1RUWTsgLyogSW5hcHByb3ByaWF0ZSBpb2N0bCBmb3Ig
ZGV2aWNlICovCj4gPiA+ICt9Cj4gPiAKPiA+IEhlbGxvISBXaGF0IHdpdGggdGhlc2UgdHdvIEZB
VF8qIGlvY3RscyBpbiBOVEZTIGNvZGU/IFNob3VsZCBOVEZTIGRyaXZlcgo+ID4gcmVhbGx5IGlt
cGxlbWVudHMgRkFUIGlvY3Rscz8gQmVjYXVzZSB0aGV5IGxvb2tzIGxpa2Ugc29tZSBsZWdhY3kg
QVBJCj4gPiB3aGljaCBpcyBldmVuIG5vdCBpbXBsZW1lbnRlZCBieSBjdXJyZW50IG50ZnMua28g
ZHJpdmVyLgo+IAo+IEkgd2FzIGxvb2tpbmcgc2FtZSB0aGluZyB3aGVuIGRvaW5nIG5ldyBpb2N0
bCBmb3Igc2h1dGRvd24uIFRoZXNlCj4gc2hvdWxkIGJlIGRyb3BwZWQgY29tcGxldGx5IGJlZm9y
ZSB0aGlzIGdldHMgdXBzdHJlYW0uIFRoZW4gd2UgaGF2ZQo+IG1vcmUgdGltZSB0byB0aGluayB3
aGF0IGlvY3RsIGNhbGxzIHNob3VsZCB1c2VkIGFuZCB3aGljaCBhcmUKPiBuZWNlc3NhcnJ5LgoK
T2suIEkgYWdyZWUsIHRoZXNlIEZBVCogaW9jdGxzIHNob3VsZCBub3QgYmUgaW5jbHVkZWQgaW50
byB1cHN0cmVhbSBpbgp0aGlzIHdheS4gTGF0ZXIgd2UgY2FuIGRlY2lkZSBob3cgdG8gaGFuZGxl
IHRoZW0uLi4KCj4gPiBTcGVjaWFsbHksIHNob3VsZCBGUyBkcml2ZXIgaW1wbGVtZW50cyBpb2N0
bCBmb3IgZ2V0IHZvbHVtZSBpZCB3aGljaCBpbgo+ID4gdGhpcyB3YXk/IEJlY2F1c2UgYmFzaWNh
bGx5IGV2ZXJ5IGZzIGhhdmUgc29tZSBraW5kIG9mIHV1aWQgLyB2b2x1bWUgaWQKPiA+IGFuZCB0
aGV5IGNhbiBiZSBhbHJlYWR5IHJldHJpZXZlZCBieSBhcHByb3ByaWF0ZSB1c2Vyc3BhY2UgdG9v
bC4KPiAKPiBNeSBmaXJzdCBpbXByZXNzaW9uIHdoZW4gbG9va2luZyB0aGlzIGNvZGUgd2FzIHRo
YXQgdGhpcyBpcyBqdXN0IGNvcHkKPiBwYXN0ZSB3b3JrIGZyb20gZmF0IGRyaXZlci4gRklUUklN
IGlzIGV4YWN0bHkgdGhlIHNhbWUuIFdob2V2ZXIKPiBjb3B5ZWQgaXQgbXVzdCBoYXZlIG5vdCB0
aGlua2VkIHRoaXMgdmVyeSBjbG9zbHkuIEdvb2QgdGhpbmcgeW91Cj4gYnJpbmdpbmcgdGhpcyB1
cC4KPiAKPiBJIGRpZG4ndCB3YW50IHRvIGp1c3QgeWV0IGJlY2F1c2UgdGhlcmUgaXMgcXVpdGUg
bG90IG1lc3NhZ2VzIGFuZAo+IHRoaW5ncyB3aGljaCBhcmUgaW4gS29tYXJvdiB0b2RvIGxpc3Qu
IEhvcGVmdWxseSByYWRpbyBzaWxlbmNlIHdpbGwKPiBlbmQgc29vbi4gSSdtIGFmcmFpZCBuZXh0
IG1lc3NhZ2Ugd2lsbCBiZSAiUGxlYXNlIHB1bGwiIGZvciBMaW51cwo+IGFuZCB0aGVuIGl0IGNh
bm5vdCBoYXBwZW5kIGJlY2F1c2Ugb2YgcmFkaW8gc2lsZW5jZS4KPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5n
IGxpc3QKTGludXgtTlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
