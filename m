Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 687E52F88DD
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 15 Jan 2021 23:52:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l0XxG-0004dp-OI; Fri, 15 Jan 2021 22:52:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmorrison@bogomips.com>) id 1l0TC9-0006KD-Fh
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Jan 2021 17:47:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KwaUfTPo8FDIAh5WxhklCQEvutqPZdTnsV061yzgHl8=; b=IwSjJBQMDjC9Wrt4NeViJ7LHYK
 xdLoe1ORdORi7cvqjEkU+NOc48ySEh49tzgjgP6VAACkURndBqWRJCHcUThUVtwnNkJZZ58AuaZ/T
 g/6jM511jKq61gMFbN7rit7OOt9Ym7Bpg9nokO/tziRNDbpfIg7XFMvTlIuHkL+INdTc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KwaUfTPo8FDIAh5WxhklCQEvutqPZdTnsV061yzgHl8=; b=a
 xFFoaHYgXB4/tuYF4ctwWnF9LTMGfIeV10ZvRpMbS6392Bd5Pyp4pgvaNY02KMlmYBQ9eK3WqdGH2
 nQUUNkmWbgCmwd76ILUXzvwIRCsPCn3pRi1G9m06kSQ43GYBdeeImLJpDrkPPb5+h2oFMoDnp7rYW
 In20BaguKZGVXP0Y=;
Received: from mail-lj1-f171.google.com ([209.85.208.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l0TC6-00GK1L-41
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Jan 2021 17:47:33 +0000
Received: by mail-lj1-f171.google.com with SMTP id e7so11295365ljg.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 15 Jan 2021 09:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bogomips.com; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=KwaUfTPo8FDIAh5WxhklCQEvutqPZdTnsV061yzgHl8=;
 b=FETRT323dOuQlKQK85SWF2pzxMS7D5t/3nPoZesG33K/jCVhaq4n4wTu0izrubGByr
 +2XOAaYkSxHyNRsv26NsEy3C3ohi38QcdwSEXZ9mP8+JTbEusktYtUpARgkj2sRyiXE6
 YdyIi/dg0tcxyZe+a+w29aMd55tbFzCCuJ5zQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=KwaUfTPo8FDIAh5WxhklCQEvutqPZdTnsV061yzgHl8=;
 b=VwHLdttvyfQPdRV8LjSqWBxiwtHoQdJhvlBsZFs6Bdgva6pJ5+3yohuVJ0BmymDpWJ
 ktnTKiEr3zm7IlwCk23EOm5gt2LC0aT56ntX7FPrQN2OQ1CUbNBhCJOaRoD0WSkoJXnC
 /c73Xf23di2uL8nWdhEU4+vQt2TIePICuKs2yKCJkPgVjY8De+kNZ+e6NfMJZI/eMJUR
 pNJup8xRMYUGUN8HY9Mq0dC2hEuBSAwuojbXyFgmFG2a/6u8r3M7SPVs/QGD3StL4Pq7
 qxe88b76aLGpUsv2zmORCXBDNDe+DoLOPa52uf0sTkesgN5RrEKNSArlWwA6Z314Bl30
 gCcQ==
X-Gm-Message-State: AOAM530q5XAJCe7trw6e+elWqM/Vh4JkbXui0c/d/3TldGDJPi+F1n2R
 iV2L0i9gn76E5dQUVe/ndebWSu3N4ZlpD1/1cohfMzwEYvSMtPIm
X-Google-Smtp-Source: ABdhPJyhQpy7urYkgnfOVvLyklD3Y62OItE8++57hOhbLx/BW+eIII1XXf2LkxPs13NHNePH8NoZvS91fvjXyWRMKKM=
X-Received: by 2002:a5d:4d03:: with SMTP id z3mr14001531wrt.280.1610730992539; 
 Fri, 15 Jan 2021 09:16:32 -0800 (PST)
MIME-Version: 1.0
From: John Paul Morrison <jmorrison@bogomips.com>
Date: Fri, 15 Jan 2021 09:16:21 -0800
Message-ID: <CAO-kYtGEFG5qyp9EFA3xj_S5nS75-AQV-OkrOzUZP50ndAyGcQ@mail.gmail.com>
To: ldm@flatcap.org, jakob.kemi@telia.com, mbooth@redhat.com
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.171 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l0TC6-00GK1L-41
X-Mailman-Approved-At: Fri, 15 Jan 2021 22:52:29 +0000
Subject: [Linux-NTFS-Dev] Linux LDM problems - ldmutil bugs - ldmtool no
 output
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
Cc: linux-ntfs-dev@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============2161114955319116994=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============2161114955319116994==
Content-Type: multipart/alternative; boundary="000000000000a3acf805b8f3888c"

--000000000000a3acf805b8f3888c
Content-Type: text/plain; charset="UTF-8"

Hi

I'm trying to troubleshoot linux kernel  issues with a Windows dynamic disk.
I see ldm_parse errors and missing partitions on a working disk so was
trying to diagnose.


Richard and Jakob -  you're listed at the contact for linux-ldm-0.0.8. I
found some bugs/issues in ldmutil, ldminfo and sparse and started fixing
but I wondered if anyone is maintaining these or has updated code?

The code has some bugs with large disks and/or compiling on 64 bit.

I extracted the mbr and ldm (last 1MB of disk) manually with dd and was
able to create a sparse 2TB disk. It shows the same TOCKBLOCK errors as the
original.


Matthew

I don't see any results when I scan the disk even though there's a Windows
LDM/Dynamic disk there. I downloaded master from git and compiled it - not
sure where to start

Thanks

John Paul



These are the kernel errors I'm seeing (4.15 Ubuntu 18.04, 5.9 FC33)

[176972.228989] ldm_parse_tocblock(): Cannot find TOCBLOCK, database may be
corrupt.
[176972.229018] ldm_parse_tocblock(): Cannot find TOCBLOCK, database may be
corrupt.
[176972.404271]  loop6: [LDM] p1

With this particular dynamic disk I get the kernel messages and it finds
one partition but misses other partitions

Another disk has similar kernel messages but the partitions are listed
correctly

--000000000000a3acf805b8f3888c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi<div>=
<br></div><div>I&#39;m trying to troubleshoot linux kernel=C2=A0 issues wit=
h a Windows dynamic disk.</div><div>I see ldm_parse errors and missing part=
itions on a working=C2=A0disk so was trying to diagnose.</div><div><br></di=
v><div><br></div><div>Richard and Jakob -=C2=A0 you&#39;re listed at the co=
ntact for=C2=A0linux-ldm-0.0.8. I found some bugs/issues in ldmutil, ldminf=
o=C2=A0and sparse and started fixing but I wondered if anyone is maintainin=
g these or has updated code?</div><div><br></div><div>The code has some bug=
s with large disks and/or compiling on 64 bit.</div><div><br></div><div>I e=
xtracted the mbr and ldm (last 1MB of disk) manually with dd and was able t=
o create a sparse 2TB disk. It shows the same TOCKBLOCK=C2=A0errors as the =
original.</div><div>=C2=A0</div><div><br></div><div>Matthew</div><div><br><=
/div><div>I don&#39;t see any results when I scan the disk even though ther=
e&#39;s a Windows LDM/Dynamic disk there. I downloaded master from git and =
compiled it - not sure where to start=C2=A0</div><div><br></div><div>Thanks=
</div><div><br></div><div>John Paul</div><div><br></div><div><br></div><div=
><br></div><div>These are the kernel errors I&#39;m seeing (4.15 Ubuntu 18.=
04, 5.9 FC33)</div><div><br></div><div><div>[176972.228989] ldm_parse_tocbl=
ock(): Cannot find TOCBLOCK, database may be corrupt.</div><div>[176972.229=
018] ldm_parse_tocblock(): Cannot find TOCBLOCK, database may be corrupt.</=
div><div>[176972.404271]=C2=A0 loop6: [LDM] p1</div></div><div><br></div><d=
iv>With this particular dynamic disk I get the kernel messages and it finds=
 one partition but misses other partitions=C2=A0</div><div><br></div><div>A=
nother disk has similar kernel messages but the partitions are listed corre=
ctly</div><div><br></div><div><br></div><div><br></div><div><br></div><div>=
<br></div><div><br></div></div></div></div></div>

--000000000000a3acf805b8f3888c--


--===============2161114955319116994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2161114955319116994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============2161114955319116994==--

