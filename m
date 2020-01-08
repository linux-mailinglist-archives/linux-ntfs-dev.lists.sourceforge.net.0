Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB5C135D6A
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  9 Jan 2020 17:03:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ipaGx-0003Ax-3e; Thu, 09 Jan 2020 16:02:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hirofumi@parknet.co.jp>) id 1ip5XV-0005Ty-S1
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jan 2020 07:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OHCQLelH9j0gDL9C6eWy4GwVIBeXymYa0C2Lw7zOm40=; b=c2dsHMGvkeKsZlAf+kUv8YaUJX
 hcqL4y85d1yO96Jpk8d4qf1qaPWjtAzRHhYqTpR34POehDJehbqhxjyDxGAIONadB7+sLg0u92FNi
 9rColtvqnHAmHvTq5/0GawsnHqXvug8/uVe3UCPdGlEduAsxRm+76pUF0LWOvsFWyzLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OHCQLelH9j0gDL9C6eWy4GwVIBeXymYa0C2Lw7zOm40=; b=bKLBtX69MwoHzeKuUmGFKfFJI6
 BsrgLfzot1bUSbvrplWukvBhi4XsKccNQPbuII5+FX1ArQou8M/ciHNCFUdwn3We6yv68mQWHuZmF
 qz3J/uxqaxicaHp9Bkolck6dYkfJLcl8D6xla85XOq1nr5VY6FeKtZ7m88B+2gnDISuM=;
Received: from mail.parknet.co.jp ([210.171.160.6])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1ip5XO-00DAs1-PU
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jan 2020 07:14:01 +0000
Received: from ibmpc.myhome.or.jp (server.parknet.ne.jp [210.171.168.39])
 by mail.parknet.co.jp (Postfix) with ESMTPSA id 07A9A129664;
 Wed,  8 Jan 2020 16:13:49 +0900 (JST)
Received: from devron.myhome.or.jp (foobar@devron.myhome.or.jp [192.168.0.3])
 by ibmpc.myhome.or.jp (8.15.2/8.15.2/Debian-16) with ESMTPS id
 0087Dlir011620
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 8 Jan 2020 16:13:48 +0900
Received: from devron.myhome.or.jp (foobar@localhost [127.0.0.1])
 by devron.myhome.or.jp (8.15.2/8.15.2/Debian-16) with ESMTPS id 0087Dlmq047299
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 8 Jan 2020 16:13:47 +0900
Received: (from hirofumi@localhost)
 by devron.myhome.or.jp (8.15.2/8.15.2/Submit) id 0087DeXR047296;
 Wed, 8 Jan 2020 16:13:40 +0900
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>
References: <20200102211855.gg62r7jshp742d6i@pali>
 <20200107133233.GC25547@quack2.suse.cz>
 <20200107173842.ciskn4ahuhiklycm@pali> <20200107200301.GE3619@mit.edu>
 <20200107203732.ab4jnfgsjobtt5xa@pali>
Date: Wed, 08 Jan 2020 16:13:40 +0900
In-Reply-To: <20200107203732.ab4jnfgsjobtt5xa@pali> ("Pali
 =?iso-8859-1?Q?Roh=E1r=22's?= message of
 "Tue, 7 Jan 2020 21:37:32 +0100")
Message-ID: <87tv56ifob.fsf@mail.parknet.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: parknet.co.jp]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ip5XO-00DAs1-PU
X-Mailman-Approved-At: Thu, 09 Jan 2020 16:02:58 +0000
Subject: Re: [Linux-NTFS-Dev] Unification of filesystem encoding options
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
Cc: linux-cifs@vger.kernel.org, Namjae Jeon <linkinjeon@gmail.com>,
 Jan Kara <jack@suse.cz>, Eric Sandeen <sandeen@redhat.com>,
 Luis de Bethencourt <luisbg@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>, David Sterba <dsterba@suse.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@infradead.org>, Salah Triki <salah.triki@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Pali Roh=E1r <pali.rohar@gmail.com> writes:

> On Tuesday 07 January 2020 15:03:01 Theodore Y. Ts'o wrote:
>> On Tue, Jan 07, 2020 at 06:38:42PM +0100, Pali Roh=E1r wrote:
>
>> In contrast the fs/unicode functions
>> have support for full Unicode case folding and normalization, and
>> currently has the latest Unicode 12.1 tables (released May 2019).
>
> That is great!
>
> But for example even this is not enough for exfat. exfat has stored
> upcase table directly in on-disk FS, so ensure that every implementation
> of exfat driver would have same rules how to convert character (code
> point) to upper case or lower case (case folding). Upcase table is
> stored to FS itself when formatting. And in MS decided that for exfat
> would not be used any Unicode normalization. So this whole fs/unicode
> code is not usable for exfat.
>
>> What I'd suggest is to create a new API, enhancing the functions in
>> fs/unicode, to support those file systems that need to deal with
>> UTF-16 and UTF-32 for their on-disk directory format, and that we
>> assume that for the most part, userspace *will* be using a UTF-8
>> encoding for the user<->kernel interface.
>
> I do not see a use-case for such a new API. Kernel has already API
> functions:
>
>     int utf8_to_utf32(const u8 *s, int len, unicode_t *pu);
>     int utf32_to_utf8(unicode_t u, u8 *s, int maxlen);
>     int utf8s_to_utf16s(const u8 *s, int len, enum utf16_endian endian, w=
char_t *pwcs, int maxlen);
>     int utf16s_to_utf8s(const wchar_t *pwcs, int len, enum utf16_endian e=
ndian, u8 *s, int maxlen);
>
> which are basically enough for all mentioned filesystems. Maybe in for
> some cases would be useful function utf16 to utf32 (and vice-versa), but
> that is all. fs/unicode does not bring a new value or simplification.
>
> Mentioned filesystems are in most cases either case-sensitive (UDF),
> having own case-folding (exfat), using own special normalization
> incompatible with anything (hfsplus) or do not enforce any normalization
> (cifs, vfat, ntfs, isofs+joliet). So result is that simple UTF-8 to
> UTF-16LE/BE conversion function is enough and then filesystem module
> implements own specific rules (special upcase table, incompatible
> normalization).
>
> And I do not thing that it make sense to extending fs/unicode for every
> one stupid functionality which those filesystems have and needs to
> handle. I see this as a unique filesystem specific code.
>
>> We can keep the existing
>> NLS interface and mount options for legacy support, but in my opinion
>> it's not worth the effort to try to do anything else.
>
> NLS interface is crucial part of VFAT. Reason is that in VFAT can be
> filenames stored either as UTF-16LE or as 8bit in some CP encoding.
> Linux kernel stores new non-7-bit-ASCII filenames as UTF-16LE, but it
> has to able to read 8-bit filenames which were not stored as UTF-16LE,
> but rather as 8bit in CP encoding. And therefore mount option codepage=3D
> which specify it is required needs to be implemented. It says how
> vfat.ko should handle on-disk structure, not which encoding is exported
> to userspace (those are two different things).
>
> And current vfat implementation uses NLS API for it. Via CONFIG_* is
> specified default codepage=3D mount option (CP473 or what it is -- if you
> do not specify one explicitly at mount time). And because FAT is
> required part of UEFI, Linux kernel would have to support this stuff
> forever (or at least until it support UEFI). I think this cannot be
> marked as "legacy". It is pity, but truth.

FWIW, what I imagined and but never try to implement in past is, iconv
(or such if you know better api). To support complete codepages, IIRC,
it has difference by OSes (e.g. mac, old windows, current windows,
unicode standard).

So the table is loaded from userspace like firmware data. (several codes
in kernel for special conversion cases are required though, table may be
able to share with glibc)

But this would be big work.

Thanks.
-- =

OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
