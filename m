Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E8B2AA0FE
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  7 Nov 2020 00:26:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kbB7P-0008Lw-Tv; Fri, 06 Nov 2020 23:26:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <recoverymail123890@gmail.com>) id 1kaHJd-0008NB-4i
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 04 Nov 2020 11:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jOJOfQUjNPfZDgQKO2cK0qIp+4+/UhNSUMpszMqFcIg=; b=WQcGmhHNf/i9WPud+X9b1bh2gK
 YJvfpvcY5rd0rZ/mgVs3EXVx51wMII3qFs7h3lIMlDzzAQZCttqgWcwfzAZh+nHVVUfrd02177vCK
 d6WlHnRfbTXtH6xmvlfv2W5mEz9QC5EjphvNFx16k30bUiWdKyzY8TsQwKTJchyFUHAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jOJOfQUjNPfZDgQKO2cK0qIp+4+/UhNSUMpszMqFcIg=; b=g
 jG2vqJsuYSbOPtkzc6fo/9D8o1h+HJJ1bv7qQzRCk1w0KE5rp7bgGNAQ0Vh4P9FrpQu16N4s2XYA8
 jxaGylmciTFQ+M+Fmw6IYYCMYmiRL9oMEaiqHORXB38vQ5C0VV8RrAmbWYfTARiSKtr3uC2MPlWIT
 JhUHMUZ0rTTxfWXQ=;
Received: from mail-ej1-f53.google.com ([209.85.218.53])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kaHJW-001B7q-QF
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 04 Nov 2020 11:51:01 +0000
Received: by mail-ej1-f53.google.com with SMTP id 7so29373281ejm.0
 for <linux-ntfs-dev@lists.sf.net>; Wed, 04 Nov 2020 03:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=jOJOfQUjNPfZDgQKO2cK0qIp+4+/UhNSUMpszMqFcIg=;
 b=Zswo2P6zGxwtfVkPHECPZj1N1qllvHzRqUUQ+FdqYsG96Vq1HZHwQ74+ZJl7j2BWNL
 TbQtfs8UWY7wXf61N1p9bGqeXGmCICZOTbPqHhk1vn4biCObi1/mXXIC8x1vqciO5J2j
 NzI7rlsjB45oPL4qrF9RrohZwjGS03E43WTfipI/I10la2MAfz27m/LXW9P3tm5HLkk8
 aNbtUdv7x5S/210WAjmSNxgP+ZbsQ7q41Rru54gNzFU0CrQzqCazICxmBJXV48l22hZs
 PBrxi4CdhACOwLSiPIRZV1pBCJFK4iJAvHz7R8oLdQoTGIhN23v2XN9sMgNEMeHD+pV6
 gkpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jOJOfQUjNPfZDgQKO2cK0qIp+4+/UhNSUMpszMqFcIg=;
 b=pxvabVqr4m2/Ujhy89TGMRWCZQ5P2PcWSNMB9vmFgUk0U8KSlv2BJXGphvsSYIkq7L
 OUTLPjknJUd68E8/WHkATTLSeMRtPCXSj0GFCZzyWfjnjNOWJKL2THGTlCAQuT//Wc0n
 Tum3OyGL5jFvDalFeiqSp4sJGP9yaY2mhML42iGwR/x4q5LEkjk07uS9w8qnzNWEkow1
 xKrjr9yVupJjnTfgYH8Ta74cDiyVLFN81cfsibepopfne7ec0pd4RcycRjFvDv+5IyG8
 EYCvfunytLc4zbxYzbFypPISv4HNaFKt7eIccx7nCZR0owD9f/htYpsq0BL591Puh4B9
 XDoA==
X-Gm-Message-State: AOAM530+yJKgvG50LdUUJIxcnM5jxEGF9MxSn4UbrTkcgD5B8/UMY/5N
 X709MoHOUF87V1ti8Q77zHa+pFcBGkBqgRk04kmmJsCH
X-Google-Smtp-Source: ABdhPJwehAEvjCFFU0PTvr/ushVkfJLNlbMl0+L+pDP7LjMpNwDvLIgJqdmas70s4Z7vqsITfk3RqJXX3KAiWv7WJHA=
X-Received: by 2002:a17:906:1390:: with SMTP id
 f16mr2504458ejc.504.1604490648174; 
 Wed, 04 Nov 2020 03:50:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:268c:0:0:0:0:0 with HTTP;
 Wed, 4 Nov 2020 03:50:47 -0800 (PST)
Received: by 2002:a54:268c:0:0:0:0:0 with HTTP;
 Wed, 4 Nov 2020 03:50:47 -0800 (PST)
From: Mick Ab <recoverymail123890@gmail.com>
Date: Wed, 4 Nov 2020 11:50:47 +0000
Message-ID: <CAJrFWkfdy32Bx5M6YZOQZ5QhZO--ngjD+e80bHMbA35X=uHGdg@mail.gmail.com>
To: linux-ntfs-dev@lists.sf.net
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (recoverymail123890[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (recoverymail123890[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kaHJW-001B7q-QF
X-Mailman-Approved-At: Fri, 06 Nov 2020 23:26:05 +0000
Subject: [Linux-NTFS-Dev] Recover NTFS drive
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
Content-Type: multipart/mixed; boundary="===============2923422469285470215=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============2923422469285470215==
Content-Type: multipart/alternative; boundary="0000000000002143b505b3469765"

--0000000000002143b505b3469765
Content-Type: text/plain; charset="UTF-8"

Hi.

Can you tell me, please, whether there are any Linux (preferably Debian)
commands or software packages that can reliably correct a corrupted NTFS
portable hard drive ?

Thanks.

Mike Bailey

--0000000000002143b505b3469765
Content-Type: text/html; charset="UTF-8"

<p dir="ltr">Hi.</p>
<p dir="ltr">Can you tell me, please, whether there are any Linux (preferably Debian) commands or software packages that can reliably correct a corrupted NTFS portable hard drive ?</p>
<p dir="ltr">Thanks.</p>
<p dir="ltr">Mike Bailey<br>
</p>

--0000000000002143b505b3469765--


--===============2923422469285470215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2923422469285470215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============2923422469285470215==--

