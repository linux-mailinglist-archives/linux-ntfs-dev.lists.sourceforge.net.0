Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8632487959D
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 12 Mar 2024 15:05:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rk2kh-0002mw-PL;
	Tue, 12 Mar 2024 14:05:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mjguzik@gmail.com>) id 1rk1UW-0002GM-2R
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 12 Mar 2024 12:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qGx1SAuuMtMPbkqKhMFRhqHlJUlfDVpupNqFcCtt0Xg=; b=Th4J9FQM/zhp8NiKhRk0SXCevo
 +OQumswGjF4o/QnMstk/ufsk/6NcUj7qZrFCcDujnyVevruInKSROTcuxIg+DGbhJzOTADdtcoHyi
 xh2e3XAzOjJfR1E9VNnmU+gnejLnivi4qw3YJN+iOSOtZlcSA2ILH5z25CrKIwPSn3M8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qGx1SAuuMtMPbkqKhMFRhqHlJUlfDVpupNqFcCtt0Xg=; b=CWBMazdxv002iMsfBjujmXtRKC
 HarelHHbdu+uJthvpXF3P7w0nejgHYm0Y6geCV4CQRQGxGgJvKi+gAjfXCrHfK56zfbI/fCX3Ou+i
 ao1V+NJPv+ctfQVupwlHs11k8TaY4HygZp5Y4C+wefs+xl3JJb5P83Lr9oF5BOSYRBis=;
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rk1UL-0004SC-TI for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 12 Mar 2024 12:44:24 +0000
Received: by mail-ed1-f54.google.com with SMTP id
 4fb4d7f45d1cf-56845954ffeso3630266a12.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Mar 2024 05:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710247448; x=1710852248; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:references:in-reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=qGx1SAuuMtMPbkqKhMFRhqHlJUlfDVpupNqFcCtt0Xg=;
 b=OCvGDU0+W8T7NvBKCB9dmBfyml3pyHOtOzS0uqqDpwyv1rrSAfIDOT6XAnjuiEWGX6
 CvPo0PmNxlbITj8OGN1WhL/4N8DjAk5lDR803AUmB0l6d7J0NwU2hcoxVB4GqPHJI8Ll
 WBqAw7nfn7OU+rHslkc0qOsuLMGhn3G/ork+20A0RD7mRsxwx6Uj0HUbIPG222hYNiaq
 diMY6SSi7Bk0QMnq34ygzzv2in8R9FsMvOe2+7B2SC+AF5Edo7CL0XQAZasajiQneido
 LbQCpGDE6Xq5sr09OvEsqvzrBGDFu+PAThqY7KFpil92lB7+bBle/HqRXx7cgdtdobVB
 yN+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710247448; x=1710852248;
 h=cc:to:subject:message-id:date:from:references:in-reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qGx1SAuuMtMPbkqKhMFRhqHlJUlfDVpupNqFcCtt0Xg=;
 b=DpsDavqhBVdlxr4kh6Z7Ug/Qb8CFYh3JHWvInjbPBzth2Cve+Ir4M6JTNrvxrEmERv
 Us5Byzr4gdMr4iXBFMuSI292+gHrWN5hk0Tugm/WKgJG/vNtfkkNQp0O5kUDvQaOjxU1
 TFUYxPgz6f395h03+BLdCQUAM2ku4JYN5UgdXekJ/PSEjTCGxQL5a+avUZ3r8FxlpH6P
 ML5YLYw76q/E5qKb4Ywn+FPgNt3KKpJZbmDQwPPMs7rGIfTnw/D210qCYxnBVL/lBLRD
 hakxXGcSMsKcdRxcEPzZo0eCfm6gJYJffU/XxAs5ecAnky/ebhNi8SmlW52xC3cuGoXy
 u6vg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUY2+yvggMyY65QWRMTggnoqgO0JJFJ0VnMDG1bVF8lR4VnTJwxGJlkC7GnsC2dtH/0358ZZPnUOqJdQc2kCgIX2r7vFydUA9W0SC2czIMBL4p/GbQ=
X-Gm-Message-State: AOJu0Yz75or9TpVcHg4NHw6sU//0M9lp7C1zcGQ3UnrCYydE1AERNVZK
 IXiqeUvCZ3k7J9sjmf4dVkYz1QowQENsDSk8s1Oz60BC2xj5seQlfE5VzK+TkWZybr9xhNfujGr
 RbO/GOIZzpDahE80QRX+O8MLeAX4=
X-Google-Smtp-Source: AGHT+IHf5Mmnm9eokPIC+RAuWPaLLdKydE4R+EnGXpUBogywCJzE1P3gWMX/3a9TW1dhq8iJu2ZHc9ZPPPwwSNBRvz4=
X-Received: by 2002:a50:d71b:0:b0:567:504e:e779 with SMTP id
 t27-20020a50d71b000000b00567504ee779mr1210099edi.25.1710247448377; Tue, 12
 Mar 2024 05:44:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6f02:8506:b0:65:b649:35ec with HTTP; Tue, 12 Mar 2024
 05:44:07 -0700 (PDT)
In-Reply-To: <20240312120658.os72hvnk5jedwbaw@quack3>
References: <000000000000c74d44060334d476@google.com>
 <000000000000f67b790613665d7a@google.com>
 <20240311184800.d7nuzahhz36rlxpg@quack3>
 <CAGudoHGAzNkbgUsJwvTnmO2X5crtLfO47aaVmEMwZ=G2wWTQqA@mail.gmail.com>
 <20240312120658.os72hvnk5jedwbaw@quack3>
From: Mateusz Guzik <mjguzik@gmail.com>
Date: Tue, 12 Mar 2024 13:44:07 +0100
Message-ID: <CAGudoHGLLbXxxEyeOQxecL5Cj21rFgMo1QFGYntF+aNEKyJ=rQ@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/12/24, Jan Kara wrote: > On Mon 11-03-24 20:01:14,
 Mateusz
 Guzik wrote: >> On 3/11/24, Jan Kara wrote: >> > On Mon 11-03-24 11:04:04,
 syzbot wrote: >> >> syzbot suspects this issue was fixed [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mjguzik[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rk1UL-0004SC-TI
X-Mailman-Approved-At: Tue, 12 Mar 2024 14:05:10 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] WARNING in do_open_execat
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
Cc: axboe@kernel.dk, brauner@kernel.org,
 syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>, tytso@mit.edu,
 keescook@chromium.org, linux-ntfs-dev@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, almaz.alexandrovich@paragon-software.com,
 linux-mm@kvack.org, ebiederm@xmission.com, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev, anton@tuxera.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 3/12/24, Jan Kara <jack@suse.cz> wrote:
> On Mon 11-03-24 20:01:14, Mateusz Guzik wrote:
>> On 3/11/24, Jan Kara <jack@suse.cz> wrote:
>> > On Mon 11-03-24 11:04:04, syzbot wrote:
>> >> syzbot suspects this issue was fixed by commit:
>> >>
>> >> commit 6f861765464f43a71462d52026fbddfc858239a5
>> >> Author: Jan Kara <jack@suse.cz>
>> >> Date:   Wed Nov 1 17:43:10 2023 +0000
>> >>
>> >>     fs: Block writes to mounted block devices
>> >>
>> >> bisection log:
>> >> https://syzkaller.appspot.com/x/bisect.txt?x=17e3f58e180000
>> >> start commit:   eb3479bc23fa Merge tag 'kbuild-fixes-v6.7' of
>> >> git://git.ke..
>> >> git tree:       upstream
>> >> kernel config:
>> >> https://syzkaller.appspot.com/x/.config?x=bdf178b2f20f99b0
>> >> dashboard link:
>> >> https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
>> >> syz repro:
>> >> https://syzkaller.appspot.com/x/repro.syz?x=15073fd4e80000
>> >> C reproducer:
>> >> https://syzkaller.appspot.com/x/repro.c?x=17b20b8f680000
>> >>
>> >> If the result looks correct, please mark the issue as fixed by
>> >> replying
>> >> with:
>> >
>> > #syz fix: fs: Block writes to mounted block devices
>> >
>>
>> I don't think that's correct.
>>
>> The bug is ntfs instantiating an inode with bogus type (based on an
>> intentionally corrupted filesystem), violating the api contract with
>> vfs, which in turn results in the warning way later.
>>
>> It may be someone sorted out ntfs doing this in the meantime, I have
>> not checked.
>>
>> With this in mind I don't believe your patch fixed it, at best it
>> happened to neuter the reproducer.
>
> OK, I didn't dig deep into the bug. I've just seen there are no working
> reproducers and given this is ntfs3 which doesn't really have great
> maintenance effort put into it, I've opted for closing the bug. If there's
> a way to tickle the bug without writing to mounted block device, syzbot
> should eventually find it and create a new issue... But if you want to look
> into this feel free to :) Thanks for sharing the info.
>

Maybe I'll get around to future-proofing by adding validation before
the inode escapes the filesystem code, but I'm definitely NOT patching
ntfs. 8->

-- 
Mateusz Guzik <mjguzik gmail.com>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
