Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F64856C7AC
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Jul 2022 09:27:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oA4sU-0005Xh-Qj; Sat, 09 Jul 2022 07:27:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chenxiaosong2@huawei.com>) id 1oA0vn-0003Ch-3K
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Jul 2022 03:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7/+y+FnG91UoonFj2P40apW25bX7+6WUrv0g9VvYlKk=; b=BoZ6u4eCZzE0LMNPJoL7s3wfEg
 tnDtrOyMpwDoHLNgX6cFN4NiuxC9H3wxCnu1XkK1xKvBykgTYR9H0OX1eBtBw4Wz+qJFCUPBgDh5Z
 x4ESxs2hatmJvGh9PFVzicrKPAEFV4qK6qZfB/u7HT350yaFcI6I7WSnWn1Ov0td1BJw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7/+y+FnG91UoonFj2P40apW25bX7+6WUrv0g9VvYlKk=; b=MtThUxbu8gNv+CWUceGZSRmchN
 ufJUZmlXm1pQ6r/9Bdr0NxBp8G3tEgcQGHjdYOOkYQUTrF3FtA+Bg7zKRUu9uCfLSoXSU6SzZ2VhJ
 dfBYNsywSyq7OpDOVVcsR7LxrcLEXtQcE/29fuINLfHbxIsupSCj3sAvzCy4OM1/BR9s=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oA0vi-0008T1-Sq
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Jul 2022 03:14:54 +0000
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.57])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4LfwGM6bg6zFq0P;
 Sat,  9 Jul 2022 11:13:47 +0800 (CST)
Received: from kwepemm600015.china.huawei.com (7.193.23.52) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Sat, 9 Jul 2022 11:14:38 +0800
Received: from [10.174.176.52] (10.174.176.52) by
 kwepemm600015.china.huawei.com (7.193.23.52) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Sat, 9 Jul 2022 11:14:37 +0800
Message-ID: <b7ae1cf8-2809-f618-5340-fb8def9a8be0@huawei.com>
Date: Sat, 9 Jul 2022 11:14:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
To: Hawkins Jiawei <yin31149@gmail.com>
References: <20220707105329.4020708-1-chenxiaosong2@huawei.com>
 <20220709005450.2220-1-yin31149@gmail.com>
In-Reply-To: <20220709005450.2220-1-yin31149@gmail.com>
X-Originating-IP: [10.174.176.52]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600015.china.huawei.com (7.193.23.52)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  在 2022/7/9 8:54, Hawkins Jiawei 写道:> In my opinion,
   name_length field just means the number of characters, > yet each character
    is a ntfschar type. So name should be > name_length * sizeof(ntfsc [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [45.249.212.189 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oA0vi-0008T1-Sq
X-Mailman-Approved-At: Sat, 09 Jul 2022 07:27:45 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] ntfs: fix use-after-free in
 ntfs_ucsncmp()
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
From: "chenxiaosong \(A\) via Linux-NTFS-Dev"
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: "chenxiaosong \(A\)" <chenxiaosong2@huawei.com>
Cc: yi.zhang@huawei.com, linux-ntfs-dev@lists.sourceforge.net,
 paskripkin@gmail.com, liuyongqiang13@huawei.com, linux-kernel@vger.kernel.org,
 18801353760@163.com, skhan@linuxfoundation.org, akpm@linux-foundation.org,
 zhangxiaoxu5@huawei.com, anton@tuxera.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

5ZyoIDIwMjIvNy85IDg6NTQsIEhhd2tpbnMgSmlhd2VpIOWGmemBkzo+IEluIG15IG9waW5pb24s
IG5hbWVfbGVuZ3RoIGZpZWxkIApqdXN0IG1lYW5zIHRoZSBudW1iZXIgb2YgY2hhcmFjdGVycywK
PiB5ZXQgZWFjaCBjaGFyYWN0ZXIgaXMgYSBudGZzY2hhciB0eXBlLiBTbyBuYW1lIHNob3VsZCBi
ZQo+IG5hbWVfbGVuZ3RoICogc2l6ZW9mKG50ZnNjaGFyKSBieXRlcy4gVGhlIGV4YW1wbGUgaXMg
YXQKPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4xOS1yYzUvc291cmNlL2Zz
L250ZnMvYXR0cmliLmMjTDE2NjcKClllcywgdGhhbmsgeW91IGZvciB5b3VyIHJlcGx5LCBJIHdp
bGwgc2VuZCB2MyBwYXRjaC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1EZXZAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
