Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DEC4FA79D
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Apr 2022 14:21:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ndA5f-0001Kh-Kf; Sat, 09 Apr 2022 12:21:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <massimiliano.ghilardi@gmail.com>) id 1nd99R-0001gh-GU
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 11:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From
 :To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KWqf30NawA1+l7fPwJ7NjzIBsCsvR4xZoBJcCitnGws=; b=FPU4W63GvDScz2cUnGssFZ6tkP
 2mpZFoEqJOQSbe8g54tBAdp3mpJZvtSChepchE7XQmgpJg+mmaLwOTsn9eENGCqnYRcr0nwGx2eHg
 1AsrYBoVpwXNgKAtqbuSdhLr2SPObhsPARqBGhkV77aLp4CRa9OdbY8NO8fj6BlFmtXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:To:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KWqf30NawA1+l7fPwJ7NjzIBsCsvR4xZoBJcCitnGws=; b=M
 mtp3BPd7D47WPfy/g/H4PAz9r8j+2Ahlam3tSmzEUCjRtVK+SRxZkrNtj/4d1946nyc+iMQOPXmcA
 cFE/IMm7YAst31tnRA/ytQ/X8I/9mD69GEQBg9rdWopyQj+0uPkPtyGsNiW007leYptCc0c17u+tn
 eKQfitHVmfVDZ7N8=;
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nd99O-00Ajsz-2Y
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 11:21:07 +0000
Received: by mail-ed1-f51.google.com with SMTP id d10so12784917edj.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 09 Apr 2022 04:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:from
 :subject:content-transfer-encoding;
 bh=KWqf30NawA1+l7fPwJ7NjzIBsCsvR4xZoBJcCitnGws=;
 b=Nb7slUOtHu6+cZIFRFDssK+y71z7urrKgAldt81IAbtMD2tkYZMShXz0fQP6pWjfZ+
 pGwoIBW6YrC/zLzk01Oi2/66K0y791RyT298YJLTGSJOqEvubVPQYTrrz6yecVMAY9kE
 HrITergVa/m5rTbJuPitPCKnfgS5nyvzO0rdLr+G6vLFnV06rkJ6kUpLpuwS48VQiTdH
 5STvndV/fMz3mwZzS9aRUhM2GVZYpPwO70N5uQ944xrriGvxlm4vC8l7Kl6d2YmzYPdf
 QTi5cNWG66K5g6bqVFIFN5HUDOjQXVNDn4PMoFeQcrKenvssJ2/EC5+TmggivZYrl4wO
 V8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:from:subject:content-transfer-encoding;
 bh=KWqf30NawA1+l7fPwJ7NjzIBsCsvR4xZoBJcCitnGws=;
 b=u1WcW+N8OY5rR+UeoAgYCLDhBm8vfn6ZPg/X9soJf6N9CxecbUG3ymRg5vz7fs8JhP
 PnZ/6lAUdyC3aiYq+DgWhPkGF6GYBjkUkcDRimrifzVmFuE5bqP2T+xhxD0I9+pjPNIR
 4vyrx5GTQqsSTR55R3UyQRz/lFcWpWUu6so4VfL9pexVdU5wAjB0Qx+TSV2RHu9bUhXN
 4rH54A5iFHWjh9t5wMyIrpmP0LPYqHJgUcHO3tCfo9yzeuk0lgdy2YMW8YfhbdSqI3XL
 vIT+TYkAkv3oVKh1tTi2iBS37wozy6uykXKHsZKrzyxlDO8ymVCBdLPrPylUNz553MOC
 fB5Q==
X-Gm-Message-State: AOAM531S8C/tLe+Aevk74yNkzuaXcLe2iW8ACryGeYd/FGzZeGnxp9MS
 S5ihV8EfLvLarWDTzs4MdezEDbsUk1k=
X-Google-Smtp-Source: ABdhPJzvIiJEg4YvfLvC0aq9ysjSSSGg7p52lsYPa6GhL0AUJn1IF1Ee1728qtstbI1+59C+6uUuRw==
X-Received: by 2002:a05:6402:4247:b0:419:3990:3db6 with SMTP id
 g7-20020a056402424700b0041939903db6mr23306448edb.193.1649503259443; 
 Sat, 09 Apr 2022 04:20:59 -0700 (PDT)
Received: from [192.168.1.2] (net-109-115-117-87.cust.vodafonedsl.it.
 [109.115.117.87]) by smtp.gmail.com with ESMTPSA id
 v8-20020a50d848000000b0041cb912717asm9601091edj.91.2022.04.09.04.20.58
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Apr 2022 04:20:58 -0700 (PDT)
Message-ID: <7465eba0-419d-17de-1fb7-9f3fc6c1c348@gmail.com>
Date: Sat, 9 Apr 2022 13:20:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.1
Content-Language: en-US
To: linux-ntfs-dev@lists.sourceforge.net
From: Massimiliano Ghilardi <massimiliano.ghilardi@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello everybody,
 I am fstransform author (https://github.com/cosmos72/fstransform), 
 and I am currently testing it on ntfs3-mounted filesystems,
 in order to understand
 whether fstransform is able to use the recently me [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [massimiliano.ghilardi[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.51 listed in wl.mailspike.net]
X-Headers-End: 1nd99O-00Ajsz-2Y
X-Mailman-Approved-At: Sat, 09 Apr 2022 12:21:14 +0000
Subject: [Linux-NTFS-Dev] ntfs3 sparse file support status?
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGVsbG8gZXZlcnlib2R5LAoKSSBhbSBmc3RyYW5zZm9ybSBhdXRob3IgKGh0dHBzOi8vZ2l0aHVi
LmNvbS9jb3Ntb3M3Mi9mc3RyYW5zZm9ybSksCmFuZCBJIGFtIGN1cnJlbnRseSB0ZXN0aW5nIGl0
IG9uIG50ZnMzLW1vdW50ZWQgZmlsZXN5c3RlbXMsCmluIG9yZGVyIHRvIHVuZGVyc3RhbmQgd2hl
dGhlciBmc3RyYW5zZm9ybSBpcyBhYmxlIHRvIHVzZSB0aGUgcmVjZW50bHkgCm1lcmdlZApudGZz
MyBrZXJuZWwgbW9kdWxlIHRvIGNvbnZlcnQgbnRmcyBmaWxlc3lzdGVtcyB0byBleHQ0L3hmcyBl
dGMuCgpQcmV2aW91cyBhdHRlbXB0cyB1c2luZyBmdXNlIG50ZnMtM2cgb3IgdGhlIG9sZCwgcmVh
ZC1vbmx5IG50ZnMga2VybmVsIAptb2R1bGUKaGFkIGRpc2FwcG9pbnRpbmcgKHJlYWQ6IG5lZ2F0
aXZlKSByZXN1bHRzIGR1ZSB0byB0aGVpciBsaW1pdGF0aW9ucywgc28gCkkgYW0gaG9waW5nCnRo
YXQgaW4ta2VybmVsIHJlYWQtd3JpdGUgTlRGUyBzdXBwb3J0IHdvdWxkIGZhcmUgYmV0dGVyLgoK
TXkgc2V0dXAgaXM6CiogTGludXgvYW1kNjQgKyBEZWJpYW4gMTEgKGJvb2t3b3JtKQoqIGtlcm5l
bCA1LjE3LjIsIGNvbXBpbGVkIGZyb20gc291cmNlcyB0byBlbmFibGUgbnRmczMgc3VwcG9ydCAo
RGViaWFuIAprZXJuZWxzIGRvIG5vdCB5ZXQgZW5hYmxlIGl0KQoqIGEgbGFyZ2UgbG9vcC1tb3Vu
dGVkIGZpbGUgY29udGFpbmluZyBhbiBOVEZTIGZpbGVzeXN0ZW06CgojIGxzIC1hbCBudGZzLmlt
Zwotcnctci0tLS0tIDEgbWF4IHVzZXJzIDUzNjAzMjA1MTIwIEFwcsKgIDkgMTI6NTUgbnRmcy5p
bWcKCiMgZmlsZSBudGZzLmltZwpudGZzLmltZzogRE9TL01CUiBib290IHNlY3RvciwgY29kZSBv
ZmZzZXQgMHg1MisyLCBPRU0tSUQgIk5URlMgIiwgCnNlY3RvcnMvY2x1c3RlciA4LCBNZWRpYSBk
ZXNjcmlwdG9yIDB4ZjgsIHNlY3RvcnMvdHJhY2sgNjMsIGhlYWRzIDI1NSwgCmhpZGRlbiBzZWN0
b3JzIDIwNDgwMCwgZG9zIDwgNC4wIEJvb3RTZWN0b3IgKDB4ODApLCBGQVQgKDFZIGJpdCBieSAK
ZGVzY3JpcHRvcik7IE5URlMsIHNlY3RvcnMvdHJhY2sgNjMsIHNlY3RvcnMgMTA0NjkzNzU5LCAk
TUZUIHN0YXJ0IApjbHVzdGVyIDc4NjQzMiwgJE1GVE1pcnJvciBzdGFydCBjbHVzdGVyIDIsIGJ5
dGVzL1JlY29yZFNlZ21lbnQgCjJeKC0xKjI0NiksIGNsdXN0ZXJzL2luZGV4IGJsb2NrIDEsIHNl
cmlhbCBudW1iZXIgMDYwYzhlYWZiYzhlYWNlN2E7IApjb250YWlucyBib290c3RyYXAgQk9PVE1H
UgoKIyBsb3NldHVwIC9kZXYvbG9vcDAgbnRmcy5pbWcKIyBtb3VudCAvZGV2L2xvb3AwIC9tbnQg
LXQgbnRmczMKIyBkZiAvbW50CkZpbGVzeXN0ZW3CoMKgwqDCoCAxSy1ibG9ja3PCoMKgwqDCoCBV
c2VkIEF2YWlsYWJsZSBVc2UlIE1vdW50ZWQgb24KL2Rldi9sb29wMMKgwqDCoMKgwqAgNTIzNDY4
NzYgMjA5MzAyNzLCoCAzMTQxNjYwNMKgIDQwJSAvbW50CgojIGxzIC1hbCAvbW50CnRvdGFsIDI2
MjU5MgpbLi4gbG90cyBvZiBmaWxlcyBhbmQgZGlyZWN0b3JpZXMuLi5dCgotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KTXkgcHJvYmxlbTog
ZnN0cmFuc2Zvcm0gbmVlZHMgdG8gY3JlYXRlIGEgc3BhcnNlIGZpbGUgYXMgbGFyZ2UgYXMgdGhl
IApkZXZpY2UgaW5zaWRlIHRoZQpmaWxlc3lzdGVtLCBzbyBJIHRyaWVkIHRvIGRvIHRoZSBzYW1l
OgoKIyB0cnVuY2F0ZSAtLXNpemU9JCgoNTIzNDY4NzYqMTAyNCkpIC9tbnQvc3BhcnNlLWZpbGUK
dHJ1bmNhdGU6IGZhaWxlZCB0byB0cnVuY2F0ZSAnL21udC9zcGFyc2UtZmlsZScgYXQgNTM2MDMy
MDEwMjQgYnl0ZXM6IApGaWxlIHRvbyBsYXJnZQoKIyBybSAvbW50L3NwYXJzZS1maWxlCiMgdHJ1
bmNhdGUgLS1zaXplPSQoKDQwMDAwMDAwKjEwMjQpKSAvbW50L3NwYXJzZS1maWxlCnRydW5jYXRl
OiBmYWlsZWQgdG8gdHJ1bmNhdGUgJy9tbnQvc3BhcnNlLWZpbGUnIGF0IDQwOTYwMDAwMDAwIGJ5
dGVzOiBObyAKc3BhY2UgbGVmdCBvbiBkZXZpY2UKCiMgcm0gL21udC9zcGFyc2UtZmlsZQojIHRy
dW5jYXRlIC0tc2l6ZT0kKCgzMDAwMDAwMCoxMDI0KSkgL21udC9zcGFyc2UtZmlsZQojIGR1IC9t
bnQvc3BhcnNlLWZpbGUKMzAwMDAwMDDCoMKgwqDCoMKgwqDCoCAvbW50L3NwYXJzZS1maWxlCgoj
IGRmIC9tbnQKRmlsZXN5c3RlbcKgwqDCoMKgIDFLLWJsb2Nrc8KgwqDCoMKgIFVzZWQgQXZhaWxh
YmxlIFVzZSUgTW91bnRlZCBvbgovZGV2L2xvb3AwwqDCoMKgwqDCoCA1MjM0Njg3NiA1MDkzMDI3
MsKgwqAgMTQxNjYwNMKgIDk4JSAvbW50CgpTbyBpdCBzZWVtcyB0aGF0ICJ0cnVuY2F0ZSIgY3Jl
YXRlcyBub24tc3BhcnNlIGZpbGVzIGluc2lkZSAKTlRGUzMtbW91bnRlZCBmaWxlc3lzdGVtcywK
YWx0aG91Z2ggZnJvbSB3aGF0IEkgdW5kZXJzdGFuZCBOVEZTIF9kb2VzXyBzdXBwb3J0IHNwYXJz
ZSBmaWxlcywgc2VlIApmb3IgZXhhbXBsZSBodHRwOi8vbnRmcy5jb20vbnRmcy1zcGFyc2UuaHRt
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tClF1ZXN0aW9uczoKMS4gSXMgInRydW5jYXRlIiBiZWhhdmlvdXIgZGVzY3JpYmVkIGFi
b3ZlIGludGVudGlvbmFsL2V4cGVjdGVkPwoyLiBJcyB0aGVyZSBhIHdheSB0byBjcmVhdGUgc3Bh
cnNlIGZpbGVzIGluc2lkZSBOVEZTMy1tb3VudGVkIApmaWxlc3lzdGVtcyB1c2luZyBMaW51eCB0
b29scz8KClRoYW5rcywKCk1hc3NpbWlsaWFubyBHaGlsYXJkaQoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxp
c3QKTGludXgtTlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
