Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7586795D18
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 20 Aug 2019 13:18:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i029j-00028E-Rl; Tue, 20 Aug 2019 11:18:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali.rohar@gmail.com>) id 1i028n-0005fN-Gg
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 11:17:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bXwvv3+bDP0X0rOQDdFLtwDDPymGiUwzjcOJ0HsnIoE=; b=J+WKEhyIcNv+cqBooyzndJmTsb
 rHqv72mpLQVmXRRv4Nq0xY4CQA2cmR415t7QZ2TGcEDXWgFdHqQO9V06qjygjZgoEXzDKNmJmYcZV
 HeUSWT2BV9tt5Sjh/g6lYJ4CUldOzWzAxM0IrOFcUbqIGS/snxI9NlAfvz9XW7NfOB2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bXwvv3+bDP0X0rOQDdFLtwDDPymGiUwzjcOJ0HsnIoE=; b=NjfC5J7DJg1ITRKzEjfQ5YT8/V
 acIFul2isMIyaIvUZqOK950SR66J+dUoF9EjM81TMw2L9C+jl00TPzp6dH/qeWho1OkLdf/ZqQry5
 UUlwIeYAPAn5SHMaBp4XZ73wgLNWTxc3m7EXf0h7rJdRzWKF2Wo49lgJ8D+4ud+rcBh8=;
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i028l-00D7FO-FC
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 11:17:29 +0000
Received: by mail-wr1-f65.google.com with SMTP id p17so11951341wrf.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 20 Aug 2019 04:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=bXwvv3+bDP0X0rOQDdFLtwDDPymGiUwzjcOJ0HsnIoE=;
 b=p2PVwOPjW3GPoH2xQ0T6VFrvCH9Q37bASBLkU2zRM6QatFv2y8rptDncRm65Zx1Zza
 4J5c/sPWUjAFj5bTNwwcb2Qc4YgziJqHajkQAaqpXim1EueyoAZMjNFQu/KhrCvpjWFJ
 MR1CJ5jE1dQT4oEtygM2Tf5KmbArrSc3pAKXOG7xBWokFCsYRGOUWbWfvjziz0ZafL2e
 tKG4itMnTKNHHlKl8v5aza5guqMQN/8v1rVDXpstpIOPLtqYfwkLtxgOJ0HyGNmsIPBD
 OnDiGXmGUA7aH+AieNFNTdH0S5HqFb46zEXfC98fbF5JP0VYSHbJ9weiSmzCcrNNAqBb
 gzIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bXwvv3+bDP0X0rOQDdFLtwDDPymGiUwzjcOJ0HsnIoE=;
 b=YwkCX+wDpVeF4OgiBA1jX9LOuqX5Ppdb3zwZhkTJyh2GM2Shz8/OO678LK09gk1eWd
 V3a9fsg08LRCfwN+njv+x187cZOjL25SXc+dxi7v2FDRAZXmJQfBgQoxjxrTgI7JaNna
 3QigkFP+dJxBqOoFmBnSG9ipiv/5PeROvsdn9uVXx7kJsHNwpCdaRjcE58/aIbpoFEfw
 /8P/AfSW1U1YwlbFnBQ5nrrL48HP2g8guBgI/MJdBNwE6+YMvPZc8Ak2wJjtsWRtoJjY
 /vjVBH/njbf8dn8e87K2jUxYskSZ6JRylB8zfXO+Pek62SzrgYrP/hrybUQYv7Zyo8Se
 KWSg==
X-Gm-Message-State: APjAAAUz94P3SHQJHCsE+E9MIWwtXf9BlWXGGALSTx11OvQq87/7SW27
 eUkVmVVmA4bchSM0o/zt+tc=
X-Google-Smtp-Source: APXvYqzoIgxGymU2wbx/jK3Z3oup/G3SR810t/fO7KbuQzxb0XC8CA0c8AA9b4NaBwg25QISd1IpkA==
X-Received: by 2002:adf:f48d:: with SMTP id l13mr35550680wro.190.1566299840925; 
 Tue, 20 Aug 2019 04:17:20 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id 91sm54808747wrp.3.2019.08.20.04.17.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 04:17:20 -0700 (PDT)
Date: Tue, 20 Aug 2019 13:17:19 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Message-ID: <20190820111719.7blyk5jstgwde2ae@pali>
References: <1566298572-12409-1-git-send-email-info@metux.net>
 <1566298572-12409-2-git-send-email-info@metux.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566298572-12409-2-git-send-email-info@metux.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: metux.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (pali.rohar[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-Headers-End: 1i028l-00D7FO-FC
X-Mailman-Approved-At: Tue, 20 Aug 2019 11:18:26 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 2/2] drivers: input: mouse: alps: drop
 unneeded likely() call around IS_ERR()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gVHVlc2RheSAyMCBBdWd1c3QgMjAxOSAxMjo1NjoxMiBFbnJpY28gV2VpZ2VsdCwgbWV0dXgg
SVQgY29uc3VsdCB3cm90ZToKPiBGcm9tOiBFbnJpY28gV2VpZ2VsdCA8aW5mb0BtZXR1eC5uZXQ+
Cj4gCj4gSVNfRVJSKCkgYWxyZWFkeSBjYWxscyB1bmxpa2VseSgpLCBzbyB0aGlzIGV4dHJhIHVu
bGlrZWx5KCkgY2FsbAo+IGFyb3VuZCBJU19FUlIoKSBpcyBub3QgbmVlZGVkLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEVucmljbyBXZWlnZWx0IDxpbmZvQG1ldHV4Lm5ldD4KPiAtLS0KPiAgZHJpdmVy
cy9pbnB1dC9tb3VzZS9hbHBzLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lucHV0L21vdXNl
L2FscHMuYyBiL2RyaXZlcnMvaW5wdXQvbW91c2UvYWxwcy5jCj4gaW5kZXggMzQ3MDBlZC4uZWQx
NjYxNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lucHV0L21vdXNlL2FscHMuYwo+ICsrKyBiL2Ry
aXZlcnMvaW5wdXQvbW91c2UvYWxwcy5jCj4gQEAgLTE0NzYsNyArMTQ3Niw3IEBAIHN0YXRpYyB2
b2lkIGFscHNfcmVwb3J0X2JhcmVfcHMyX3BhY2tldChzdHJ1Y3QgcHNtb3VzZSAqcHNtb3VzZSwK
PiAgCQkvKiBPbiBWMiBkZXZpY2VzIHRoZSBEdWFsUG9pbnQgU3RpY2sgcmVwb3J0cyBiYXJlIHBh
Y2tldHMgKi8KPiAgCQlkZXYgPSBwcml2LT5kZXYyOwo+ICAJCWRldjIgPSBwc21vdXNlLT5kZXY7
Cj4gLQl9IGVsc2UgaWYgKHVubGlrZWx5KElTX0VSUl9PUl9OVUxMKHByaXYtPmRldjMpKSkgewo+
ICsJfSBlbHNlIGlmIChJU19FUlJfT1JfTlVMTChwcml2LT5kZXYzKSkgewo+ICAJCS8qIFJlZ2lz
dGVyIGRldjMgbW91c2UgaWYgd2UgcmVjZWl2ZWQgUFMvMiBwYWNrZXQgZmlyc3QgdGltZSAqLwo+
ICAJCWlmICghSVNfRVJSKHByaXYtPmRldjMpKQo+ICAJCQlwc21vdXNlX3F1ZXVlX3dvcmsocHNt
b3VzZSwgJnByaXYtPmRldjNfcmVnaXN0ZXJfd29yaywKCkhlbGxvISBUd28gbW9udGhzIGFnbyBJ
IGFscmVhZHkgc2F3IHRoaXMgcGF0Y2guIFNlZSBkaXNjdXNzaW9uOgpodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3BhdGNoLzEwOTc3MDk5LwoKLS0gClBhbGkgUm9ow6FyCnBhbGkucm9oYXJA
Z21haWwuY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtTlRGUy1EZXYgbWFpbGluZyBsaXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9s
aW51eC1udGZzLWRldgo=
