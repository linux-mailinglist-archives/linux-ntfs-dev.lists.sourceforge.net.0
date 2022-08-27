Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2AE5A3786
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Aug 2022 13:57:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRuRc-0005fH-WA;
	Sat, 27 Aug 2022 11:57:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oRqjC-0006sv-Ub
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 07:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zh5LpYB0R/taTPSjhCVkbUx9UF14ohRt4gh1JjCNp5k=; b=g5ZhS9zUGRUaEz0Md7Sv6yDy7+
 hIc+1uA+Yme9likGHLt5mz4fjpijKGuiocQIQi+oCUZFvNHHsQEuJ6w+2/w22vqHzyty6YvMGgaOM
 h9jRAGFDUbbUjEkJI/qCXBogWcOTT9KVsKKgLnx0gb4pnde3i8Lx4DpY5QGfP9rzPSVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zh5LpYB0R/taTPSjhCVkbUx9UF14ohRt4gh1JjCNp5k=; b=RsspWnZMeQJFv46Ef8S8vAgCg9
 ehMaootj4dTEtKowZlPAn5ABFEhE2X8gvwrskDQUK5w8xn5B/2ZYWZeVsYO6e9ehT8eCjcs3JgMif
 julsYInueVrOiws3MhuhVzWMtt5qifmL6anj67un5i0nwm8Wm8bJ2H2H/oTHMWRNjn7E=;
Received: from mail-pl1-f170.google.com ([209.85.214.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRqj4-0001WI-G7 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 07:59:38 +0000
Received: by mail-pl1-f170.google.com with SMTP id l3so3459479plb.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Aug 2022 00:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=zh5LpYB0R/taTPSjhCVkbUx9UF14ohRt4gh1JjCNp5k=;
 b=cWBpDkUrrBcgU+6SCHkUnnI82pPVwMNNxVb9B5MOFOGsay6dfD/xHUj8aylrrfjLkp
 aHT3ed8oUHd+/sm9bh0dkLEYOj3xIhzz5wVFBaEhTgjEQ8JYWsoV1GwtKQcUcDLfpurI
 DapYeJODEaPcnvSZrrdONal6bWDHoB8bgYLo9WatxKl50cpD5LZy7wYAgHhDyycW+pT8
 gmYILrktW97AEUnLx+xd0IPk9/uKztMdnJZYN6WD/tmlaOvCh7rWKgZd3N7I02yOPg/1
 crgwnl5HhQ7nbeioSiJCX0OLlZNVRTuLjcP1gC9uTlOAp+VEgIcCP+A+IIzYc93fQ0RW
 T/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=zh5LpYB0R/taTPSjhCVkbUx9UF14ohRt4gh1JjCNp5k=;
 b=ee2lPf+RrefjPCiqBamVD10XPS2sMTZsJP7fMvpu3tDEt3/rZd/cDxC+/Ro+gpSt1c
 rTGSGoSHOulIulArPzJg/X+XBE7aPMpQRNPF0tqUiRI7pvmQKKk9cxsLHpi9Wa69acgY
 0pfcxbnYrPhYGK7SZ5O66blp5dAPpvFTtExnk5wvZjza7oxJ6whKnfeqqaDnRRbPCwYp
 k8l7+wbrXpO0jsDqi6Zm3AhgfiEo4Ijdl1y2UA1QRnVIyEQ1VcKLAx/n7IcvlLMKbmXQ
 HlAtAw1w2h8gV1EsFVVwgnmAmXHSIV2Njrpu5xuJtVu0HMtBw6VwGFcj3gsfVaXbRRkl
 N8DQ==
X-Gm-Message-State: ACgBeo1WmQF6oYMsWymM0TxPWEPr1OBYf/K+0CQbJiQCsqWhzSxsBoHd
 bKre1a7/2F01Rje3MpIo9po=
X-Google-Smtp-Source: AA6agR4nMG+ZNYqrQFsNTzVXT6pVCJqyepHqiOrzn3qJiEPd6scbz10rN8Z4F+SZkqkV9DSRyIQrwg==
X-Received: by 2002:a17:90a:bc8f:b0:1fa:bdb4:96c8 with SMTP id
 x15-20020a17090abc8f00b001fabdb496c8mr8308583pjr.236.1661587164932; 
 Sat, 27 Aug 2022 00:59:24 -0700 (PDT)
Received: from localhost ([223.104.39.136]) by smtp.gmail.com with ESMTPSA id
 p15-20020a170902e74f00b0016d5b7fb02esm2959998plf.60.2022.08.27.00.59.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Aug 2022 00:59:24 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: chenxiaosong2@huawei.com
Date: Sat, 27 Aug 2022 15:51:44 +0800
Message-Id: <20220827075143.61311-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <1636796c-c85e-7f47-e96f-e074fee3c7d3@huawei.com>
References: <1636796c-c85e-7f47-e96f-e074fee3c7d3@huawei.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, 27 Aug 2022 at 09:29, chenxiaosong (A) wrote: > >
   在 2022/8/26 20:27, Hawkins Jiawei 写道: > > syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
    master > > > > L [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [yin31149[at]gmail.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [yin31149[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.214.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.170 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oRqj4-0001WI-G7
X-Mailman-Approved-At: Sat, 27 Aug 2022 11:57:43 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: change check order in
 ntfs_attr_find
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
Cc: linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org,
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, yin31149@gmail.com,
 akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gU2F0LCAyNyBBdWcgMjAyMiBhdCAwOToyOSwgY2hlbnhpYW9zb25nIChBKSA8Y2hlbnhpYW9z
b25nMkBodWF3ZWkuY29tPiB3cm90ZToKPgo+IOWcqCAyMDIyLzgvMjYgMjA6MjcsIEhhd2tpbnMg
Smlhd2VpIOWGmemBkzoKPiA+IHN5eiB0ZXN0IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdCBtYXN0ZXIKPiA+Cj4gPiBMb29r
cyBsaWtlIGl0IGlzIGltcHJvcGVyIGNoZWNrIG9yZGVyIHRoYXQgY2F1c2VzIHRoaXMgYnVnLgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEhhd2tpbnMgSmlhd2VpIDx5aW4zMTE0OUBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICAgZnMvbnRmcy9hdHRyaWIuYyB8IDUgKysrLS0KPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvZnMvbnRmcy9hdHRyaWIuYyBiL2ZzL250ZnMvYXR0cmliLmMKPiA+IGluZGV4IDUyNjE1ZTYw
OTBlMS4uNjQ4MGNkMmQzNzFkIDEwMDY0NAo+ID4gLS0tIGEvZnMvbnRmcy9hdHRyaWIuYwo+ID4g
KysrIGIvZnMvbnRmcy9hdHRyaWIuYwo+ID4gQEAgLTU5NCwxMCArNTk0LDExIEBAIHN0YXRpYyBp
bnQgbnRmc19hdHRyX2ZpbmQoY29uc3QgQVRUUl9UWVBFIHR5cGUsIGNvbnN0IG50ZnNjaGFyICpu
YW1lLAo+ID4gICAgICAgZm9yICg7OyBhID0gKEFUVFJfUkVDT1JEKikoKHU4KilhICsgbGUzMl90
b19jcHUoYS0+bGVuZ3RoKSkpIHsKPiA+ICAgICAgICAgICAgICAgdTggKm1yZWNfZW5kID0gKHU4
ICopY3R4LT5tcmVjICsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGUzMl90b19j
cHUoY3R4LT5tcmVjLT5ieXRlc19hbGxvY2F0ZWQpOwo+ID4gKyAgICAgICAgICAgICBpZiAoKHU4
KilhIDwgKHU4KiljdHgtPm1yZWMgfHwgKHU4KilhID4gbXJlY19lbmQpCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICAgICAgICAgIHU4ICpuYW1lX2VuZCA9ICh1OCAq
KWEgKyBsZTE2X3RvX2NwdShhLT5uYW1lX29mZnNldCkgKwo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBhLT5uYW1lX2xlbmd0aCAqIHNpemVvZihudGZzY2hhcik7Cj4gPiAtICAgICAg
ICAgICAgIGlmICgodTgqKWEgPCAodTgqKWN0eC0+bXJlYyB8fCAodTgqKWEgPiBtcmVjX2VuZCB8
fAo+ID4gLSAgICAgICAgICAgICAgICAgbmFtZV9lbmQgPiBtcmVjX2VuZCkKPiA+ICsgICAgICAg
ICAgICAgaWYgKG5hbWVfZW5kID4gbXJlY19lbmQpCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
YnJlYWs7Cj4gPiAgICAgICAgICAgICAgIGN0eC0+YXR0ciA9IGE7Cj4gPiAgICAgICAgICAgICAg
IGlmICh1bmxpa2VseShsZTMyX3RvX2NwdShhLT50eXBlKSA+IGxlMzJfdG9fY3B1KHR5cGUpIHx8
Cj4gPgo+Cj4gVGhlIHJlYXNvbiBpcyB0aGF0IGEtPmxlbmd0aCBpcyAwLCBpdCB3aWxsIG9jY3Vy
IHVhZiB3aGVuIGRlcmVmIGFueQo+IGZpZWxkIG9mIEFUVFJfUkVDT1JELgo+Cj4gSXQgc2VlbXMg
dGhhdCBjaGFuZ2luZyBjaGVjayBvcmRlciB3aWxsIG5vdCBmaXggcm9vdCBjYXVzZSwgaWYgdGhl
Cj4gY29uZGl0aW9uICJpZiAoKHU4KilhIDwgKHU4KiljdHgtPm1yZWMgfHwgKHU4KilhID4gbXJl
Y19lbmQpIiBpcyBmYWxzZSwKPiB1YWYgd2lsbCBzdGlsbCBvY2N1ci4KPgo+IERvIHlvdSBoYXZl
IGFueSB0aG91Z2h0cyBvbiB0aGlzID8KSGksIGNoZW54aWFvc29uZwoKSSB0aGluayBjaGFuZ2lu
ZyB0aGUgY2hlY2sgb3JkZXIgaXMgYWJsZSB0byBmaXggdGhpcyBidWcuIEJ1dCB3ZSBtYXkgbmVl
ZAp0byBjaGVjayB3aGV0aGVyIG1mdCByZWNvcmQgaGVhZGVyIGlzIG91dCBvZiBib3VuZHMsIG1h
eWJlCiJpZiAoKHU4KilhIDwgKHU4KiljdHgtPm1yZWMgfHwgKHU4KilhICsgc2l6ZW9mKE1GVF9S
RUNPUkQpID4gbXJlY19lbmQpIgoKQmVjYXVzZSB3ZSBqdXN0IG5lZWQgdG8gY2hlY2sgaWYgdGhp
cyBBVFRSX1JFQ09SRCBpcyBpbiB2YWxpZCBhZGRyZXNzcy4gQXMgZm9yCnNpdHVhdGlvbiB0aGF0
IGEtPmxlbmd0aCBpcyAwLCB0aGVyZSBzZWVtcyBhbHJlYWR5IGEgY2hlY2sgaW4gdGhlIGxvb3AK
KENvcnJlY3QgbWUgaWYgSSBhbSB3cm9uZyk6Cj4gc3RhdGljIGludCBudGZzX2F0dHJfZmluZChj
b25zdCBBVFRSX1RZUEUgdHlwZSwgY29uc3QgbnRmc2NoYXIgKm5hbWUsCj4gCQljb25zdCB1MzIg
bmFtZV9sZW4sIGNvbnN0IElHTk9SRV9DQVNFX0JPT0wgaWMsCj4gCQljb25zdCB1OCAqdmFsLCBj
b25zdCB1MzIgdmFsX2xlbiwgbnRmc19hdHRyX3NlYXJjaF9jdHggKmN0eCkKPiB7Cj4gCS4uLgo+
IAo+IAlmb3IgKDs7CWEgPSAoQVRUUl9SRUNPUkQqKSgodTgqKWEgKyBsZTMyX3RvX2NwdShhLT5s
ZW5ndGgpKSkgewo+IAkJdTggKm1yZWNfZW5kID0gKHU4ICopY3R4LT5tcmVjICsKPiAJCSAgICAg
ICAgICAgICAgIGxlMzJfdG9fY3B1KGN0eC0+bXJlYy0+Ynl0ZXNfYWxsb2NhdGVkKTsKPiAJCXU4
ICpuYW1lX2VuZCA9ICh1OCAqKWEgKyBsZTE2X3RvX2NwdShhLT5uYW1lX29mZnNldCkgKwo+IAkJ
CSAgICAgICBhLT5uYW1lX2xlbmd0aCAqIHNpemVvZihudGZzY2hhcik7Cj4gCQlpZiAoKHU4Kilh
IDwgKHU4KiljdHgtPm1yZWMgfHwgKHU4KilhID4gbXJlY19lbmQgfHwKPiAJCSAgICBuYW1lX2Vu
ZCA+IG1yZWNfZW5kKQo+IAkJCWJyZWFrOwo+IAkJY3R4LT5hdHRyID0gYTsKPiAJCWlmICh1bmxp
a2VseShsZTMyX3RvX2NwdShhLT50eXBlKSA+IGxlMzJfdG9fY3B1KHR5cGUpIHx8Cj4gCQkJCWEt
PnR5cGUgPT0gQVRfRU5EKSkKPiAJCQlyZXR1cm4gLUVOT0VOVDsKPiAJCWlmICh1bmxpa2VseSgh
YS0+bGVuZ3RoKSkKPiAJCQlicmVhazsKPiAJLi4uCj4gfQoKQW5kIGFzIGZvciB0aGUgcm9vdCBj
YXVzZSBmb3IgdXNlLWFmdGVyLWZyZWUgcmVhZCwgSSB0aGluayBpdCBpcyB0aGUKY3R4LT5hdHRy
LT5sZW5ndGggdG8gYmUgYmxhbWVkLgoKVG8gYmUgbW9yZSBzcGVjaWZpYywgd2hlbiBrZXJuZWwg
bG9hZHMgdGhlIHN0cnVjdCBNRlRfUkVDT1JEIGZyb20gZGlzawppbiBudGZzX3JlYWRfaW5vZGVf
bW91bnQoKSwgIG0ncyBhdHRyc19vZmZzZXQgZmllbGQgc2hvdWxkIGxlc3MgdGhhbgptJ3MgYnl0
ZXNfYWxsb2NhdGVkIGZpZWxkLCBvciBpdCBtYXkgb3V0IG9mIHRoZSBib3VuZHM6CgppbnQgbnRm
c19yZWFkX2lub2RlX21vdW50KHN0cnVjdCBpbm9kZSAqdmkpCnsKCS4uLgoJTUZUX1JFQ09SRCAq
bSA9IE5VTEw7CglpID0gdm9sLT5tZnRfcmVjb3JkX3NpemU7CgoJLi4uCgltID0gKE1GVF9SRUNP
UkQqKW50ZnNfbWFsbG9jX25vZnMoaSk7CgoJLyogRGV0ZXJtaW5lIHRoZSBmaXJzdCBibG9jayBv
ZiB0aGUgJE1GVC8kREFUQSBhdHRyaWJ1dGUuICovCglibG9jayA9IHZvbC0+bWZ0X2xjbiA8PCB2
b2wtPmNsdXN0ZXJfc2l6ZV9iaXRzID4+CgkJCXNiLT5zX2Jsb2Nrc2l6ZV9iaXRzOwoJbnJfYmxv
Y2tzID0gdm9sLT5tZnRfcmVjb3JkX3NpemUgPj4gc2ItPnNfYmxvY2tzaXplX2JpdHM7CgoJLi4u
CgoJLyogTG9hZCAkTUZULyREQVRBJ3MgZmlyc3QgbWZ0IHJlY29yZC4gKi8KCWZvciAoaSA9IDA7
IGkgPCBucl9ibG9ja3M7IGkrKykgewoJCWJoID0gc2JfYnJlYWQoc2IsIGJsb2NrKyspOwoJCWlm
ICghYmgpIHsKCQkJbnRmc19lcnJvcihzYiwgIkRldmljZSByZWFkIGZhaWxlZC4iKTsKCQkJZ290
byBlcnJfb3V0OwoJCX0KCQltZW1jcHkoKGNoYXIqKW0gKyAoaSA8PCBzYi0+c19ibG9ja3NpemVf
Yml0cyksIGJoLT5iX2RhdGEsCgkJCQlzYi0+c19ibG9ja3NpemUpOwoJCWJyZWxzZShiaCk7Cgl9
CgoJaWYgKGxlMzJfdG9fY3B1KG0tPmJ5dGVzX2FsbG9jYXRlZCkgIT0gdm9sLT5tZnRfcmVjb3Jk
X3NpemUpIHsKCQludGZzX2Vycm9yKHNiLCAiSW5jb3JyZWN0IG1mdCByZWNvcmQgc2l6ZSAldSBp
biBzdXBlcmJsb2NrLCBzaG91bGQgYmUgJXUuIiwKCQkJCWxlMzJfdG9fY3B1KG0tPmJ5dGVzX2Fs
bG9jYXRlZCksIHZvbC0+bWZ0X3JlY29yZF9zaXplKTsKCQlnb3RvIGVycl9vdXQ7Cgl9CgoJLi4u
CgoJY3R4ID0gbnRmc19hdHRyX2dldF9zZWFyY2hfY3R4KG5pLCBtKTsKCWlmICghY3R4KSB7CgkJ
ZXJyID0gLUVOT01FTTsKCQlnb3RvIGVycl9vdXQ7Cgl9CgoJLyogRmluZCB0aGUgYXR0cmlidXRl
IGxpc3QgYXR0cmlidXRlIGlmIHByZXNlbnQuICovCgllcnIgPSBudGZzX2F0dHJfbG9va3VwKEFU
X0FUVFJJQlVURV9MSVNULCBOVUxMLCAwLCAwLCAwLCBOVUxMLCAwLCBjdHgpOwoKCS4uLgp9Cgo+
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQo+IEJVRzogS0FTQU46IHVzZS1hZnRlci1mcmVlIGluIG50ZnNfYXR0cl9maW5k
KzB4YzAyLzB4Y2UwIGZzL250ZnMvYXR0cmliLmM6NTk3Cj4gUmVhZCBvZiBzaXplIDIgYXQgYWRk
ciBmZmZmODg4MDdlMzUyMDA5IGJ5IHRhc2sgc3l6LWV4ZWN1dG9yMTUzLzM2MDcKPiBDYWxsIFRy
YWNlOgo+ICA8VEFTSz4KPiAgX19kdW1wX3N0YWNrIGxpYi9kdW1wX3N0YWNrLmM6ODggW2lubGlu
ZV0KPiAgZHVtcF9zdGFja19sdmwrMHhjZC8weDEzNCBsaWIvZHVtcF9zdGFjay5jOjEwNgo+ICBw
cmludF9hZGRyZXNzX2Rlc2NyaXB0aW9uIG1tL2thc2FuL3JlcG9ydC5jOjMxNyBbaW5saW5lXQo+
ICBwcmludF9yZXBvcnQuY29sZCsweDJiYS8weDcxOSBtbS9rYXNhbi9yZXBvcnQuYzo0MzMKPiAg
a2FzYW5fcmVwb3J0KzB4YjEvMHgxZTAgbW0va2FzYW4vcmVwb3J0LmM6NDk1Cj4gIG50ZnNfYXR0
cl9maW5kKzB4YzAyLzB4Y2UwIGZzL250ZnMvYXR0cmliLmM6NTk3Cj4gIG50ZnNfYXR0cl9sb29r
dXArMHgxMDU2LzB4MjA3MCBmcy9udGZzL2F0dHJpYi5jOjExOTMKPiAgbnRmc19yZWFkX2lub2Rl
X21vdW50KzB4ODlhLzB4MjU4MCBmcy9udGZzL2lub2RlLmM6MTg0NQo+ICBudGZzX2ZpbGxfc3Vw
ZXIrMHgxNzk5LzB4OTMyMCBmcy9udGZzL3N1cGVyLmM6Mjg1NAo+ICBtb3VudF9iZGV2KzB4MzRk
LzB4NDEwIGZzL3N1cGVyLmM6MTQwMAo+ICBsZWdhY3lfZ2V0X3RyZWUrMHgxMDUvMHgyMjAgZnMv
ZnNfY29udGV4dC5jOjYxMAo+ICB2ZnNfZ2V0X3RyZWUrMHg4OS8weDJmMCBmcy9zdXBlci5jOjE1
MzAKPiAgZG9fbmV3X21vdW50IGZzL25hbWVzcGFjZS5jOjMwNDAgW2lubGluZV0KPiAgcGF0aF9t
b3VudCsweDEzMjYvMHgxZTIwIGZzL25hbWVzcGFjZS5jOjMzNzAKPiAgZG9fbW91bnQgZnMvbmFt
ZXNwYWNlLmM6MzM4MyBbaW5saW5lXQo+ICBfX2RvX3N5c19tb3VudCBmcy9uYW1lc3BhY2UuYzoz
NTkxIFtpbmxpbmVdCj4gIF9fc2Vfc3lzX21vdW50IGZzL25hbWVzcGFjZS5jOjM1NjggW2lubGlu
ZV0KPiAgX194NjRfc3lzX21vdW50KzB4MjdmLzB4MzAwIGZzL25hbWVzcGFjZS5jOjM1NjgKPiAg
ZG9fc3lzY2FsbF94NjQgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6NTAgW2lubGluZV0KPiAgZG9f
c3lzY2FsbF82NCsweDM1LzB4YjAgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6ODAKPiAgZW50cnlf
U1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NjMvMHhjZAo+ICBbLi4uXQo+ICA8L1RBU0s+Cj4g
TWVtb3J5IHN0YXRlIGFyb3VuZCB0aGUgYnVnZ3kgYWRkcmVzczoKPiAgZmZmZjg4ODA3ZTM1MWYw
MDogZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMKPiAgZmZm
Zjg4ODA3ZTM1MWY4MDogZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMg
ZmMgZmMKPiA+ZmZmZjg4ODA3ZTM1MjAwMDogZmEgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIg
ZmIgZmIgZmIgZmIgZmIgZmIKPiAgICAgICAgICAgICAgICAgICAgICAgXgo+ICBmZmZmODg4MDdl
MzUyMDgwOiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYgo+
ICBmZmZmODg4MDdlMzUyMTAwOiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBm
YiBmYiBmYiBmYgo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQpTbyBjaGVjayB0aGVzZSBmaWVsZHMgYXMgZm9sbG93IHNo
b3VsZCBmaXggdGhlIHJvb3QgY2F1c2UgZm9yIHRoaXMKdXNlLWFmdGVyLWZyZWUgYnVnKENvcnJl
Y3QgbWUgaWYgSSBhbSB3cm9uZykuIEkgdGVzdCB0aGlzIHBhdGNoIGxvY2FsbHksCml0IGRvZXNu
J3QgdHJpZ2dlciBhbnkgaXNzdWUuCgpkaWZmIC0tZ2l0IGEvZnMvbnRmcy9pbm9kZS5jIGIvZnMv
bnRmcy9pbm9kZS5jCmluZGV4IGRiMGYxOTk1YWVkZC4uNmJhOTllMTA5Y2E5IDEwMDY0NAotLS0g
YS9mcy9udGZzL2lub2RlLmMKKysrIGIvZnMvbnRmcy9pbm9kZS5jCkBAIC0xODIyLDYgKzE4MjIs
MTEgQEAgaW50IG50ZnNfcmVhZF9pbm9kZV9tb3VudChzdHJ1Y3QgaW5vZGUgKnZpKQogICAgICAg
ICAgICAgICAgZ290byBlcnJfb3V0OwogICAgICAgIH0KIAorICAgICAgIGlmIChtLT5hdHRyc19v
ZmZzZXQgPj0gbGUzMl90b19jcHUobS0+Ynl0ZXNfYWxsb2NhdGVkKSkgeworICAgICAgICAgICAg
ICAgbnRmc19lcnJvcihzYiwgIkluY29ycmVjdCBtZnQgcmVjb3JkIGF0dHJzX29mZnNldCAldSIs
IG0tPmF0dHJzX29mZnNldCk7CisgICAgICAgICAgICAgICBnb3RvIGVycl9vdXQ7CisgICAgICAg
fQorCiAgICAgICAgLyogQXBwbHkgdGhlIG1zdCBmaXh1cHMuICovCiAgICAgICAgaWYgKHBvc3Rf
cmVhZF9tc3RfZml4dXAoKE5URlNfUkVDT1JEKiltLCB2b2wtPm1mdF9yZWNvcmRfc2l6ZSkpIHsK
ICAgICAgICAgICAgICAgIC8qIEZJWE1FOiBUcnkgdG8gdXNlIHRoZSAkTUZUTWlyciBub3cuICov
CgoKV2hhdCdzIHlvdXIgb3Bpbmlvbj8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1E
ZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
