Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5C17CE147
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 18 Oct 2023 17:34:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qt8ZF-0006lN-Qn;
	Wed, 18 Oct 2023 15:34:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qt7OW-0008Qq-CN
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 18 Oct 2023 14:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=glPK2nMlq3eHDbWVN7H4C3ISIh1VNxtl/70uXeL9vlY=; b=KaauY0DIfhThI9rCDw0qqzOrNI
 pF7Eobcia2UPkuqVGf474UgWMW2/6fT6WQGbiaWUJvBcXnDCSIaddumedMUr3Cn2HYQH+YJ6QU/OF
 mnFViCXaSxN7hzol0eDKTCHE6V1/mJPqHfcZEbS5LgJL/aBQEU0si6hjlLlL9BNQr6Ts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=glPK2nMlq3eHDbWVN7H4C3ISIh1VNxtl/70uXeL9vlY=; b=Exc+TnmlEAMwDb1ccJGwmwlVsF
 XW6vVYUwS0bX/NWMm9F/9/nTSGOomam8ftuvzFndYTTQ5O5mM2xQx+qaaWppDWZ0Lct8KvBULYtHp
 ZJFt0NV/tevdQ9vrydOV0hpcWQEX5e4O6hJKQEeqd29RjDQ1dEleyFNd+ULgzvT3sctU=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qt7OV-001dg4-Sp for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 18 Oct 2023 14:19:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=glPK2nMlq3eHDbWVN7H4C3ISIh1VNxtl/70uXeL9vlY=; b=Ibs+RNxU+J51GkYsnDaoEWnUiP
 luhtw2e3kMrs3u4Fzqd+KhmRb87sI1fUxfxufl6IDoWLh8ZH5+1jcC2+LdgtGMS3Ep1r+8rkrFcmf
 3RG/aq07vRBh6yJGuf3wfIbGtb++ObXL076PGk6duum97gslZBZpW2IIDEvlvMvBe8ibsoKed6PSh
 lTZBRNnx5TnhfSlAgL6Nl5A1AZdAbKUZYIpacxJH+XinPssyhI4K0tp2v+gTKpvQpx6V3fHkKLb7W
 1snV5MuO5HKVjY8+kEs2509Dd4asRWcbVnaTg8CoaA5x5efBzrRlF4p4o/t88DcfOB4IXDeXqIolS
 1tLPjCZQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qt7O2-001KzI-8R; Wed, 18 Oct 2023 14:19:02 +0000
Date: Wed, 18 Oct 2023 15:19:02 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Message-ID: <ZS/pVp9I4M8p4vwh@casper.infradead.org>
References: <20231016201114.1928083-1-willy@infradead.org>
 <20231016201114.1928083-2-willy@infradead.org>
 <CAKFNMonj9XQe1PdeCny7N8MFAHwQVQNDf6A2S4g-gxX4iJLvZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKFNMonj9XQe1PdeCny7N8MFAHwQVQNDf6A2S4g-gxX4iJLvZQ@mail.gmail.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Oct 18, 2023 at 04:41:44AM +0900, Ryusuke Konishi
   wrote: > On Tue, Oct 17, 2023 at 5:11 AM Matthew Wilcox (Oracle) wrote:
   > > > > Rename grow_dev_page() to grow_dev_folio() and make it retur [...]
    
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1qt7OV-001dg4-Sp
X-Mailman-Approved-At: Wed, 18 Oct 2023 15:34:39 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2 01/27] buffer: Return bool from
 grow_dev_folio()
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
Cc: Pankaj Raghav <p.raghav@samsung.com>, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, gfs2@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gV2VkLCBPY3QgMTgsIDIwMjMgYXQgMDQ6NDE6NDRBTSArMDkwMCwgUnl1c3VrZSBLb25pc2hp
IHdyb3RlOgo+IE9uIFR1ZSwgT2N0IDE3LCAyMDIzIGF0IDU6MTHigK9BTSBNYXR0aGV3IFdpbGNv
eCAoT3JhY2xlKSB3cm90ZToKPiA+Cj4gPiBSZW5hbWUgZ3Jvd19kZXZfcGFnZSgpIHRvIGdyb3df
ZGV2X2ZvbGlvKCkgYW5kIG1ha2UgaXQgcmV0dXJuIGEgYm9vbC4KPiA+IERvY3VtZW50IHdoYXQg
dGhhdCBib29sIG1lYW5zOyBpdCdzIG1vcmUgc3VidGxlIHRoYW4gaXQgZmlyc3QgYXBwZWFycy4K
PiA+IEFsc28gcmVuYW1lIHRoZSAnZmFpbGVkJyBsYWJlbCB0byAndW5sb2NrJyBiZWFjdXNlIGl0
J3Mgbm90IGV4YWN0bHkKPiA+ICdmYWlsZWQnLiAgSXQganVzdCBoYXNuJ3Qgc3VjY2VlZGVkLgo+
IAo+IFRoaXMgY2hhbmdlcyB0aGUgcmV0dXJuIHR5cGUgb2YgZ3Jvd19idWZmZXJzKCkgZnJvbSAi
aW50IiAgdG8gImJvb2wiLgo+IEJ1dCwgaXQgc2VlbXMgdGhhdCB0aGUgY2FsbGVyLCBfX2dldGJs
a19zbG93KCksIGhhcyBub3QgY2hhbmdlZCB0aGUKPiB0eXBlIG9mIHRoZSB2YXJpYWJsZSAicmV0
IiB0aGF0IHJlY2VpdmVzIGl0cyByZXR1cm4gdmFsdWU6ClsuLi5dCj4gCj4gU28sIGl0IGxvb2tz
IGxpa2UgdGhlIGVycm9yIGNoZWNrIGltbWVkaWF0ZWx5IGFmdGVyIGNhbGxpbmcKPiBncm93X2J1
ZmZlcnMoKSB3aWxsIG5vdCBicmFuY2ggbGlrZSBiZWZvcmUuCj4gSXMgdGhpcyBva2F5ID8gICBP
ciwgYW0gSSBtaXNzaW5nIHNvbWUgb3RoZXIgY2hhbmdlcz8KPiAKPiBBbHNvLCB0aGVyZSBpcyBh
IHR5cG8gaW4gdGhlIGNoYW5nZWxvZzogImJlYWN1c2UiIC0+ICJiZWNhdXNlIi4KCkFyZ2gsIHll
cy4gIEFuZHJldywgcGxlYXNlIGRyb3AgdGhpcyBwYXRjaCBmb3Igbm93LiAgSSdsbCBzdWJtaXQK
c29tZXRoaW5nIGJldHRlciBuZXh0IGN5Y2xlLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW50ZnMtZGV2IG1haWxpbmcgbGlzdApMaW51eC1u
dGZzLWRldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
