Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F29385A7E33
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 15:03:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTNNH-0002M7-Is;
	Wed, 31 Aug 2022 13:03:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTMD0-0003Dh-7J
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 11:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BpFNCCcRmaPUX3coV/uZfuuDvFrVaS91QAWdTAE5LGM=; b=H/ZJEVPZnVU/M+w+zhj7XolQ0B
 VwaLA+/zUqhakjbPz2XQVQYS2JyjMGVNAhdHUB6buHLAxZ5ZBzBDQz0d1CKTNlNFj4yw6u6RYnPgZ
 bL2B5IYrzjhJAEo4EOhCaK62UtVYwGupgDdeQOVgxZvOosh2qdfBNUUz1wvpOVPvELuE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BpFNCCcRmaPUX3coV/uZfuuDvFrVaS91QAWdTAE5LGM=; b=GhhcxhQxbOA3Vaemc28ulOX93I
 bjjySibZjsfdRQz3kS5S0tu8ovjnvqx8MMC1cS56tdU8mWjBC1kpfXMrk+6sHgUOVkr/DEp5HMTAS
 Irei9VN0Eqyq05UK1BFYOzPCSov5VqVPRstuIc5UyoufqfghAstjcNNk0kNhUIzM23e0=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTMCz-008k0n-MZ for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 11:48:38 +0000
Received: by mail-pl1-f178.google.com with SMTP id m2so13894267pls.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 31 Aug 2022 04:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=BpFNCCcRmaPUX3coV/uZfuuDvFrVaS91QAWdTAE5LGM=;
 b=lKCtXtBp83XcjL3245rG6rbm9WxVMKZ6dEhB2Qhz8/+kErIfDNUzY4MBqkLcrToShQ
 r+6EGY0I9NEp8iySKrd6UcKPCYoCEXPwOSkHuey3f4uOE0JvwVJFK+ueS+PGjLCv7Vc5
 6XiLta6aNWaU4uvePMQxdWZ3tqe9/c8UB5546ZNvcRtWHoMw038iFka9wUzVjIYtUO04
 fq1nuRiu1VGf3BQ7jW6de6JhRleRdRbB9UG/FmXtEf5+ZslvOZKNeCEzDVRFGGd6QWMT
 rSa5KpNilJrfuNJTHo4Mj1Jch4vPMHuGharJoV6rRipVicZxNRG5mInreqSTddYTt+vt
 CkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=BpFNCCcRmaPUX3coV/uZfuuDvFrVaS91QAWdTAE5LGM=;
 b=q7PQftio5BgDTgUbY/8FpQjlnZHDmsnGVrKVR1Bt0wU8LhegyhFFa/IXAorB1yyBOD
 0Vc7dbFklx1OLqgywCwGygsR5MEsW3qu5Bija28AIamOL0fYOXbF6O9cDOvwzacu8apl
 y8LWOAO5fgVFTKlfnMrevBXRFdyyqKOUxOEx+2r9/caZdzPNhRCyDorPzlxyjLlm9368
 dBB2e0l1/j7cYbs89MTpmOv1nS2CSLtEid9gL1iuLmieximvf/hwxepRJqez98Cd2tgr
 OWgHnpE2br/sc6IbMGQFNMhO7+gmn2LQhXN7IWldyfotLBVTrk+XvGpLP4XdGn/YmhjD
 KrBQ==
X-Gm-Message-State: ACgBeo1SAHLgtoTEEqAvucnXsvdjd/iVwsnc3WllIjSnLcPMUDvEZpa7
 eUWOQhrYKbwWEz+0+qk/Xzc=
X-Google-Smtp-Source: AA6agR4nJIpVbCfQMvlZi/m3kb6sb30n1OQgMqfyoLEfsZseHH3JjKlnPdESLtOSvEAHXM2FmW0nsg==
X-Received: by 2002:a17:90b:4a10:b0:1fb:2e77:a33 with SMTP id
 kk16-20020a17090b4a1000b001fb2e770a33mr2874740pjb.67.1661946512132; 
 Wed, 31 Aug 2022 04:48:32 -0700 (PDT)
Received: from localhost ([36.112.86.8]) by smtp.gmail.com with ESMTPSA id
 a1-20020a170902900100b0017500f9b01fsm2036870plp.103.2022.08.31.04.48.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 04:48:31 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: dan.carpenter@oracle.com
Date: Wed, 31 Aug 2022 19:47:20 +0800
Message-Id: <20220831114720.3365-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220831101253.GY2030@kadam>
References: <20220831101253.GY2030@kadam>
MIME-Version: 1.0
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 31 Aug 2022 at 18:13, Dan Carpenter wrote: > > On
 Wed, Aug 31, 2022 at 10:48:54AM +0800, Hawkins Jiawei wrote: > > Kernel will
 iterates over ATTR_RECORDs in mft record in ntfs_attr_find(). > [...] 
 Content analysis details:   (1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.178 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.7 SCC_BODY_URI_ONLY      No description available.
X-Headers-End: 1oTMCz-008k0n-MZ
X-Mailman-Approved-At: Wed, 31 Aug 2022 13:03:18 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 3/3] ntfs: check overflow when iterates
 ATTR_RECORDs
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, 18801353760@163.com,
 yin31149@gmail.com, akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, 31 Aug 2022 at 18:13, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, Aug 31, 2022 at 10:48:54AM +0800, Hawkins Jiawei wrote:
> > Kernel will iterates over ATTR_RECORDs in mft record in ntfs_attr_find().
> > Because the ATTR_RECORDs are next to each other, kernel can get the next
> > ATTR_RECORD from end address of current ATTR_RECORD, through current
> > ATTR_RECORD length field.
> >
> > The problem is that during iteration, when kernel calculates the end address
> > of current ATTR_RECORD, kernel may trigger an overflow bug in
> > executing `a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))`. This
> > may wrap, leading to a forever iteration on 32bit systems.
> >
> > This patch solves it by adding an overflow checking on calculating end address
> > of current ATTR_RECORD during iteration.
> >
> > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Link: https://lore.kernel.org/all/20220827105842.GM2030@kadam/
> > Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
> > ---
> >  fs/ntfs/attrib.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
> > index 904734e34507..55e618c9e63e 100644
> > --- a/fs/ntfs/attrib.c
> > +++ b/fs/ntfs/attrib.c
> > @@ -617,6 +617,9 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
> >                       return -ENOENT;
> >               if (unlikely(!a->length))
> >                       break;
> > +             /* check for wrap around */
> > +             if ((u8 *)a + le32_to_cpu(a->length) < (u8 *)a)
> > +                     break;
>
> Wouldn't it also be good to check that a + a->length <= mrec_end?
> It gets checked on the next iteration sure, but it just seems like a
> reasonable thing to check here.
Hi Dan,
Thanks for your suggestion, I will add this check in my v2 patch!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
