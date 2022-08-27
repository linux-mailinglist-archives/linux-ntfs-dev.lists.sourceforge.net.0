Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BD25A3840
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Aug 2022 17:04:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRxMh-0004bm-O8;
	Sat, 27 Aug 2022 15:04:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oRx8l-0000LW-5l
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 14:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dZ4zlrr+go/KaBB0jREILJ4K7QdtlExm7aQVnIZgPn8=; b=L18s0wfEu+UB10gzPmTe6B9qxV
 GVldTH7hz+ml1Zzwi7mUZd6cuyx7VrDWni5/GmyEflkIyTvo71bSPj2gr1sN6VOEird+gWWstr8YC
 nFzIlJJ3iQgEGEkM7nXpqUg08E+PioHmrRQQPt1iyOyLIc6NyItwWa+LcuRiGViqVxQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dZ4zlrr+go/KaBB0jREILJ4K7QdtlExm7aQVnIZgPn8=; b=JDiSlAAqTbvFAIDw9evFYEEjz6
 CT/Q8bDJMaPETAeaMKN12WolwDg3uY5bXdiAtnwA+qZUiNMUJdfqJxhyezTErSg/pJXZ/T6QUWDUq
 37rIKsV3jH0jr5tpbrCpcGoeT1gzw2XY6R5hMjgHi7DXOSH4QDDkmgKZkLNk4KW2DQWE=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRx8k-0007ET-1D for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 14:50:26 +0000
Received: by mail-pf1-f181.google.com with SMTP id 72so4215264pfx.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Aug 2022 07:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=dZ4zlrr+go/KaBB0jREILJ4K7QdtlExm7aQVnIZgPn8=;
 b=loHmnPaZgxZiI8nLJHM0/6F+WR9dv629rzz9HnMyYWhc5x+MavOwZaPcU/BwJVygl5
 ArKBUI7UNJzAqSVoLrwChUEHaLq1tpoYCfxjWjkX/RGaseYmIZLbuOliNOpf3fiIey2T
 IyRg5H0//A7Sl13WeiPhGX86Sm9TVxfM8jMVLCaXCswP0mSWBUQTj7VtDXlgxCjWUHu7
 aDvYjYaM/4USdI5kGPpmjAMZNaIN1Z3kicc8mw1t5EAi/mBzmso1z5x5vmWndv1KnhqD
 8ZH+8vuXog1VdwRfWpnqt5muJktTCbxYe77BYMq3rskO84l7TzVWy5iBmlOo1VivrSAz
 ROKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=dZ4zlrr+go/KaBB0jREILJ4K7QdtlExm7aQVnIZgPn8=;
 b=Xpu8OCuN8KmGYU3/mgyE7ICuXjrG10vW9m5EWELcoCPmp7ooDzJRyl91peQTJKTffJ
 HcIWRV92kST7SeEyF/v47NUIVjD/3S0GYgXwTj4S4UNPlpnI5Ap4Prbi0EHVQw9tN2ZO
 NK6DvC3Sfq/y9F3oEif6XeGsdJ3W3AetWaYrQrKxhUk9gi4/GokhQVFiOCUtaPWNwuuB
 vQVe5gQs8LSKNbBMFJFkBngZiIMZ+XVFEueDLCzrI6GiF1n1gq9yC11S0B0k9/5KP3My
 emNis/v1esQdHBrLAfE98aYRb8AIfeO9oOk6PqBOekreZz+a0czj8hwnJp4fQtncCgw9
 PBUQ==
X-Gm-Message-State: ACgBeo2ILCFbq5txX+MLPMIR8LZ6nqColXda0DmmbQCIxuUKupnu08wv
 oq1YbisaZe7agdA2iysrRpY=
X-Google-Smtp-Source: AA6agR78Svaxuabnx52QbLppHuW6RmmkeGfzVNIRu3kFq6ssXA/9Eh3r3054yiZeluQ3TjLIlkYxmA==
X-Received: by 2002:a65:468a:0:b0:42b:3b13:f7ee with SMTP id
 h10-20020a65468a000000b0042b3b13f7eemr7486715pgr.112.1661611820383; 
 Sat, 27 Aug 2022 07:50:20 -0700 (PDT)
Received: from localhost ([223.104.39.136]) by smtp.gmail.com with ESMTPSA id
 y8-20020a17090a16c800b001faafa42a9esm3481850pje.26.2022.08.27.07.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Aug 2022 07:50:19 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: yin31149@gmail.com
Date: Sat, 27 Aug 2022 22:49:44 +0800
Message-Id: <20220827144943.5290-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220827075143.61311-1-yin31149@gmail.com>
References: <20220827075143.61311-1-yin31149@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, 27 Aug 2022 at 15:59, Hawkins Jiawei wrote: > > On
    Sat, 27 Aug 2022 at 09:29, chenxiaosong (A) wrote: > > > > 在 2022/8/26
   20:27, Hawkins Jiawei 写道: > > > syz test https://git.kernel. [...] 
 
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
                             [209.85.210.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.210.181 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oRx8k-0007ET-1D
X-Mailman-Approved-At: Sat, 27 Aug 2022 15:04:49 +0000
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gU2F0LCAyNyBBdWcgMjAyMiBhdCAxNTo1OSwgSGF3a2lucyBKaWF3ZWkgPHlpbjMxMTQ5QGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIDI3IEF1ZyAyMDIyIGF0IDA5OjI5LCBjaGVueGlh
b3NvbmcgKEEpIDxjaGVueGlhb3NvbmcyQGh1YXdlaS5jb20+IHdyb3RlOgo+ID4KPiA+IOWcqCAy
MDIyLzgvMjYgMjA6MjcsIEhhd2tpbnMgSmlhd2VpIOWGmemBkzoKPiA+ID4gc3l6IHRlc3QgaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGlu
dXguZ2l0IG1hc3Rlcgo+ID4gPgo+ID4gPiBMb29rcyBsaWtlIGl0IGlzIGltcHJvcGVyIGNoZWNr
IG9yZGVyIHRoYXQgY2F1c2VzIHRoaXMgYnVnLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBI
YXdraW5zIEppYXdlaSA8eWluMzExNDlAZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gwqAgZnMv
bnRmcy9hdHRyaWIuYyB8IDUgKysrLS0KPiA+ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2ZzL250ZnMv
YXR0cmliLmMgYi9mcy9udGZzL2F0dHJpYi5jCj4gPiA+IGluZGV4IDUyNjE1ZTYwOTBlMS4uNjQ4
MGNkMmQzNzFkIDEwMDY0NAo+ID4gPiAtLS0gYS9mcy9udGZzL2F0dHJpYi5jCj4gPiA+ICsrKyBi
L2ZzL250ZnMvYXR0cmliLmMKPiA+ID4gQEAgLTU5NCwxMCArNTk0LDExIEBAIHN0YXRpYyBpbnQg
bnRmc19hdHRyX2ZpbmQoY29uc3QgQVRUUl9UWVBFIHR5cGUsIGNvbnN0IG50ZnNjaGFyICpuYW1l
LAo+ID4gPiDCoCDCoCDCoCBmb3IgKDs7IGEgPSAoQVRUUl9SRUNPUkQqKSgodTgqKWEgKyBsZTMy
X3RvX2NwdShhLT5sZW5ndGgpKSkgewo+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1OCAqbXJl
Y19lbmQgPSAodTggKiljdHgtPm1yZWMgKwo+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoGxlMzJfdG9fY3B1KGN0eC0+bXJlYy0+Ynl0ZXNfYWxsb2NhdGVk
KTsKPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoKHU4KilhIDwgKHU4KiljdHgtPm1yZWMg
fHwgKHU4KilhID4gbXJlY19lbmQpCj4gPiA+ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgYnJlYWs7Cj4gPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIHU4ICpuYW1lX2VuZCA9ICh1OCAq
KWEgKyBsZTE2X3RvX2NwdShhLT5uYW1lX29mZnNldCkgKwo+ID4gPiDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGEtPm5hbWVfbGVuZ3RoICogc2l6ZW9mKG50ZnNj
aGFyKTsKPiA+ID4gLSDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoKHU4KilhIDwgKHU4KiljdHgtPm1y
ZWMgfHwgKHU4KilhID4gbXJlY19lbmQgfHwKPiA+ID4gLSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBuYW1lX2VuZCA+IG1yZWNfZW5kKQo+ID4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChuYW1l
X2VuZCA+IG1yZWNfZW5kKQo+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBi
cmVhazsKPiA+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgY3R4LT5hdHRyID0gYTsKPiA+ID4gwqAg
wqAgwqAgwqAgwqAgwqAgwqAgaWYgKHVubGlrZWx5KGxlMzJfdG9fY3B1KGEtPnR5cGUpID4gbGUz
Ml90b19jcHUodHlwZSkgfHwKPiA+ID4KPiA+Cj4gPiBUaGUgcmVhc29uIGlzIHRoYXQgYS0+bGVu
Z3RoIGlzIDAsIGl0IHdpbGwgb2NjdXIgdWFmIHdoZW4gZGVyZWYgYW55Cj4gPiBmaWVsZCBvZiBB
VFRSX1JFQ09SRC4KPiA+Cj4gPiBJdCBzZWVtcyB0aGF0IGNoYW5naW5nIGNoZWNrIG9yZGVyIHdp
bGwgbm90IGZpeCByb290IGNhdXNlLCBpZiB0aGUKPiA+IGNvbmRpdGlvbiAiaWYgKCh1OCopYSA8
ICh1OCopY3R4LT5tcmVjIHx8ICh1OCopYSA+IG1yZWNfZW5kKSIgaXMgZmFsc2UsCj4gPiB1YWYg
d2lsbCBzdGlsbCBvY2N1ci4KPiA+Cj4gPiBEbyB5b3UgaGF2ZSBhbnkgdGhvdWdodHMgb24gdGhp
cyA/Cj4gSGksIGNoZW54aWFvc29uZwo+Cj4gSSB0aGluayBjaGFuZ2luZyB0aGUgY2hlY2sgb3Jk
ZXIgaXMgYWJsZSB0byBmaXggdGhpcyBidWcuIEJ1dCB3ZSBtYXkgbmVlZAo+IHRvIGNoZWNrIHdo
ZXRoZXIgbWZ0IHJlY29yZCBoZWFkZXIgaXMgb3V0IG9mIGJvdW5kcywgbWF5YmUKPiAiaWYgKCh1
OCopYSA8ICh1OCopY3R4LT5tcmVjIHx8ICh1OCopYSArIHNpemVvZihNRlRfUkVDT1JEKSA+IG1y
ZWNfZW5kKSIKPgo+IEJlY2F1c2Ugd2UganVzdCBuZWVkIHRvIGNoZWNrIGlmIHRoaXMgQVRUUl9S
RUNPUkQgaXMgaW4gdmFsaWQgYWRkcmVzc3MuIEFzIGZvcgo+IHNpdHVhdGlvbiB0aGF0IGEtPmxl
bmd0aCBpcyAwLCB0aGVyZSBzZWVtcyBhbHJlYWR5IGEgY2hlY2sgaW4gdGhlIGxvb3AKPiAoQ29y
cmVjdCBtZSBpZiBJIGFtIHdyb25nKToKPiA+IHN0YXRpYyBpbnQgbnRmc19hdHRyX2ZpbmQoY29u
c3QgQVRUUl9UWVBFIHR5cGUsIGNvbnN0IG50ZnNjaGFyICpuYW1lLAo+ID4gwqAgwqAgwqAgwqAg
wqAgwqAgwqAgY29uc3QgdTMyIG5hbWVfbGVuLCBjb25zdCBJR05PUkVfQ0FTRV9CT09MIGljLAo+
ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgY29uc3QgdTggKnZhbCwgY29uc3QgdTMyIHZhbF9sZW4s
IG50ZnNfYXR0cl9zZWFyY2hfY3R4ICpjdHgpCj4gPiB7Cj4gPiDCoCDCoCDCoCAuLi4KPiA+Cj4g
PiDCoCDCoCDCoCBmb3IgKDs7IGEgPSAoQVRUUl9SRUNPUkQqKSgodTgqKWEgKyBsZTMyX3RvX2Nw
dShhLT5sZW5ndGgpKSkgewo+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgdTggKm1yZWNfZW5kID0g
KHU4ICopY3R4LT5tcmVjICsKPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgbGUzMl90b19jcHUoY3R4LT5tcmVjLT5ieXRlc19hbGxvY2F0ZWQpOwo+ID4gwqAg
wqAgwqAgwqAgwqAgwqAgwqAgdTggKm5hbWVfZW5kID0gKHU4ICopYSArIGxlMTZfdG9fY3B1KGEt
Pm5hbWVfb2Zmc2V0KSArCj4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGEtPm5hbWVfbGVuZ3RoICogc2l6ZW9mKG50ZnNjaGFyKTsKPiA+IMKgIMKgIMKgIMKg
IMKgIMKgIMKgIGlmICgodTgqKWEgPCAodTgqKWN0eC0+bXJlYyB8fCAodTgqKWEgPiBtcmVjX2Vu
ZCB8fAo+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgbmFtZV9lbmQgPiBtcmVjX2VuZCkK
PiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJyZWFrOwo+ID4gwqAgwqAgwqAg
wqAgwqAgwqAgwqAgY3R4LT5hdHRyID0gYTsKPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICh1
bmxpa2VseShsZTMyX3RvX2NwdShhLT50eXBlKSA+IGxlMzJfdG9fY3B1KHR5cGUpIHx8Cj4gPiDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBhLT50eXBlID09IEFU
X0VORCkpCj4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gLUVOT0VO
VDsKPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICh1bmxpa2VseSghYS0+bGVuZ3RoKSkKPiA+
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJyZWFrOwo+ID4gwqAgwqAgwqAgLi4u
Cj4gPiB9Cj4KPiBBbmQgYXMgZm9yIHRoZSByb290IGNhdXNlIGZvciB1c2UtYWZ0ZXItZnJlZSBy
ZWFkLCBJIHRoaW5rIGl0IGlzIHRoZQo+IGN0eC0+YXR0ci0+bGVuZ3RoIHRvIGJlIGJsYW1lZC4K
QXBvbG9naXplIGZvciBteSB0eXBpbmcgZXJyb3IsIGl0IGlzIHRoZSBjdHgtPmF0dHIgc2hvdWxk
IGJlIGJsYW1lZDoKCnN0YXRpYyBpbnQgbnRmc19hdHRyX2ZpbmQoY29uc3QgQVRUUl9UWVBFIHR5
cGUsIGNvbnN0IG50ZnNjaGFyICpuYW1lLAoJCWNvbnN0IHUzMiBuYW1lX2xlbiwgY29uc3QgSUdO
T1JFX0NBU0VfQk9PTCBpYywKCQljb25zdCB1OCAqdmFsLCBjb25zdCB1MzIgdmFsX2xlbiwgbnRm
c19hdHRyX3NlYXJjaF9jdHggKmN0eCkKewoJQVRUUl9SRUNPUkQgKmE7CgludGZzX3ZvbHVtZSAq
dm9sID0gY3R4LT5udGZzX2luby0+dm9sOwoJbnRmc2NoYXIgKnVwY2FzZSA9IHZvbC0+dXBjYXNl
OwoJdTMyIHVwY2FzZV9sZW4gPSB2b2wtPnVwY2FzZV9sZW47CgoJLyoKCSAqIEl0ZXJhdGUgb3Zl
ciBhdHRyaWJ1dGVzIGluIG1mdCByZWNvcmQgc3RhcnRpbmcgYXQgQGN0eC0+YXR0ciwgb3IgdGhl
CgkgKiBhdHRyaWJ1dGUgZm9sbG93aW5nIHRoYXQsIGlmIEBjdHgtPmlzX2ZpcnN0IGlzICd0cnVl
Jy4KCSAqLwoJaWYgKGN0eC0+aXNfZmlyc3QpIHsKCQlhID0gY3R4LT5hdHRyOwoJCWN0eC0+aXNf
Zmlyc3QgPSBmYWxzZTsKCX0gZWxzZQoJCWEgPSAoQVRUUl9SRUNPUkQqKSgodTgqKWN0eC0+YXR0
ciArCgkJCQlsZTMyX3RvX2NwdShjdHgtPmF0dHItPmxlbmd0aCkpOwoJLi4uCn0KClRoZSAiY3R4
LT5hdHRyIiBpcyBub3QgaW52YWxpZCwgdGhlbiB0aGUgcG9pbnRlciAiYSIgd2lsbCBwcm9iYWJs
eSBhbHNvCnBvaW50cyB0byBhbiBpbnZhbGlkIG1lbW9yeSwgd2hpY2ggdHJpZ2dlcnMgYSB1c2Ut
YWZ0ZXItZnJlZSByZWFkLgpUaGlzIGFsc28gcHJvYmFibHkgZXhwbGFpbnMgd2h5IHRoZSBtZW1v
cnkgc3RhdGUgYXJvdW5kIHRoZSBidWdneSBhZGRyZXNzIGFyZQphbGwgaW52YWxpZCBpbiBLQVNB
TiwgaW5zdGVhZCBvZiBhdCB0aGUgYm91bmRlciBiZXR3ZWVuIHZhbGlkIG1lbW9yeQphbmQgaW52
YWxpZCBtZW1vcnkKCllldCB0aGUgYW5hbHlzaXMgYmVsb3cgaXMgc3RpbGwgY29ycmVjdC4gY3R4
LT5hdHRyIGlzIGFzc2lnbmVkIHdpdGgKIigodTgqKW1yZWMgKyBsZTE2X3RvX2NwdShtcmVjLT5h
dHRyc19vZmZzZXQpKSIgaW4KbnRmc19hdHRyX2luaXRfc2VhcmNoX2N0eCgpCj4KPiBUbyBiZSBt
b3JlIHNwZWNpZmljLCB3aGVuIGtlcm5lbCBsb2FkcyB0aGUgc3RydWN0IE1GVF9SRUNPUkQgZnJv
bSBkaXNrCj4gaW4gbnRmc19yZWFkX2lub2RlX21vdW50KCksIMKgbSdzIGF0dHJzX29mZnNldCBm
aWVsZCBzaG91bGQgbGVzcyB0aGFuCj4gbSdzIGJ5dGVzX2FsbG9jYXRlZCBmaWVsZCwgb3IgaXQg
bWF5IG91dCBvZiB0aGUgYm91bmRzOgo+Cj4gaW50IG50ZnNfcmVhZF9pbm9kZV9tb3VudChzdHJ1
Y3QgaW5vZGUgKnZpKQo+IHsKPiDCoCDCoCDCoCDCoCAuLi4KPiDCoCDCoCDCoCDCoCBNRlRfUkVD
T1JEICptID0gTlVMTDsKPiDCoCDCoCDCoCDCoCBpID0gdm9sLT5tZnRfcmVjb3JkX3NpemU7Cj4K
PiDCoCDCoCDCoCDCoCAuLi4KPiDCoCDCoCDCoCDCoCBtID0gKE1GVF9SRUNPUkQqKW50ZnNfbWFs
bG9jX25vZnMoaSk7Cj4KPiDCoCDCoCDCoCDCoCAvKiBEZXRlcm1pbmUgdGhlIGZpcnN0IGJsb2Nr
IG9mIHRoZSAkTUZULyREQVRBIGF0dHJpYnV0ZS4gKi8KPiDCoCDCoCDCoCDCoCBibG9jayA9IHZv
bC0+bWZ0X2xjbiA8PCB2b2wtPmNsdXN0ZXJfc2l6ZV9iaXRzID4+Cj4gwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgc2ItPnNfYmxvY2tzaXplX2JpdHM7Cj4gwqAgwqAgwqAgwqAg
bnJfYmxvY2tzID0gdm9sLT5tZnRfcmVjb3JkX3NpemUgPj4gc2ItPnNfYmxvY2tzaXplX2JpdHM7
Cj4KPiDCoCDCoCDCoCDCoCAuLi4KPgo+IMKgIMKgIMKgIMKgIC8qIExvYWQgJE1GVC8kREFUQSdz
IGZpcnN0IG1mdCByZWNvcmQuICovCj4gwqAgwqAgwqAgwqAgZm9yIChpID0gMDsgaSA8IG5yX2Js
b2NrczsgaSsrKSB7Cj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYmggPSBzYl9icmVhZChzYiwg
YmxvY2srKyk7Cj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKCFiaCkgewo+IMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG50ZnNfZXJyb3Ioc2IsICJEZXZpY2UgcmVhZCBm
YWlsZWQuIik7Cj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZ290byBlcnJf
b3V0Owo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIH0KPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBtZW1jcHkoKGNoYXIqKW0gKyAoaSA8PCBzYi0+c19ibG9ja3NpemVfYml0cyksIGJoLT5iX2Rh
dGEsCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc2It
PnNfYmxvY2tzaXplKTsKPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBicmVsc2UoYmgpOwo+IMKg
IMKgIMKgIMKgIH0KPgo+IMKgIMKgIMKgIMKgIGlmIChsZTMyX3RvX2NwdShtLT5ieXRlc19hbGxv
Y2F0ZWQpICE9IHZvbC0+bWZ0X3JlY29yZF9zaXplKSB7Cj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgbnRmc19lcnJvcihzYiwgIkluY29ycmVjdCBtZnQgcmVjb3JkIHNpemUgJXUgaW4gc3VwZXJi
bG9jaywgc2hvdWxkIGJlICV1LiIsCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgbGUzMl90b19jcHUobS0+Ynl0ZXNfYWxsb2NhdGVkKSwgdm9sLT5tZnRf
cmVjb3JkX3NpemUpOwo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGdvdG8gZXJyX291dDsKPiDC
oCDCoCDCoCDCoCB9Cj4KPiDCoCDCoCDCoCDCoCAuLi4KPgo+IMKgIMKgIMKgIMKgIGN0eCA9IG50
ZnNfYXR0cl9nZXRfc2VhcmNoX2N0eChuaSwgbSk7Cj4gwqAgwqAgwqAgwqAgaWYgKCFjdHgpIHsK
PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBlcnIgPSAtRU5PTUVNOwo+IMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIGdvdG8gZXJyX291dDsKPiDCoCDCoCDCoCDCoCB9Cj4KPiDCoCDCoCDCoCDCoCAv
KiBGaW5kIHRoZSBhdHRyaWJ1dGUgbGlzdCBhdHRyaWJ1dGUgaWYgcHJlc2VudC4gKi8KPiDCoCDC
oCDCoCDCoCBlcnIgPSBudGZzX2F0dHJfbG9va3VwKEFUX0FUVFJJQlVURV9MSVNULCBOVUxMLCAw
LCAwLCAwLCBOVUxMLCAwLCBjdHgpOwo+Cj4gwqAgwqAgwqAgwqAgLi4uCj4gfQo+Cj4gPiA9PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KPiA+IEJVRzogS0FTQU46IHVzZS1hZnRlci1mcmVlIGluIG50ZnNfYXR0cl9maW5kKzB4
YzAyLzB4Y2UwIGZzL250ZnMvYXR0cmliLmM6NTk3Cj4gPiBSZWFkIG9mIHNpemUgMiBhdCBhZGRy
IGZmZmY4ODgwN2UzNTIwMDkgYnkgdGFzayBzeXotZXhlY3V0b3IxNTMvMzYwNwo+ID4gQ2FsbCBU
cmFjZToKPiA+IMKgPFRBU0s+Cj4gPiDCoF9fZHVtcF9zdGFjayBsaWIvZHVtcF9zdGFjay5jOjg4
IFtpbmxpbmVdCj4gPiDCoGR1bXBfc3RhY2tfbHZsKzB4Y2QvMHgxMzQgbGliL2R1bXBfc3RhY2su
YzoxMDYKPiA+IMKgcHJpbnRfYWRkcmVzc19kZXNjcmlwdGlvbiBtbS9rYXNhbi9yZXBvcnQuYzoz
MTcgW2lubGluZV0KPiA+IMKgcHJpbnRfcmVwb3J0LmNvbGQrMHgyYmEvMHg3MTkgbW0va2FzYW4v
cmVwb3J0LmM6NDMzCj4gPiDCoGthc2FuX3JlcG9ydCsweGIxLzB4MWUwIG1tL2thc2FuL3JlcG9y
dC5jOjQ5NQo+ID4gwqBudGZzX2F0dHJfZmluZCsweGMwMi8weGNlMCBmcy9udGZzL2F0dHJpYi5j
OjU5Nwo+ID4gwqBudGZzX2F0dHJfbG9va3VwKzB4MTA1Ni8weDIwNzAgZnMvbnRmcy9hdHRyaWIu
YzoxMTkzCj4gPiDCoG50ZnNfcmVhZF9pbm9kZV9tb3VudCsweDg5YS8weDI1ODAgZnMvbnRmcy9p
bm9kZS5jOjE4NDUKPiA+IMKgbnRmc19maWxsX3N1cGVyKzB4MTc5OS8weDkzMjAgZnMvbnRmcy9z
dXBlci5jOjI4NTQKPiA+IMKgbW91bnRfYmRldisweDM0ZC8weDQxMCBmcy9zdXBlci5jOjE0MDAK
PiA+IMKgbGVnYWN5X2dldF90cmVlKzB4MTA1LzB4MjIwIGZzL2ZzX2NvbnRleHQuYzo2MTAKPiA+
IMKgdmZzX2dldF90cmVlKzB4ODkvMHgyZjAgZnMvc3VwZXIuYzoxNTMwCj4gPiDCoGRvX25ld19t
b3VudCBmcy9uYW1lc3BhY2UuYzozMDQwIFtpbmxpbmVdCj4gPiDCoHBhdGhfbW91bnQrMHgxMzI2
LzB4MWUyMCBmcy9uYW1lc3BhY2UuYzozMzcwCj4gPiDCoGRvX21vdW50IGZzL25hbWVzcGFjZS5j
OjMzODMgW2lubGluZV0KPiA+IMKgX19kb19zeXNfbW91bnQgZnMvbmFtZXNwYWNlLmM6MzU5MSBb
aW5saW5lXQo+ID4gwqBfX3NlX3N5c19tb3VudCBmcy9uYW1lc3BhY2UuYzozNTY4IFtpbmxpbmVd
Cj4gPiDCoF9feDY0X3N5c19tb3VudCsweDI3Zi8weDMwMCBmcy9uYW1lc3BhY2UuYzozNTY4Cj4g
PiDCoGRvX3N5c2NhbGxfeDY0IGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjUwIFtpbmxpbmVdCj4g
PiDCoGRvX3N5c2NhbGxfNjQrMHgzNS8weGIwIGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjgwCj4g
PiDCoGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDYzLzB4Y2QKPiA+IMKgWy4uLl0K
PiA+IMKgPC9UQVNLPgo+ID4gTWVtb3J5IHN0YXRlIGFyb3VuZCB0aGUgYnVnZ3kgYWRkcmVzczoK
PiA+IMKgZmZmZjg4ODA3ZTM1MWYwMDogZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMg
ZmMgZmMgZmMgZmMgZmMKPiA+IMKgZmZmZjg4ODA3ZTM1MWY4MDogZmMgZmMgZmMgZmMgZmMgZmMg
ZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMKPiA+ID5mZmZmODg4MDdlMzUyMDAwOiBmYSBm
YiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYgo+ID4gwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgXgo+ID4gwqBmZmZmODg4MDdlMzUyMDgwOiBmYiBmYiBm
YiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYgo+ID4gwqBmZmZmODg4MDdl
MzUyMTAwOiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYgo+
ID4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09Cj4gU28gY2hlY2sgdGhlc2UgZmllbGRzIGFzIGZvbGxvdyBzaG91bGQgZml4
IHRoZSByb290IGNhdXNlIGZvciB0aGlzCj4gdXNlLWFmdGVyLWZyZWUgYnVnKENvcnJlY3QgbWUg
aWYgSSBhbSB3cm9uZykuIEkgdGVzdCB0aGlzIHBhdGNoIGxvY2FsbHksCj4gaXQgZG9lc24ndCB0
cmlnZ2VyIGFueSBpc3N1ZS4KPgo+IGRpZmYgLS1naXQgYS9mcy9udGZzL2lub2RlLmMgYi9mcy9u
dGZzL2lub2RlLmMKPiBpbmRleCBkYjBmMTk5NWFlZGQuLjZiYTk5ZTEwOWNhOSAxMDA2NDQKPiAt
LS0gYS9mcy9udGZzL2lub2RlLmMKPiArKysgYi9mcy9udGZzL2lub2RlLmMKPiBAQCAtMTgyMiw2
ICsxODIyLDExIEBAIGludCBudGZzX3JlYWRfaW5vZGVfbW91bnQoc3RydWN0IGlub2RlICp2aSkK
PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBnb3RvIGVycl9vdXQ7Cj4gwqAgwqAgwqAgwqAgfQo+
Cj4gKyDCoCDCoCDCoCBpZiAobS0+YXR0cnNfb2Zmc2V0ID49IGxlMzJfdG9fY3B1KG0tPmJ5dGVz
X2FsbG9jYXRlZCkpIHsKPiArIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG50ZnNfZXJyb3Ioc2IsICJJ
bmNvcnJlY3QgbWZ0IHJlY29yZCBhdHRyc19vZmZzZXQgJXUiLCBtLT5hdHRyc19vZmZzZXQpOwo+
ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZ290byBlcnJfb3V0Owo+ICsgwqAgwqAgwqAgfQo+ICsK
PiDCoCDCoCDCoCDCoCAvKiBBcHBseSB0aGUgbXN0IGZpeHVwcy4gKi8KPiDCoCDCoCDCoCDCoCBp
ZiAocG9zdF9yZWFkX21zdF9maXh1cCgoTlRGU19SRUNPUkQqKW0sIHZvbC0+bWZ0X3JlY29yZF9z
aXplKSkgewo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIC8qIEZJWE1FOiBUcnkgdG8gdXNlIHRo
ZSAkTUZUTWlyciBub3cuICovCj4KPgo+IFdoYXQncyB5b3VyIG9waW5pb24/CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtTlRGUy1EZXYgbWFp
bGluZyBsaXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
