Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD5E3D9B30
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 29 Jul 2021 03:45:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m8v6m-00056b-LJ; Thu, 29 Jul 2021 01:45:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mohammad.rasim96@gmail.com>) id 1m8mLa-00029Z-6Y
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 28 Jul 2021 16:23:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Cc:Subject:From:Reply-To:To:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=og7+V4BOs6plr/YGVQnX+404P8F5uFz/ISDuajxswv0=; b=IjiVdJVcgo8hZBkbD2OZsifbEQ
 4ED9al435aXdyTRi+4I3RINsJcJ7RzXCnerBp8seQsXo9cIQKQoI1FmGTtAOyKr03kS9iBbKsndae
 rya0LwFBMPPUyK5AFyeySEUyyt7/KtuPvPQlnGdGyiyFMb4NfbCx4p7obcw3tdDuO39A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Cc:
 Subject:From:Reply-To:To:Sender:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=og7+V4BOs6plr/YGVQnX+404P8F5uFz/ISDuajxswv0=; b=A
 c2O4/dWbL96C6FIpO2HmM55U2tT1ombdOqPARdC9eSPu4CTh37VhHGIJg6IYplqFxuDjRhFBkkaba
 4t7EQIUyPjhk8vCJ6jXFN0EHU2gXhrHVKY4aW3XnwXRO17YUvT572dQmKO3GlYhm7ZMggCqB+f8Am
 WAFkhNxcOW1fc7tI=;
Received: from mail-ej1-f42.google.com ([209.85.218.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m8mLT-0004U0-Bk
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 28 Jul 2021 16:23:54 +0000
Received: by mail-ej1-f42.google.com with SMTP id nd39so5535823ejc.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 28 Jul 2021 09:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:reply-to:from:subject:cc:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=og7+V4BOs6plr/YGVQnX+404P8F5uFz/ISDuajxswv0=;
 b=SC0VdSX/F/sOPmI3Q7YmCzFCdl4xqt7oa+7hod2kYnKT61yxCqweHv52cjGPgqMYEG
 RcPLe47wvzr7VYoKT0BGePbN79leHnWxbtRqQ7SKjcaTKl9BuAZx6RsKhqc99DIh3vuI
 l2/CRbRa3VMSZkHa2tgDqgSMSbMkjIt57ZAJuHIgeQwo9HNbQ3S6fqblouQ4te9ygmjJ
 3scrhJkQFszM3oHw43uBp3Qye3qkEYtDqX7rGW5YbiSXNMVz7Flq1mNtL79NkljqGdwb
 8VAeU8fx0K61LtprexwTE1B2wj7TdRm905zA3cETTZR2GVdr1VcfcQYr81iI2gk3bdqW
 X11g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:reply-to:from:subject:cc:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=og7+V4BOs6plr/YGVQnX+404P8F5uFz/ISDuajxswv0=;
 b=N2IhStyxI6rt0LncHhMFsW1SbGe7YdhRW2W6apAjTo2KiVWeya01fYCVdEs1CkIr+y
 GOLm5107ETz+dkTf1geDfOxJytAeL84UvBYTeQtn3wqdTyjOJQfPLTErmnzxFW1IDrz/
 YOe51wfbewd7hhF62kx0YqPixYOMBb/oAapyOJfvcy0CIj8Wy+u6Ixv3MAmDYqABqYpk
 nTKh9XOuv2rlR2kgYf93LOa0MXXkYzt1fmPcTV359ttYgJAeLPBpCUbkBeh/k6R0moDy
 cFa9FwCSASOB2/mVd0lKJCm5HWUmxvBJuqfjeoBXYlhey9P+ZZzuhb143NnVYnxrR5xs
 QUcQ==
X-Gm-Message-State: AOAM532O47uoGiVS5tOClCCpwv2GTP03HHkoroMd+RBiuy96jyIbEHsh
 akUXJR0wEyKa6lMnLU7rTC0=
X-Google-Smtp-Source: ABdhPJwN0gRL2jyJMYaqSosjMJgABzLSD6PtiDIEUqOq98x3mvzvPq+nXwfkMdfkmV81p3SfW/Xj7g==
X-Received: by 2002:a17:906:43c9:: with SMTP id j9mr280384ejn.57.1627489420927; 
 Wed, 28 Jul 2021 09:23:40 -0700 (PDT)
Received: from [192.168.0.114] ([37.239.218.3])
 by smtp.gmail.com with ESMTPSA id n13sm69223ejk.97.2021.07.28.09.23.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Jul 2021 09:23:40 -0700 (PDT)
To: yanp.bugz@gmail.com
From: Mohammad Rasim <mohammad.rasim96@gmail.com>
Message-ID: <2f310e28-49fe-3206-40d9-0c8a729f9227@gmail.com>
Date: Wed, 28 Jul 2021 19:23:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mohammad.rasim96[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (mohammad.rasim96[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 3.6 FAKE_REPLY_A1          No description available.
X-Headers-End: 1m8mLT-0004U0-Bk
X-Mailman-Approved-At: Thu, 29 Jul 2021 01:45:10 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v26 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Reply-To: cc64ac69-f4e5-3fc4-1362-ced7cf68119a@gmail.com
Cc: ebiggers@kernel.org, nborisov@suse.com,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 oleksandr@natalenko.name, rdunlap@infradead.org, aaptel@suse.com,
 willy@infradead.org, dsterba@suse.cz, almaz.alexandrovich@paragon-software.com,
 kari.argillander@gmail.com, anton@tuxera.com, joe@perches.com,
 linux-fsdevel@vger.kernel.org, mark@harmstone.com, andy.lavr@gmail.com,
 pali@kernel.org, hch@lst.de, dan.carpenter@oracle.com, viro@zeniv.linux.org.uk
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGksCgpJJ3ZlIGJlZW4gdXNpbmcgeW91ciBudGZzIGRyaXZlciBmb3Igc29tZXRpbWUgbm93IGFu
ZCBpdCdzIGdyZWF0IHRvIApmaW5hbGx5IGhhdmUgYSBnb29kIGRyaXZlciBmb3IgdGhpcyBGUywg
aG93ZXZlciBpIGhhdmUgcHJvYmxlbSB3aGVyZSBpZiAKdGhlIHBvd2VyIGN1dHMgb2ZmIGZyb20g
bXkgc3lzdGVtIHdoaWxlIHdyaXRpbmcgdG8gdGhlIHZvbHVtZSB0aGUgCnBhcnRpdGlvbiBnZXRz
IGNvcnJ1cHRlZCwgdGhpcyBpcyBleHBlY3RlZCBvZiBjb3Vyc2UgYnV0IHRoZSBwcm9ibGVtIGlz
IAp0aGF0IGBudGZzZml4YCB0b29sIGNhbid0IGZpeCB0aGUgcGFydGl0aW9uIGFuZCBubyBtYXR0
ZXIgaG93IG1hbnkgdGltZXMgCmkgcnVuIGl0IHRoZSBzeXN0ZW0gd2lsbCBhbHdheXMgc3BpdHMg
dGhpcyBpbiB0aGUga2VybmVsIGxvZyB3aGVuIHRyeWluZyAKdG8gbW91bnQgdGhlIHBhcnRpdGlv
bjoKCiDCoMKgwqAgbnRmczM6IHNkYjE6IHZvbHVtZSBpcyBkaXJ0eSBhbmQgImZvcmNlIiBmbGFn
IGlzIG5vdCBzZXQhCgppZiBpIGJvb3QgdG8gYSB3aW5kb3dzIDEwIE9TIHRoZW4gdGhlIHN5c3Rl
bSBpcyBhYmxlIHRvIG1vdW50IHRoZSB2b2x1bWUgCndpdGggbm8gcHJvYmxlbShldmVuIGJlZm9y
ZSBydW5uaW5nIGNoa2RzayBvbiBpdCksIHdpbmRvd3MgYGNoa2Rza2AgCnV0aWxpdHkgY2FuIGZp
bmQgdGhlIGVycm9ycyBhbmQgZml4IHRoZW0sIGFuZCBpIGNhbiByZWJvb3QgdG8gbGludXggdG8g
CnVzZSBteSBwYXJ0aXRpb24gYWdhaW4gd2l0aCBubyBwcm9ibGVtLgoKaXQgd291bGQgYmUgbmlj
ZSB0byBoYXZlIHlvdXIgZmlsZXN5c3RlbSB1dGlsaXRlcyBwdWJsaXNoZWQgb24gZ2l0aHViIHNv
IAp3ZSBjYW4gdXNlIHRoZW0gd2l0aCB0aGUgY3VycmVudCBvdXQgb2YgdGhlIHRyZWUgZHJpdmVy
CgoKUmVnYXJkcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1EZXZAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2xpbnV4LW50ZnMtZGV2Cg==
