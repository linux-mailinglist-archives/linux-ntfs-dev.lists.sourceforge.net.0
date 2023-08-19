Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 343D7781D05
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 20 Aug 2023 10:46:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qXe5B-0001UV-D5;
	Sun, 20 Aug 2023 08:46:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mjguzik@gmail.com>) id 1qXSAm-0001HM-80
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 19 Aug 2023 20:03:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aJmwmCW2cEQCd04RE4RrxWMNws0AbxA5Q61XDGT3T+Y=; b=HytbzVx3E3dzw1EcfPLHhbIpnD
 LX8BFYYEM09EjkDB2LSCutz+J00tclnrnuqjx/M92o9+KPrbvje5gOgjgrXRwcySEcFsLEURrvS01
 R/8M3aCzNFWfntQbrtAXHF1v5bCChwSZngHbFbUMWLtV0k+tG7s0HaLjLWZYG14ET5nQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aJmwmCW2cEQCd04RE4RrxWMNws0AbxA5Q61XDGT3T+Y=; b=KAXhJNvzYOS5AmI/MoObTOTrgQ
 1Hs6Skvngsi/aTOaGiNFHTSyC1L9dld/WBqzjkJkS/QNBfy5NVoae6xksFS8IcM9kbjpOoUBVwmSD
 bNb5an3e8+mLXw3uq+v9gdbj++pPDBR3fMl9Aps/jLd2W460uGGtt8G3RdwyCKN4iTjA=;
Received: from mail-oa1-f48.google.com ([209.85.160.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qXSAk-0007Dc-Dc for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 19 Aug 2023 20:03:47 +0000
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-1c4c6717e61so1446341fac.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 19 Aug 2023 13:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692475421; x=1693080221;
 h=cc:to:subject:message-id:date:from:references:in-reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=aJmwmCW2cEQCd04RE4RrxWMNws0AbxA5Q61XDGT3T+Y=;
 b=g+rCERemWikecerpqjEDtuCW3J3jHkNm2Fn5WiZ00kYiXRoMVCXXROJJpfAhc15ysl
 UWyXlVSZpz35w9DMq98q4cOxdVKV1k7EtA3CBAk8rCr20aJ/nHENESikDfhiZEiJEyFo
 yTLrMLCL1aTFaD2s021AVlUAsULlYgxSb4homYRDe3mtKQgj76vSGFVxcQd3pRccd42Z
 SlSgLj/i64i7MMUYTgel3/XsUsGJY9+5Za+GFigyUJTVhq09oXN0yrnplUVftBvbvW92
 lJDC2OQrmljAnyqavE9PxuqenvyqAGHnmcXJ2Fq7fuUAF6qD65/hWv45bAEK6auxe91l
 I3EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692475421; x=1693080221;
 h=cc:to:subject:message-id:date:from:references:in-reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=aJmwmCW2cEQCd04RE4RrxWMNws0AbxA5Q61XDGT3T+Y=;
 b=fKZBW5AwssW4nVZ7xrZZDpjJUA1qbTAY4I9/73Hgd+ywOYsykgJ0dQ5I9I0Od8FcNS
 XS3MIIGLFF9X7wJTkqHX7x6aMF/cR1EjoMEL+zuXomu9sZB3OHzWM3yalivygiSvtUuD
 Ihe+B/dSXRYxSVQobhaEUBtgieyZ2BIu4D70IvCiaXRHWyWdbmD9tplKjYvHsX3yS2NL
 1oNaDoTr5aApzbdrNUJAwaoDA2EVo9VCufrxDUvPo4d8yTySpVcVijTfutROWyt4ZLzO
 cA5bWdSbIRYS2jbdJwwj4y+3PZtVseNbXGmr4x5D5f7053Mrkq3cRXWpT4wtUneejhQb
 CdUg==
X-Gm-Message-State: AOJu0Yz/hdw9y3JuTQvzuup87OMbQUjaSfSAWzdVCQD16AqwZmX3oP9o
 jXp4VrQY7q+OjxiC6jSItfX4wgp69s5WdIf+LvsV74mS
X-Google-Smtp-Source: AGHT+IFcQ5JgHH5X+0iR2/3eAmurP/E4fqkFweod4P5W5Y3dD5jml27OqGCNcTMGfxg3F0F72tWMGlj2+wEF2tqx2qQ=
X-Received: by 2002:a05:6870:6394:b0:1c1:12dc:70b1 with SMTP id
 t20-20020a056870639400b001c112dc70b1mr3579234oap.57.1692475420635; Sat, 19
 Aug 2023 13:03:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:79d9:0:b0:4f0:1250:dd51 with HTTP; Sat, 19 Aug 2023
 13:03:40 -0700 (PDT)
In-Reply-To: <20230819-geblendet-energetisch-a90a2886216c@brauner>
References: <000000000000c74d44060334d476@google.com>
 <87o7j471v8.fsf@email.froward.int.ebiederm.org>
 <202308181030.0DA3FD14@keescook> <20230818191239.3cprv2wncyyy5yxj@f>
 <20230819-geblendet-energetisch-a90a2886216c@brauner>
From: Mateusz Guzik <mjguzik@gmail.com>
Date: Sat, 19 Aug 2023 22:03:40 +0200
Message-ID: <CAGudoHGnE2=+EqnwjkSD48VvGpK8MVAvYXQeTxA1o=PfOqHQnA@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/19/23, Christian Brauner wrote: > On Fri, Aug 18, 2023
 at 09:12:39PM +0200, Mateusz Guzik wrote: >> On Fri, Aug 18, 2023 at 10:33:26AM
 -0700, Kees Cook wrote: >> > This is a double-check I left [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.48 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mjguzik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1qXSAk-0007Dc-Dc
X-Mailman-Approved-At: Sun, 20 Aug 2023 08:46:48 +0000
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
Cc: syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>,
 Theodore Ts'o <tytso@mit.edu>, Kees Cook <keescook@chromium.org>,
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-fsdevel@vger.kernel.org,
 anton@tuxera.com, Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 8/19/23, Christian Brauner <brauner@kernel.org> wrote:
> On Fri, Aug 18, 2023 at 09:12:39PM +0200, Mateusz Guzik wrote:
>> On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote:
>> > This is a double-check I left in place, since it shouldn't have been
>> > reachable:
>> >
>> >         /*
>> >          * may_open() has already checked for this, so it should be
>> >          * impossible to trip now. But we need to be extra cautious
>> >          * and check again at the very end too.
>> >          */
>> >         err = -EACCES;
>> >         if (WARN_ON_ONCE(!S_ISREG(file_inode(file)->i_mode) ||
>> >                          path_noexec(&file->f_path)))
>> >                 goto exit;
>> >
>>
>> As I mentioned in my other e-mail, the check is racy -- an unlucky
>> enough remounting with noexec should trip over it, and probably a chmod
>> too.
>>
>> However, that's not what triggers the warn in this case.
>>
>> The ntfs image used here is intentionally corrupted and the inode at
>> hand has a mode of 777 (as in type not specified).
>>
>> Then the type check in may_open():
>>         switch (inode->i_mode & S_IFMT) {
>>
>> fails to match anything.
>>
>> This debug printk:
>> diff --git a/fs/namei.c b/fs/namei.c
>> index e56ff39a79bc..05652e8a1069 100644
>> --- a/fs/namei.c
>> +++ b/fs/namei.c
>> @@ -3259,6 +3259,10 @@ static int may_open(struct mnt_idmap *idmap, const
>> struct path *path,
>>                 if ((acc_mode & MAY_EXEC) && path_noexec(path))
>>                         return -EACCES;
>>                 break;
>> +       default:
>> +               /* bogus mode! */
>> +               printk(KERN_EMERG "got bogus mode inode!\n");
>> +               return -EACCES;
>>         }
>>
>>         error = inode_permission(idmap, inode, MAY_OPEN | acc_mode);
>>
>> catches it.
>>
>> All that said, I think adding a WARN_ONCE here is prudent, but I
>> don't know if denying literally all opts is the way to go.
>>
>> Do other filesystems have provisions to prevent inodes like this from
>> getting here?
>
> Bugs reported against the VFS from ntfs/ntfs3 are to be treated with
> extreme caution. Frankly, if it isn't reproducible without a corrupted
> ntfs/ntfs3 image it is to be dismissed until further notice.
>
> In this case it simply seems that ntfs is failing at ensuring that its
> own inodes it reads from disk have a well-defined type.
>
> If ntfs fails to validate that its own inodes it puts into the icache
> are correctly initialized then the vfs doesn't need to try and taper
> over this.
>
> If ntfs fails at that, there's no guarantee that it doesn't also fail at
> setting the correct i_ops for that inode. At which point we can check
> the type in may_open() but we already used bogus i_ops the whole time on
> some other inodes.
>
> We're not here to make up for silly bugs like this. That WARN belongs
> into ntfs not the vfs.
>

Given the triggered WARN_ON it seemed to me this would be the
operating procedure, I am happy it is not ;)

Per your description and the one provided by Theodore I take it
filesystems must not ship botched inodes like this one.

While in this case this is a clear-cut bug in ntfs, I would argue the
entire ordeal exposes a deficiency in VFS -- it should have a
debug-only mechanism which catches cases like this early on. For
example there could be a mandatory function to call when the
filesystem claims it constructed the inode to assert a bunch on it --
it would not catch all possible problems, but would definitely catch
this one (and VFS would have to detect the call was not made).

Perhaps I should write a separate e-mail about this, but I'm surprised
there is no debug-only (as in not present in production kernels)
support for asserting the state. To give one example which makes me
itchy see inode destruction. There are few checks in clear_inode, but
past that there is almost nothing.

Similarly there are quite a few comments how the caller is required to
hold a given lock, which should have been converted to lockdep asserts
years ago.

I'm going to write something up later.

-- 
Mateusz Guzik <mjguzik gmail.com>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
