Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B97749DF5
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  6 Jul 2023 15:39:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qHPCy-0000UQ-HE;
	Thu, 06 Jul 2023 13:39:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qHPBD-0006MH-BJ
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 06 Jul 2023 13:37:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SvjJMU2RLsCedQ3MvPejpvvnZCxXu+NaMD2t/+cpPw0=; b=QbPkVzgERtZV8NbQWht8DYh+r6
 +42lJxZN0we/KlJHiO9kJLdhLRLD0NYoaAG8TJnihrF//yI2uNS8NJDuh5le/rlNugO4AuE7I5ShG
 CHHGFkWZBQh7voIgKBOsyW+iqJG1mCIPRtG9YYVjAo44NVduldYT8Q19R1srzyoa/rg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SvjJMU2RLsCedQ3MvPejpvvnZCxXu+NaMD2t/+cpPw0=; b=QIi+TZtAsALcUmyw99zqWx3hG0
 Hd8QN53Ii8b3KMfeZHJyRSwuvB4VcgZdV4yV7VLC9qhINKG7OVBuUXRU96FGZuPpa1rfvYpKMnw69
 W1pN4BbDvANP5Zw86Z95jnEAUSfZ6vQG6dudEooRYpRyhY+ATzz6gRra0/3+AN6td3Bs=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qHPBC-0003nt-C5 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 06 Jul 2023 13:37:55 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 649191F85D;
 Thu,  6 Jul 2023 13:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1688650666; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SvjJMU2RLsCedQ3MvPejpvvnZCxXu+NaMD2t/+cpPw0=;
 b=FxtLh5kGIwVmCXz1GbBaL0cMrf4GLWoq2HllPiQNXbeDV4mZRYAJZA5Y4ErReOwl9lLf/m
 funLejrrr9NbBC4riU8y4bpQnxWFlC6I1rbevdYHiDJ81fxclMQwxLx7jtY8zgRbQgI1F7
 k3gqUIiNC8hyLZieCGpWOFV788ZrjwY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1688650666;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SvjJMU2RLsCedQ3MvPejpvvnZCxXu+NaMD2t/+cpPw0=;
 b=Zkz5zzbeCIY1rjiLSW6rwwxZbsRzf8b9k7HZEt80avbP8w7Lh9ua78xp1qIUJl7WE/Ue9g
 fSO71Q3lTo2AUZAw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 5671D138EE;
 Thu,  6 Jul 2023 13:37:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id R40WFarDpmSlWwAAMHmgww
 (envelope-from <jack@suse.cz>); Thu, 06 Jul 2023 13:37:46 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id C973AA0707; Thu,  6 Jul 2023 15:37:45 +0200 (CEST)
Date: Thu, 6 Jul 2023 15:37:45 +0200
From: Jan Kara <jack@suse.cz>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20230706133745.rmijt7wmwn5rivwh@quack3>
References: <20230705185755.579053-1-jlayton@kernel.org>
 <20230705190309.579783-1-jlayton@kernel.org>
 <20230705190309.579783-58-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230705190309.579783-58-jlayton@kernel.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 05-07-23 15:01:25,
 Jeff Layton wrote: > In later patches, 
 we're going to change how the inode's ctime field is > used. Switch to using
 accessor functions instead of raw accesses of > inode->i_c [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qHPBC-0003nt-C5
X-Mailman-Approved-At: Thu, 06 Jul 2023 13:39:44 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2 60/92] ntfs: convert to ctime
 accessor functions
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
Cc: Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed 05-07-23 15:01:25, Jeff Layton wrote:
> In later patches, we're going to change how the inode's ctime field is
> used. Switch to using accessor functions instead of raw accesses of
> inode->i_ctime.
> 
> Signed-off-by: Jeff Layton <jlayton@kernel.org>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/ntfs/inode.c | 15 ++++++++-------
>  fs/ntfs/mft.c   |  3 +--
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index 6c3f38d66579..99ac6ea277c4 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -654,7 +654,7 @@ static int ntfs_read_locked_inode(struct inode *vi)
>  	 * always changes, when mtime is changed. ctime can be changed on its
>  	 * own, mtime is then not changed, e.g. when a file is renamed.
>  	 */
> -	vi->i_ctime = ntfs2utc(si->last_mft_change_time);
> +	inode_set_ctime_to_ts(vi, ntfs2utc(si->last_mft_change_time));
>  	/*
>  	 * Last access to the data within the file. Not changed during a rename
>  	 * for example but changed whenever the file is written to.
> @@ -1218,7 +1218,7 @@ static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi)
>  	vi->i_gid	= base_vi->i_gid;
>  	set_nlink(vi, base_vi->i_nlink);
>  	vi->i_mtime	= base_vi->i_mtime;
> -	vi->i_ctime	= base_vi->i_ctime;
> +	inode_set_ctime_to_ts(vi, inode_get_ctime(base_vi));
>  	vi->i_atime	= base_vi->i_atime;
>  	vi->i_generation = ni->seq_no = base_ni->seq_no;
>  
> @@ -1484,7 +1484,7 @@ static int ntfs_read_locked_index_inode(struct inode *base_vi, struct inode *vi)
>  	vi->i_gid	= base_vi->i_gid;
>  	set_nlink(vi, base_vi->i_nlink);
>  	vi->i_mtime	= base_vi->i_mtime;
> -	vi->i_ctime	= base_vi->i_ctime;
> +	inode_set_ctime_to_ts(vi, inode_get_ctime(base_vi));
>  	vi->i_atime	= base_vi->i_atime;
>  	vi->i_generation = ni->seq_no = base_ni->seq_no;
>  	/* Set inode type to zero but preserve permissions. */
> @@ -2804,13 +2804,14 @@ int ntfs_truncate(struct inode *vi)
>  	 */
>  	if (!IS_NOCMTIME(VFS_I(base_ni)) && !IS_RDONLY(VFS_I(base_ni))) {
>  		struct timespec64 now = current_time(VFS_I(base_ni));
> +		struct timespec64 ctime = inode_get_ctime(VFS_I(base_ni));
>  		int sync_it = 0;
>  
>  		if (!timespec64_equal(&VFS_I(base_ni)->i_mtime, &now) ||
> -		    !timespec64_equal(&VFS_I(base_ni)->i_ctime, &now))
> +		    !timespec64_equal(&ctime, &now))
>  			sync_it = 1;
> +		inode_set_ctime_to_ts(VFS_I(base_ni), now);
>  		VFS_I(base_ni)->i_mtime = now;
> -		VFS_I(base_ni)->i_ctime = now;
>  
>  		if (sync_it)
>  			mark_inode_dirty_sync(VFS_I(base_ni));
> @@ -2928,7 +2929,7 @@ int ntfs_setattr(struct mnt_idmap *idmap, struct dentry *dentry,
>  	if (ia_valid & ATTR_MTIME)
>  		vi->i_mtime = attr->ia_mtime;
>  	if (ia_valid & ATTR_CTIME)
> -		vi->i_ctime = attr->ia_ctime;
> +		inode_set_ctime_to_ts(vi, attr->ia_ctime);
>  	mark_inode_dirty(vi);
>  out:
>  	return err;
> @@ -3004,7 +3005,7 @@ int __ntfs_write_inode(struct inode *vi, int sync)
>  		si->last_data_change_time = nt;
>  		modified = true;
>  	}
> -	nt = utc2ntfs(vi->i_ctime);
> +	nt = utc2ntfs(inode_get_ctime(vi));
>  	if (si->last_mft_change_time != nt) {
>  		ntfs_debug("Updating ctime for inode 0x%lx: old = 0x%llx, "
>  				"new = 0x%llx", vi->i_ino, (long long)
> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
> index 0155f106ec34..ad1a8f72da22 100644
> --- a/fs/ntfs/mft.c
> +++ b/fs/ntfs/mft.c
> @@ -2682,8 +2682,7 @@ ntfs_inode *ntfs_mft_record_alloc(ntfs_volume *vol, const int mode,
>  			vi->i_mode &= ~S_IWUGO;
>  
>  		/* Set the inode times to the current time. */
> -		vi->i_atime = vi->i_mtime = vi->i_ctime =
> -			current_time(vi);
> +		vi->i_atime = vi->i_mtime = inode_set_ctime_current(vi);
>  		/*
>  		 * Set the file size to 0, the ntfs inode sizes are set to 0 by
>  		 * the call to ntfs_init_big_inode() below.
> -- 
> 2.41.0
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
