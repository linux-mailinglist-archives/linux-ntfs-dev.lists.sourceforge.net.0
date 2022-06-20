Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF3E55159F
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 20 Jun 2022 12:20:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o3EWA-0008Lq-V0; Mon, 20 Jun 2022 10:20:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ritesh.list@gmail.com>) id 1o3DQZ-0006pI-3l
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 20 Jun 2022 09:10:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Odwyf8Ywf4dJzCccpp8HbtO6LKGtTKRVZ3ILeyTfGgc=; b=K6Z9+tl0nDQc4eTwyEEjfxmRmQ
 TS2HqSrhu2cP+zdHsKlUDJwgC8UxFu8Z5Zl+6ZD+GlBgbBY03cnorSOjHQ8+PfFQRXjhMoXVmKB4q
 6HPsuvTukbl3HuMDmhAmy8bv62yjpY0YkJhn6ALliFymmNT6Od/cfM4iTx0pqJj5Tk4k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Odwyf8Ywf4dJzCccpp8HbtO6LKGtTKRVZ3ILeyTfGgc=; b=giTq32QWGC/KOFERaZsI8HddZn
 aOuP9OuBeueSr/gWsxs9QwoK6k6ymaFAL4Ph/VKmru16Rpl2EdDwUKQnUhYWOMxb4s+qgTNmSu79W
 chCvnSNEuiBPEj0P4P5O7rfMvf14p7GsHVojkMnkEuSir5NffmNJGZq1XVHT7Qtd2Er8=;
Received: from mail-pf1-f178.google.com ([209.85.210.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o3DQU-0007HO-7O
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 20 Jun 2022 09:10:33 +0000
Received: by mail-pf1-f178.google.com with SMTP id bo5so9660455pfb.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 20 Jun 2022 02:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Odwyf8Ywf4dJzCccpp8HbtO6LKGtTKRVZ3ILeyTfGgc=;
 b=RkMtCUn7uWDFvdFTjSe5PC36+wbop3nPpcbspqHRQsNwtWV+KiloZ6GnhFzH2LiqaW
 MIMzkB3YTPoZkFXBOuyqtgBbZxd22VniHLcrFs1HhvJOo/tvNpr+65kNTxzO5NrksWCR
 dx1HiE+8TLlxgKRs2ke/aIXNiqx5jENBhYghZXpwDhAe3nEpM9inGxY/xAwu3Xk1bkjD
 Jxzlw4s+SUcMmsMMOR/RQcPASpm1XINoz8rNccQZ0KuvvWUMkkliWqiufVvnr3Wku0Z+
 mE8whmj+kUQBMdzOuZZtZlcStz8iyaUKqKGwf2uiUuJPDZWjO4rPClNZnTW2iRtz1aCC
 ptMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Odwyf8Ywf4dJzCccpp8HbtO6LKGtTKRVZ3ILeyTfGgc=;
 b=tG4Xxcsr0M+cvCT8y7l5G17VBt243hDiesFy4wIbny+uAckfln+olcHBfc2qz3myXY
 Nkmh/aR6wr2BP9QinxpJ9FE1MAvZuFlCAFj+VdpYvG2JCGlXq4dR0h3fnrBbYjsatMqU
 SX/1UC5N5ldvOoOeoeA18ZSFahQUDa9oNnrQBu9iZWZFHIfGIfZTkt5uGeog1xkKCuuW
 HtAt3Lb8n1rQoCifJLyO7bxnHaGtG1vjDqhIMWKfdR8m3tbbFB1/AlsgkNoc90fIP9/O
 tqGZgUzjp++UtovyJ9NXhHIPYKM9cBU9sWXrZMeS1JEwRiXVHl77ePsFrVQihclopm7s
 rWvQ==
X-Gm-Message-State: AJIora/C2MVWKUKT/zmIVVFad6E613fcZqzx5++YVkMllxtiNaVp/raI
 XM/KCBzlhlTxB9auvaiyITxdn5KnExU=
X-Google-Smtp-Source: AGRyM1vXxLDvOtzVxNBUOQMr7Klb29X+5+1nONVhDv+hJuoGAbXNC2eJLMg/y3lj2jgTc5XZFCal4Q==
X-Received: by 2002:a63:cd52:0:b0:3fe:30ec:825d with SMTP id
 a18-20020a63cd52000000b003fe30ec825dmr20949777pgj.82.1655716223870; 
 Mon, 20 Jun 2022 02:10:23 -0700 (PDT)
Received: from localhost ([2406:7400:63:5d34:e6c2:4c64:12ae:aa11])
 by smtp.gmail.com with ESMTPSA id
 c10-20020aa7952a000000b0050dc762819esm3351990pfp.120.2022.06.20.02.10.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jun 2022 02:10:23 -0700 (PDT)
Date: Mon, 20 Jun 2022 14:40:19 +0530
From: Ritesh Harjani <ritesh.list@gmail.com>
To: linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org
Message-ID: <20220620091019.vrpnwdj7deirsncp@riteshh-domain>
References: <cover.1655715329.git.ritesh.list@gmail.com>
 <f53e945837f78c042bee5337352e2fa216d71a5a.1655715329.git.ritesh.list@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f53e945837f78c042bee5337352e2fa216d71a5a.1655715329.git.ritesh.list@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: + linux-ntfs-dev@lists.sourceforge.net (sorry about not
 cc'ing
 this in the first place) On 22/06/20 02:34PM, Ritesh Harjani wrote: > submit_bh
 always returns 0. This patch drops the useless return value of > submit_bh
 from ntfs_submit_bh_for_read(). Once all of submit_bh callers are > cl [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ritesh.list[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.178 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o3DQU-0007HO-7O
X-Mailman-Approved-At: Mon, 20 Jun 2022 10:20:22 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCHv2 2/4] fs/ntfs: Drop useless return
 value of submit_bh from ntfs_submit_bh_for_read
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
Cc: linux-ntfs-dev@lists.sourceforge.net, kernel test robot <lkp@intel.com>,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

+ linux-ntfs-dev@lists.sourceforge.net
(sorry about not cc'ing this in the first place)

On 22/06/20 02:34PM, Ritesh Harjani wrote:
> submit_bh always returns 0. This patch drops the useless return value of
> submit_bh from ntfs_submit_bh_for_read(). Once all of submit_bh callers are
> cleaned up, we can make it's return type as void.
>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Ritesh Harjani <ritesh.list@gmail.com>
> ---
>  fs/ntfs/file.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
> index a8abe2296514..2389bfa654a2 100644
> --- a/fs/ntfs/file.c
> +++ b/fs/ntfs/file.c
> @@ -532,12 +532,12 @@ static inline int __ntfs_grab_cache_pages(struct address_space *mapping,
>  	goto out;
>  }
>
> -static inline int ntfs_submit_bh_for_read(struct buffer_head *bh)
> +static inline void ntfs_submit_bh_for_read(struct buffer_head *bh)
>  {
>  	lock_buffer(bh);
>  	get_bh(bh);
>  	bh->b_end_io = end_buffer_read_sync;
> -	return submit_bh(REQ_OP_READ, 0, bh);
> +	submit_bh(REQ_OP_READ, 0, bh);
>  }
>
>  /**
> --
> 2.35.3
>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
