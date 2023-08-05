Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FBD770EBB
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  5 Aug 2023 10:17:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qSCTe-0007zE-Sn;
	Sat, 05 Aug 2023 08:17:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qS9Lx-00039z-IU
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 05 Aug 2023 04:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Reply-To:Cc:To:From:MIME-Version:Date:
 Message-ID:Content-Type:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dQvwEdX9TBr9o+EckKmYGe1U7wS/eabk61QQqb82cfA=; b=KPF4cwJ3x+kQ2+1hK9sm6yx2nz
 eqj3fKnChKSWQS0dZqApRNG6rkb8WUNk7+1ovEPJCXtI91iysVCVjILGcym6njWPmGqpE4QQv9F0N
 DrZZlNi1Jz0TvB0dFkegDig1BtBvpcKVhUALOwrAhUxRfg56YYLnyJT91RPMHenT9/Mg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Reply-To:Cc:To:From:MIME-Version:Date:Message-ID:Content-Type:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dQvwEdX9TBr9o+EckKmYGe1U7wS/eabk61QQqb82cfA=; b=c
 uUmvVY6r1deGivNl3B+ZyFvksmTw1bhKHFAkJ/YL120yJnoP3xpoHlB9iwE7852qfkOTrzvfCL+ll
 /H9Jq8HnUAOsE9OUtF4ZN9KfGFHxSP+8NW0LBKBMCGXbGJ/glwj9OF5CTRr6t4IAhcnMsghbsPMHE
 4fqZhCs3BqHe6XII=;
Received: from mail-pf1-f180.google.com ([209.85.210.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qS9Lt-00DdGM-U4 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 05 Aug 2023 04:57:26 +0000
Received: by mail-pf1-f180.google.com with SMTP id
 d2e1a72fcca58-686ea67195dso2037196b3a.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 04 Aug 2023 21:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691211435; x=1691816235;
 h=subject:reply-to:content-language:cc:to:from:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to; bh=dQvwEdX9TBr9o+EckKmYGe1U7wS/eabk61QQqb82cfA=;
 b=kn0fkjvFsTxWFQJolGTwW1if3Yzo/h77LOHnFxcwLgzSjVWgCX2H9SGJaEbbfS5XKi
 d9+y291rxEyUcfFjWZ5ujUQEtspD7KgFDDNx5aD0f9yKefVFvLoUNwkJQCY5+EhGxSVD
 JPRtczdhoX2kvgBuxHu9znc8Sz/VTbyMOV96db5u8QEV6bv0ZHZxMItALrlq+hEs04W2
 KKvkdhz2zkF9DVeXgw3yfnVhPJtew7eRHqAU5IcNfK0+8k29dlBnqSGZy0pvpPI8acqc
 qIfVVAKJwDZodh6Ae+g82QdD2xeZIa22vmJdhZab2dRH8WPEcuL9mFRNvGhzKu+QzxCX
 dE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691211435; x=1691816235;
 h=subject:reply-to:content-language:cc:to:from:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=dQvwEdX9TBr9o+EckKmYGe1U7wS/eabk61QQqb82cfA=;
 b=Y+vOJJLcCUCSEr1NVDW70NW32yh4P9myz2kfIYOJi1B+arvZDvGICgyPndD1293AiK
 OPHWPPPGyDFKr5Hr2Gc2ZE2kvewKiRi7uFIDwG+DO6t6mFScPtd2AzWwFwnNVTWa4wBu
 p9knAIn6a8vnd+9FfEDvgo8w9HiEZ1BdLCG5iqPrMCBjiikIblNq1QsAA83htK9jrKl7
 duixLlxuQo35Q35iczrXCer6QyiiAdItXadGrZwaUmJw54ZtpmH/SKgEWxvVuyH58Lpa
 yQgPh9xKt7/Du90AYaWzHNEjZw3RtKHIdlHLo2kVKdl6mrpOJxyasVXjtF5k/GfYbijt
 I2QA==
X-Gm-Message-State: AOJu0YwLGlpFNDPORP3A5Z+6xQTIiAMOVmYSbt6OOiIv7II60VBsaaRQ
 HGg2s+i03C1Q3yyuz48P4j4=
X-Google-Smtp-Source: AGHT+IG2u1qBiLgaRvn0xQRB3FoCYjWpMhuAdJDrCx3FzwDcx3e7VY7JDb5EqsEvy1lMa40LrNN0Bg==
X-Received: by 2002:a17:902:cec7:b0:1bb:3979:d467 with SMTP id
 d7-20020a170902cec700b001bb3979d467mr4446443plg.63.1691211435378; 
 Fri, 04 Aug 2023 21:57:15 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.176]) by smtp.gmail.com with ESMTPSA id
 iz11-20020a170902ef8b00b001b9c5e0393csm2555482plb.225.2023.08.04.21.57.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Aug 2023 21:57:14 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------oihDkra1NslgCm8MY9XksS30"
Message-ID: <913c36b5-f651-c728-7322-fe648d614a66@gmail.com>
Date: Sat, 5 Aug 2023 10:27:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Manas Ghandat <ghandatmanas@gmail.com>
To: "syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com"
 <syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com>
Content-Language: en-US
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In this bug, the logic at the following line
 (https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/ntfs/inode.c?id=e8f75c0270d930ef675fee22d74d1a3250e96962#n1067)
 is getting skip [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.180 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qS9Lt-00DdGM-U4
X-Mailman-Approved-At: Sat, 05 Aug 2023 08:17:23 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] UBSAN: shift-out-of-bounds in
 ntfs_iget
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
Reply-To: 0000000000000424f205fcf9a132@google.com
Cc: linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, anton@tuxera.com
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--------------oihDkra1NslgCm8MY9XksS30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

In this bug, the logic at the following line 
(https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/ntfs/inode.c?id=e8f75c0270d930ef675fee22d74d1a3250e96962#n1067) 
is getting skipped. The `if` condition is not triggered and thus the 
compression issue occurs. I was trying to change the `if` conditions so 
that the check occurs but was getting the following error. Can you 
suggest any way so that the condition gets triggered.

Thanks,
Manas

--------------oihDkra1NslgCm8MY9XksS30
Content-Type: text/plain; charset=UTF-8; name="trace"
Content-Disposition: attachment; filename="trace"
Content-Transfer-Encoding: base64

CkJvb3RpbmcgZnJvbSBST00uLgpbICAgIDAuMDAwMDAwXVsgICAgVDBdIExpbnV4IHZlcnNp
b24gNi40LjAtMDE0MDYtZ2U4Zjc1YzAyNzBkOS1kaXJ0eSAobWFuYXNAbWFuYXMtVmlydHVh
bEJveCkgKGdjYyAoVWJ1bnR1IDEyLjIuMC0zdWJ1bnR1MSkgMTIuMi4wLCBHTlUgbGQgKEdO
VSBCaW51dGlscyBmb3IgVWJ1bnR1KSAyLjM5KSAjOCBTTVAgUFJFRU1QVF9EWU5BTUlDIFNh
dCBBdWcgIDUgMDk6MDg6MjUgSVNUIDIwMjMKWyAgICAwLjAwMDAwMF1bICAgIFQwXSBDb21t
YW5kIGxpbmU6IHJvb3Q9L2Rldi9yYW0gcncgY29uc29sZT10dHlTMCBvb3BzPXBhbmljIHBh
bmljPTEgbm9rYXNsciBxdWlldApbICAgIDAuMDAwMDAwXVsgICAgVDBdIEtFUk5FTCBzdXBw
b3J0ZWQgY3B1czoKWyAgICAwLjAwMDAwMF1bICAgIFQwXSAgIEludGVsIEdlbnVpbmVJbnRl
bApbICAgIDAuMDAwMDAwXVsgICAgVDBdICAgQU1EIEF1dGhlbnRpY0FNRApbICAgIDAuMDAw
MDAwXVsgICAgVDBdIEJJT1MtcHJvdmlkZWQgcGh5c2ljYWwgUkFNIG1hcDoKWyAgICAwLjAw
MDAwMF1bICAgIFQwXSBCSU9TLWU4MjA6IFttZW0gMHgwMDAwMDAwMDAwMDAwMDAwLTB4MDAw
MDAwMDAwMDA5ZmJmZl0gdXNhYmxlClsgICAgMC4wMDAwMDBdWyAgICBUMF0gQklPUy1lODIw
OiBbbWVtIDB4MDAwMDAwMDAwMDA5ZmMwMC0weDAwMDAwMDAwMDAwOWZmZmZdIHJlc2VydmVk
ClsgICAgMC4wMDAwMDBdWyAgICBUMF0gQklPUy1lODIwOiBbbWVtIDB4MDAwMDAwMDAwMDBm
MDAwMC0weDAwMDAwMDAwMDAwZmZmZmZdIHJlc2VydmVkClsgICAgMC4wMDAwMDBdWyAgICBU
MF0gQklPUy1lODIwOiBbbWVtIDB4MDAwMDAwMDAwMDEwMDAwMC0weDAwMDAwMDAwN2ZmZGZm
ZmZdIHVzYWJsZQpbICAgIDAuMDAwMDAwXVsgICAgVDBdIEJJT1MtZTgyMDogW21lbSAweDAw
MDAwMDAwN2ZmZTAwMDAtMHgwMDAwMDAwMDdmZmZmZmZmXSByZXNlcnZlZApbICAgIDAuMDAw
MDAwXVsgICAgVDBdIEJJT1MtZTgyMDogW21lbSAweDAwMDAwMDAwZmVmZmMwMDAtMHgwMDAw
MDAwMGZlZmZmZmZmXSByZXNlcnZlZApbICAgIDAuMDAwMDAwXVsgICAgVDBdIEJJT1MtZTgy
MDogW21lbSAweDAwMDAwMDAwZmZmYzAwMDAtMHgwMDAwMDAwMGZmZmZmZmZmXSByZXNlcnZl
ZApbICAgIDAuMDAwMDAwXVsgICAgVDBdIHByaW50azogYm9vdGNvbnNvbGUgW2Vhcmx5c2Vy
MF0gZW5hYmxlZApbICAgIDAuMDAwMDAwXVsgICAgVDBdIEVSUk9SOiBlYXJseXByaW50az0g
ZWFybHlzZXIgYWxyZWFkeSB1c2VkClsgICAgMC4wMDAwMDBdWyAgICBUMF0gRVJST1I6IGVh
cmx5cHJpbnRrPSBlYXJseXNlciBhbHJlYWR5IHVzZWQKWyAgICAwLjAwMDAwMF1bICAgIFQw
XSAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqClsgICAgMC4wMDAwMDBdWyAgICBUMF0gKiogICBOT1RJQ0UgTk9USUNFIE5PVElD
RSBOT1RJQ0UgTk9USUNFIE5PVElDRSBOT1RJQ0UgICAqKgpbICAgIDAuMDAwMDAwXVsgICAg
VDBdICoqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKioKWyAgICAwLjAwMDAwMF1bICAgIFQwXSAqKiBUaGlzIHN5c3RlbSBzaG93cyB1
bmhhc2hlZCBrZXJuZWwgbWVtb3J5IGFkZHJlc3NlcyAgICoqClsgICAgMC4wMDAwMDBdWyAg
ICBUMF0gKiogdmlhIHRoZSBjb25zb2xlLCBsb2dzLCBhbmQgb3RoZXIgaW50ZXJmYWNlcy4g
VGhpcyAgICAqKgpbICAgIDAuMDAwMDAwXVsgICAgVDBdICoqIG1pZ2h0IHJlZHVjZSB0aGUg
c2VjdXJpdHkgb2YgeW91ciBzeXN0ZW0uICAgICAgICAgICAgKioKWyAgICAwLjAwMDAwMF1b
ICAgIFQwXSAqKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICoqClsgICAgMC4wMDAwMDBdWyAgICBUMF0gKiogSWYgeW91IHNlZSB0aGlz
IG1lc3NhZ2UgYW5kIHlvdSBhcmUgbm90IGRlYnVnZ2luZyAgICAqKgpbICAgIDAuMDAwMDAw
XVsgICAgVDBdICoqIHRoZSBrZXJuZWwsIHJlcG9ydCB0aGlzIGltbWVkaWF0ZWx5IHRvIHlv
dXIgc3lzdGVtICAgKioKWyAgICAwLjAwMDAwMF1bICAgIFQwXSAqKiBhZG1pbmlzdHJhdG9y
ISAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoqClsgICAgMC4wMDAw
MDBdWyAgICBUMF0gKiogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAqKgpbICAgIDAuMDAwMDAwXVsgICAgVDBdICoqICAgTk9USUNFIE5P
VElDRSBOT1RJQ0UgTk9USUNFIE5PVElDRSBOT1RJQ0UgTk9USUNFICAgKioKWyAgICAwLjAw
MDAwMF1bICAgIFQwXSAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqClsgICAgMC4wMDAwMDBdWyAgICBUMF0gTWFsZm9ybWVkIGVh
cmx5IG9wdGlvbiAndnN5c2NhbGwnClsgICAgMC42NDg0MzRdWyAgICBUMF0gU3BlY3RyZSBW
MiA6IEtlcm5lbCBub3QgY29tcGlsZWQgd2l0aCByZXRwb2xpbmU7IG5vIG1pdGlnYXRpb24g
YXZhaWxhYmxlIQpbICAgIDIuNjEyNDIyXVsgICAgVDFdIGt2bV9pbnRlbDogVk1YIG5vdCBz
dXBwb3J0ZWQgYnkgQ1BVIDAKWyAgICAyLjYxNTcyMF1bICAgIFQxXSBrdm1fYW1kOiBTVk0g
bm90IHN1cHBvcnRlZCBieSBDUFUgMCwgY2FuJ3QgZXhlY3V0ZSBjcHVpZF84MDAwMDAwYQpb
ICAgIDYuMDg0MzM5XVsgICAgVDFdIGRiX3Jvb3Q6IGNhbm5vdCBvcGVuOiAvZXRjL3Rhcmdl
dApbICAgIDguNzU2OTMwXVsgICAgVDFdIG5mX2Nvbm50cmFja19pcmM6IGZhaWxlZCB0byBy
ZWdpc3RlciBoZWxwZXJzClsgICAgOC43NjM4NjNdWyAgICBUMV0gbmZfY29ubnRyYWNrX3Nh
bmU6IGZhaWxlZCB0byByZWdpc3RlciBoZWxwZXJzClsgICAgOC44Nzc3MDRdWyAgICBUMV0g
bmZfY29ubnRyYWNrX3NpcDogZmFpbGVkIHRvIHJlZ2lzdGVyIGhlbHBlcnMKWyAgIDEwLjE1
NzY4Ml1bICAgIFQxXSBleEZBVC1mcyAocmFtMCk6IGludmFsaWQgZnNfbmFtZQpbICAgMTAu
MTU4ODA1XVsgICAgVDFdIGV4RkFULWZzIChyYW0wKTogZmFpbGVkIHRvIHJlYWQgYm9vdCBz
ZWN0b3IKWyAgIDEwLjE1OTk3N11bICAgIFQxXSBleEZBVC1mcyAocmFtMCk6IGZhaWxlZCB0
byByZWNvZ25pemUgZXhmYXQgdHlwZQpbICAgMTAuMTY2ODM2XVsgICAgVDFdIFZGUzogY291
bGQgbm90IGZpbmQgYSB2YWxpZCBWNyBvbiByYW0wLgpbICAgMTAuMTcwMTM3XVsgICAgVDFd
IG50ZnM6IChkZXZpY2UgcmFtMCk6IG50ZnNfYXR0cl9maW5kKCk6IElub2RlIGlzIGNvcnJ1
cHQuICBSdW4gY2hrZHNrLgpbICAgMTAuMTcxNzMzXVsgICAgVDFdIG50ZnM6IChkZXZpY2Ug
cmFtMCk6IG50ZnNfcmVhZF9sb2NrZWRfaW5vZGUoKTogRmFpbGVkIHRvIGxvb2t1cCAkREFU
QSBhdHRyaWJ1dGUuClsgICAxMC4xNzM0MzldWyAgICBUMV0gbnRmczogKGRldmljZSByYW0w
KTogbnRmc19yZWFkX2xvY2tlZF9pbm9kZSgpOiBGYWlsZWQgd2l0aCBlcnJvciBjb2RlIC01
LiAgTWFya2luZyBjb3JydXB0IGlub2RlIDB4MSBhcyBiYWQuICBSdW4gY2hrZHNrLgpbICAg
MTAuMTc1ODE1XVsgICAgVDFdIG50ZnM6IChkZXZpY2UgcmFtMCk6IGxvYWRfc3lzdGVtX2Zp
bGVzKCk6IEZhaWxlZCB0byBsb2FkICRNRlRNaXJyLiAgTW91bnRpbmcgcmVhZC1vbmx5LiAg
UnVuIG50ZnNmaXggYW5kL29yIGNoa2Rzay4KWyAgIDEwLjE3ODY4NF1bICAgIFQxXSBudGZz
OiAoZGV2aWNlIHJhbTApOiBudGZzX21hcHBpbmdfcGFpcnNfZGVjb21wcmVzcygpOiBNaXNz
aW5nIGxlbmd0aCBlbnRyeSBpbiBtYXBwaW5nIHBhaXJzIGFycmF5LgpbICAgMTAuMTgwODg2
XVsgICAgVDFdIG50ZnM6IChkZXZpY2UgcmFtMCk6IG50ZnNfbWFwcGluZ19wYWlyc19kZWNv
bXByZXNzKCk6IEludmFsaWQgbGVuZ3RoIGluIG1hcHBpbmcgcGFpcnMgYXJyYXkuClsgICAx
MC4xODI4MDRdWyAgICBUMV0gbnRmczogKGRldmljZSByYW0wKTogbnRmc19yZWFkX2Jsb2Nr
KCk6IEZhaWxlZCB0byByZWFkIGZyb20gaW5vZGUgMHhhLCBhdHRyaWJ1dGUgdHlwZSAweDgw
LCB2Y24gMHgwLCBvZmZzZXQgMHgwIGJlY2F1c2UgaXRzIGxvY2F0aW9uIG9uIGRpc2sgY291
bGQgbm90IGJlIGRldGVybWluZWQgZXZlbiBhZnRlciByZXRyeWluZyAoZXJyb3IgY29kZSAt
NSkuClsgICAxMC4xODY0MTBdWyAgICBUMV0gbnRmczogKGRldmljZSByYW0wKTogbnRmc19t
YXBwaW5nX3BhaXJzX2RlY29tcHJlc3MoKTogTWlzc2luZyBsZW5ndGggZW50cnkgaW4gbWFw
cGluZyBwYWlycyBhcnJheS4KWyAgIDEwLjE4ODQ4NV1bICAgIFQxXSBudGZzOiAoZGV2aWNl
IHJhbTApOiBudGZzX21hcHBpbmdfcGFpcnNfZGVjb21wcmVzcygpOiBJbnZhbGlkIGxlbmd0
aCBpbiBtYXBwaW5nIHBhaXJzIGFycmF5LgpbICAgMTAuMTkwNDExXVsgICAgVDFdIG50ZnM6
IChkZXZpY2UgcmFtMCk6IG50ZnNfcmVhZF9ibG9jaygpOiBGYWlsZWQgdG8gcmVhZCBmcm9t
IGlub2RlIDB4YSwgYXR0cmlidXRlIHR5cGUgMHg4MCwgdmNuIDB4MCwgb2Zmc2V0IDB4ODAw
IGJlY2F1c2UgaXRzIGxvY2F0aW9uIG9uIGRpc2sgY291bGQgbm90IGJlIGRldGVybWluZWQg
ZXZlbiBhZnRlciByZXRyeWluZyAoZXJyb3IgY29kZSAtNSkuClsgICAxMC4zMTM0NjVdWyAg
ICBUMV0gRmFpbGVkIHRvIHNldCBzeXNjdGwgcGFyYW1ldGVyICdtYXhfcmN1X3N0YWxsX3Rv
X3BhbmljPTEnOiBwYXJhbWV0ZXIgbm90IGZvdW5kClsgICAxMC4zMTYyMThdWyAgICBUMV0g
U3RhcnRpbmcgaW5pdDogL3NiaW4vaW5pdCBleGlzdHMgYnV0IGNvdWxkbid0IGV4ZWN1dGUg
aXQgKGVycm9yIC01KQpbICAgMTAuMzE4MjY4XVsgICAgVDFdIFN0YXJ0aW5nIGluaXQ6IC9l
dGMvaW5pdCBleGlzdHMgYnV0IGNvdWxkbid0IGV4ZWN1dGUgaXQgKGVycm9yIC01KQpbICAg
MTAuMzIwMDQ3XVsgICAgVDFdIFN0YXJ0aW5nIGluaXQ6IC9iaW4vaW5pdCBleGlzdHMgYnV0
IGNvdWxkbid0IGV4ZWN1dGUgaXQgKGVycm9yIC01KQpbICAgMTAuMzIxODk1XVsgICAgVDFd
IFN0YXJ0aW5nIGluaXQ6IC9iaW4vc2ggZXhpc3RzIGJ1dCBjb3VsZG4ndCBleGVjdXRlIGl0
IChlcnJvciAtNSkKWyAgIDEwLjMyMzQxMF1bICAgIFQxXSBLZXJuZWwgcGFuaWMgLSBub3Qg
c3luY2luZzogTm8gd29ya2luZyBpbml0IGZvdW5kLiAgVHJ5IHBhc3NpbmcgaW5pdD0gb3B0
aW9uIHRvIGtlcm5lbC4gU2VlIExpbnV4IERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvaW5p
dC5yc3QgZm9yIGd1aWRhbmNlLgpbICAgMTAuMzI2MTgxXVsgICAgVDFdIENQVTogMCBQSUQ6
IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkIDYuNC4wLTAxNDA2LWdlOGY3NWMwMjcw
ZDktZGlydHkgIzgKWyAgIDEwLjMyNzc4MV1bICAgIFQxXSBIYXJkd2FyZSBuYW1lOiBRRU1V
IFN0YW5kYXJkIFBDIChpNDQwRlggKyBQSUlYLCAxOTk2KSwgQklPUyAxLjE2LjAtZGViaWFu
LTEuMTYuMC00IDA0LzAxLzIwMTQKWyAgIDEwLjMyNzc4MV1bICAgIFQxXSBDYWxsIFRyYWNl
OgpbICAgMTAuMzI3NzgxXVsgICAgVDFdICA8VEFTSz4KWyAgIDEwLjMyNzc4MV1bICAgIFQx
XSAgZHVtcF9zdGFja19sdmwrMHhkOS8weDFiMApbICAgMTAuMzI3NzgxXVsgICAgVDFdICBw
YW5pYysweDZhNC8weDc1MApbICAgMTAuMzI3NzgxXVsgICAgVDFdICA/IHBhbmljX3NtcF9z
ZWxmX3N0b3ArMHhhMC8weGEwClsgICAxMC4zMjc3ODFdWyAgICBUMV0gID8gcHV0bmFtZSsw
eDEwMS8weDE0MApbICAgMTAuMzI3NzgxXVsgICAgVDFdICA/IGtlcm5lbF9pbml0KzB4MjY1
LzB4MmEwClsgICAxMC4zMjc3ODFdWyAgICBUMV0gIGtlcm5lbF9pbml0KzB4Mjc2LzB4MmEw
ClsgICAxMC4zMjc3ODFdWyAgICBUMV0gID8gcmVzdF9pbml0KzB4MmIwLzB4MmIwClsgICAx
MC4zMjc3ODFdWyAgICBUMV0gIHJldF9mcm9tX2ZvcmsrMHgxZi8weDMwClsgICAxMC4zMjc3
ODFdWyAgICBUMV0gIDwvVEFTSz4KWyAgIDEwLjMyNzc4MV1bICAgIFQxXSBLZXJuZWwgT2Zm
c2V0OiBkaXNhYmxlZApbICAgMTAuMzI3NzgxXVsgICAgVDFdIFJlYm9vdGluZyBpbiAxIHNl
Y29uZHMuLgo=

--------------oihDkra1NslgCm8MY9XksS30
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------oihDkra1NslgCm8MY9XksS30
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--------------oihDkra1NslgCm8MY9XksS30--

