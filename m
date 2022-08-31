Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 363815A7E35
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 15:03:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTNNH-0002MM-Sq;
	Wed, 31 Aug 2022 13:03:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTMST-0005x1-Lm
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 12:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IwMyg41R2EGl0FJUp0yhBhoY3g3at35aUB0QWp4v9no=; b=jl3Pc97NwV2owPrqoiE7LP9h+H
 24wqYtdJYSsB0r15tAUinUmrZvHyxDJEy4stDlPdzf5+RyfcpwDsr0rMRX13p3A6Dl1LVtnX8ZZE1
 2yI2aGqKIqLIdNdQJeowutK5DNvxKKTOo86cawH7mb8CtWRc7mMdlT+k3BRnoXCLzQ1M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IwMyg41R2EGl0FJUp0yhBhoY3g3at35aUB0QWp4v9no=; b=QO3xkvtrJ0I5KaGQK5lWaKyGwR
 wIJUcRgqBzIUZpvOH0SalRfYvpmiTOBcY3eQJW2zVpthkaGb/Eb8rpL7NrA/eFml4rbl1s5zjqlZV
 cDcZ46pbyOz+9i4sXfbjV2q/vVnoiJkJctyXo87JzQh3rBZlxC7CnNw0tiombpaYw/cQ=;
Received: from mail-pg1-f169.google.com ([209.85.215.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTMSP-008kl5-8E for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 12:04:37 +0000
Received: by mail-pg1-f169.google.com with SMTP id c24so13311645pgg.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 31 Aug 2022 05:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=IwMyg41R2EGl0FJUp0yhBhoY3g3at35aUB0QWp4v9no=;
 b=YzrUeelY9m6wgQ+9R1Ae4z4LCenVRY9+ws0frazyKrml0IjzOMc+HWK0yYzCI5kf8n
 lxV7CM2uhCU0+JgZlX7PIe9fqXJacYuXkmnlurVciy2FvWigxEeDi24Uft9j9l6a5gU+
 VN9gMTC9b1Np4MspiJtZsGeWnwfBNUZV4b0n3B4HJSV15G40+sOai5oAT1to5si5Vtji
 ZASfAyikKTlrWVdVsKKKh3R52zrbq22kfpLMfrMk+KRIFI9uWZ6e6Pbo+ALFSYaQfo3X
 GOKhNGpCB1pMRcXNj+td/9B8yIdedk9EQrhJR9pvfQ0iLJMkUPJGxxugOAZPl5Mhu5rB
 cNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=IwMyg41R2EGl0FJUp0yhBhoY3g3at35aUB0QWp4v9no=;
 b=huYVkCzeHDeUVkdLTfgpu/8pfqOMgZNFLqnI2lauFIjFCzxUUdsARIDqMeFxPK8G8F
 A8RfWAE/99Wc7ETPvT8why1HAiwcHutLcGwbhK805TgSfKMuxU+acxO78m9Rl7Vk7zea
 yqG61BOgdrLXB/7Tkr/K8f6J6lglGhThQUppaQxopS3yBctScs3DZup7DPRUtGw7Gus+
 mJAeyAtG9rf7KsbUPoa9b2Jq9eM5E6R7HoVqiWILLl2vWEfYS0DRu0pn21/1mxSzOIeN
 Yy6LRn6N9TT75bMaGHiBBa8E0eZeJWXukr+qHdg7h6w0wnEsGMzZJDwl2a36hvN+44CR
 Y0+A==
X-Gm-Message-State: ACgBeo2AVNQq7TNIjUgX9dWjSpSfWoxX3Z/iTwdsAqwtN2RAjqP3gDeC
 bn1aYP06lYdyD0K26gAm7zQ=
X-Google-Smtp-Source: AA6agR4yvnY/18/QLTX8DrPb/7i/o4dpapqsqx+vhSwYD7nWekpcA5gmSERBmeRXmFqpIsZgA1uvNA==
X-Received: by 2002:a63:5912:0:b0:42a:dcc6:210d with SMTP id
 n18-20020a635912000000b0042adcc6210dmr22590418pgb.50.1661947467547; 
 Wed, 31 Aug 2022 05:04:27 -0700 (PDT)
Received: from localhost ([36.112.86.8]) by smtp.gmail.com with ESMTPSA id
 g8-20020a62f948000000b0053ab9c189e2sm1337356pfm.2.2022.08.31.05.04.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 05:04:27 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: dan.carpenter@oracle.com
Date: Wed, 31 Aug 2022 20:03:25 +0800
Message-Id: <20220831120324.4477-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220831110727.GK2071@kadam>
References: <20220831110727.GK2071@kadam>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 31 Aug 2022 at 19:08, Dan Carpenter wrote: > > On
 Wed, Aug 31, 2022 at 10:43:36AM +0800, Hawkins Jiawei wrote: > > Kernel will
 iterates over ATTR_RECORDs in mft record in ntfs_attr_find(). > [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.169 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oTMSP-008kl5-8E
X-Mailman-Approved-At: Wed, 31 Aug 2022 13:03:18 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 2/3] ntfs: fix out-of-bounds read in
 ntfs_attr_find()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, 18801353760@163.com,
 yin31149@gmail.com, akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gV2VkLCAzMSBBdWcgMjAyMiBhdCAxOTowOCwgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgQXVnIDMxLCAyMDIyIGF0IDEwOjQzOjM2
QU0gKzA4MDAsIEhhd2tpbnMgSmlhd2VpIHdyb3RlOgo+ID4gS2VybmVsIHdpbGwgaXRlcmF0ZXMg
b3ZlciBBVFRSX1JFQ09SRHMgaW4gbWZ0IHJlY29yZCBpbiBudGZzX2F0dHJfZmluZCgpLgo+ID4g
VG8gZW5zdXJlIGFjY2VzcyBvbiB0aGVzZSBBVFRSX1JFQ09SRHMgYXJlIHdpdGhpbiBib3VuZHMs
IGtlcm5lbCB3aWxsCj4gPiBkbyBzb21lIGNoZWNraW5nIGR1cmluZyBpdGVyYXRpb24uCj4gPgo+
ID4gVGhlIHByb2JsZW0gaXMgdGhhdCBkdXJpbmcgY2hlY2tpbmcgd2hldGhlciBBVFRSX1JFQ09S
RCdzIG5hbWUgaXMgd2l0aGluCj4gPiBib3VuZHMsIGtlcm5lbCB3aWxsIGRlcmVmZXJlbmNlcyB0
aGUgQVRUUl9SRUNPUkQgbmFtZV9vZmZzZXQgZmllbGQsCj4gPiBiZWZvcmUgY2hlY2tpbmcgdGhp
cyBBVFRSX1JFQ09SRCBzdHJjdHVyZSBpcyB3aXRoaW4gYm91bmRzLiBUaGlzIHByb2JsZW0KPiA+
IG1heSByZXN1bHQgb3V0LW9mLWJvdW5kcyByZWFkIGluIG50ZnNfYXR0cl9maW5kKCksIHJlcG9y
dGVkIGJ5Cj4gPiBTeXprYWxsZXI6Cj4gPgo+ID4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gPiBCVUc6IEtBU0FOOiB1
c2UtYWZ0ZXItZnJlZSBpbiBudGZzX2F0dHJfZmluZCsweGMwMi8weGNlMCBmcy9udGZzL2F0dHJp
Yi5jOjU5Nwo+ID4gUmVhZCBvZiBzaXplIDIgYXQgYWRkciBmZmZmODg4MDdlMzUyMDA5IGJ5IHRh
c2sgc3l6LWV4ZWN1dG9yMTUzLzM2MDcKPiA+Cj4gPiBbLi4uXQo+ID4gQ2FsbCBUcmFjZToKPiA+
IMKgPFRBU0s+Cj4gPiDCoF9fZHVtcF9zdGFjayBsaWIvZHVtcF9zdGFjay5jOjg4IFtpbmxpbmVd
Cj4gPiDCoGR1bXBfc3RhY2tfbHZsKzB4Y2QvMHgxMzQgbGliL2R1bXBfc3RhY2suYzoxMDYKPiA+
IMKgcHJpbnRfYWRkcmVzc19kZXNjcmlwdGlvbiBtbS9rYXNhbi9yZXBvcnQuYzozMTcgW2lubGlu
ZV0KPiA+IMKgcHJpbnRfcmVwb3J0LmNvbGQrMHgyYmEvMHg3MTkgbW0va2FzYW4vcmVwb3J0LmM6
NDMzCj4gPiDCoGthc2FuX3JlcG9ydCsweGIxLzB4MWUwIG1tL2thc2FuL3JlcG9ydC5jOjQ5NQo+
ID4gwqBudGZzX2F0dHJfZmluZCsweGMwMi8weGNlMCBmcy9udGZzL2F0dHJpYi5jOjU5Nwo+ID4g
wqBudGZzX2F0dHJfbG9va3VwKzB4MTA1Ni8weDIwNzAgZnMvbnRmcy9hdHRyaWIuYzoxMTkzCj4g
PiDCoG50ZnNfcmVhZF9pbm9kZV9tb3VudCsweDg5YS8weDI1ODAgZnMvbnRmcy9pbm9kZS5jOjE4
NDUKPiA+IMKgbnRmc19maWxsX3N1cGVyKzB4MTc5OS8weDkzMjAgZnMvbnRmcy9zdXBlci5jOjI4
NTQKPiA+IMKgbW91bnRfYmRldisweDM0ZC8weDQxMCBmcy9zdXBlci5jOjE0MDAKPiA+IMKgbGVn
YWN5X2dldF90cmVlKzB4MTA1LzB4MjIwIGZzL2ZzX2NvbnRleHQuYzo2MTAKPiA+IMKgdmZzX2dl
dF90cmVlKzB4ODkvMHgyZjAgZnMvc3VwZXIuYzoxNTMwCj4gPiDCoGRvX25ld19tb3VudCBmcy9u
YW1lc3BhY2UuYzozMDQwIFtpbmxpbmVdCj4gPiDCoHBhdGhfbW91bnQrMHgxMzI2LzB4MWUyMCBm
cy9uYW1lc3BhY2UuYzozMzcwCj4gPiDCoGRvX21vdW50IGZzL25hbWVzcGFjZS5jOjMzODMgW2lu
bGluZV0KPiA+IMKgX19kb19zeXNfbW91bnQgZnMvbmFtZXNwYWNlLmM6MzU5MSBbaW5saW5lXQo+
ID4gwqBfX3NlX3N5c19tb3VudCBmcy9uYW1lc3BhY2UuYzozNTY4IFtpbmxpbmVdCj4gPiDCoF9f
eDY0X3N5c19tb3VudCsweDI3Zi8weDMwMCBmcy9uYW1lc3BhY2UuYzozNTY4Cj4gPiDCoGRvX3N5
c2NhbGxfeDY0IGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjUwIFtpbmxpbmVdCj4gPiDCoGRvX3N5
c2NhbGxfNjQrMHgzNS8weGIwIGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjgwCj4gPiDCoGVudHJ5
X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDYzLzB4Y2QKPiA+IMKgWy4uLl0KPiA+IMKgPC9U
QVNLPgo+ID4KPiA+IFRoZSBidWdneSBhZGRyZXNzIGJlbG9uZ3MgdG8gdGhlIHBoeXNpY2FsIHBh
Z2U6Cj4gPiBwYWdlOmZmZmZlYTAwMDFmOGQ0MDAgcmVmY291bnQ6MSBtYXBjb3VudDowIG1hcHBp
bmc6MDAwMDAwMDAwMDAwMDAwMCBpbmRleDoweDAgcGZuOjB4N2UzNTAKPiA+IGhlYWQ6ZmZmZmVh
MDAwMWY4ZDQwMCBvcmRlcjozIGNvbXBvdW5kX21hcGNvdW50OjAgY29tcG91bmRfcGluY291bnQ6
MAo+ID4gZmxhZ3M6IDB4ZmZmMDAwMDAwMTAyMDAoc2xhYnxoZWFkfG5vZGU9MHx6b25lPTF8bGFz
dGNwdXBpZD0weDdmZikKPiA+IHJhdzogMDBmZmYwMDAwMDAxMDIwMCAwMDAwMDAwMDAwMDAwMDAw
IGRlYWQwMDAwMDAwMDAxMjIgZmZmZjg4ODAxMTg0MjE0MAo+ID4gcmF3OiAwMDAwMDAwMDAwMDAw
MDAwIDAwMDAwMDAwMDAwNDAwMDQgMDAwMDAwMDFmZmZmZmZmZiAwMDAwMDAwMDAwMDAwMDAwCj4g
PiBwYWdlIGR1bXBlZCBiZWNhdXNlOiBrYXNhbjogYmFkIGFjY2VzcyBkZXRlY3RlZAo+ID4gTWVt
b3J5IHN0YXRlIGFyb3VuZCB0aGUgYnVnZ3kgYWRkcmVzczoKPiA+IMKgZmZmZjg4ODA3ZTM1MWYw
MDogZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMKPiA+IMKg
ZmZmZjg4ODA3ZTM1MWY4MDogZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMg
ZmMgZmMgZmMKPiA+ID5mZmZmODg4MDdlMzUyMDAwOiBmYSBmYiBmYiBmYiBmYiBmYiBmYiBmYiBm
YiBmYiBmYiBmYiBmYiBmYiBmYiBmYgo+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgXgo+ID4gwqBmZmZmODg4MDdlMzUyMDgwOiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBm
YiBmYiBmYiBmYiBmYiBmYiBmYgo+ID4gwqBmZmZmODg4MDdlMzUyMTAwOiBmYiBmYiBmYiBmYiBm
YiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYgo+ID4gPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gPgo+ID4g
VGhpcyBwYXRjaCBzb2x2ZXMgaXQgYnkgbW92aW5nIHRoZSBBVFRSX1JFQ09SRCBzdHJjdHVyZSdz
IGJvdW5kcwo+ID4gY2hlY2tpbmcgZWFybGllciwgdGhlbiBjaGVja2luZyB3aGV0aGVyIEFUVFJf
UkVDT1JEJ3MgbmFtZQo+ID4gaXMgd2l0aGluIGJvdW5kcy4gV2hhdCdzIG1vcmUsIHRoaXMgcGF0
Y2ggYWxzbyBhZGQgc29tZSBjb21tZW50cwo+ID4gdG8gaW1wcm92ZSBpdHMgbWFpbnRhaW5hYmls
aXR5Lgo+ID4KPiA+IFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IHN5emJvdCs1ZjhkY2FiZTRhM2Iy
YzUxYzYwN0BzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4gPiBTaWduZWQtb2ZmLWJ5OiBjaGVu
eGlhb3NvbmcgKEEpIDxjaGVueGlhb3NvbmcyQGh1YXdlaS5jb20+Cj4gPiBMaW5rOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMTYzNjc5NmMtYzg1ZS03ZjQ3LWU5NmYtZTA3NGZlZTNjN2Qz
QGh1YXdlaS5jb20vCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVu
dGVyQG9yYWNsZS5jb20+Cj4gPiBMaW5rOiBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2cvc3l6
a2FsbGVyLWJ1Z3MvYy90X1hkZUtQR1RSNC9tL0xFQ0F1SUdjQmdBSgo+ID4gU2lnbmVkLW9mZi1i
eTogSGF3a2lucyBKaWF3ZWkgPHlpbjMxMTQ5QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gwqBmcy9u
dGZzL2F0dHJpYi5jIHwgMjAgKysrKysrKysrKysrKysrKy0tLS0KPiA+IMKgMSBmaWxlIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L2ZzL250ZnMvYXR0cmliLmMgYi9mcy9udGZzL2F0dHJpYi5jCj4gPiBpbmRleCA1MjYxNWU2MDkw
ZTEuLjkwNDczNGUzNDUwNyAxMDA2NDQKPiA+IC0tLSBhL2ZzL250ZnMvYXR0cmliLmMKPiA+ICsr
KyBiL2ZzL250ZnMvYXR0cmliLmMKPiA+IEBAIC01OTQsMTEgKzU5NCwyMyBAQCBzdGF0aWMgaW50
IG50ZnNfYXR0cl9maW5kKGNvbnN0IEFUVFJfVFlQRSB0eXBlLCBjb25zdCBudGZzY2hhciAqbmFt
ZSwKPiA+IMKgIMKgIMKgIGZvciAoOzsgYSA9IChBVFRSX1JFQ09SRCopKCh1OCopYSArIGxlMzJf
dG9fY3B1KGEtPmxlbmd0aCkpKSB7Cj4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1OCAqbXJlY19l
bmQgPSAodTggKiljdHgtPm1yZWMgKwo+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBsZTMyX3RvX2NwdShjdHgtPm1yZWMtPmJ5dGVzX2FsbG9jYXRlZCk7Cj4g
PiAtIMKgIMKgIMKgIMKgIMKgIMKgIHU4ICpuYW1lX2VuZCA9ICh1OCAqKWEgKyBsZTE2X3RvX2Nw
dShhLT5uYW1lX29mZnNldCkgKwo+ID4gLSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGEtPm5hbWVfbGVuZ3RoICogc2l6ZW9mKG50ZnNjaGFyKTsKPiA+IC0gwqAgwqAg
wqAgwqAgwqAgwqAgaWYgKCh1OCopYSA8ICh1OCopY3R4LT5tcmVjIHx8ICh1OCopYSA+IG1yZWNf
ZW5kIHx8Cj4gPiAtIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG5hbWVfZW5kID4gbXJlY19lbmQp
Cj4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIHU4ICpuYW1lX2VuZCwgKmFyZWNfaGVhZF9lbmQ7Cj4g
PiArCj4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIC8qIGNoZWNrIGZvciB3cmFwIGFyb3VuZCAqLwo+
ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoKHU4ICopYSA8ICh1OCAqKWN0eC0+bXJlYykKPiA+
ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYnJlYWs7Cj4gPiArCj4gPiArIMKgIMKg
IMKgIMKgIMKgIMKgIC8qIGNoZWNrIHdoZXRoZXIgQXR0cmlidXRlIFJlY29yZCBIZWFkZXIgaXMg
d2l0aGluIGJvdW5kcyAqLwo+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCBhcmVjX2hlYWRfZW5kID0g
KHU4ICopYSArIHNpemVvZihBVFRSX1JFQ09SRCk7Cj4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIGlm
IChhcmVjX2hlYWRfZW5kIDwgKHU4ICopYSB8fCBhcmVjX2hlYWRfZW5kID4gbXJlY19lbmQpCj4K
PiBUaGlzIHdvcmtzIGJ1dCBJIGZlZWwgbGlrZSBpdCB3b3VsZCBiZSBtb3JlIG5hdHVyYWwgdG8g
anVzdCBjaGVjayBpZgo+IGEgd2FzIHZhbGlkIGFuZCBpZiBhICsgwqBzaXplb2YoQVRUUl9SRUNP
UkQpIHdhcyBhbHNvIHZhbGlkLgo+Cj4gwqAgwqAgwqAgwqAgaWYgKGEgPiBtcmVjX2VuZCB8fCAo
dTggKilhICsgc2l6ZW9mKEFUVFJfUkVDT1JEKSA+IG1yZWNfZW5kKQpIaSBEYW4sClRoYW5rcyBm
b3IgeW91ciBzdWdnZXN0aW9uLgpUaGlzIGxvb2tzIG1vcmUgbmF0dXJhbCB0aGFuIG9yaWdpbmFs
IHBhdGNoLCB5ZXQgSSB3b25kZXIgaWYgdGhlcmUgbWF5CmJlIGFuIG92ZXJmbG93PwoKVG8gYmUg
bW9yZSBzcGVjaWZpYywgaWYgImEiIGFuZCAibXJlY19lbmQiIGlzIGxhcmdlIGVub3VnaCwgaXQg
c2VlbXMgdGhhdApzb21lIGZpZWxkcyBvZiAiYSIgbWF5IGJlIG91dC1vZi1ib3VuZHMgYW5kIGFs
c28gYnlwYXNzIHRoaXMgY2hlY2sgYmVjYXVzZQpvZiB0aGUgb3ZlcmZsb3cuKFBsZWFzZSBjb3Jy
ZWN0IG1lIGlmIEkgYW0gd3JvbmcpCj4gQnV0IHdoYXQgeW91IGhhdmUgYWxzbyB3b3JrcyBzbyBp
ZiB5b3Ugd2FudCB0byBnbyB3aXRoIHRoYXQgdGhlbiB0aGF0J3MKPiBmaW5lLgo+Cj4gcmVnYXJk
cywKPiBkYW4gY2FycGVudGVyCj4KPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IGJyZWFrOwo+ID4gKwo+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCAvKiBjaGVjayB3aGV0aGVyIEFU
VFJfUkVDT1JEJ3MgbmFtZSBpcyB3aXRoaW4gYm91bmRzICovCj4gPiArIMKgIMKgIMKgIMKgIMKg
IMKgIG5hbWVfZW5kID0gKHU4ICopYSArIGxlMTZfdG9fY3B1KGEtPm5hbWVfb2Zmc2V0KSArCj4g
PiArIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYS0+bmFtZV9sZW5ndGggKiBz
aXplb2YobnRmc2NoYXIpOwo+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCBpZiAobmFtZV9lbmQgPiBt
cmVjX2VuZCkKPiA+ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYnJlYWs7Cj4gPiAr
Cj4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjdHgtPmF0dHIgPSBhOwo+ID4gwqAgwqAgwqAgwqAg
wqAgwqAgwqAgaWYgKHVubGlrZWx5KGxlMzJfdG9fY3B1KGEtPnR5cGUpID4gbGUzMl90b19jcHUo
dHlwZSkgfHwKPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IGEtPnR5cGUgPT0gQVRfRU5EKSkKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURl
dkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
