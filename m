Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6263A2E8F6E
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Jan 2021 03:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kwFXV-0005wA-65; Mon, 04 Jan 2021 02:24:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1kwCAE-0007cW-Hb
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 22:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=87RUIw64Kr1A5OliwMJO/pfdIRcRUQAtOYF9J54FhFc=; b=UvnijCnYPGJoBoB1EL/0ds9DpD
 4R8UIY1mFAsegVYaknsKWWM02lFBo0eVF0JBa1jREBrUst5AP2XRyNIwqoaCNjOc8BdPpCihDBMXt
 8t5kvkzJK/s6t947djGe2lG7gnpkP+Uu5dJbt4l6Y+qaKuQ1Jc8uPQwUCKAhhldHb08E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=87RUIw64Kr1A5OliwMJO/pfdIRcRUQAtOYF9J54FhFc=; b=CSmsNo03Ap3XQ+KZeLnUtDPN9J
 9RzmuTgY7zwSyZ1F9Q51Fh4qhsB2Qt7VUOH3ph4PD75nqxqColPdBvfZ/0Go104kjtMtz4Zid3+NH
 5qnQT3eTnfS0+NqBCJsDZZ+a/kK2KGyHGrOAoSG+B8ihqarhoMTz5SOk89I7bGE3InIs=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwCA5-009yc3-4e
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 22:47:54 +0000
Received: by mail-lf1-f52.google.com with SMTP id o13so60435394lfr.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 03 Jan 2021 14:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=87RUIw64Kr1A5OliwMJO/pfdIRcRUQAtOYF9J54FhFc=;
 b=R/1h1w3CLjy283V6oGtpIoG1Q3tLeo2fn53+eC1YwCEqKLEFXFGLAqt8u+HgEcM2y2
 pDJw2mk8uRs2GlW/WHf2OJNXPkE5rggyNItKfJKVA0kqq5qbiRWFJrOmQ15FEPE+iDRU
 TE5q6RPjuuHIXzV7C0yJ91mjOy+/R7ZOTc/847mTrDZrObKDo3D4yx6/vqKXl2FUXAky
 6tZ/n2T+UIgCBkFxqwQT/DLnmokz9lkteidCq9xlzSoX2Z8kVdjMpSs7y/SCC00TYjyi
 hxnYNMuBdxJ1rzw0xmj8jA/g4pdH/eL/nxULesRToDb6X3S4Xc06jhiwEpAyT4EOQKTl
 yXCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=87RUIw64Kr1A5OliwMJO/pfdIRcRUQAtOYF9J54FhFc=;
 b=uAaOAPCVMJNQBxKY1vbhsmqZwggEAgQ4jBW6a/xESwkLqgx44/hP55zl3R+aSJXdiG
 vBIWOVhSrLzo6oVNehvTvh0q9gz/hOMMNb8KdqLgGW5HhswpYymYxUSsQalMalAtNJ4G
 VYekKH8Vtn2T0wMbfOAiPoFMxZomRd8RpcfcqwOSirjXuBl8FwCWLBGmnkz/4ndvGe2X
 cSrxbSdpryweBwk8UcRks0sQ39V7BGJXWiksVqSAm9T7VDE51CZjD/x+ydP0+Vql5aUs
 hU7kMrsOGQaGc02ZkAb+12MSPVtabjMeapf3zZv2c+zw55y5Ej+bLQhWf8XscQeAL0Jb
 TCoA==
X-Gm-Message-State: AOAM5326UoTNhQ+Y2Dy/gtx+cbNWoXzIiFTMqPr5auiX5LMuIpNeZKC6
 uXYufYGw+ldasKYDNisxnjQ=
X-Google-Smtp-Source: ABdhPJxgZE7Fua+oorVTutxvrhFL61TMXKPZjfQDeihCiOf41/1uIS8p4sX7RhggqGKOwgIFs0bGzw==
X-Received: by 2002:a2e:909a:: with SMTP id l26mr33223108ljg.182.1609714058543; 
 Sun, 03 Jan 2021 14:47:38 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id k11sm7095916lfd.3.2021.01.03.14.47.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jan 2021 14:47:37 -0800 (PST)
Date: Mon, 4 Jan 2021 00:47:35 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210103224735.gtirbmcpkdsietrl@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-8-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231152401.3162425-8-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kwCA5-009yc3-4e
X-Mailman-Approved-At: Mon, 04 Jan 2021 02:24:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 07/10] fs/ntfs3: Add NTFS journal
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 31, 2020 at 06:23:58PM +0300, Konstantin Komarov wrote:
> This adds NTFS journal
> 
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> ---
>  fs/ntfs3/fslog.c | 5220 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 5220 insertions(+)
>  create mode 100644 fs/ntfs3/fslog.c
> 
> diff --git a/fs/ntfs3/fslog.c b/fs/ntfs3/fslog.c

> +static int read_log_page(struct ntfs_log *log, u32 vbo,
> +			 struct RECORD_PAGE_HDR **buffer, bool allow_errors,
> +			 bool ignore_usa_error, bool *usa_error)

Allow_errors does nothing. I also think that no need for
ignore_usa_error. We can just check usa_error if we need
it. We just never raise return error for usa_error. And
then caller can decide if want's to use it. 

> +{
> +	int err = 0;
> +	u32 page_idx = vbo >> log->page_bits;
> +	u32 page_off = vbo & log->page_mask;
> +	u32 bytes = log->page_size - page_off;
> +	void *to_free = NULL;
> +	u32 page_vbo = page_idx << log->page_bits;
> +	struct RECORD_PAGE_HDR *page_buf;
> +	struct ntfs_inode *ni = log->ni;
> +	bool bBAAD;
> +
> +	if (vbo >= log->l_size)
> +		return -EINVAL;
> +
> +	if (!*buffer) {
> +		to_free = ntfs_alloc(bytes, 0);
> +		if (!to_free)
> +			return -ENOMEM;
> +		*buffer = to_free;
> +	}
> +
> +	page_buf = page_off ? log->one_page_buf : *buffer;
> +
> +	err = ntfs_read_run_nb(ni->mi.sbi, &ni->file.run, page_vbo, page_buf,
> +			       log->page_size, NULL);
> +	if (err)
> +		goto out;
> +
> +	if (page_buf->rhdr.sign != NTFS_FFFF_SIGNATURE)
> +		ntfs_fix_post_read(&page_buf->rhdr, PAGE_SIZE, false);
> +
> +	if (page_buf != *buffer)
> +		memcpy(*buffer, Add2Ptr(page_buf, page_off), bytes);
> +
> +	bBAAD = page_buf->rhdr.sign == NTFS_BAAD_SIGNATURE;
> +
> +	/* Check that the update sequence array for this page is valid */
> +	if (bBAAD) {
> +		/* If we don't allow errors, raise an error status */
> +		if (!ignore_usa_error) {
> +			err = -EINVAL;
> +			goto out;
> +		}
> +	}
> +
> +	if (usa_error)
> +		*usa_error = bBAAD;
> +

So here we can just
	delete if(bBAAD)
and use
	if (usa_error)
		*usa_error = page_buf->rhdr.sign == NTFS_BAAD_SIGNATURE;

> +out:
> +	if (err && to_free) {
> +		ntfs_free(to_free);
> +		*buffer = NULL;
> +	}
> +
> +	return err;
> +}

> +/*
> + * last_log_lsn
> + *
> + * This routine walks through the log pages for a file, searching for the
> + * last log page written to the file
> + */
> +static int last_log_lsn(struct ntfs_log *log)
> +{

> +	struct RECORD_PAGE_HDR *first_tail = NULL;
> +	struct RECORD_PAGE_HDR *second_tail = NULL;

> +next_tail:
> +	/* Read second tail page (at pos 3/0x12000) */
> +	if (read_log_page(log, second_off, &second_tail, true, true,
> +			  &usa_error) ||
> +	    usa_error || second_tail->rhdr.sign != NTFS_RCRD_SIGNATURE) {
> +		ntfs_free(second_tail);
> +		second_tail = NULL;
> +		second_file_off = 0;
> +		lsn2 = 0;
> +	} else {
> +		second_file_off = hdr_file_off(log, second_tail);
> +		lsn2 = le64_to_cpu(second_tail->record_hdr.last_end_lsn);
> +	}

What will happend if we get -ENOMEM from read_log_page(). Log page
might still be valid we will just ignore it. This doesn't sound 
right. 

This same thing happens many place with read_log_page().

> +
> +	/* Read first tail page (at pos 2/0x2000 ) */
> +	if (read_log_page(log, final_off, &first_tail, true, true,
> +			  &usa_error) ||
> +	    usa_error || first_tail->rhdr.sign != NTFS_RCRD_SIGNATURE) {
> +		ntfs_free(first_tail);
> +		first_tail = NULL;
> +		first_file_off = 0;
> +		lsn1 = 0;
> +	} else {
> +		first_file_off = hdr_file_off(log, first_tail);
> +		lsn1 = le64_to_cpu(first_tail->record_hdr.last_end_lsn);
> +	}

> +	if (first_tail && second_tail) {
> +		if (best_lsn1 > best_lsn2) {
> +			best_lsn = best_lsn1;
> +			best_page = first_tail;
> +			this_off = first_file_off;
> +		} else {
> +			best_lsn = best_lsn2;
> +			best_page = second_tail;
> +			this_off = second_file_off;
> +		}
> +	} else if (first_tail) {
> +		best_lsn = best_lsn1;
> +		best_page = first_tail;
> +		this_off = first_file_off;
> +	} else if (second_tail) {
> +		best_lsn = best_lsn2;
> +		best_page = second_tail;
> +		this_off = second_file_off;
> +	} else {
> +		goto free_and_tail_read;

Can't we just use straight tail_read here? 

> +	}
> +
> +	best_page_pos = le16_to_cpu(best_page->page_pos);

> +	} else {
> +free_and_tail_read:
> +		ntfs_free(first_tail);
> +		ntfs_free(second_tail);
> +		goto tail_read;
> +	}
> +
> +	ntfs_free(first_tail_prev);
> +	first_tail_prev = first_tail;
> +	final_off_prev = first_file_off;
> +	first_tail = NULL;
> +
> +	ntfs_free(second_tail_prev);
> +	second_tail_prev = second_tail;
> +	second_off_prev = second_file_off;
> +	second_tail = NULL;
> +
> +	final_off += log->page_size;
> +	second_off += log->page_size;
> +
> +	if (tails < 0x10)
> +		goto next_tail;
> +tail_read:
> +	first_tail = first_tail_prev;
> +	final_off = final_off_prev;

> +int log_replay(struct ntfs_inode *ni)
> +{

> +	/* Now we need to walk through looking for the last lsn */
> +	err = last_log_lsn(log);
> +	if (err == -EROFS)
> +		goto out;
> +

No need for this if below is whole err check.

> +	if (err)
> +		goto out;
 


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
