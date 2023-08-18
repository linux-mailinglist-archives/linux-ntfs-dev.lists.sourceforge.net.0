Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2367814B7
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Aug 2023 23:25:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qX6xz-0005Go-DO;
	Fri, 18 Aug 2023 21:25:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ebiederm@xmission.com>) id 1qX6a7-0003Xo-Bc
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 21:00:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c2HNIZlJkw+5fhfv+glzCmzVWYPxCsHKEZHFrWUnQpg=; b=bFwrf2SCE4T5F1MmGSraUeeDA0
 VN5NDVW2T1KPDuJP+AH1XXkiFTr3T/3RdMLZrcMbEHO08GL/sHqrD21Lz89A0RA/vHUUVxxZgmie9
 Pxc/3QRRkVyBc+sFQG7jarrfiWZkvvCE3KS455BIqaVjsWqkVZj7qAw9AjlxrpKEpqYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c2HNIZlJkw+5fhfv+glzCmzVWYPxCsHKEZHFrWUnQpg=; b=OwXWf1CPHaMl6kaSfDr9QrB92P
 Gvb08/6TaFrUlbYqDfpFoTV7ejw8hMFNCk/2i2isTKKoNp+L6CnymPUuGPy/7WFlwvFHRyMnB3jN1
 9r2aAB9QlkMS3UkD+B2wQ13tpemgxXzp6aHm3giwUZA/yucKK0H7Dskg1vSIpPgPmEYU=;
Received: from out02.mta.xmission.com ([166.70.13.232])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qX6a7-0005Qz-GE for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 21:00:32 +0000
Received: from in01.mta.xmission.com ([166.70.13.51]:45472)
 by out02.mta.xmission.com with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <ebiederm@xmission.com>)
 id 1qX6Zw-005O8N-KN; Fri, 18 Aug 2023 15:00:20 -0600
Received: from ip68-227-168-167.om.om.cox.net ([68.227.168.167]:50332
 helo=email.froward.int.ebiederm.org.xmission.com)
 by in01.mta.xmission.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <ebiederm@xmission.com>)
 id 1qX6Zt-00540T-Ve; Fri, 18 Aug 2023 15:00:20 -0600
From: "Eric W. Biederman" <ebiederm@xmission.com>
To: Mateusz Guzik <mjguzik@gmail.com>
References: <000000000000c74d44060334d476@google.com>
 <87o7j471v8.fsf@email.froward.int.ebiederm.org>
 <20230818173625.by6bud4u7uz2k4be@f>
Date: Fri, 18 Aug 2023 15:59:39 -0500
In-Reply-To: <20230818173625.by6bud4u7uz2k4be@f> (Mateusz Guzik's message of
 "Fri, 18 Aug 2023 19:36:25 +0200")
Message-ID: <87a5uo6p8k.fsf@email.froward.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1qX6Zt-00540T-Ve; ; ;
 mid=<87a5uo6p8k.fsf@email.froward.int.ebiederm.org>; ; ;
 hst=in01.mta.xmission.com; ; ; ip=68.227.168.167; ; ;
 frm=ebiederm@xmission.com; ; ; spf=pass
X-XM-AID: U2FsdGVkX1/ofGYnSpXkgEFr1C7tIJqjxck0R7gNKbE=
X-SA-Exim-Connect-IP: 68.227.168.167
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa08.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG shortcircuit=no
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4995]
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa08 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa08 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Mateusz Guzik <mjguzik@gmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 1993 ms - load_scoreonly_sql: 0.09 (0.0%),
 signal_user_changed: 17 (0.8%), b_tie_ro: 14 (0.7%), parse: 1.78
 (0.1%), extract_message_metadata: 26 (1.3%), get_uri_detail_list: 1.51
 (0.1%), tests_pri_-2000: 15 (0.7%), tests_pri_-1000: 2.8 (0.1%),
 tests_pri_-950: 1.54 (0.1%), tests_pri_-900: 1.56 (0.1%),
 tests_pri_-200: 1.30 (0.1%), tests_pri_-100: 5 (0.3%), tests_pri_-90:
 1583 (79.5%), check_bayes: 1576 (79.1%), b_tokenize: 7 (0.4%),
 b_tok_get_all: 8 (0.4%), b_comp_prob: 3.2 (0.2%), b_tok_touch_all:
 1552 (77.9%), b_finish: 1.15 (0.1%), tests_pri_0: 310 (15.6%),
 check_dkim_signature: 0.66 (0.0%), check_dkim_adsp: 31 (1.6%),
 poll_dns_idle: 29 (1.4%), tests_pri_10: 2.7 (0.1%), tests_pri_500: 18
 (0.9%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Sat, 08 Feb 2020 21:53:50 +0000)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Mateusz Guzik <mjguzik@gmail.com> writes: > On Fri, Aug 18, 
 2023 at 11:26:51AM -0500, Eric W. Biederman wrote: >> syzbot
 <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>
 writes: >> >> > Hello, >> > >> > syzbot found the following issue [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [166.70.13.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qX6a7-0005Qz-GE
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
 keescook@chromium.org, linux-ntfs-dev@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Mateusz Guzik <mjguzik@gmail.com> writes:

> On Fri, Aug 18, 2023 at 11:26:51AM -0500, Eric W. Biederman wrote:
>> syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com> writes:
>> 
>> > Hello,
>> >
>> > syzbot found the following issue on:
>> 
>> Not an issue.
>> Nothing to do with ntfs.
>> 
>> The code is working as designed and intended.
>> 
>> syzbot generated a malformed exec and the kernel made it
>> well formed and warned about it.
>> 
>
> There is definitely an issue here.
>
> The warn on comes from:
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
> Where path_noexec is:
>         return (path->mnt->mnt_flags & MNT_NOEXEC) ||
>                (path->mnt->mnt_sb->s_iflags & SB_I_NOEXEC);

My confusion.

I was seeing the message from
	if (retval == 0)
		pr_warn_once("process '%s' launched '%s' with NULL argv: empty string added\n",
			     current->comm, bprm->filename);

I made the mistake of assuming that that was generating the backtrace.
The lack of args to execveat appears to be working fine.

I see you tracked this down to a non-exhaustive check in may_open.
Apologies for the noise.

Eric


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
