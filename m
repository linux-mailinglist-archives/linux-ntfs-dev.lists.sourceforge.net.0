Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0E639DB4B
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  7 Jun 2021 13:29:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lqDRP-00034o-9P; Mon, 07 Jun 2021 11:29:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mforce2@gmail.com>) id 1lqBsC-0007C4-Vy
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 07 Jun 2021 09:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K9qhj31M3+bRUqJeABAFmY7QtQeAeaIJbzKmAQ17TWY=; b=M0jCEg/lAxnNk43V/BD3UNFVh4
 Nu5xrrrd1UOfaqkvg8eibYbQOUsw4XKK1sV5fCuv9ipRD2fYGjTQYJNWJEk1MjwFuoV19AP1sDP35
 cDmcbH45pzCD1TSsETqFWefMnOvafg5GPwlAQQjVUxvLdMe/8Do1YxU1guwpcPBtP4q8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=K9qhj31M3+bRUqJeABAFmY7QtQeAeaIJbzKmAQ17TWY=; b=S
 6qpf7XnY3KwzSAToGB8fkEcBLJzxHlPqNjvfd99iF1Z4Na2LIH2humgrHq/rA7OHyeCb48QMIArHK
 iwyrR4cCvpBdd1+azY5GcpKMW9gfu7pWhx2B4cP7jxXbBdYk9i2GUEycQMN4jmk20yAw7YpDpXfrz
 tjbhklQjBxVZVM24=;
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lqBs8-00DaEY-CQ
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 07 Jun 2021 09:48:48 +0000
Received: by mail-ed1-f54.google.com with SMTP id d13so6019613edt.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 07 Jun 2021 02:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=K9qhj31M3+bRUqJeABAFmY7QtQeAeaIJbzKmAQ17TWY=;
 b=dTAthGVw+gpEkW30K0Yv83GWh7VSBBAMyKiDW4Hd90yHvD8Akl7PkLKhZGBppam1ru
 heW/YLtB2yIOonSHE5NEYMAVuOEeGlPMH+307gnbqHSl9mQ/TVOaXbVjiWeO2ShuyYlk
 N1kcmtMbh8GBrUIZKnz8LQ5bB/quD6Q6aDn/5nbZuaJhPYbPCOJCMCL5LH7HLCKplxAO
 jdUl53jn8RcyOH0PcxyZdyjQQmQ0/MK6kkKj/ZySwcrDO8kpxs587ywhMtxjTXMhxjif
 uTkEaQVLVmxvtlZpwzMLQ669YUSarD/pQB7I4e5Nj3pZjUI71qTbbnSLB3FyWdmKqp/I
 Lnyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=K9qhj31M3+bRUqJeABAFmY7QtQeAeaIJbzKmAQ17TWY=;
 b=WivBjU87IUMx2QRJi2zD9z95bRvu62gh7C8VITm7JKTJtXAXfp5T4xrfVdIlSKpyAc
 14ph+CQRNGa7aPxEKIOD4pPaNwz9NQ7BGuDWN2WGB6LKqApe3d1u5cLOJfrnK7gxA4Pf
 fGaXsw3lk9uSZvzme9OsTlDNZ8eenzHqjWkGkf8zoh7DF9AlAN38gczrvrxd/UcgrKfI
 cPjEyd2oDlJdWdpYFqO0RA1zmtHjfOy9sXWCMzAWI4ZVAew3EyeH1nhuSlCStBQrNHfg
 PDNXTBHI2/X8blK/uBRYYsRiequUwHCt20aDUq6Kswo3sRVpKAznNz/YoVoysKxduaPN
 rpZw==
X-Gm-Message-State: AOAM533+cY8XTLvfALItbBKy6JUIPzFmtXL63CZ8GWL6+Dv5UkHPagHY
 a70QN/Wzu0rlj8phQAX6VBOIhN698YG0Fb8So8Q=
X-Google-Smtp-Source: ABdhPJxVd/KM5hhuNStPY9XuTFzke1+Yi3RxOGbHI3J15SA016hymXv13aI/ImP58FXpqIsWgWwKiHzYgUKaRDqMqVg=
X-Received: by 2002:a05:6402:220e:: with SMTP id
 cq14mr19243183edb.57.1623059313932; 
 Mon, 07 Jun 2021 02:48:33 -0700 (PDT)
MIME-Version: 1.0
From: Marius Cirsta <mforce2@gmail.com>
Date: Mon, 7 Jun 2021 15:48:21 +0300
Message-ID: <CANO0Vk457XCeaD7MPj8HMq=DvXVLY1OWy8DGy1Wswny6we7=pg@mail.gmail.com>
To: almaz.alexandrovich@paragon-software.com
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mforce2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (mforce2[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lqBs8-00DaEY-CQ
X-Mailman-Approved-At: Mon, 07 Jun 2021 11:29:09 +0000
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
Cc: nborisov@suse.com, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 kari.argillander@gmail.com, anton@tuxera.com, joe@perches.com,
 linux-fsdevel@vger.kernel.org, mark@harmstone.com, andy.lavr@gmail.com,
 pali@kernel.org, hch@lst.de, dan.carpenter@oracle.com, viro@zeniv.linux.org.uk
Content-Type: multipart/mixed; boundary="===============6141884534532502252=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============6141884534532502252==
Content-Type: multipart/alternative; boundary="000000000000db3e8705c429f1ce"

--000000000000db3e8705c429f1ce
Content-Type: text/plain; charset="UTF-8"

I am just a user but for me the ntfs support is really important as I have
shared drives that are in NTFS format and ntfs-3g is not really the best.
What happened to this review ? I am not sure what the process is but is no
one really interested ?
I saw there were some comments initially but if those were solved then is
it ready for integration ? Is more testing required? I could help with that
if needed.

--000000000000db3e8705c429f1ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am just a user but for me the ntfs support is really imp=
ortant as I have shared drives that are in NTFS format and ntfs-3g is not r=
eally the best. What happened to this review ? I am not sure what the proce=
ss is but is no one really interested ?=C2=A0<br>I saw there were some comm=
ents initially but if those were solved then is it ready for integration ? =
Is more testing required? I could help with that if needed.</div>

--000000000000db3e8705c429f1ce--


--===============6141884534532502252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6141884534532502252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============6141884534532502252==--

