Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA0F7C9695
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 14 Oct 2023 23:49:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qrmVd-0003OJ-HE;
	Sat, 14 Oct 2023 21:49:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yikebaer61@gmail.com>) id 1qqOoT-0002xE-J7
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 11 Oct 2023 02:19:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IjhCQdR9FSIb4mXchtT0S67Pn10MnE0igEvhgyIFe/Q=; b=ZDG3N63hAqAqv3s1uhhbPtaWr1
 AWfVsu8CtPrPkQZroO9rJGa3+ChEfUgdEr8o2hEi+BzzUgaUiE1VkMIOfu59tWoQaEWw8mn5vIqyr
 iUUwD4xvme2DwM85J8C+Km0upzLJVknYHOATFaszYpufijl9xR/OvYpQl3zTCqunkdkw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :MIME-Version:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IjhCQdR9FSIb4mXchtT0S67Pn10MnE0igEvhgyIFe/Q=; b=O
 r0JaWSh3R9Q7qrqu9UKwctbGgOn2cks0yBt4ojbtgdzGipwUFul8lTKdFv29JX7Hw42zxZtT8O9RS
 C1LbNpUi4jgXf/uM5GfirdrmWkiy08tA6bWLg89uN4nWlZz22Vu1DQYGyL1URgFuLJDhYuQvtBueG
 vmia80WrFy6fHt9M=;
Received: from mail-lf1-f42.google.com ([209.85.167.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqOoQ-00BNb3-PI for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 11 Oct 2023 02:19:04 +0000
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-50307acd445so7996514e87.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 10 Oct 2023 19:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696990736; x=1697595536; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=IjhCQdR9FSIb4mXchtT0S67Pn10MnE0igEvhgyIFe/Q=;
 b=A/RFosBQWfgqF6Pcf/Oq10yUydNkASPV2RPeQ6rr9roJjXoRUC/0tot2G/rDzzfHk6
 vOxYdGkmOZAsB2mEKNuVhM+gx3JZ6assl2zpeNQjk7xwlkAbxkSXfI0si8CeXMJeXjqy
 oAcK3t3Aoy8bmC5uKjjbpW5w+LpTQRViKN+NPeha9Rlyqnurj1V/T1cBek2x4PVo7NJK
 qlE49qG7k9ue39AlPxj8psvkcAqThnq8oURzAqQij2/zuhNip3qgaXvn1eI5JF4H/VT3
 XbFyj/RT753y8N4OKniSUtl+sMrwQhnAFwCrvjQPydsGFxdp5IU8AQxdmoz8lKLuwT7i
 O12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696990736; x=1697595536;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IjhCQdR9FSIb4mXchtT0S67Pn10MnE0igEvhgyIFe/Q=;
 b=rNs4Ok2dfqAdQ8nZbwgVbsFbUSn2Li8lZyTyPls4MEcCR+ZRQs2TYP/ZWUFjkEcRCZ
 LhwHhM9htbrDN0yP7jEYTWd40Y5rh7cGOnoH2iHZn93V3fqQzNPSn+FHRUBF7atJMKA/
 fFzOVEIg1/tJFV7ELHAXR5iAI+EiQMqILqKHROaLHh0yA9kTMHOofVaRn4cOlISGEgVs
 t6AKrTlta7cLBxyxqfD3bfJeL2G94MUze+s5FSFFyd+ayYjTshdIP0anH4tpxFF52/T8
 9IPTUterCCRQcDjp1ETtGNgUgi4NseDAzre5k69JIhXA0ZWCPw3GlQMIq4iptJW1b5kz
 8UqQ==
X-Gm-Message-State: AOJu0YzU/rKSPsNHOzRiA3HdCwWUIW7O0Y9ywNUXMTvm2VMd4Fgds2AX
 Y8UOe73BNNOi6Ec9U17bwsuoZhLkCZceOAlZZD4=
X-Google-Smtp-Source: AGHT+IG455eJiJRDOe/hop6m/utv20TiZn18bkPOboRVVmi0yObSKu9mZc8I/dQ5g7g9loxS9h9Dk7pogKaU30lJLmQ=
X-Received: by 2002:a19:7119:0:b0:503:2e6:6862 with SMTP id
 m25-20020a197119000000b0050302e66862mr14460379lfc.32.1696990735472; Tue, 10
 Oct 2023 19:18:55 -0700 (PDT)
MIME-Version: 1.0
From: Yikebaer Aizezi <yikebaer61@gmail.com>
Date: Wed, 11 Oct 2023 10:18:44 +0800
Message-ID: <CALcu4rYmqcMReMWCDx60=-WeTgNMZGxNGc3GMUXhdS6kNBDw_w@mail.gmail.com>
To: anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, When using Healer to fuzz the latest Linux kernel,
   the following crash was triggered. HEAD commit: f291209eca5eba0b4704fa0832af57b12dbc1a02
    ( Merge tag 'net-6.6-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net）
    git tree: upstream 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.42 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [yikebaer61[at]gmail.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [yikebaer61[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqOoQ-00BNb3-PI
X-Mailman-Approved-At: Sat, 14 Oct 2023 21:49:17 +0000
Subject: [Linux-ntfs-dev] KASAN: slab-out-of-bounds Read in ntfs_readdir
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGVsbG8sCgpXaGVuIHVzaW5nIEhlYWxlciB0byBmdXp6IHRoZSBsYXRlc3QgTGludXgga2VybmVs
LCAgdGhlIGZvbGxvd2luZyBjcmFzaAp3YXMgdHJpZ2dlcmVkLgoKSEVBRCBjb21taXQ6IGYyOTEy
MDllY2E1ZWJhMGI0NzA0ZmEwODMyYWY1N2IxMmRiYzFhMDIgKCAgTWVyZ2UgdGFnCiduZXQtNi42
LXJjNScgb2YKZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25l
dGRldi9uZXTvvIkKZ2l0IHRyZWU6IHVwc3RyZWFtCgpNeSBsb2NhbCBMaW51eCByZXBvc2l0b3J5
IGlzIGEgZmV3IGNvbW1pdHMgYmVoaW5kIHRoZSBtYWluIGJyYW5jaCwgc28KSSBwdWxsZWQgdGhl
IGxhdGVzdCBicmFuY2ggYW5kIHZhbGlkYXRlZCB0aGUgY3Jhc2ggb24gaXQuIFRoZSBpc3N1ZQpz
dGlsbCBwZXJzaXN0cy4KCmNvbnNvbGUgb3V0cHV0OgpodHRwczovL2RyaXZlLmdvb2dsZS5jb20v
ZmlsZS9kLzFOZERYZWQwc0c5YUJOUFo5bXJpTXQ4OWw2WDVHZzVaTi92aWV3P3VzcD1kcml2ZV9s
aW5rCmtlcm5lbCBjb25maWc6aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL2ZpbGUvZC8xMXVlQnVa
LTJ2T3ZRUkFIN3FsR2liNkpBQ3ZrMVdtSnEvdmlldz91c3A9ZHJpdmVfbGluawpDIHJlcHJvZHVj
ZXI6aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL2ZpbGUvZC8xU2R6b0huRUF5X0JSQ1JpR3NJeXht
Y2s1NlNyS0RuOUgvdmlldz91c3A9ZHJpdmVfbGluawpTeXpsYW5nIHJlcHJvZHVjZXI6Cmh0dHBz
Oi8vZHJpdmUuZ29vZ2xlLmNvbS9maWxlL2QvMWNGbktqZjJFOW1rby04TktnZVQ3WUJvTUlwdTNh
aEt2L3ZpZXc/dXNwPWRyaXZlX2xpbmsKCklmIHlvdSBmaXggdGhpcyBpc3N1ZSwgcGxlYXNlIGFk
ZCB0aGUgZm9sbG93aW5nIHRhZyB0byB0aGUgY29tbWl0OgpSZXBvcnRlZC1ieTogWWlrZWJhZXIg
QWl6ZXppIDx5aWtlYmFlcjYxQGdtYWlsLmNvbT4KCj09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpCVUc6IEtBU0FOOiBzbGFi
LW91dC1vZi1ib3VuZHMgaW4gbnRmc19maWxsZGlyIGZzL250ZnMvZGlyLmM6MTAyMSBbaW5saW5l
XQpCVUc6IEtBU0FOOiBzbGFiLW91dC1vZi1ib3VuZHMgaW4gbnRmc19yZWFkZGlyKzB4MTQ1Ny8w
eDI5YTAgZnMvbnRmcy9kaXIuYzoxMjAwClJlYWQgb2Ygc2l6ZSAxIGF0IGFkZHIgZmZmZjg4ODA2
MDk5ZGZmMSBieSB0YXNrIHN5ei1leGVjdXRvci4yLzE5MDEyCgpDUFU6IDIgUElEOiAxOTAxMiBD
b21tOiBzeXotZXhlY3V0b3IuMiBOb3QgdGFpbnRlZCA2LjYuMC1yYzQtZ2YyOTEyMDllY2E1ZSAj
NApIYXJkd2FyZSBuYW1lOiBRRU1VIFN0YW5kYXJkIFBDIChpNDQwRlggKyBQSUlYLCAxOTk2KSwg
QklPUwpyZWwtMS4xMi4wLTU5LWdjOWJhNTI3NmUzMjEtcHJlYnVpbHQucWVtdS5vcmcgMDQvMDEv
MjAxNApDYWxsIFRyYWNlOgogPFRBU0s+CiBfX2R1bXBfc3RhY2sgbGliL2R1bXBfc3RhY2suYzo4
OCBbaW5saW5lXQogZHVtcF9zdGFja19sdmwrMHhkNS8weDE1MCBsaWIvZHVtcF9zdGFjay5jOjEw
NgogcHJpbnRfYWRkcmVzc19kZXNjcmlwdGlvbiBtbS9rYXNhbi9yZXBvcnQuYzozNjQgW2lubGlu
ZV0KIHByaW50X3JlcG9ydCsweGMxLzB4NWUwIG1tL2thc2FuL3JlcG9ydC5jOjQ3NQoga2FzYW5f
cmVwb3J0KzB4YmEvMHhmMCBtbS9rYXNhbi9yZXBvcnQuYzo1ODgKIG50ZnNfZmlsbGRpciBmcy9u
dGZzL2Rpci5jOjEwMjEgW2lubGluZV0KIG50ZnNfcmVhZGRpcisweDE0NTcvMHgyOWEwIGZzL250
ZnMvZGlyLmM6MTIwMAogd3JhcF9kaXJlY3RvcnlfaXRlcmF0b3IrMHhhMS8weGUwIGZzL3JlYWRk
aXIuYzo2NwogaXRlcmF0ZV9kaXIrMHgxZWEvMHg2MDAgZnMvcmVhZGRpci5jOjEwNgogX19kb19z
eXNfZ2V0ZGVudHMgZnMvcmVhZGRpci5jOjMyMiBbaW5saW5lXQogX19zZV9zeXNfZ2V0ZGVudHMg
ZnMvcmVhZGRpci5jOjMwNyBbaW5saW5lXQogX194NjRfc3lzX2dldGRlbnRzKzB4MTRhLzB4MmQw
IGZzL3JlYWRkaXIuYzozMDcKIGRvX3N5c2NhbGxfeDY0IGFyY2gveDg2L2VudHJ5L2NvbW1vbi5j
OjUwIFtpbmxpbmVdCiBkb19zeXNjYWxsXzY0KzB4MzUvMHhiMCBhcmNoL3g4Ni9lbnRyeS9jb21t
b24uYzo4MAogZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NjMvMHhjZApSSVA6IDAw
MzM6MHg3ZjU0MTc4OGVjZWQKQ29kZTogYzMgZTggOTcgMmIgMDAgMDAgMGYgMWYgODAgMDAgMDAg
MDAgMDAgZjMgMGYgMWUgZmEgNDggODkgZjggNDgKODkgZjcgNDggODkgZDYgNDggODkgY2EgNGQg
ODkgYzIgNGQgODkgYzggNGMgOGIgNGMgMjQgMDggMGYgMDUgPDQ4PiAzZAowMSBmMCBmZiBmZiA3
MyAwMSBjMyA0OCBjNyBjMSBiMCBmZiBmZiBmZiBmNyBkOCA2NCA4OSAwMSA0OApSU1A6IDAwMmI6
MDAwMDdmNTQxODU4ZDAyOCBFRkxBR1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAwMDAwMDAwMDAwMDAw
MDRlClJBWDogZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA3ZjU0MTc5Y2JmODAgUkNYOiAwMDAw
N2Y1NDE3ODhlY2VkClJEWDogMDAwMDAwMDAwMDAwMDA0MCBSU0k6IDAwMDAwMDAwMjAwMDE2NDAg
UkRJOiAwMDAwMDAwMDAwMDAwMDAzClJCUDogMDAwMDdmNTQxNzhmMDRhNiBSMDg6IDAwMDAwMDAw
MDAwMDAwMDAgUjA5OiAwMDAwMDAwMDAwMDAwMDAwClIxMDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6
IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiAwMDAwMDAwMDAwMDAwMDAwClIxMzogMDAwMDAwMDAwMDAw
MDAwYiBSMTQ6IDAwMDA3ZjU0MTc5Y2JmODAgUjE1OiAwMDAwN2Y1NDE4NTZkMDAwCiA8L1RBU0s+
CgpBbGxvY2F0ZWQgYnkgdGFzayAxOTAxMjoKIGthc2FuX3NhdmVfc3RhY2srMHgxZS8weDQwIG1t
L2thc2FuL2NvbW1vbi5jOjQ1CiBrYXNhbl9zZXRfdHJhY2srMHgyMS8weDMwIG1tL2thc2FuL2Nv
bW1vbi5jOjUyCiBfX19fa2FzYW5fa21hbGxvYyBtbS9rYXNhbi9jb21tb24uYzozNzQgW2lubGlu
ZV0KIF9fX19rYXNhbl9rbWFsbG9jIG1tL2thc2FuL2NvbW1vbi5jOjMzMyBbaW5saW5lXQogX19r
YXNhbl9rbWFsbG9jKzB4OWUvMHhhMCBtbS9rYXNhbi9jb21tb24uYzozODMKIGthc2FuX2ttYWxs
b2MgaW5jbHVkZS9saW51eC9rYXNhbi5oOjE5OCBbaW5saW5lXQogX19kb19rbWFsbG9jX25vZGUg
bW0vc2xhYl9jb21tb24uYzoxMDIzIFtpbmxpbmVdCiBfX2ttYWxsb2MrMHg1ZC8weDE5MCBtbS9z
bGFiX2NvbW1vbi5jOjEwMzYKIGttYWxsb2MgaW5jbHVkZS9saW51eC9zbGFiLmg6NjAzIFtpbmxp
bmVdCiBudGZzX3JlYWRkaXIrMHgxMTgwLzB4MjlhMCBmcy9udGZzL2Rpci5jOjExNjIKIHdyYXBf
ZGlyZWN0b3J5X2l0ZXJhdG9yKzB4YTEvMHhlMCBmcy9yZWFkZGlyLmM6NjcKIGl0ZXJhdGVfZGly
KzB4MWVhLzB4NjAwIGZzL3JlYWRkaXIuYzoxMDYKIF9fZG9fc3lzX2dldGRlbnRzIGZzL3JlYWRk
aXIuYzozMjIgW2lubGluZV0KIF9fc2Vfc3lzX2dldGRlbnRzIGZzL3JlYWRkaXIuYzozMDcgW2lu
bGluZV0KIF9feDY0X3N5c19nZXRkZW50cysweDE0YS8weDJkMCBmcy9yZWFkZGlyLmM6MzA3CiBk
b19zeXNjYWxsX3g2NCBhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo1MCBbaW5saW5lXQogZG9fc3lz
Y2FsbF82NCsweDM1LzB4YjAgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6ODAKIGVudHJ5X1NZU0NB
TExfNjRfYWZ0ZXJfaHdmcmFtZSsweDYzLzB4Y2QKClRoZSBidWdneSBhZGRyZXNzIGJlbG9uZ3Mg
dG8gdGhlIG9iamVjdCBhdCBmZmZmODg4MDYwOTlkZjgwCiB3aGljaCBiZWxvbmdzIHRvIHRoZSBj
YWNoZSBrbWFsbG9jLTY0IG9mIHNpemUgNjQKVGhlIGJ1Z2d5IGFkZHJlc3MgaXMgbG9jYXRlZCA1
NyBieXRlcyB0byB0aGUgcmlnaHQgb2YKIGFsbG9jYXRlZCA1Ni1ieXRlIHJlZ2lvbiBbZmZmZjg4
ODA2MDk5ZGY4MCwgZmZmZjg4ODA2MDk5ZGZiOCkKClRoZSBidWdneSBhZGRyZXNzIGJlbG9uZ3Mg
dG8gdGhlIHBoeXNpY2FsIHBhZ2U6CnBhZ2U6ZmZmZmVhMDAwMTgyNjc0MCByZWZjb3VudDoxIG1h
cGNvdW50OjAgbWFwcGluZzowMDAwMDAwMDAwMDAwMDAwCmluZGV4OjB4MCBwZm46MHg2MDk5ZApm
bGFnczogMHhmZmYwMDAwMDAwMDgwMChzbGFifG5vZGU9MHx6b25lPTF8bGFzdGNwdXBpZD0weDdm
ZikKcGFnZV90eXBlOiAweGZmZmZmZmZmKCkKcmF3OiAwMGZmZjAwMDAwMDAwODAwIGZmZmY4ODgw
MTE0NDI2NDAgZmZmZmVhMDAwMDU3NjkwMCBkZWFkMDAwMDAwMDAwMDA0CnJhdzogMDAwMDAwMDAw
MDAwMDAwMCAwMDAwMDAwMDgwMjAwMDIwIDAwMDAwMDAxZmZmZmZmZmYgMDAwMDAwMDAwMDAwMDAw
MApwYWdlIGR1bXBlZCBiZWNhdXNlOiBrYXNhbjogYmFkIGFjY2VzcyBkZXRlY3RlZApwYWdlX293
bmVyIHRyYWNrcyB0aGUgcGFnZSBhcyBhbGxvY2F0ZWQKcGFnZSBsYXN0IGFsbG9jYXRlZCB2aWEg
b3JkZXIgMCwgbWlncmF0ZXR5cGUgVW5tb3ZhYmxlLCBnZnBfbWFzawoweDEyY2MwKEdGUF9LRVJO
RUx8X19HRlBfTk9XQVJOfF9fR0ZQX05PUkVUUlkpLCBwaWQgODA5MCwgdGdpZCA4MDkwCihzeXot
ZXhlY3V0b3IuMiksIHRzIDI0MDk4MTYzMDk4NywgZnJlZV90cyAwCiBwcmVwX25ld19wYWdlIG1t
L3BhZ2VfYWxsb2MuYzoxNTQzIFtpbmxpbmVdCiBnZXRfcGFnZV9mcm9tX2ZyZWVsaXN0KzB4ZjA5
LzB4MmM1MCBtbS9wYWdlX2FsbG9jLmM6MzE3MAogX19hbGxvY19wYWdlcysweDFjNy8weDQ5MCBt
bS9wYWdlX2FsbG9jLmM6NDQyNgogYWxsb2NfcGFnZXMrMHgxYTYvMHgyNzAgbW0vbWVtcG9saWN5
LmM6MjI5NwogYWxsb2Nfc2xhYl9wYWdlIG1tL3NsdWIuYzoxODcwIFtpbmxpbmVdCiBhbGxvY2F0
ZV9zbGFiKzB4MjYxLzB4MzkwIG1tL3NsdWIuYzoyMDE3CiBuZXdfc2xhYiBtbS9zbHViLmM6MjA3
MCBbaW5saW5lXQogX19fc2xhYl9hbGxvYysweGJkYS8weDE1ZTAgbW0vc2x1Yi5jOjMyMjMKIF9f
c2xhYl9hbGxvYy5jb25zdHByb3AuMCsweDU2LzB4YTAgbW0vc2x1Yi5jOjMzMjIKIF9fc2xhYl9h
bGxvY19ub2RlIG1tL3NsdWIuYzozMzc1IFtpbmxpbmVdCiBzbGFiX2FsbG9jX25vZGUgbW0vc2x1
Yi5jOjM0NjggW2lubGluZV0KIF9fa21lbV9jYWNoZV9hbGxvY19ub2RlKzB4MTM2LzB4MzQwIG1t
L3NsdWIuYzozNTE3CiBrbWFsbG9jX3RyYWNlKzB4MjIvMHhkMCBtbS9zbGFiX2NvbW1vbi5jOjEx
MTQKIGttYWxsb2MgaW5jbHVkZS9saW51eC9zbGFiLmg6NTk5IFtpbmxpbmVdCiBremFsbG9jIGlu
Y2x1ZGUvbGludXgvc2xhYi5oOjcyMCBbaW5saW5lXQogc25tcDZfYWxsb2NfZGV2IG5ldC9pcHY2
L2FkZHJjb25mLmM6MzUwIFtpbmxpbmVdCiBpcHY2X2FkZF9kZXYrMHg1MzMvMHgxM2IwIG5ldC9p
cHY2L2FkZHJjb25mLmM6NDA0CiBhZGRyY29uZl9ub3RpZnkrMHg3NTMvMHgxOTYwIG5ldC9pcHY2
L2FkZHJjb25mLmM6MzU4OQogbm90aWZpZXJfY2FsbF9jaGFpbisweGI2LzB4M2MwIGtlcm5lbC9u
b3RpZmllci5jOjkzCiBjYWxsX25ldGRldmljZV9ub3RpZmllcnNfaW5mbysweGI1LzB4MTMwIG5l
dC9jb3JlL2Rldi5jOjE5NzAKIGNhbGxfbmV0ZGV2aWNlX25vdGlmaWVyc19leHRhY2sgbmV0L2Nv
cmUvZGV2LmM6MjAwOCBbaW5saW5lXQogY2FsbF9uZXRkZXZpY2Vfbm90aWZpZXJzIG5ldC9jb3Jl
L2Rldi5jOjIwMjIgW2lubGluZV0KIHJlZ2lzdGVyX25ldGRldmljZSsweGYyMy8weDE0YzAgbmV0
L2NvcmUvZGV2LmM6MTAxNjkKIHZldGhfbmV3bGluaysweDMxYy8weDk4MCBkcml2ZXJzL25ldC92
ZXRoLmM6MTkwOAogcnRubF9uZXdsaW5rX2NyZWF0ZSBuZXQvY29yZS9ydG5ldGxpbmsuYzozNDg1
IFtpbmxpbmVdCiBfX3J0bmxfbmV3bGluaysweDExMGEvMHgxOGUwIG5ldC9jb3JlL3J0bmV0bGlu
ay5jOjM3MDUKIHJ0bmxfbmV3bGluaysweDY0LzB4YTAgbmV0L2NvcmUvcnRuZXRsaW5rLmM6Mzcx
OApwYWdlX293bmVyIGZyZWUgc3RhY2sgdHJhY2UgbWlzc2luZwoKTWVtb3J5IHN0YXRlIGFyb3Vu
ZCB0aGUgYnVnZ3kgYWRkcmVzczoKIGZmZmY4ODgwNjA5OWRlODA6IDAwIDAwIDAwIDAwIDAwIDAw
IGZjIGZjIGZjIGZjIGZjIGZjIGZjIGZjIGZjIGZjCiBmZmZmODg4MDYwOTlkZjAwOiAwMCAwMCAw
MCAwMCAwMCAwMCBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYwo+ZmZmZjg4ODA2MDk5ZGY4
MDogMDAgMDAgMDAgMDAgMDAgMDAgMDAgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4K
IGZmZmY4ODgwNjA5OWUwMDA6IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwCiBmZmZmODg4MDYwOTllMDgwOiAwMCAwMCAwMCAwMCAwMCBmYyBmYyBmYyBmYyBm
YyBmYyBmYyBmYyAwMCAwMCAwMAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udGZzLWRldiBtYWlsaW5nIGxpc3QKTGludXgt
bnRmcy1kZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
