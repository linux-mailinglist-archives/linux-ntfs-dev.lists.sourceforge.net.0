Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 066AE8789AD
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 11 Mar 2024 21:46:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rjmXe-0001A2-Eg;
	Mon, 11 Mar 2024 20:46:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mjguzik@gmail.com>) id 1rjktv-0007v5-Ag
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 11 Mar 2024 19:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EuECgiC6YMc7b0Edc0Kt2KDyl4Um6oShzEC+/b9iZLE=; b=jI7LHoHSObenoFM89xoHtUOOVy
 wvzgdrSHKaaqm2zy6gIi6WoOI2XOyv9PfSa2lpj8ff7sABt9zqp0CIfjgiClVJthLjxqstgHWo/dw
 PGWSGQE3JZxtjmpQnLRGmZ9Q3H55LLSgx+UnETgQY1cBAxIIyfv84J7reKoAOQprRHqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EuECgiC6YMc7b0Edc0Kt2KDyl4Um6oShzEC+/b9iZLE=; b=Wxw+e41vZS9l4SqPHoprGlh682
 tMoFwrxGY59mutlLaggJ8GWIZ332pmwpU/UxWdd1jGkhFghEugWGsgrZBB7KKm+NNO4DHSbhMTyCZ
 uRlLksDGbfgwmrUABcABQVh4KbNBCt7OYfrMCbMV86Fv0+B7nXSy5ColkJTD5Mdc4Hv0=;
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rjktl-0000dh-9I for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 11 Mar 2024 19:01:31 +0000
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-a449c5411e1so616894966b.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 11 Mar 2024 12:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710183676; x=1710788476; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:references:in-reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=EuECgiC6YMc7b0Edc0Kt2KDyl4Um6oShzEC+/b9iZLE=;
 b=bnjkjKUKn9GngErZIA87m7iXIS3olsTsQGLsd/GxnkBmkQmB8YPq5IOx7gMHY2Z49u
 xF90R/p+Kfsm09agp9RCKV/UE7QEK5a6WcHs1Ri3nePs2DZiufh8Anv1FMnSdJ/qT7Fx
 cSU6IbaS+U6Q3G+hzGyhNEmED92Z1nFr5HZkc62YQ4w55zjhD9oD9Z30QpJXe5uctBYE
 vWSSeP8sqTZmBUnzgMtKYIX0WsX4XgExi3sECdnjiILPT2+cnglha1n/w4FAGbkYnS9U
 QJQfVdcE4MOtguG5iaoTeKT8DjlM9ndjXcwSsBgvQyparRjliz7l3J37zc75bNpzVWFL
 mb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710183676; x=1710788476;
 h=cc:to:subject:message-id:date:from:references:in-reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EuECgiC6YMc7b0Edc0Kt2KDyl4Um6oShzEC+/b9iZLE=;
 b=GIFVrnJ7/S07wT5mSAejKCJouktqyo5vq8tu+dfK9F8TFzqVQYTFsrmKkWCQJ1uJSB
 sW+H1ZRbkEjQsRF6cpKTkPJT5vCvX7INOzi1Ar2AiqQk/RFsgjvj09WyLndPvVkLEJmp
 gyokV9H9E2VzAEQbcZwIvZ1/+exqnL7jhgksqTY+/5kRHCngGm+P5bM6AI/Wx7tBGKrc
 Egf0mtZM7wwdSTSkpwYQ7MXi1lpNOC5rdMlieYy+y1a2rderzBK1pk3woQ9i87uruquZ
 wEY2TLQBWiGSPPBLxzjAIq8zy4teowhnVvvfgKUNOOSlZuFyflXsbgI3GZyoRkWi5H/d
 3Y4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYlc2Drt2ZkXLwngfJmo6t8ne/8Q1NDxClBMpkJMR4rgXO4lQJWdLt9Yo3qxufUUXgWngFYIKqVgtIq2XQWKuJ2tza90fwXvAzQ3a/4UhYWgKpu2I=
X-Gm-Message-State: AOJu0YxD1W038XAcMTHKo0Ma6MElL/uCwb8sAEDVSQwmyYFLHR8sL2+9
 8zhmZNBI8Ga3Gq0kEUIDFT5hzlDtiKUcJoLb9rvZp+NTPO/duafzGSoITfxdjxG2oOVEVNSyA4t
 pwLqoAlpM1NO4edUE7+jFcpplT2g=
X-Google-Smtp-Source: AGHT+IHJ0O15Wf5Z2bUjYqjgmX08pg1z5eDQTDE216uygC9BNgkF8rcTIvSKcoh4XNj8NWUD8NKETARv77vkcti1LEc=
X-Received: by 2002:a17:906:52ca:b0:a43:6146:a4df with SMTP id
 w10-20020a17090652ca00b00a436146a4dfmr4237847ejn.21.1710183675559; Mon, 11
 Mar 2024 12:01:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6f02:f0d:b0:65:b649:35ec with HTTP; Mon, 11 Mar 2024
 12:01:14 -0700 (PDT)
In-Reply-To: <20240311184800.d7nuzahhz36rlxpg@quack3>
References: <000000000000c74d44060334d476@google.com>
 <000000000000f67b790613665d7a@google.com>
 <20240311184800.d7nuzahhz36rlxpg@quack3>
From: Mateusz Guzik <mjguzik@gmail.com>
Date: Mon, 11 Mar 2024 20:01:14 +0100
Message-ID: <CAGudoHGAzNkbgUsJwvTnmO2X5crtLfO47aaVmEMwZ=G2wWTQqA@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/11/24, Jan Kara wrote: > On Mon 11-03-24 11:04:04,
 syzbot
 wrote: >> syzbot suspects this issue was fixed by commit: >> >> commit
 6f861765464f43a71462d52026fbddfc858239a5
 >> Author: Jan Kara > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mjguzik[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.46 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rjktl-0000dh-9I
X-Mailman-Approved-At: Mon, 11 Mar 2024 20:46:36 +0000
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

On 3/11/24, Jan Kara <jack@suse.cz> wrote:
> On Mon 11-03-24 11:04:04, syzbot wrote:
>> syzbot suspects this issue was fixed by commit:
>>
>> commit 6f861765464f43a71462d52026fbddfc858239a5
>> Author: Jan Kara <jack@suse.cz>
>> Date:   Wed Nov 1 17:43:10 2023 +0000
>>
>>     fs: Block writes to mounted block devices
>>
>> bisection log:
>> https://syzkaller.appspot.com/x/bisect.txt?x=17e3f58e180000
>> start commit:   eb3479bc23fa Merge tag 'kbuild-fixes-v6.7' of
>> git://git.ke..
>> git tree:       upstream
>> kernel config:
>> https://syzkaller.appspot.com/x/.config?x=bdf178b2f20f99b0
>> dashboard link:
>> https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
>> syz repro:
>> https://syzkaller.appspot.com/x/repro.syz?x=15073fd4e80000
>> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17b20b8f680000
>>
>> If the result looks correct, please mark the issue as fixed by replying
>> with:
>
> #syz fix: fs: Block writes to mounted block devices
>

I don't think that's correct.

The bug is ntfs instantiating an inode with bogus type (based on an
intentionally corrupted filesystem), violating the api contract with
vfs, which in turn results in the warning way later.

It may be someone sorted out ntfs doing this in the meantime, I have
not checked.

With this in mind I don't believe your patch fixed it, at best it
happened to neuter the reproducer.

vfs could definitely be patched to catch this when I_NEW is getting
cleared (only when  running with debug), not in the spot which
generates the warn.

-- 
Mateusz Guzik <mjguzik gmail.com>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
