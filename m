Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F01A7814B8
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Aug 2023 23:25:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qX6xz-0005GX-5E;
	Fri, 18 Aug 2023 21:25:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mjguzik@gmail.com>) id 1qX4tx-0001Mx-GA
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 19:12:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OWrcVU87yoUh0RKV9M2yRE0DuKukk4JlACojS9ceHP8=; b=kXh6lSADoqS/0muSuVvNqyHoc0
 dZDTZYYSPFJVsdd0klUxlylAilgILbUzY+jXRZrE7NLTk962z7gCUcMLTWfZ2tRMYiP9FHrAWgpcy
 rANEwEnSFtPjCn0AtFGlA6THaiynuzLGwhQ5KduCDeVZiCdCBaa1CSuqDZTg6Wy+9VF0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OWrcVU87yoUh0RKV9M2yRE0DuKukk4JlACojS9ceHP8=; b=c3aTl08/THfeDyVyCpnznEWzB6
 sbGH7oV1iF+IMYxzz0x04+zrRoktD9n3SMpTwCnXoJAp1GJZXGuorM5B/eQ+e0Hp476y+DdIOTn9a
 8JyrkTlMalrirLnwsgNRcTzFfTjlnXIHiyACjyPkmAc3iJRthtjSZb9Kof6boxmmmW+8=;
Received: from mail-ej1-f45.google.com ([209.85.218.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qX4tt-008wly-Ab for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 19:12:53 +0000
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-991c786369cso163881366b.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 18 Aug 2023 12:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692385963; x=1692990763;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=OWrcVU87yoUh0RKV9M2yRE0DuKukk4JlACojS9ceHP8=;
 b=CD7X8wuOyJh3hjNA0vDliciCLObjw+2g/jB/UiL7vFv0dfTNz2zqt9ka7OzQXx6Etm
 GHd44gN+gUK3TGJiqA3Wpn4DaepVFxry/D4k/xOp44QZ3ZhXB+tcMiPxfijyMfy67UBe
 o4hlF2QkFz2DsrQL4A5TuxOVEMCzWZYauEekvdU4PLW1f6sZcM5U304gjCxBKYMtpZFW
 Rw17oZ4+4QtZKKBfVA+uK2PgXRtmYK+U22F1Hus5H3v2Hst5uqCaCj2sS4TghdcTYHaR
 7Y0AiZVHzv2FDxC+d2sGCOIIF1WQGRybadHOCU7RiIKaO8dOf+8p4qWkx7dAlhWnrk20
 +CBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692385963; x=1692990763;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OWrcVU87yoUh0RKV9M2yRE0DuKukk4JlACojS9ceHP8=;
 b=dGrNH4m+hwJ7ZX40nOxedO/SLziZ9IYPHaQ0sFI/Echt8DRMuQboOh+4OXqkvPW1Ul
 2wgOe1I1Z8gRFN/zFjGTbSSz0e/WBKC2qeWqKNEqCrgzZKYO50DEmvTP46PU0SFV85Sp
 MSxB5Q3kvmAVMEr2YONYzCWPxXoW+EiH3Q0KrRbCKwQPBasvoO89vBNXgUGtBq6ok/nV
 b4eWYareS+8zwisx8ifE7XRsYNmrxDFtxeUypMr4RNPHladcz6hltVhiJ7uWCWLfT/hh
 Lu47P9c09sH9ZYmSmFNauingqDPzWHQgvtV0H0mw01SHdwuvNSA66bMTm5q8UfXqtqOI
 tzVg==
X-Gm-Message-State: AOJu0YxMf1uyZZzOij2MPAnUPrXE5k1f1L78QbPyqefHm/4KlfUi9vhk
 DLvtx4KkxVg0j4eMe2syzNI=
X-Google-Smtp-Source: AGHT+IGRHJbhjyMMDvx8RCIHGJ0hyAwfSTlKV+tEW0CLm2KLBsokdoIDwiEAp/HKoE8xlljK4Xul1w==
X-Received: by 2002:a17:906:cd2:b0:99c:22e0:ae84 with SMTP id
 l18-20020a1709060cd200b0099c22e0ae84mr77324ejh.28.1692385962652; 
 Fri, 18 Aug 2023 12:12:42 -0700 (PDT)
Received: from f (cst-prg-27-89.cust.vodafone.cz. [46.135.27.89])
 by smtp.gmail.com with ESMTPSA id
 y17-20020a170906525100b00992c92af6f4sm1536006ejm.144.2023.08.18.12.12.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Aug 2023 12:12:42 -0700 (PDT)
Date: Fri, 18 Aug 2023 21:12:39 +0200
From: Mateusz Guzik <mjguzik@gmail.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20230818191239.3cprv2wncyyy5yxj@f>
References: <000000000000c74d44060334d476@google.com>
 <87o7j471v8.fsf@email.froward.int.ebiederm.org>
 <202308181030.0DA3FD14@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202308181030.0DA3FD14@keescook>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote:
 > This is a double-check I left in place,
 since it shouldn't have been reachable:
 > > /* > * may_open() has already checked for this, so it s [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mjguzik[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qX4tt-008wly-Ab
X-Mailman-Approved-At: Fri, 18 Aug 2023 21:25:11 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] WARNING in do_open_execat
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
Cc: brauner@kernel.org,
 syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>,
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-fsdevel@vger.kernel.org,
 anton@tuxera.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote:
> This is a double-check I left in place, since it shouldn't have been reachable:
> 
>         /*
>          * may_open() has already checked for this, so it should be
>          * impossible to trip now. But we need to be extra cautious
>          * and check again at the very end too.
>          */
>         err = -EACCES;
>         if (WARN_ON_ONCE(!S_ISREG(file_inode(file)->i_mode) ||
>                          path_noexec(&file->f_path)))
>                 goto exit;
> 

As I mentioned in my other e-mail, the check is racy -- an unlucky
enough remounting with noexec should trip over it, and probably a chmod
too.

However, that's not what triggers the warn in this case.

The ntfs image used here is intentionally corrupted and the inode at
hand has a mode of 777 (as in type not specified).

Then the type check in may_open():
        switch (inode->i_mode & S_IFMT) {

fails to match anything.

This debug printk:
diff --git a/fs/namei.c b/fs/namei.c
index e56ff39a79bc..05652e8a1069 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -3259,6 +3259,10 @@ static int may_open(struct mnt_idmap *idmap, const struct path *path,
                if ((acc_mode & MAY_EXEC) && path_noexec(path))
                        return -EACCES;
                break;
+       default:
+               /* bogus mode! */
+               printk(KERN_EMERG "got bogus mode inode!\n");
+               return -EACCES;
        }

        error = inode_permission(idmap, inode, MAY_OPEN | acc_mode);

catches it.

All that said, I think adding a WARN_ONCE here is prudent, but I
don't know if denying literally all opts is the way to go.

Do other filesystems have provisions to prevent inodes like this from
getting here?


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
