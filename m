Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D43B97C568
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 19 Sep 2024 09:55:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1srC0j-0005KQ-06;
	Thu, 19 Sep 2024 07:55:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tukkek@gmail.com>) id 1sqtXu-0001Ac-N7
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 18 Sep 2024 12:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PretEWRXgrsNBz1PhTxjlLkiGBA8DochlAFsyW6wwV8=; b=dLXmFPiKzk9uGqls4/TolM2uf6
 yovWJsRRYlnlnnvN0e3INQ17XM7k+Cd8IVgDRqgElp+jHMyqt84C+mM8WjVB4CgfsFeZaUP7FOr/3
 37lIBJL66Y/k9024wJy1tGlFvUfdh0pjCGgkP3YmMyV9/GCYQLcq7btagJJgWSQ0vpfY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PretEWRXgrsNBz1PhTxjlLkiGBA8DochlAFsyW6wwV8=; b=M
 Qm/GWd2et9nEBEf9BbXBH4wcOOINzdXmZbMHxGuzpjpT8hLYlx2IPaw72OoR8SEC6VcBVk9onfavy
 NHnHSHFvKoHtI53tZsfe6bQ20byifkpdUNDeQydr4fwROc4MFiPQajTdFfUsTtqU++9szPpnVV8Wv
 vTjwW7XgX94wuHbE=;
Received: from mail-ed1-f48.google.com ([209.85.208.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sqtXs-0003xe-47 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 18 Sep 2024 12:12:32 +0000
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-5c3ed267a7bso8667644a12.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 18 Sep 2024 05:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726661540; x=1727266340; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=PretEWRXgrsNBz1PhTxjlLkiGBA8DochlAFsyW6wwV8=;
 b=YkRvtD5sTSY0Zwfx8nuSt99aZW8eF35o+ZL0VFt7l5EYX4s9cnq10V16TRfPE9/RxG
 Fj/QHDsDMvUZtMxgeS9ybqBvaVXRHfhMN+euNF42MijlPzlhQao7T9VSrJ4I9npi5hfQ
 0KZvRkEf6uILPqShUXcaVr/eQQew9vICAgz7O/QUql0biT+hPyOh3xZAbcEYW7jQxQGX
 vfAPDBBP8iO2s34iubrQiFSnH/NhpDM5EiZ5E8xqdteaPxOCMQJkVNOje92F/gHSwhW4
 JT9VB+w9QRgDuBCTvgoQLkcjF319x6l8Wg6OTc015aB8ipwV2pQADPWHUsrjYG9mzXon
 d8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726661540; x=1727266340;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PretEWRXgrsNBz1PhTxjlLkiGBA8DochlAFsyW6wwV8=;
 b=vgOXZ73uh6Ab1at2jMgd9aCqAqEYa2+EzLwu+K654XvcPnoa43hB0ceUhxAwkuFe/Y
 M3CmOl0I/J49BdBxfy4tD4BCjGxy1kRZ0/XTwpLchh911hTC9uBPLSC3AdA2EZiUuH4A
 9Au7x+Fu58iXnq5AO+xLxxv/B+cQtMycnvRWbZu6QkstkLCMnHxe8rQgWlrD9eOU8k5k
 AgAAfSc/f3Ux8u0m4JsE8+6zdVHMcaHiJhyHfhR2CgxWLGm3KiRYQtfAOLWJvmrLaTw2
 EZ0kDvBszS5blqwxQncFXuhZUuBlVVACv9rkKXQ2g2p1urDu4gxptmOs99Ot5TF0okdV
 jQVw==
X-Gm-Message-State: AOJu0Yyc0YMWEmTWj9rwu/m8AnuRK7AfBPHo3UkQrXfdCxGf7IHzJxap
 fWdm7ziLEEsUsx76qiHOAnd+zD4tnGwoBOnE8fCxS7ZP+YnHTFPR/epTwcCQoZg7+8yhf5e58G3
 cxxpiDLhMuJpm25yKKBvG6bX2OhWr
X-Google-Smtp-Source: AGHT+IEW7vIU5BUeSA1aiTksk8nu65PK0g/ABFbgiFzlucqB17FksWjlspl9uwr90c0pX1rCkh/QyTs67LPQn4OR558=
X-Received: by 2002:a50:c908:0:b0:59e:f6e7:5521 with SMTP id
 4fb4d7f45d1cf-5c413e2095cmr15574283a12.19.1726661540119; Wed, 18 Sep 2024
 05:12:20 -0700 (PDT)
MIME-Version: 1.0
From: Alex Henry <tukkek@gmail.com>
Date: Wed, 18 Sep 2024 09:12:08 -0300
Message-ID: <CAM+iiifFJYzM9tVL+UFAkkaBMeqp22w4n1Go+uAO8DhdLmNfjw@mail.gmail.com>
To: linux-ntfs-dev@lists.sourceforge.net
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello friends, I hope I'm in the right place! I booted into
 Windows by mistake this morning, foolishly did a hard-reset, not thinking
 anything of it and then my Linux system wouldn't work. I just happened to
 install a new DKMS driver yesterday so [...] 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tukkek[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.48 listed in list.dnswl.org]
 -1.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.48 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sqtXs-0003xe-47
X-Mailman-Approved-At: Thu, 19 Sep 2024 07:55:28 +0000
Subject: [Linux-ntfs-dev] Log unsafe read-only re-mount as an error
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
Content-Type: multipart/mixed; boundary="===============7790679370577722157=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============7790679370577722157==
Content-Type: multipart/alternative; boundary="000000000000bf0dd2062263b789"

--000000000000bf0dd2062263b789
Content-Type: text/plain; charset="UTF-8"

Hello friends, I hope I'm in the right place!

I booted into Windows by mistake this morning, foolishly did a hard-reset,
not thinking anything of it and then my Linux system wouldn't work. I just
happened to install a new DKMS driver yesterday so I assumed that was the
issue and started digging...

It took me over half an hour to trace the issue back to the boot message
saying my root NTFS drive (a small SSD I use for both OS system-files) was
unsafe and mounted read-only. I did as instructed, booted and re-booted
Windows and here I am again a happy-penguin writing this.

While I am extremely thankful for that message which led me to easily fix
the issue, I'd suggest that you consider making it an error-priority
log-event. That would have saved me a good chunk of time and I can only
imagine less-skilled or less-lucky users could have missed it entirely.

Conceptually speaking, the unsafe status and the read-only re-mount was in
fact the one error that had my system broken and with it fixed everything's
back to normal.

Thank you all who put in the hard work that goes unnoticed until something
breaks! Cheers!

--000000000000bf0dd2062263b789
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello friends, I hope I&#39;m in the right place!</di=
v><div><br></div><div>I booted into Windows by mistake this morning, foolis=
hly did a hard-reset, not thinking anything of it and then my Linux system =
wouldn&#39;t work. I just happened to install a new DKMS driver yesterday s=
o I assumed that was the issue and started digging...<br></div><div><br></d=
iv><div>It took me over half an hour to trace the issue back to the boot me=
ssage saying my root NTFS drive (a small SSD I use for both OS system-files=
) was unsafe and mounted read-only. I did as instructed, booted and re-boot=
ed Windows and here I am again a happy-penguin writing this.</div><div><br>=
</div><div>While I am extremely thankful for that message which led me to e=
asily fix the issue, I&#39;d suggest that you consider making it an error-p=
riority log-event. That would have saved me a good chunk of time and I can =
only imagine less-skilled or less-lucky users could have missed it entirely=
.<br></div><div><br></div><div>Conceptually speaking, the unsafe status and=
 the read-only re-mount was in fact the one error that had my system broken=
 and with it fixed everything&#39;s back to normal.</div><div><br></div><di=
v>Thank you all who put in the hard work that goes unnoticed until somethin=
g breaks! Cheers!<br></div></div>

--000000000000bf0dd2062263b789--


--===============7790679370577722157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7790679370577722157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============7790679370577722157==--

