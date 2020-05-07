Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDA21C9E46
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  8 May 2020 00:09:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jWohq-0000T9-Nh; Thu, 07 May 2020 22:09:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <guoqing.jiang@cloud.ionos.com>) id 1jWoJj-0004pS-PN
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 07 May 2020 21:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mR5KN3Pz1n6bpXv2DNeSraShlVTsxJWNxOu3C85SoMg=; b=lTvNLEK7LvvX8nEPniWrtF64Wk
 cBdx4+Bw9lW51giJrd9mMYIHpcRsUk3KgNvE92Y12ID+PbcjswewlCHHAaQugdh0TBMKX3MgdOnC+
 pnAKqkWti0tfEiHl44TxQznPA7bQzoQP2MMNMOK4XEOSuCtscQPxW61GfQ2KY+dAT/qQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mR5KN3Pz1n6bpXv2DNeSraShlVTsxJWNxOu3C85SoMg=; b=C2dO5SAPxuZ010Hx8ocTvXiYnq
 Nl/xcMFgh2oZyuOEQXwanzLTjBnIjIG4lu/Eorpdqn6puhE3C7WS+4eVgHsYzM/38Za9f5btEZVTV
 cYmVlMS3Bu7nEiDjJ5ksNwevN6tsOsMTZRwPVz4FLoFBSuG5lvnSB7NtFPKvYhNG0XMw=;
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jWoJc-00EjGf-Ln
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 07 May 2020 21:44:31 +0000
Received: by mail-ed1-f65.google.com with SMTP id a8so6755349edv.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 07 May 2020 14:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloud.ionos.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mR5KN3Pz1n6bpXv2DNeSraShlVTsxJWNxOu3C85SoMg=;
 b=NAbAsbcCbcOXGfgGm7ahZi0o5gzd0TsLfygSJrNrVrw5vLmqVRWfCI3isz5iFR5mbA
 STvZy0Ini+hckNV2WvZupD+LtTplGUSiOCIH9BQ4aOETcgeCdIpI3Mj4WzqQem9CXLDe
 qYqvI/C+O08KvR+8KRty0U7zvjbl56T9lDhJogFf/OcHKnQJ9/6T7DcnRmFb0xuydSVo
 OCcwBscdI31qgR35JMlzx4rHo/+NUlCVj0gEvFfy2Ss+woreUw2pfXnuKNU5iEfww/Em
 QGboLZniwFBp/2tvxFy9cYEauvwdXj+tBAzwiJzCfCEprECi1B8+ab9SEyFXMnVToH+E
 +Dmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mR5KN3Pz1n6bpXv2DNeSraShlVTsxJWNxOu3C85SoMg=;
 b=h9zylvAZ/eee1TAKdkVsLsDOrUQcSsSPNbRRq7JKfzMcRKrSQJGrOSRYKzgOK7WzQ9
 ada4LckqLZigicm0atkg7RNc7rA4BUk/hj8QfwouS61G/RnwOvCgPfP3PZ47sgUfgaiA
 33uZYzqoXCsUg4/6rFo5UsTVxTk5VIg/lSSgjfNB9WskuAkLDHwtfHmTehzrws/kBnMO
 3nK5rjtdelyNMVvjE0p6VK/g/De66EEbobnw5zY0q9GZmrAhr8xv76ypHicvYD2wnVSC
 OkC6oJVPkK+TvDak5p8Aq9gg20GH75MbEeUkeKoBM2KBCIRyQXEZrnED7VYE6rA6J98b
 B7/w==
X-Gm-Message-State: AGi0PuYU6W9761m1/LR6w3gpRtBnDclvqnhpT7/cDSkzKxwrjLl/YhXc
 jbrIxAq/yxAZRCJ8hAEoRj76Vw==
X-Google-Smtp-Source: APiQypLmX8YHBXb7kua9dEsVAJulVEp2exuqcsxlWLEdtzHF8lGn1ZzGxVKJFdK6oe8J4dems5+T3w==
X-Received: by 2002:a05:6402:221c:: with SMTP id
 cq28mr13246566edb.50.1588887857976; 
 Thu, 07 May 2020 14:44:17 -0700 (PDT)
Received: from ls00508.pb.local ([2001:1438:4010:2540:a1ee:a39a:b93a:c084])
 by smtp.gmail.com with ESMTPSA id k3sm613530edi.60.2020.05.07.14.44.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:44:17 -0700 (PDT)
From: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
To: linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Thu,  7 May 2020 23:43:51 +0200
Message-Id: <20200507214400.15785-2-guoqing.jiang@cloud.ionos.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507214400.15785-1-guoqing.jiang@cloud.ionos.com>
References: <20200507214400.15785-1-guoqing.jiang@cloud.ionos.com>
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWoJc-00EjGf-Ln
X-Mailman-Approved-At: Thu, 07 May 2020 22:09:25 +0000
Subject: [Linux-NTFS-Dev] [RFC PATCH V3 01/10] include/linux/pagemap.h:
 introduce attach/detach_page_private
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
Cc: Martin Brandenburg <martin@omnibond.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, david@fromorbit.com,
 linux-mm@kvack.org, William Kucharski <william.kucharski@oracle.com>,
 Yafang Shao <laoar.shao@gmail.com>, Mike Marshall <hubcap@omnibond.com>,
 Andreas Gruenbacher <agruenba@redhat.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, Chris Mason <clm@fb.com>,
 willy@infradead.org, hch@infradead.org, devel@lists.orangefs.org,
 Chao Yu <chao@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-raid@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Anton Altaparmakov <anton@tuxera.com>,
 Andreas Dilger <adilger@dilger.ca>,
 Guoqing Jiang <guoqing.jiang@cloud.ionos.com>,
 Yang Shi <yang.shi@linux.alibaba.com>, Song Liu <song@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

VGhlIGxvZ2ljIGluIGF0dGFjaF9wYWdlX2J1ZmZlcnMgYW5kICBfX2NsZWFyX3BhZ2VfYnVmZmVy
cyBhcmUgcXVpdGUKcGFpcmVkLCBidXQKCjEuIHRoZXkgYXJlIGxvY2F0ZWQgaW4gZGlmZmVyZW50
IGZpbGVzLgoKMi4gYXR0YWNoX3BhZ2VfYnVmZmVycyBpcyBpbXBsZW1lbnRlZCBpbiBidWZmZXJf
aGVhZC5oLCBzbyBpdCBjb3VsZCBiZQogICB1c2VkIGJ5IG90aGVyIGZpbGVzLiBCdXQgX19jbGVh
cl9wYWdlX2J1ZmZlcnMgaXMgc3RhdGljIGZ1bmN0aW9uIGluCiAgIGJ1ZmZlci5jIGFuZCBvdGhl
ciBwb3RlbnRpYWwgdXNlcnMgY2FuJ3QgY2FsbCB0aGUgZnVuY3Rpb24sIG1kLWJpdG1hcAogICBl
dmVuIGNvcGllZCB0aGUgZnVuY3Rpb24uCgpTbywgaW50cm9kdWNlIHRoZSBuZXcgYXR0YWNoL2Rl
dGFjaF9wYWdlX3ByaXZhdGUgdG8gcmVwbGFjZSB0aGVtLiBXaXRoCnRoZSBuZXcgcGFpciBvZiBm
dW5jdGlvbiwgd2Ugd2lsbCByZW1vdmUgdGhlIHVzYWdlIG9mIGF0dGFjaF9wYWdlX2J1ZmZlcnMK
YW5kICBfX2NsZWFyX3BhZ2VfYnVmZmVycyBpbiBuZXh0IHBhdGNoZXMuIFRoYW5rcyBmb3Igc3Vn
Z2VzdGlvbnMgYWJvdXQKdGhlIGZ1bmN0aW9uIG5hbWUgZnJvbSBBbGV4YW5kZXIgVmlybywgQW5k
cmVhcyBHcsO8bmJhY2hlciwgQ2hyaXN0b3BoCkhlbGx3aWcgYW5kIE1hdHRoZXcgV2lsY294LgoK
U3VnZ2VzdGVkLWJ5OiBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4KQ2M6IEFu
ZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+CkNjOiBsaW51eC1tbUBrdmFj
ay5vcmcKQ2M6ICJEYXJyaWNrIEouIFdvbmciIDxkYXJyaWNrLndvbmdAb3JhY2xlLmNvbT4KQ2M6
IFdpbGxpYW0gS3VjaGFyc2tpIDx3aWxsaWFtLmt1Y2hhcnNraUBvcmFjbGUuY29tPgpDYzogIktp
cmlsbCBBLiBTaHV0ZW1vdiIgPGtpcmlsbC5zaHV0ZW1vdkBsaW51eC5pbnRlbC5jb20+CkNjOiBB
bmRyZWFzIEdydWVuYmFjaGVyIDxhZ3J1ZW5iYUByZWRoYXQuY29tPgpDYzogWWFuZyBTaGkgPHlh
bmcuc2hpQGxpbnV4LmFsaWJhYmEuY29tPgpDYzogWWFmYW5nIFNoYW8gPGxhb2FyLnNoYW9AZ21h
aWwuY29tPgpDYzogU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz4KQ2M6IGxpbnV4LXJhaWRAdmdl
ci5rZXJuZWwub3JnCkNjOiBDaHJpcyBNYXNvbiA8Y2xtQGZiLmNvbT4KQ2M6IEpvc2VmIEJhY2lr
IDxqb3NlZkB0b3hpY3BhbmRhLmNvbT4KQ2M6IERhdmlkIFN0ZXJiYSA8ZHN0ZXJiYUBzdXNlLmNv
bT4KQ2M6IGxpbnV4LWJ0cmZzQHZnZXIua2VybmVsLm9yZwpDYzogQWxleGFuZGVyIFZpcm8gPHZp
cm9AemVuaXYubGludXgub3JnLnVrPgpDYzogSmFlZ2V1ayBLaW0gPGphZWdldWtAa2VybmVsLm9y
Zz4KQ2M6IENoYW8gWXUgPGNoYW9Aa2VybmVsLm9yZz4KQ2M6IGxpbnV4LWYyZnMtZGV2ZWxAbGlz
dHMuc291cmNlZm9yZ2UubmV0CkNjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGluZnJhZGVhZC5v
cmc+CkNjOiBsaW51eC14ZnNAdmdlci5rZXJuZWwub3JnCkNjOiBBbnRvbiBBbHRhcGFybWFrb3Yg
PGFudG9uQHR1eGVyYS5jb20+CkNjOiBsaW51eC1udGZzLWRldkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKQ2M6IE1pa2UgTWFyc2hhbGwgPGh1YmNhcEBvbW5pYm9uZC5jb20+CkNjOiBNYXJ0aW4gQnJh
bmRlbmJ1cmcgPG1hcnRpbkBvbW5pYm9uZC5jb20+CkNjOiBkZXZlbEBsaXN0cy5vcmFuZ2Vmcy5v
cmcKQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogU2ViYXN0aWFu
IEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPgpDYzogUm9tYW4gR3VzaGNo
aW4gPGd1cm9AZmIuY29tPgpDYzogQW5kcmVhcyBEaWxnZXIgPGFkaWxnZXJAZGlsZ2VyLmNhPgpT
aWduZWQtb2ZmLWJ5OiBHdW9xaW5nIEppYW5nIDxndW9xaW5nLmppYW5nQGNsb3VkLmlvbm9zLmNv
bT4KLS0tClJGQyBWMiAtPiBSRkMgVjM6CjEuIHJlbmFtZSBjbGVhcl9wYWdlX3ByaXZhdGUgdG8g
ZGV0YWNoX3BhZ2VfcHJpdmF0ZS4KMi4gdXBkYXRlZCB0aGUgY29tbWVudHMgZm9yIHRoZSB0d28g
ZnVuY3Rpb25zLgoKUkZDIC0+IFJGQyBWMjogIEFkZHJlc3MgdGhlIGNvbW1lbnRzIGZyb20gQ2hy
aXN0b3BoIEhlbGx3aWcKMS4gY2hhbmdlIGZ1bmN0aW9uIG5hbWVzIHRvIGF0dGFjaC9jbGVhcl9w
YWdlX3ByaXZhdGUgYW5kIGFkZCBjb21tZW50cy4KMi4gY2hhbmdlIHRoZSByZXR1cm4gdHlwZSBv
ZiBhdHRhY2hfcGFnZV9wcml2YXRlLgoKIGluY2x1ZGUvbGludXgvcGFnZW1hcC5oIHwgMzcgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDM3IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BhZ2VtYXAuaCBiL2luY2x1
ZGUvbGludXgvcGFnZW1hcC5oCmluZGV4IGE4ZjdiZDhlYTFjNi4uOTlkZDkzMTg4YTVlIDEwMDY0
NAotLS0gYS9pbmNsdWRlL2xpbnV4L3BhZ2VtYXAuaAorKysgYi9pbmNsdWRlL2xpbnV4L3BhZ2Vt
YXAuaApAQCAtMjA1LDYgKzIwNSw0MyBAQCBzdGF0aWMgaW5saW5lIGludCBwYWdlX2NhY2hlX2Fk
ZF9zcGVjdWxhdGl2ZShzdHJ1Y3QgcGFnZSAqcGFnZSwgaW50IGNvdW50KQogCXJldHVybiBfX3Bh
Z2VfY2FjaGVfYWRkX3NwZWN1bGF0aXZlKHBhZ2UsIGNvdW50KTsKIH0KIAorLyoqCisgKiBhdHRh
Y2hfcGFnZV9wcml2YXRlIC0gQXR0YWNoIHByaXZhdGUgZGF0YSB0byBhIHBhZ2UuCisgKiBAcGFn
ZTogUGFnZSB0byBhdHRhY2ggZGF0YSB0by4KKyAqIEBkYXRhOiBEYXRhIHRvIGF0dGFjaCB0byBw
YWdlLgorICoKKyAqIEF0dGFjaGluZyBwcml2YXRlIGRhdGEgdG8gYSBwYWdlIGluY3JlbWVudHMg
dGhlIHBhZ2UncyByZWZlcmVuY2UgY291bnQuCisgKiBUaGUgZGF0YSBtdXN0IGJlIGRldGFjaGVk
IGJlZm9yZSB0aGUgcGFnZSB3aWxsIGJlIGZyZWVkLgorICovCitzdGF0aWMgaW5saW5lIHZvaWQg
YXR0YWNoX3BhZ2VfcHJpdmF0ZShzdHJ1Y3QgcGFnZSAqcGFnZSwgdm9pZCAqZGF0YSkKK3sKKwln
ZXRfcGFnZShwYWdlKTsKKwlzZXRfcGFnZV9wcml2YXRlKHBhZ2UsICh1bnNpZ25lZCBsb25nKWRh
dGEpOworCVNldFBhZ2VQcml2YXRlKHBhZ2UpOworfQorCisvKioKKyAqIGRldGFjaF9wYWdlX3By
aXZhdGUgLSBEZXRhY2ggcHJpdmF0ZSBkYXRhIGZyb20gYSBwYWdlLgorICogQHBhZ2U6IFBhZ2Ug
dG8gZGV0YWNoIGRhdGEgZnJvbS4KKyAqCisgKiBSZW1vdmVzIHRoZSBkYXRhIHRoYXQgd2FzIHBy
ZXZpb3VzbHkgYXR0YWNoZWQgdG8gdGhlIHBhZ2UgYW5kIGRlY3JlbWVudHMKKyAqIHRoZSByZWZj
b3VudCBvbiB0aGUgcGFnZS4KKyAqCisgKiBSZXR1cm46IERhdGEgdGhhdCB3YXMgYXR0YWNoZWQg
dG8gdGhlIHBhZ2UuCisgKi8KK3N0YXRpYyBpbmxpbmUgdm9pZCAqZGV0YWNoX3BhZ2VfcHJpdmF0
ZShzdHJ1Y3QgcGFnZSAqcGFnZSkKK3sKKwl2b2lkICpkYXRhID0gKHZvaWQgKilwYWdlX3ByaXZh
dGUocGFnZSk7CisKKwlpZiAoIVBhZ2VQcml2YXRlKHBhZ2UpKQorCQlyZXR1cm4gTlVMTDsKKwlD
bGVhclBhZ2VQcml2YXRlKHBhZ2UpOworCXNldF9wYWdlX3ByaXZhdGUocGFnZSwgMCk7CisJcHV0
X3BhZ2UocGFnZSk7CisKKwlyZXR1cm4gZGF0YTsKK30KKwogI2lmZGVmIENPTkZJR19OVU1BCiBl
eHRlcm4gc3RydWN0IHBhZ2UgKl9fcGFnZV9jYWNoZV9hbGxvYyhnZnBfdCBnZnApOwogI2Vsc2UK
LS0gCjIuMTcuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1EZXZAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2xpbnV4LW50ZnMtZGV2Cg==
