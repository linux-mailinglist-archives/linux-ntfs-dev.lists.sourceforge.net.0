Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9F13DF1B3
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  3 Aug 2021 17:41:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mAwXs-0002Rg-6a; Tue, 03 Aug 2021 15:41:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1mAtoD-0000OV-9t
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Aug 2021 12:46:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xEZBiEutlNPUh8jvkLGE6XqjGMUFVXRL0oQlInbhMGg=; b=Sx8uJFwD7zXpMw4GI+r+kLaDE4
 A98X+lTjBVpPBbPV8OyA4ofmqeDnJ+i8AIsSmS7ZPCQUgGZq95pTFgnKyyvaxMbYvS9lB5TowkrIB
 PN1foSF3Dwtq9o7+YGiIkeNSqokLThZc3I03UTmSHXC/xWqzGLk09Xv3drTG9IAR8JbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xEZBiEutlNPUh8jvkLGE6XqjGMUFVXRL0oQlInbhMGg=; b=VYlWHprQfBYlrKKxqxoOZDd1EQ
 8oe205v0mvK2TFx5Tc/B+eEhqN/OvMVgvjf1IcwpERkjGdWED0Kx++GA1oBMJ75hAlX5YbfOGisaC
 qbIisv6TFAje/0vuopxbv4Pexl86XICZ3evVv1zfx4Qjls4URbSAU1puEGeANXXyZceQ=;
Received: from smtprelay0231.hostedemail.com ([216.40.44.231]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mAtoB-00B6zU-3I
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Aug 2021 12:46:13 +0000
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id EB89918003C34
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue,  3 Aug 2021 12:26:51 +0000 (UTC)
Received: from omf12.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id CA6D118224D70;
 Tue,  3 Aug 2021 12:26:45 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf12.hostedemail.com (Postfix) with ESMTPA id B0228240236; 
 Tue,  3 Aug 2021 12:26:41 +0000 (UTC)
Message-ID: <64a14b9baa95f0f78fd9db1c0834fc21615ec746.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kari Argillander <kari.argillander@gmail.com>, Konstantin Komarov
 <almaz.alexandrovich@paragon-software.com>
Date: Tue, 03 Aug 2021 05:26:40 -0700
In-Reply-To: <20210803115709.zd3gjmxw7oe6b4zk@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210803115709.zd3gjmxw7oe6b4zk@kari-VirtualBox>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
X-Spam-Status: No, score=1.33
X-Stat-Signature: e7kcx1kujkizii9ae5n93uthq8gyrc8e
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: B0228240236
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+he87zxmzIqFmje7g+Q69zUkUAcaDvn3I=
X-HE-Tag: 1627993601-509788
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.231 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.231 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.9 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mAtoB-00B6zU-3I
X-Mailman-Approved-At: Tue, 03 Aug 2021 15:41:29 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] Restyle comments to better align with
 kernel-doc
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 oleksandr@natalenko.name, rdunlap@infradead.org, aaptel@suse.com,
 willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, dan.carpenter@oracle.com, pali@kernel.org,
 mark@harmstone.com, anton@tuxera.com
Content-Type: multipart/mixed; boundary="===============0045774466927335568=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


--===============0045774466927335568==
Content-Type: multipart/alternative; boundary="=-mcJe8uI8C7ndC4f7ZHYz"


--=-mcJe8uI8C7ndC4f7ZHYz
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On Tue, 2021-08-03 at 14:57 +0300, Kari Argillander wrote:
> Capitalize comments and end with period for better reading.

Neither is necessary or particularly useful.
Comments in code, like dmesg output, are generally not complete sentences.

> Yes I know that this patch is quite monster. That's why I try to send this
> now before patch series get merged. After that this patch probebly needs to
> be splitted more and sended in patch series.

That would probably be useful in any case as much of the
capitalization and period conversions are not good changes IMO.


--=-mcJe8uI8C7ndC4f7ZHYz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode:=
 space; line-break: after-white-space;"><pre>On Tue, 2021-08-03 at 14:57 +0=
300, Kari Argillander wrote:</pre><pre>&gt; Capitalize comments and end wit=
h period for better reading.</pre><pre><br></pre><pre>Neither is necessary =
or particularly useful.</pre><pre>Comments in code, like dmesg output, are =
generally not complete sentences.</pre><pre><br></pre><pre>&gt; Yes I know =
that this patch is quite monster. That's why I try to send this</pre><pre>&=
gt; now before patch series get merged. After that this patch probebly need=
s to</pre><pre>&gt; be splitted more and sended in patch series.</pre><pre>=
<br></pre><pre>That would probably be useful in any case as much of the</pr=
e><pre>capitalization and period conversions are not good changes IMO.</pre=
><pre><br></pre></body></html>

--=-mcJe8uI8C7ndC4f7ZHYz--



--===============0045774466927335568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0045774466927335568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============0045774466927335568==--


