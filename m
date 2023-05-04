Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEA16F6ADB
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  4 May 2023 14:08:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1puXkc-0008DO-SV;
	Thu, 04 May 2023 12:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1puWdX-0007N7-Sy
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 04 May 2023 10:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gD0trr6pNObEV9/t55gaAOWeP399LYAsy+6zD1uzRMk=; b=In/MqtkKlf7gIeWLvKumDDcdgT
 LFnHHqy4+zuZ8mMPjgAkwHd24owKHHDdJTl4/61VgqL0CNTxgAbPc8COo8XSDXd9zrIBd/muOmWb5
 BIMioGLjzwXlO86GTjxQUWYctTdXKOVCyGO8NBtHFJisk8I15j8f5UlDDnojTJVp0erQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gD0trr6pNObEV9/t55gaAOWeP399LYAsy+6zD1uzRMk=; b=hSqYL3wditv3DLc+/NlGL0A5fc
 BV5v7BWxe5iqt8eZL6RpAYnEMzMJqtBu7VmHKGgweP20HcjGiQDEU4otwyIv/eeLTo5cWGiVThVrb
 aAfMIlzS1sg+6DUT5m1SrJyHobDsAAf4TXvgbswU4jMg4lKwBrSmoiTXkGBBhbinieNo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1puWdW-0000IE-2C for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 04 May 2023 10:56:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A526663328;
 Thu,  4 May 2023 10:56:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1E69C433EF;
 Thu,  4 May 2023 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683197788;
 bh=3yKhho676EF8oPdjbHSNewOD8TBg0hH41OZIEZB8Y30=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lqjCk3mGr5UGAHp2nNIXU3WAW2pErQwVqOC6xuQ7TuDBmq4mBlAINChZc7o//Ox4n
 eXO0FzGZFhmKX/f5li2U+3qwWXFBo1uZa2wDRa1s4DpiqxW1pk2yQoj3fK5oWiepZ1
 E7UJ/EDJId7PCckF2Duo6x7tGROtzwvDUkv+BlQc3H2va62o+VG073lXajXrtPVuCC
 id/Rg03eaYQ3v9TewiOPEPM0woxKajQCR7KI07ifS4LapoWkuqUeGTaAooaR7NEUcG
 GmSt4OcM9pMd6WmGW9iHGnQsZBeubdnBmiQkFABXbu5NiDXK8tlGllgwq4OfNROCDd
 1UdegeW9Ifl2Q==
Date: Thu, 4 May 2023 12:56:22 +0200
From: Christian Brauner <brauner@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20230504-inszenieren-aufarbeiten-d6de02242119@brauner>
References: <20230407194433.25659-1-listdansp@mail.ru>
 <ZFHgAhisxjKQxhLx@debian.me>
 <20230503140609.e65bdc2b0e55ba6f49bbb620@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230503140609.e65bdc2b0e55ba6f49bbb620@linux-foundation.org>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 03, 2023 at 02:06:09PM -0700,
 Andrew Morton wrote:
 > On Wed, 3 May 2023 11:16:02 +0700 Bagas Sanjaya <bagasdotme@gmail.com>
 wrote: > > > On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila Ch [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1puWdW-0000IE-2C
X-Mailman-Approved-At: Thu, 04 May 2023 12:07:57 +0000
Subject: Re: [Linux-ntfs-dev] ntfs orphan? (was Re: [PATCH] ntfs: do not
 dereference a null ctx on error)
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
Cc: lvc-project@linuxtesting.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux Memory Management <linux-mm@kvack.org>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Anton Altaparmakov <anton@tuxera.com>,
 Danila Chernetsov <listdansp@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, May 03, 2023 at 02:06:09PM -0700, Andrew Morton wrote:
> On Wed, 3 May 2023 11:16:02 +0700 Bagas Sanjaya <bagasdotme@gmail.com> wrote:
> 
> > On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila Chernetsov wrote:
> > > In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
> > > prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
> > > 'ctx' pointer in error handling.
> > > 
> > > Found by Linux Verification Center (linuxtesting.org) with SVACE.
> > 
> > Duplicate of 10-years-old outstanding patch at [1].
> 
> Well, the patches are actually quite different.  Is Danila's longer one
> better?
> 
> > I'm not speaking of the patch itself but rather on unfortunate state
> > of ntfs subsystem. It seems like the maintainer is MIA (has not
> > responding to patch submissions for a long time). Some trivial
> > patches, however, are merged through mm tree.
> > 
> > Konstantin (from newer ntfs3 subsystem), Andrew, would you like to take a
> > look on this orphaned subsystem (and help reviewing)? I'd like to send
> > MAINTAINERS update if it turns out to be the case.
> > 
> 
> Sure, I can join linux-ntfs-dev@lists.sourceforge.net and hendle things
> which come along.
> 
> Or Christian may want to do that?

Thanks for asking. I would be able to pick up those patches into
fs.misc. I got an off-list ping about someone also wanting to help
with review apparently.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
