Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0179E6564EE
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 26 Dec 2022 21:37:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1p9uDY-0004rR-2k;
	Mon, 26 Dec 2022 20:37:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMo-0006Sd-QC;
 Mon, 26 Dec 2022 14:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4V57qv/a7EiE2ppaRG/HyKZfTTXYQY+IxWwnoxavQ/8=; b=BskZx+/gPjApFDORA/YhNq1WOe
 zctqQiLuSJ4DHZscK/f4I4wNvlA+DiAfJ/VHah8OvXOi4Oe+eTGfwxewlpNf+KkuGZpAt6jBwaVO3
 iqI2c73U3yVdzoBT/ucSyRi53jvP1aUhWuyKHOHDRCQ5xPt0mlm4PGlvxjjUAS/6JQNY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4V57qv/a7EiE2ppaRG/HyKZfTTXYQY+IxWwnoxavQ/8=; b=WLECs2Q0F9sFedyenmdJ6K+M0r
 W3KmRWvqI8Fom+0rWwqh/O27Ynw3Y+mg6dXr0AibMW/HWG7hBJP7Ofo1PSfHh/J4bQMs33pjiyFiE
 36tgQPApO5+R+Cex6J1pT/LEcsoFQiT16Qy2vW9mi5j709MfoWsvrk8k3wD813jnRpNo=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMl-0002C0-FN; Mon, 26 Dec 2022 14:22:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1BCD1B80D1C;
 Mon, 26 Dec 2022 14:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57260C433F0;
 Mon, 26 Dec 2022 14:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064523;
 bh=+iN0Mmisxx535Wrdu3nGmwSoR4sCrIL6dvBb31QghsE=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=fxaBgKBUOjxEifZXzIHKavSrzqT4XX0H1ndS42m2r4CDPpQyo6npRkR0RrBwlVTW5
 Vjr/NW77j/sgtdxZ2bttJm5DXQMYqX//OQwM5IIWXQL7/wMyhkDWaudLae5d0m8Jz/
 2e++wXrdHcc4sLwcEd0vCAN3aX9ZpZj4nnrs0RH6h62DiL3X7Zpi+Nc1f4vxMT10BG
 EC8DMCpenOPsU/lffuSNAx9k4daYC7FyakkBBVmPFsjl9pCgNAwB77/SzaMevnkhCo
 SKBqrBSkjUiG53YI2wiP9oED5K4iHk2R5KoPvM47cfbB0S58OTj5GLvO1nbw3Sq7R4
 oRR0LsAiwQ0CA==
Received: by pali.im (Postfix)
 id 16AC19E4; Mon, 26 Dec 2022 15:22:01 +0100 (CET)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Anton Altaparmakov <anton@tuxera.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>, Steve French <sfrench@samba.org>,
 Paulo Alcantara <pc@cjr.nz>, Ronnie Sahlberg <lsahlber@redhat.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Pavel Machek <pavel@ucw.cz>,
 Christoph Hellwig <hch@infradead.org>,
 Kari Argillander <kari.argillander@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>
Date: Mon, 26 Dec 2022 15:21:33 +0100
Message-Id: <20221226142150.13324-2-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Currently iocharset=utf8 mount option is broken and error
 is printed to dmesg when it is used. To use UTF-8 as iocharset, it is required
 to use utf8=1 mount option. Fix iocharset=utf8 mount option to use be
 equivalent
 to the utf8=1 mount option and remove printing error from dmesg. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMl-0002C0-FN
X-Mailman-Approved-At: Mon, 26 Dec 2022 20:37:01 +0000
Subject: [Linux-NTFS-Dev] [RFC PATCH v2 01/18] fat: Fix iocharset=utf8 mount
 option
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Q3VycmVudGx5IGlvY2hhcnNldD11dGY4IG1vdW50IG9wdGlvbiBpcyBicm9rZW4gYW5kIGVycm9y
IGlzIHByaW50ZWQgdG8KZG1lc2cgd2hlbiBpdCBpcyB1c2VkLiBUbyB1c2UgVVRGLTggYXMgaW9j
aGFyc2V0LCBpdCBpcyByZXF1aXJlZCB0byB1c2UKdXRmOD0xIG1vdW50IG9wdGlvbi4KCkZpeCBp
b2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24gdG8gdXNlIGJlIGVxdWl2YWxlbnQgdG8gdGhlIHV0
Zjg9MSBtb3VudApvcHRpb24gYW5kIHJlbW92ZSBwcmludGluZyBlcnJvciBmcm9tIGRtZXNnLgoK
RkFUIGJ5IGRlZmluaXRpb24gaXMgY2FzZS1pbnNlbnNpdGl2ZSBidXQgY3VycmVudCBMaW51eCBp
bXBsZW1lbnRhdGlvbiBpcwpjYXNlLXNlbnNpdGl2ZSBmb3Igbm9uLUFTQ0lJIGNoYXJhY3RlcnMg
d2hlbiBVVEYtOCBpcyB1c2VkLiBUaGlzIHBhdGNoIGRvZXMKbm90IGNoYW5nZSB0aGlzIFVURi04
IGJlaGF2aW9yLiBPbmx5IG1vcmUgY29tbWVudHMgaW4gZmF0X3V0Zjhfc3RybmljbXAoKQpmdW5j
dGlvbiBhcmUgYWRkZWQgYWJvdXQgaXQuCgpBZnRlciB0aGlzIHBhdGNoIGlvY2hhcnNldD11dGY4
IHN0YXJ0cyB3b3JraW5nLCBzbyB0aGVyZSBpcyBubyBuZWVkIHRvIGhhdmUKc2VwYXJhdGUgY29u
ZmlnIG9wdGlvbiBGQVRfREVGQVVMVF9VVEY4IGFzIEZBVF9ERUZBVUxUX0lPQ0hBUlNFVCBmb3Ig
dXRmOAphbHNvIHN0YXJ0cyB3b3JraW5nLiBTbyByZW1vdmUgcmVkdW5kYW50IGNvbmZpZyBvcHRp
b24gRkFUX0RFRkFVTFRfVVRGOC4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtl
cm5lbC5vcmc+Ci0tLQogRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy92ZmF0LnJzdCB8IDEzICsr
LS0tLS0tLS0tLS0KIGZzL2ZhdC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgfCAxOSArLS0t
LS0tLS0tLS0tLS0tLS0tCiBmcy9mYXQvZGlyLmMgICAgICAgICAgICAgICAgICAgICAgIHwgMTcg
KysrKysrKy0tLS0tLS0tLS0KIGZzL2ZhdC9mYXQuaCAgICAgICAgICAgICAgICAgICAgICAgfCAy
MiArKysrKysrKysrKysrKysrKysrKysrCiBmcy9mYXQvaW5vZGUuYyAgICAgICAgICAgICAgICAg
ICAgIHwgMjggKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogZnMvZmF0L25hbWVpX3ZmYXQu
YyAgICAgICAgICAgICAgICB8IDI2ICsrKysrKysrKysrKysrKysrKystLS0tLS0tCiA2IGZpbGVz
IGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDYzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvdmZhdC5yc3QgYi9Eb2N1bWVudGF0aW9uL2ZpbGVz
eXN0ZW1zL3ZmYXQucnN0CmluZGV4IDc2MGE0ZDgzZmRmOS4uMjhjYWNiYTdiYjlhIDEwMDY0NAot
LS0gYS9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL3ZmYXQucnN0CisrKyBiL0RvY3VtZW50YXRp
b24vZmlsZXN5c3RlbXMvdmZhdC5yc3QKQEAgLTY1LDE5ICs2NSwxMCBAQCBWRkFUIE1PVU5UIE9Q
VElPTlMKIAlpbiBVbmljb2RlIGZvcm1hdCwgYnV0IFVuaXggZm9yIHRoZSBtb3N0IHBhcnQgZG9l
c24ndAogCWtub3cgaG93IHRvIGRlYWwgd2l0aCBVbmljb2RlLgogCUJ5IGRlZmF1bHQsIEZBVF9E
RUZBVUxUX0lPQ0hBUlNFVCBzZXR0aW5nIGlzIHVzZWQuCi0KLQlUaGVyZSBpcyBhbHNvIGFuIG9w
dGlvbiBvZiBkb2luZyBVVEYtOCB0cmFuc2xhdGlvbnMKLQl3aXRoIHRoZSB1dGY4IG9wdGlvbi4K
LQotLi4gbm90ZTo6IGBgaW9jaGFyc2V0PXV0ZjhgYCBpcyBub3QgcmVjb21tZW5kZWQuIElmIHVu
c3VyZSwgeW91IHNob3VsZCBjb25zaWRlcgotCSAgdGhlIHV0Zjggb3B0aW9uIGluc3RlYWQuCisJ
Kip1dGY4KiogaXMgc3VwcG9ydGVkIHRvbyBhbmQgcmVjb21tZW5kZWQgdG8gdXNlLgogCiAqKnV0
Zjg9PGJvb2w+KioKLQlVVEYtOCBpcyB0aGUgZmlsZXN5c3RlbSBzYWZlIHZlcnNpb24gb2YgVW5p
Y29kZSB0aGF0Ci0JaXMgdXNlZCBieSB0aGUgY29uc29sZS4gSXQgY2FuIGJlIGVuYWJsZWQgb3Ig
ZGlzYWJsZWQKLQlmb3IgdGhlIGZpbGVzeXN0ZW0gd2l0aCB0aGlzIG9wdGlvbi4KLQlJZiAndW5p
X3hsYXRlJyBnZXRzIHNldCwgVVRGLTggZ2V0cyBkaXNhYmxlZC4KLQlCeSBkZWZhdWx0LCBGQVRf
REVGQVVMVF9VVEY4IHNldHRpbmcgaXMgdXNlZC4KKwlBbGlhcyBmb3IgYGBpb2NoYXJzZXQ9dXRm
OGBgIG1vdW50IG9wdGlvbi4KIAogKip1bmlfeGxhdGU9PGJvb2w+KioKIAlUcmFuc2xhdGUgdW5o
YW5kbGVkIFVuaWNvZGUgY2hhcmFjdGVycyB0byBzcGVjaWFsCmRpZmYgLS1naXQgYS9mcy9mYXQv
S2NvbmZpZyBiL2ZzL2ZhdC9LY29uZmlnCmluZGV4IDIzOGNjNTVmODRjNC4uZTk4YWFhM2JiNTVi
IDEwMDY0NAotLS0gYS9mcy9mYXQvS2NvbmZpZworKysgYi9mcy9mYXQvS2NvbmZpZwpAQCAtOTMs
MjkgKzkzLDEyIEBAIGNvbmZpZyBGQVRfREVGQVVMVF9JT0NIQVJTRVQKIAkgIGxpa2UgRkFUIHRv
IHVzZS4gSXQgc2hvdWxkIHByb2JhYmx5IG1hdGNoIHRoZSBjaGFyYWN0ZXIgc2V0CiAJICB0aGF0
IG1vc3Qgb2YgeW91ciBGQVQgZmlsZXN5c3RlbXMgdXNlLCBhbmQgY2FuIGJlIG92ZXJyaWRkZW4K
IAkgIHdpdGggdGhlICJpb2NoYXJzZXQiIG1vdW50IG9wdGlvbiBmb3IgRkFUIGZpbGVzeXN0ZW1z
LgotCSAgTm90ZSB0aGF0ICJ1dGY4IiBpcyBub3QgcmVjb21tZW5kZWQgZm9yIEZBVCBmaWxlc3lz
dGVtcy4KLQkgIElmIHVuc3VyZSwgeW91IHNob3VsZG4ndCBzZXQgInV0ZjgiIGhlcmUgLSBzZWxl
Y3QgdGhlIG5leHQgb3B0aW9uCi0JICBpbnN0ZWFkIGlmIHlvdSB3b3VsZCBsaWtlIHRvIHVzZSBV
VEYtOCBlbmNvZGVkIGZpbGUgbmFtZXMgYnkgZGVmYXVsdC4KKwkgICJ1dGY4IiBpcyBzdXBwb3J0
ZWQgdG9vIGFuZCByZWNvbW1lbmRlZCB0byB1c2UuCiAJICBTZWUgPGZpbGU6RG9jdW1lbnRhdGlv
bi9maWxlc3lzdGVtcy92ZmF0LnJzdD4gZm9yIG1vcmUgaW5mb3JtYXRpb24uCiAKIAkgIEVuYWJs
ZSBhbnkgY2hhcmFjdGVyIHNldHMgeW91IG5lZWQgaW4gRmlsZSBTeXN0ZW1zL05hdGl2ZSBMYW5n
dWFnZQogCSAgU3VwcG9ydC4KIAotY29uZmlnIEZBVF9ERUZBVUxUX1VURjgKLQlib29sICJFbmFi
bGUgRkFUIFVURi04IG9wdGlvbiBieSBkZWZhdWx0IgotCWRlcGVuZHMgb24gVkZBVF9GUwotCWRl
ZmF1bHQgbgotCWhlbHAKLQkgIFNldCB0aGlzIGlmIHlvdSB3b3VsZCBsaWtlIHRvIGhhdmUgInV0
ZjgiIG1vdW50IG9wdGlvbiBzZXQKLQkgIGJ5IGRlZmF1bHQgd2hlbiBtb3VudGluZyBGQVQgZmls
ZXN5c3RlbXMuCi0KLQkgIEV2ZW4gaWYgeW91IHNheSBZIGhlcmUgY2FuIGFsd2F5cyBkaXNhYmxl
IFVURi04IGZvcgotCSAgcGFydGljdWxhciBtb3VudCBieSBhZGRpbmcgInV0Zjg9MCIgdG8gbW91
bnQgb3B0aW9ucy4KLQotCSAgU2F5IFkgaWYgeW91IHVzZSBVVEYtOCBlbmNvZGluZyBmb3IgZmls
ZSBuYW1lcywgTiBvdGhlcndpc2UuCi0KLQkgIFNlZSA8ZmlsZTpEb2N1bWVudGF0aW9uL2ZpbGVz
eXN0ZW1zL3ZmYXQucnN0PiBmb3IgbW9yZSBpbmZvcm1hdGlvbi4KLQogY29uZmlnIEZBVF9LVU5J
VF9URVNUCiAJdHJpc3RhdGUgIlVuaXQgVGVzdHMgZm9yIEZBVCBmaWxlc3lzdGVtcyIgaWYgIUtV
TklUX0FMTF9URVNUUwogCWRlcGVuZHMgb24gS1VOSVQgJiYgRkFUX0ZTCmRpZmYgLS1naXQgYS9m
cy9mYXQvZGlyLmMgYi9mcy9mYXQvZGlyLmMKaW5kZXggMDAyMzViOGExODIzLi4xNTE2NmIwYzRh
NmUgMTAwNjQ0Ci0tLSBhL2ZzL2ZhdC9kaXIuYworKysgYi9mcy9mYXQvZGlyLmMKQEAgLTMzLDEx
ICszMyw2IEBACiAjZGVmaW5lIEZBVF9NQVhfVU5JX0NIQVJTCSgoTVNET1NfU0xPVFMgLSAxKSAq
IDEzICsgMSkKICNkZWZpbmUgRkFUX01BWF9VTklfU0laRQkoRkFUX01BWF9VTklfQ0hBUlMgKiBz
aXplb2Yod2NoYXJfdCkpCiAKLXN0YXRpYyBpbmxpbmUgdW5zaWduZWQgY2hhciBmYXRfdG9sb3dl
cih1bnNpZ25lZCBjaGFyIGMpCi17Ci0JcmV0dXJuICgoYyA+PSAnQScpICYmIChjIDw9ICdaJykp
ID8gYyszMiA6IGM7Ci19Ci0KIHN0YXRpYyBpbmxpbmUgbG9mZl90IGZhdF9tYWtlX2lfcG9zKHN0
cnVjdCBzdXBlcl9ibG9jayAqc2IsCiAJCQkJICAgIHN0cnVjdCBidWZmZXJfaGVhZCAqYmgsCiAJ
CQkJICAgIHN0cnVjdCBtc2Rvc19kaXJfZW50cnkgKmRlKQpAQCAtMjU4LDEwICsyNTMsMTIgQEAg
c3RhdGljIGlubGluZSBpbnQgZmF0X25hbWVfbWF0Y2goc3RydWN0IG1zZG9zX3NiX2luZm8gKnNi
aSwKIAlpZiAoYV9sZW4gIT0gYl9sZW4pCiAJCXJldHVybiAwOwogCi0JaWYgKHNiaS0+b3B0aW9u
cy5uYW1lX2NoZWNrICE9ICdzJykKLQkJcmV0dXJuICFubHNfc3RybmljbXAoc2JpLT5ubHNfaW8s
IGEsIGIsIGFfbGVuKTsKLQllbHNlCisJaWYgKHNiaS0+b3B0aW9ucy5uYW1lX2NoZWNrID09ICdz
JykKIAkJcmV0dXJuICFtZW1jbXAoYSwgYiwgYV9sZW4pOworCWVsc2UgaWYgKHNiaS0+b3B0aW9u
cy51dGY4KQorCQlyZXR1cm4gIWZhdF91dGY4X3N0cm5pY21wKGEsIGIsIGFfbGVuKTsKKwllbHNl
CisJCXJldHVybiAhbmxzX3N0cm5pY21wKHNiaS0+bmxzX2lvLCBhLCBiLCBhX2xlbik7CiB9CiAK
IGVudW0geyBQQVJTRV9JTlZBTElEID0gMSwgUEFSU0VfTk9UX0xPTkdOQU1FLCBQQVJTRV9FT0Ys
IH07CkBAIC0zODQsNyArMzgxLDcgQEAgc3RhdGljIGludCBmYXRfcGFyc2Vfc2hvcnQoc3RydWN0
IHN1cGVyX2Jsb2NrICpzYiwKIAkJCQkJZGUtPmxjYXNlICYgQ0FTRV9MT1dFUl9CQVNFKTsKIAkJ
aWYgKGNobCA8PSAxKSB7CiAJCQlpZiAoIWlzdmZhdCkKLQkJCQlwdG5hbWVbaV0gPSBub2Nhc2Ug
PyBjIDogZmF0X3RvbG93ZXIoYyk7CisJCQkJcHRuYW1lW2ldID0gbm9jYXNlID8gYyA6IGZhdF9h
c2NpaV90b19sb3dlcihjKTsKIAkJCWkrKzsKIAkJCWlmIChjICE9ICcgJykgewogCQkJCW5hbWVf
bGVuID0gaTsKQEAgLTQyMSw3ICs0MTgsNyBAQCBzdGF0aWMgaW50IGZhdF9wYXJzZV9zaG9ydChz
dHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLAogCQlpZiAoY2hsIDw9IDEpIHsKIAkJCWsrKzsKIAkJCWlm
ICghaXN2ZmF0KQotCQkJCXB0bmFtZVtpXSA9IG5vY2FzZSA/IGMgOiBmYXRfdG9sb3dlcihjKTsK
KwkJCQlwdG5hbWVbaV0gPSBub2Nhc2UgPyBjIDogZmF0X2FzY2lpX3RvX2xvd2VyKGMpOwogCQkJ
aSsrOwogCQkJaWYgKGMgIT0gJyAnKSB7CiAJCQkJbmFtZV9sZW4gPSBpOwpkaWZmIC0tZ2l0IGEv
ZnMvZmF0L2ZhdC5oIGIvZnMvZmF0L2ZhdC5oCmluZGV4IGE0MTVjMDJlZGUzOS4uNmIwYTYwNDFj
OGQ3IDEwMDY0NAotLS0gYS9mcy9mYXQvZmF0LmgKKysrIGIvZnMvZmF0L2ZhdC5oCkBAIC0zMTEs
NiArMzExLDI4IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBmYXR3Y2hhcl90bzE2KF9fdTggKmRzdCwg
Y29uc3Qgd2NoYXJfdCAqc3JjLCBzaXplX3QgbGVuKQogI2VuZGlmCiB9CiAKK3N0YXRpYyBpbmxp
bmUgdW5zaWduZWQgY2hhciBmYXRfYXNjaWlfdG9fbG93ZXIodW5zaWduZWQgY2hhciBjKQorewor
CXJldHVybiAoKGMgPj0gJ0EnKSAmJiAoYyA8PSAnWicpKSA/IGMrMzIgOiBjOworfQorCitzdGF0
aWMgaW5saW5lIGludCBmYXRfdXRmOF9zdHJuaWNtcChjb25zdCB1bnNpZ25lZCBjaGFyICphLAor
CQkJCSAgICBjb25zdCB1bnNpZ25lZCBjaGFyICpiLAorCQkJCSAgICBpbnQgbGVuKQoreworCWlu
dCBpOworCisJLyoKKwkgKiBGSVhNRTogVVRGLTggZG9lc24ndCBwcm92aWRlIEZBVCBzZW1hbnRp
Y3MKKwkgKiBDYXNlLWluc2Vuc2l0aXZlIHN1cHBvcnQgaXMgb25seSBmb3IgNy1iaXQgQVNDSUkg
Y2hhcmFjdGVycworCSAqLworCWZvciAoaSA9IDA7IGkgPCBsZW47IGkrKykgeworCQlpZiAoZmF0
X2FzY2lpX3RvX2xvd2VyKGFbaV0pICE9IGZhdF9hc2NpaV90b19sb3dlcihiW2ldKSkKKwkJCXJl
dHVybiAxOworCX0KKwlyZXR1cm4gMDsKK30KKwogLyogZmF0L2NhY2hlLmMgKi8KIGV4dGVybiB2
b2lkIGZhdF9jYWNoZV9pbnZhbF9pbm9kZShzdHJ1Y3QgaW5vZGUgKmlub2RlKTsKIGV4dGVybiBp
bnQgZmF0X2dldF9jbHVzdGVyKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGludCBjbHVzdGVyLApkaWZm
IC0tZ2l0IGEvZnMvZmF0L2lub2RlLmMgYi9mcy9mYXQvaW5vZGUuYwppbmRleCBkOTliODU0OWVj
OGYuLjgxOGM5YzM3YjQxOSAxMDA2NDQKLS0tIGEvZnMvZmF0L2lub2RlLmMKKysrIGIvZnMvZmF0
L2lub2RlLmMKQEAgLTk1Niw3ICs5NTYsOSBAQCBzdGF0aWMgaW50IGZhdF9zaG93X29wdGlvbnMo
c3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZGVudHJ5ICpyb290KQogCQkvKiBzdHJpcCAiY3Ai
IHByZWZpeCBmcm9tIGRpc3BsYXllZCBvcHRpb24gKi8KIAkJc2VxX3ByaW50ZihtLCAiLGNvZGVw
YWdlPSVzIiwgJnNiaS0+bmxzX2Rpc2stPmNoYXJzZXRbMl0pOwogCWlmIChpc3ZmYXQpIHsKLQkJ
aWYgKHNiaS0+bmxzX2lvKQorCQlpZiAob3B0cy0+dXRmOCkKKwkJCXNlcV9wdXRzKG0sICIsaW9j
aGFyc2V0PXV0ZjgiKTsKKwkJZWxzZSBpZiAoc2JpLT5ubHNfaW8pCiAJCQlzZXFfcHJpbnRmKG0s
ICIsaW9jaGFyc2V0PSVzIiwgc2JpLT5ubHNfaW8tPmNoYXJzZXQpOwogCiAJCXN3aXRjaCAob3B0
cy0+c2hvcnRuYW1lKSB7CkBAIC05OTMsOCArOTk1LDYgQEAgc3RhdGljIGludCBmYXRfc2hvd19v
cHRpb25zKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGRlbnRyeSAqcm9vdCkKIAkJaWYgKG9w
dHMtPm5vY2FzZSkKIAkJCXNlcV9wdXRzKG0sICIsbm9jYXNlIik7CiAJfSBlbHNlIHsKLQkJaWYg
KG9wdHMtPnV0ZjgpCi0JCQlzZXFfcHV0cyhtLCAiLHV0ZjgiKTsKIAkJaWYgKG9wdHMtPnVuaWNv
ZGVfeGxhdGUpCiAJCQlzZXFfcHV0cyhtLCAiLHVuaV94bGF0ZSIpOwogCQlpZiAoIW9wdHMtPm51
bXRhaWwpCkBAIC0xMTU2LDggKzExNTYsNiBAQCBzdGF0aWMgaW50IHBhcnNlX29wdGlvbnMoc3Ry
dWN0IHN1cGVyX2Jsb2NrICpzYiwgY2hhciAqb3B0aW9ucywgaW50IGlzX3ZmYXQsCiAJb3B0cy0+
ZXJyb3JzID0gRkFUX0VSUk9SU19STzsKIAkqZGVidWcgPSAwOwogCi0Jb3B0cy0+dXRmOCA9IElT
X0VOQUJMRUQoQ09ORklHX0ZBVF9ERUZBVUxUX1VURjgpICYmIGlzX3ZmYXQ7Ci0KIAlpZiAoIW9w
dGlvbnMpCiAJCWdvdG8gb3V0OwogCkBAIC0xMzE4LDEwICsxMzE2LDE0IEBAIHN0YXRpYyBpbnQg
cGFyc2Vfb3B0aW9ucyhzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCBjaGFyICpvcHRpb25zLCBpbnQg
aXNfdmZhdCwKIAkJCQkJfCBWRkFUX1NGTl9DUkVBVEVfV0lOOTU7CiAJCQlicmVhazsKIAkJY2Fz
ZSBPcHRfdXRmOF9ubzoJCS8qIDAgb3Igbm8gb3IgZmFsc2UgKi8KLQkJCW9wdHMtPnV0ZjggPSAw
OworCQkJZmF0X3Jlc2V0X2lvY2hhcnNldChvcHRzKTsKIAkJCWJyZWFrOwogCQljYXNlIE9wdF91
dGY4X3llczoJCS8qIGVtcHR5IG9yIDEgb3IgeWVzIG9yIHRydWUgKi8KLQkJCW9wdHMtPnV0Zjgg
PSAxOworCQkJZmF0X3Jlc2V0X2lvY2hhcnNldChvcHRzKTsKKwkJCWlvY2hhcnNldCA9IGtzdHJk
dXAoInV0ZjgiLCBHRlBfS0VSTkVMKTsKKwkJCWlmICghaW9jaGFyc2V0KQorCQkJCXJldHVybiAt
RU5PTUVNOworCQkJb3B0cy0+aW9jaGFyc2V0ID0gaW9jaGFyc2V0OwogCQkJYnJlYWs7CiAJCWNh
c2UgT3B0X3VuaV94bF9ubzoJCS8qIDAgb3Igbm8gb3IgZmFsc2UgKi8KIAkJCW9wdHMtPnVuaWNv
ZGVfeGxhdGUgPSAwOwpAQCAtMTM1OSwxOCArMTM2MSwxMSBAQCBzdGF0aWMgaW50IHBhcnNlX29w
dGlvbnMoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgY2hhciAqb3B0aW9ucywgaW50IGlzX3ZmYXQs
CiAJfQogCiBvdXQ6Ci0JLyogVVRGLTggZG9lc24ndCBwcm92aWRlIEZBVCBzZW1hbnRpY3MgKi8K
LQlpZiAoIXN0cmNtcChvcHRzLT5pb2NoYXJzZXQsICJ1dGY4IikpIHsKLQkJZmF0X21zZyhzYiwg
S0VSTl9XQVJOSU5HLCAidXRmOCBpcyBub3QgYSByZWNvbW1lbmRlZCBJTyBjaGFyc2V0IgotCQkg
ICAgICAgIiBmb3IgRkFUIGZpbGVzeXN0ZW1zLCBmaWxlc3lzdGVtIHdpbGwgYmUgIgotCQkgICAg
ICAgImNhc2Ugc2Vuc2l0aXZlISIpOwotCX0KKwlvcHRzLT51dGY4ID0gIXN0cmNtcChvcHRzLT5p
b2NoYXJzZXQsICJ1dGY4IikgJiYgaXNfdmZhdDsKIAogCS8qIElmIHVzZXIgZG9lc24ndCBzcGVj
aWZ5IGFsbG93X3V0aW1lLCBpdCdzIGluaXRpYWxpemVkIGZyb20gZG1hc2suICovCiAJaWYgKG9w
dHMtPmFsbG93X3V0aW1lID09ICh1bnNpZ25lZCBzaG9ydCktMSkKIAkJb3B0cy0+YWxsb3dfdXRp
bWUgPSB+b3B0cy0+ZnNfZG1hc2sgJiAoU19JV0dSUCB8IFNfSVdPVEgpOwotCWlmIChvcHRzLT51
bmljb2RlX3hsYXRlKQotCQlvcHRzLT51dGY4ID0gMDsKIAlpZiAob3B0cy0+bmZzID09IEZBVF9O
RlNfTk9TVEFMRV9STykgewogCQlzYi0+c19mbGFncyB8PSBTQl9SRE9OTFk7CiAJCXNiLT5zX2V4
cG9ydF9vcCA9ICZmYXRfZXhwb3J0X29wc19ub3N0YWxlOwpAQCAtMTgyOCw4ICsxODIzLDcgQEAg
aW50IGZhdF9maWxsX3N1cGVyKHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIHZvaWQgKmRhdGEsIGlu
dCBzaWxlbnQsIGludCBpc3ZmYXQsCiAJCWdvdG8gb3V0X2ZhaWw7CiAJfQogCi0JLyogRklYTUU6
IHV0ZjggaXMgdXNpbmcgaW9jaGFyc2V0IGZvciB1cHBlci9sb3dlciBjb252ZXJzaW9uICovCi0J
aWYgKHNiaS0+b3B0aW9ucy5pc3ZmYXQpIHsKKwlpZiAoc2JpLT5vcHRpb25zLmlzdmZhdCAmJiAh
c2JpLT5vcHRpb25zLnV0ZjgpIHsKIAkJc2JpLT5ubHNfaW8gPSBsb2FkX25scyhzYmktPm9wdGlv
bnMuaW9jaGFyc2V0KTsKIAkJaWYgKCFzYmktPm5sc19pbykgewogCQkJZmF0X21zZyhzYiwgS0VS
Tl9FUlIsICJJTyBjaGFyc2V0ICVzIG5vdCBmb3VuZCIsCmRpZmYgLS1naXQgYS9mcy9mYXQvbmFt
ZWlfdmZhdC5jIGIvZnMvZmF0L25hbWVpX3ZmYXQuYwppbmRleCAyMTYyMDA1NGUxYzQuLjVjNTg1
ZTc5ZDg2MyAxMDA2NDQKLS0tIGEvZnMvZmF0L25hbWVpX3ZmYXQuYworKysgYi9mcy9mYXQvbmFt
ZWlfdmZhdC5jCkBAIC0xMzQsNiArMTM0LDcgQEAgc3RhdGljIGludCB2ZmF0X2hhc2goY29uc3Qg
c3RydWN0IGRlbnRyeSAqZGVudHJ5LCBzdHJ1Y3QgcXN0ciAqcXN0cikKIHN0YXRpYyBpbnQgdmZh
dF9oYXNoaShjb25zdCBzdHJ1Y3QgZGVudHJ5ICpkZW50cnksIHN0cnVjdCBxc3RyICpxc3RyKQog
ewogCXN0cnVjdCBubHNfdGFibGUgKnQgPSBNU0RPU19TQihkZW50cnktPmRfc2IpLT5ubHNfaW87
CisJaW50IHV0ZjggPSBNU0RPU19TQihkZW50cnktPmRfc2IpLT5vcHRpb25zLnV0Zjg7CiAJY29u
c3QgdW5zaWduZWQgY2hhciAqbmFtZTsKIAl1bnNpZ25lZCBpbnQgbGVuOwogCXVuc2lnbmVkIGxv
bmcgaGFzaDsKQEAgLTE0Miw4ICsxNDMsMTcgQEAgc3RhdGljIGludCB2ZmF0X2hhc2hpKGNvbnN0
IHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgc3RydWN0IHFzdHIgKnFzdHIpCiAJbGVuID0gdmZhdF9z
dHJpcHRhaWxfbGVuKHFzdHIpOwogCiAJaGFzaCA9IGluaXRfbmFtZV9oYXNoKGRlbnRyeSk7Ci0J
d2hpbGUgKGxlbi0tKQotCQloYXNoID0gcGFydGlhbF9uYW1lX2hhc2gobmxzX3RvbG93ZXIodCwg
Km5hbWUrKyksIGhhc2gpOworCWlmICh1dGY4KSB7CisJCS8qCisJCSAqIEZJWE1FOiBVVEYtOCBk
b2Vzbid0IHByb3ZpZGUgRkFUIHNlbWFudGljcworCQkgKiBDYXNlLWluc2Vuc2l0aXZlIHN1cHBv
cnQgaXMgb25seSBmb3IgNy1iaXQgQVNDSUkgY2hhcmFjdGVycworCQkgKi8KKwkJd2hpbGUgKGxl
bi0tKQorCQkJaGFzaCA9IHBhcnRpYWxfbmFtZV9oYXNoKGZhdF9hc2NpaV90b19sb3dlcigqbmFt
ZSsrKSwgaGFzaCk7CisJfSBlbHNlIHsKKwkJd2hpbGUgKGxlbi0tKQorCQkJaGFzaCA9IHBhcnRp
YWxfbmFtZV9oYXNoKG5sc190b2xvd2VyKHQsICpuYW1lKyspLCBoYXNoKTsKKwl9CiAJcXN0ci0+
aGFzaCA9IGVuZF9uYW1lX2hhc2goaGFzaCk7CiAKIAlyZXR1cm4gMDsKQEAgLTE1NiwxNiArMTY2
LDE4IEBAIHN0YXRpYyBpbnQgdmZhdF9jbXBpKGNvbnN0IHN0cnVjdCBkZW50cnkgKmRlbnRyeSwK
IAkJdW5zaWduZWQgaW50IGxlbiwgY29uc3QgY2hhciAqc3RyLCBjb25zdCBzdHJ1Y3QgcXN0ciAq
bmFtZSkKIHsKIAlzdHJ1Y3QgbmxzX3RhYmxlICp0ID0gTVNET1NfU0IoZGVudHJ5LT5kX3NiKS0+
bmxzX2lvOworCWludCB1dGY4ID0gTVNET1NfU0IoZGVudHJ5LT5kX3NiKS0+b3B0aW9ucy51dGY4
OwogCXVuc2lnbmVkIGludCBhbGVuLCBibGVuOwogCiAJLyogQSBmaWxlbmFtZSBjYW5ub3QgZW5k
IGluICcuJyBvciB3ZSB0cmVhdCBpdCBsaWtlIGl0IGhhcyBub25lICovCiAJYWxlbiA9IHZmYXRf
c3RyaXB0YWlsX2xlbihuYW1lKTsKIAlibGVuID0gX192ZmF0X3N0cmlwdGFpbF9sZW4obGVuLCBz
dHIpOwotCWlmIChhbGVuID09IGJsZW4pIHsKLQkJaWYgKG5sc19zdHJuaWNtcCh0LCBuYW1lLT5u
YW1lLCBzdHIsIGFsZW4pID09IDApCi0JCQlyZXR1cm4gMDsKLQl9Ci0JcmV0dXJuIDE7CisJaWYg
KGFsZW4gIT0gYmxlbikKKwkJcmV0dXJuIDE7CisJZWxzZSBpZiAodXRmOCkKKwkJcmV0dXJuIGZh
dF91dGY4X3N0cm5pY21wKG5hbWUtPm5hbWUsIHN0ciwgYWxlbik7CisJZWxzZQorCQlyZXR1cm4g
bmxzX3N0cm5pY21wKHQsIG5hbWUtPm5hbWUsIHN0ciwgYWxlbik7CiB9CiAKIC8qCi0tIAoyLjIw
LjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtTlRGUy1EZXYgbWFpbGluZyBsaXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1u
dGZzLWRldgo=
