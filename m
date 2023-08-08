Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 172AE773AEC
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Aug 2023 17:16:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qTORx-0001SH-6X;
	Tue, 08 Aug 2023 15:16:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qTOQa-0005xI-Hs
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 15:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IzwS7XDx7/B5za3o6W/irX9iOCNwkqxYx+kcCM0I0vE=; b=fZnd0jMV1NCwCqCIdu5A8mpPU/
 vgLlXO7PPRFI0bMx5S6oMBHkO49N0JZ4mbKcKFupAKitZV2LpHoSPahBKB/QThZORRp449S7jqi7R
 eGmBjowGoiOfS9ZNhUoPuJUnlcbQ3JD7XlFAIDs4TcEhQPyRHolKh9qpVXdftit8BzbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IzwS7XDx7/B5za3o6W/irX9iOCNwkqxYx+kcCM0I0vE=; b=GMfBTb9PD9/tGS5Hb7qUr3zCvZ
 pDkh+16auM7yXS4g7MvupNk2+TM0uYPrKfJT0NIZB9pvnYN8u/pafMdmiGWvfGHakZ8a12ySqXqM6
 bnhBSMcOsbXPS4sEy7wd8BWgEdfwwskIYYqdppPydxj4Xhf+3M5Hk6GJxnz6fbxLDDhA=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qTOQa-00H40S-4b for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 15:15:20 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 46e09a7af769-6bcaa6d5e2cso4927770a34.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 08 Aug 2023 08:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691507714; x=1692112514;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=IzwS7XDx7/B5za3o6W/irX9iOCNwkqxYx+kcCM0I0vE=;
 b=NOtnBluRcNvVM0r/UvNS7d+235uj0B46wfUh6MEXHMsp4qEbtKhkN4OV9N7tkAmWcP
 5awyWEe7JHfW9lSMoMvPVfQyQpqndf2dtEuBb5fatuvfZz7R2Mq6ikx5uVMex0wjFd0Y
 Nj9ZdgfIbIGZkZTI/B/BSNFo+JTv/pGL9skQSX27Uwkbst7IciYqYoWMArNtEn8cR2Lb
 NPXgMaGb2Q3RWujZ8BFQyyZYDfMbBLC+imtAgasjyHpi1EhsVqk/lC211gQMz9R4ezr1
 YUARKU/Y7CawtegSp8W4+eGSObMEFi+pG21BsMQa72RvnxuT9v02GG0wC3Rz68mvmQWR
 iMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691507714; x=1692112514;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IzwS7XDx7/B5za3o6W/irX9iOCNwkqxYx+kcCM0I0vE=;
 b=ODn9eWOSeQmhZx7pOJN2qSvOb3mYJuUQi+cCnE3iuoH1bdmdwOFhi6A113XngtHyrV
 9dumpxiK25AWB7zbElr9eCezpUtjeHLT8Hba8YHD9dni1LnktQaYHc5zcU9sACM03F5N
 EI/8SKcPXytNwwTGx/2oYbJ8Jb3UJMWBMab0Tl9ok/UkfaRT0BQwe6Tx/LBotFTGY0Al
 OCyXNATCMPC9HsOXn23O1OMvGcIQY4Ocjk7BtxKHzakBWhagUeRp53uC8d9jfIkDHVxu
 KwtGEV+FPk8CvkfIOrS5mF86P/pSPxxiB/Ncyr5OhJ7l0Cosuk7TbE7pQgT+l8EdrIs4
 Wp3Q==
X-Gm-Message-State: AOJu0Yye3Oilyu9JlSLuijW0Hc6qL/XEuP7rYyg3oVkco5/3aMuipMNL
 td40mp27EovgzPyyTQ0HKKApsU5+tMH/vxnIzCY=
X-Google-Smtp-Source: AGHT+IEZOBIb1FIJMiKMGmnQ/IWmohUoLmdX7FpJYsOBzB7rmAFKHB5uZLLsrxDpYDT/x82ES+VIbp87nVJvNrk0eqw=
X-Received: by 2002:a05:6830:32a7:b0:6b9:58dc:a2d9 with SMTP id
 m39-20020a05683032a700b006b958dca2d9mr11320195ott.28.1691507714277; Tue, 08
 Aug 2023 08:15:14 -0700 (PDT)
MIME-Version: 1.0
References: <2023080821-blandness-survival-44af@gregkh>
 <20230808102958.8161-1-ghandatmanas@gmail.com>
 <2023080833-pedicure-flavorful-921c@gregkh>
In-Reply-To: <2023080833-pedicure-flavorful-921c@gregkh>
From: Manas Ghandat <ghandatmanas@gmail.com>
Date: Tue, 8 Aug 2023 20:45:02 +0530
Message-ID: <CAEt2hJ5icep5dF_OhuZwe0zig4VKCTKuQ0=iYfpOek7Ebp12Lw@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: In the above patch I have mentioned what are the changes from
 the version 1. Also since most of the lines of the patch were a change due
 to some indentation error, the whole patch appears as the diff. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.51 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qTOQa-00H40S-4b
X-Mailman-Approved-At: Tue, 08 Aug 2023 15:16:43 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Type: multipart/mixed; boundary="===============7856316703956036162=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============7856316703956036162==
Content-Type: multipart/alternative; boundary="00000000000071c4dd06026ad400"

--00000000000071c4dd06026ad400
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In the above patch I have mentioned what are the changes from the version
1. Also since most of the lines of the patch were a change due to some
indentation error, the whole patch appears as the diff.

On Tue, Aug 8, 2023 at 4:15=E2=80=AFPM Greg KH <gregkh@linuxfoundation.org>=
 wrote:

> On Tue, Aug 08, 2023 at 03:59:58PM +0530, Manas Ghandat wrote:
> > Added a check to the compression_unit so that out of bound doesn't occu=
r.
> >
> > Fix patching issues in version 2.
> >
> > Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> > Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
> > Closes: https://syzkaller.appspot.com/bug?extid=3D4768a8f039aa677897d0
> > ---
> >  fs/ntfs/inode.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> > index 6c3f38d66579..a657322874ed 100644
> > --- a/fs/ntfs/inode.c
> > +++ b/fs/ntfs/inode.c
> > @@ -1077,6 +1077,15 @@ static int ntfs_read_locked_inode(struct inode
> *vi)
> >                                       goto unm_err_out;
> >                               }
> >                               if (a->data.non_resident.compression_unit=
)
> {
> > +                                     if
> (a->data.non_resident.compression_unit +
> > +                                             vol->cluster_size_bits >
> 32) {
> > +                                             ntfs_error(vi->i_sb,
> > +                                                     "Found
> non-standard compression unit (%u).   Cannot handle this.",
> > +
>  a->data.non_resident.compression_unit
> > +                                             );
> > +                                             err =3D -EOPNOTSUPP;
> > +                                             goto unm_err_out;
> > +                                     }
> >                                       ni->itype.compressed.block_size =
=3D
> 1U <<
> >
>  (a->data.non_resident.
> >                                                       compression_unit =
+
> > --
> > 2.37.2
> >
>
> Hi,
>
> This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
> a patch that has triggered this response.  He used to manually respond
> to these common problems, but in order to save his sanity (he kept
> writing the same thing over and over, yet to different people), I was
> created.  Hopefully you will not take offence and will fix the problem
> in your patch and resubmit it so that it can be accepted into the Linux
> kernel tree.
>
> You are receiving this message because of the following common error(s)
> as indicated below:
>
> - This looks like a new version of a previously submitted patch, but you
>   did not list below the --- line any changes from the previous version.
>   Please read the section entitled "The canonical patch format" in the
>   kernel file, Documentation/process/submitting-patches.rst for what
>   needs to be done here to properly describe this.
>
>
> If you wish to discuss this problem further, or you have questions about
> how to resolve this issue, please feel free to respond to this email and
> Greg will reply once he has dug out from the pending patches received
> from other developers.
>
> thanks,
>
> greg k-h's patch email bot
>

--00000000000071c4dd06026ad400
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In the above patch I have mentioned what are the changes f=
rom the version 1. Also since most of the lines of the patch were a change =
due to some indentation error, the whole patch appears as the diff.</div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Aug 8, 2023 at 4:15=E2=80=AFPM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfo=
undation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">On Tue, Aug 08, 2023 at 03:59:58PM =
+0530, Manas Ghandat wrote:<br>
&gt; Added a check to the compression_unit so that out of bound doesn&#39;t=
 occur.<br>
&gt; <br>
&gt; Fix patching issues in version 2.<br>
&gt; <br>
&gt; Signed-off-by: Manas Ghandat &lt;<a href=3D"mailto:ghandatmanas@gmail.=
com" target=3D"_blank">ghandatmanas@gmail.com</a>&gt;<br>
&gt; Reported-by: <a href=3D"mailto:syzbot%2B4768a8f039aa677897d0@syzkaller=
.appspotmail.com" target=3D"_blank">syzbot+4768a8f039aa677897d0@syzkaller.a=
ppspotmail.com</a><br>
&gt; Closes: <a href=3D"https://syzkaller.appspot.com/bug?extid=3D4768a8f03=
9aa677897d0" rel=3D"noreferrer" target=3D"_blank">https://syzkaller.appspot=
.com/bug?extid=3D4768a8f039aa677897d0</a><br>
&gt; ---<br>
&gt;=C2=A0 fs/ntfs/inode.c | 9 +++++++++<br>
&gt;=C2=A0 1 file changed, 9 insertions(+)<br>
&gt; <br>
&gt; diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c<br>
&gt; index 6c3f38d66579..a657322874ed 100644<br>
&gt; --- a/fs/ntfs/inode.c<br>
&gt; +++ b/fs/ntfs/inode.c<br>
&gt; @@ -1077,6 +1077,15 @@ static int ntfs_read_locked_inode(struct inode =
*vi)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto u=
nm_err_out;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (a-&gt;data.non_resident.compre=
ssion_unit) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (a-&gt;da=
ta.non_resident.compression_unit +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0vol-&gt;cluster_size_bits &gt; 32) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0ntfs_error(vi-&gt;i_sb,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Found non-standard compr=
ession unit (%u).=C2=A0 =C2=A0Cannot handle this.&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0a-&gt;data.non_resident.compre=
ssion_unit<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0err =3D -EOPNOTSUPP;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0goto unm_err_out;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ni-&gt=
;itype.compressed.block_size =3D 1U &lt;&lt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(a-&gt;data.non_residen=
t.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compression_unit +<br>
&gt; -- <br>
&gt; 2.37.2<br>
&gt; <br>
<br>
Hi,<br>
<br>
This is the friendly patch-bot of Greg Kroah-Hartman.=C2=A0 You have sent h=
im<br>
a patch that has triggered this response.=C2=A0 He used to manually respond=
<br>
to these common problems, but in order to save his sanity (he kept<br>
writing the same thing over and over, yet to different people), I was<br>
created.=C2=A0 Hopefully you will not take offence and will fix the problem=
<br>
in your patch and resubmit it so that it can be accepted into the Linux<br>
kernel tree.<br>
<br>
You are receiving this message because of the following common error(s)<br>
as indicated below:<br>
<br>
- This looks like a new version of a previously submitted patch, but you<br=
>
=C2=A0 did not list below the --- line any changes from the previous versio=
n.<br>
=C2=A0 Please read the section entitled &quot;The canonical patch format&qu=
ot; in the<br>
=C2=A0 kernel file, Documentation/process/submitting-patches.rst for what<b=
r>
=C2=A0 needs to be done here to properly describe this.<br>
<br>
<br>
If you wish to discuss this problem further, or you have questions about<br=
>
how to resolve this issue, please feel free to respond to this email and<br=
>
Greg will reply once he has dug out from the pending patches received<br>
from other developers.<br>
<br>
thanks,<br>
<br>
greg k-h&#39;s patch email bot<br>
</blockquote></div>

--00000000000071c4dd06026ad400--


--===============7856316703956036162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7856316703956036162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============7856316703956036162==--

