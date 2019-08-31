Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C474EABBA7
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjE-0004Ci-KZ; Fri, 06 Sep 2019 15:00:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1i3zUW-0007KB-9h
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 09:16:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:Subject:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0HhgUofmZ4IUxo1Pub0iV+8pCw0B1tQLltNTWKLIrlc=; b=LDJ/OHClpSQYiZQBdGQrZ+LIV4
 jF0obn5uTTO4qNXYc5Iyi8FjDL8tylHoSvYRr5GJoi5KRFVt44Y0vfSllAMhVk9Ykt97l0Gy+s1GL
 u86UV+mxxcrL3DMz4xaj8PQwTtclhFyHOFNFn8QzjgFztawH25wXHQLpCibsjPNjC/Vs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:Subject:References:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0HhgUofmZ4IUxo1Pub0iV+8pCw0B1tQLltNTWKLIrlc=; b=JBp+uJeeEq7Il2UJ7Io6Oqug4U
 1KRhkZ4Hnl+NhiVgyMuaIyLlItUHnsYB1Qp2TKBeVwsFjRXCw010GNzTFxKeuQ0oy8d8TnV6R886V
 dFkE6YDqW4Ytx8BEwrBqina4mTTHH7ePSr6AFWVjLAne8zzEzxzXGA5TBFyUXiVfTmNo=;
Received: from mout.web.de ([212.227.15.3])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i3zUU-00AJRO-G7
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 09:16:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567242926;
 bh=W42yxbYmQCv9tl6YPZs0YFC5fDpZrDuUEO40d5+J5IY=;
 h=X-UI-Sender-Class:To:Cc:References:Subject:From:Date:In-Reply-To;
 b=Rb418DWmi/RVbd8sECvNY7M6am3zzXtvu6Z8MKvDEcaqy80J5NzEeIsZquRc+o3+K
 RcMPUbulCWil2CYSmPwWqfOWbsvJq8lYGIRKuYobskoTbIVH51G/a5nLZzGK7B0dUo
 Ub/VAcIMteSPNk9yZ43wLPYl/AxtOIz+Ty7w1ZYE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.129.60]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MXHt7-1hjODj0cab-00WIUk; Sat, 31
 Aug 2019 11:15:26 +0200
To: Denis Efremov <efremov@linux.com>, Joe Perches <joe@perches.com>
References: <20190829165025.15750-1-efremov@linux.com>
From: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <0d9345ed-f16a-de0b-6125-1f663765eb46@web.de>
Date: Sat, 31 Aug 2019 11:15:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <20190829165025.15750-1-efremov@linux.com>
Content-Language: en-US
X-Provags-ID: V03:K1:qKSdXHHLYLKjlRCvxxm0CG4/ObWxvY7GHVNBMu8mxxGycRrayx8
 4PbzO2dvqjNnF+AFg4bA1W4zmeQSpNZ7vt9DbPnL5lk34WKJYWD9NUPM0PlrCLMjYkm1F6U
 BXfMva6PP5qxs+6jegtT9nR1r+jzSjNeTTC2AqMHglXEtSWbQLq9Fa4eMsUVMGo2eepnDXr
 VwnOxGgwPijQTQTX/f+uw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nkNVUAuCw5k=:pAP5U5L7C1x2boPp1IRXmn
 D13IzlXT/kI0Odb0OEskHBv1fRCMj7J727enJOB+vAgZd2n6ZXAAaWlSqHLVcohKzncPx6QpO
 Jkkz3w/W/rmQNzfpoIhIUW3Uccf/fl14QBw5X5i4PyFGDK9jzI0Phtg8JML9FgdHalKCIpNWP
 o213QJNReSqJUzIClMxbcGq2voyTmxMmGEwBIXqC58OGwigFy7zuu2Fy5ondTj8F6i3gbb38h
 c6JrfIYpAxvFnO9nRMcO25oqflwZdAfHvFzJ2iu+3r8XsTgWukdxyVbMiL8ftz50QxC2DJqzq
 Ayqcpn0a9Y7cTytKg/qxVHdxdOIF48+PWbHaSEgzP4SLLOPElveDdWhJEc0vM5xdTU1Dqb7hM
 NcCaA0zHOKUIDqcYJ6jN44G6CZgVS/MFofCq8QcCo4GFiBNWMHS4cmZtOpUQJMXQuRbrwvm5s
 QLUFHQhzpAX2K0Aj8VIVILu1mHvF1oeAJg0lG6KqkOeZEm+Unicxfz9HErsixNGFodYh0D3/K
 Pus4ocado7zBlJoZThrgPZ8TvIHn8mX0WI7LW+JhXvD1rFkJmT4VMVuezkSvp3NJ9GaBnkiEN
 2DsKyjBxY/6mcp9cg5MLZTh0zU4f7ZpgvIRT7mBBrJ5TGKKmZLH7U/Z5qQmwJz28iIVaVlH4p
 wK8w2niZej5noXMTOemcJJnIR+evko7BhWXbZHiUAALjl38emkz357bvLjEkVGm7h8qIAQyjv
 9Ffe8YuiaY+tWayyEFK6qfYIHwGdEZNrYmIuX9tupSwJCJ8bCFsx9n7SNCZvSRm61MjQsWB76
 icYRtytGOYmCsolycXG6KEM734RMbdaPv2pCjSKPk80uNsPY10n0pxzKUpdSnG1O5lboelK/K
 +pQTb7oUbCkyxCvKMOBAo+HHvPT1QQcSGkQreepWbCChdY7O5TxdjvwnEYYPBYSyBIKA4j2t6
 gmzI4FQ5Tbv5lKlap9HBlQSeD5ynZnaeINJfHFu/XpQei9uMkeptC8IYqtcno5/KHj4gVLoN6
 dvIF455p6LB73n4l5ci1UNJB4L7BiFhMmqFWnfszzCVLZrOOA94053rwKZECu2B8PgnRB8RwQ
 RHR8X1QZRRFkw/YnadMqgavlvTg6QJ2wAh3pxzJ+iXjpxC1IgfnMhR3w1p3UqTC4whz3ngKbv
 qqUbKY+8ilN57KkwviQJZULRks7t3CtGMgptQJeouQnu6rZg==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (markus.elfring[at]web.de)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.15.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i3zUU-00AJRO-G7
X-Mailman-Approved-At: Fri, 06 Sep 2019 15:00:43 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v3 01/11] checkpatch: check for nested
 (un)?likely() calls
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
Cc: dri-devel@lists.freedesktop.org, Leon Romanovsky <leon@kernel.org>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, linux-rdma@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>,
 Saeed Mahameed <saeedm@mellanox.com>, linux-input@vger.kernel.org,
 xen-devel@lists.xenproject.org, Boris Pismenny <borisp@mellanox.com>,
 linux-arm-msm@vger.kernel.org, linux-wimax@intel.com,
 Enrico Weigelt <lkml@metux.net>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Andy Whitcroft <apw@canonical.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Sean Paul <sean@poorly.run>,
 Anton Altaparmakov <anton@tuxera.com>,
 =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 linux-ntfs-dev@lists.sourceforge.net, netdev@vger.kernel.org,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali.rohar@gmail.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

PiArIyBuZXN0ZWQgbGlrZWx5L3VubGlrZWx5IGNhbGxzCj4gKwkJaWYgKCRsaW5lID1+IC9cYig/
Oig/OnVuKT9saWtlbHkpXHMqXChccyohP1xzKihJU19FUlIoPzpfT1JfTlVMTHxfVkFMVUUpP3xX
QVJOKS8pIHsKPiArCQkJV0FSTigiTElLRUxZX01JU1VTRSIsCgpIb3cgZG8geW91IHRoaW5rIGFi
b3V0IHRvIHVzZSB0aGUgc3BlY2lmaWNhdGlvbiDigJwoPzpJU19FUlIoPzpfKD86T1JfTlVMTHxW
QUxVRSkpP3xXQVJOKeKAnQppbiB0aGlzIHJlZ3VsYXIgZXhwcmVzc2lvbj8KClJlZ2FyZHMsCk1h
cmt1cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURldkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgt
bnRmcy1kZXYK
