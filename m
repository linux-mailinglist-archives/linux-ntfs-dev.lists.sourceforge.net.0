Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2B84FA79E
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Apr 2022 14:21:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ndA5f-0001Lc-Uk; Sat, 09 Apr 2022 12:21:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <trix@redhat.com>) id 1nd9n2-0002gz-5h
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 12:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vtwSo96nr254x9OEzEhUA59HmJMtNhlCZM5GqdzW6Ug=; b=nRwxZ0P4w4xByKBNhAmk+qfJ03
 ROd+2LejSEI82hcRwOtrh3PwJUakKpzPWV0mbDZnFOKBD5it/qqEbdoGMSshbvyxGqbGCmWdDvxg9
 yb05qwTGtYEffzSV3n/lB9zOnDiOEHWO+caS2Nr1+ykGeNSAdJVyPr5KjtZb1cwfIMKM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vtwSo96nr254x9OEzEhUA59HmJMtNhlCZM5GqdzW6Ug=; b=ZazQZ2sk4A2apCgZ5J+UBpFNJX
 aCkWnlZmJHlEKLunZTyCIjRLpHpPkDYuZGlRUcPaYGfZr1ieujBqPYXMqL+hUIJ0UvRL59eRW8nhZ
 qy11IMto6sgzNNyH+Ag3+k5uXZYjP5l8zccmf3RqxHCJPLzTs+QeCBrEkUMGdzGw5aMI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nd9mr-00AljD-Q6
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 12:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649505707;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vtwSo96nr254x9OEzEhUA59HmJMtNhlCZM5GqdzW6Ug=;
 b=MzHWXFK6LGPKBvTzFcW2iTq6dupMJW/AoXc/6MjxVxHA3h/H9FOuyaU8fkeTecoAA9iNTR
 CKBia00XOy9AKLz45QwVBHeWW/5+JOigu23m5j0mYgVu1hVdRl9H4YjND1vug5tvAs4U46
 M9jvEzfwA2wA9HrFp8FlwxzzjMalShI=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-513-GYi071FWNPawOAIZsq0qbg-1; Sat, 09 Apr 2022 08:01:46 -0400
X-MC-Unique: GYi071FWNPawOAIZsq0qbg-1
Received: by mail-qt1-f199.google.com with SMTP id
 z18-20020ac84552000000b002e201c79cd4so9709314qtn.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 09 Apr 2022 05:01:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=vtwSo96nr254x9OEzEhUA59HmJMtNhlCZM5GqdzW6Ug=;
 b=SpaO4NldHmfEnvd8ddWVHCLtnRZx5ZR5DPLrQ1LJvSjvkHf1iGNkJHZmTG1MsU3+Vl
 eOlAHrE3yA+KClKaWPvqDXlvUr7dtqZF6JoaouKe7ITcnvqifBp9ffriSJudcORzPLoc
 ZUAOq5eUI7/kqnWD5YgWEZdNmt6lld7Mqpibf0IF9QJIq1DOgroU7zeedAbdzA1lfEpO
 9/8G1ARmpKAfTqKF34TUyDOiSULVaghUEa86j0rjcl2pMvjoR95/CZtfnWbTMiORfxH4
 Bwvy71zDXKhkJw0gFClC3lVttPwNOg8jhpHfM8aRZ7gfCvEo4Cf0wIHAG8BSHLXiIIh3
 4wpw==
X-Gm-Message-State: AOAM530u6Eyg5ZC+W12kgUwUoLruUyVL1ssQ6BTd0wlvqa8aG9/GsdL1
 KqFmjdqt/gAXkVxTeEkshRk0SmrH3LZKLrL0Eytq2J8/QXbnPhB7JZChju0VtV4NAHr4JrDTLx7
 d/EyrzCx5IA43CR3knaxFQzPsTA4GEpuNYGk=
X-Received: by 2002:ac8:5784:0:b0:2e1:ed90:fc65 with SMTP id
 v4-20020ac85784000000b002e1ed90fc65mr19448433qta.232.1649505704886; 
 Sat, 09 Apr 2022 05:01:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxT86i97UUtFTjAgdxxXM0MqeFpU4TbMS9Jr3qCPh4WYJcB26wrKSAbGWHP5MMlTc/GhLGrcw==
X-Received: by 2002:ac8:5784:0:b0:2e1:ed90:fc65 with SMTP id
 v4-20020ac85784000000b002e1ed90fc65mr19448405qta.232.1649505704579; 
 Sat, 09 Apr 2022 05:01:44 -0700 (PDT)
Received: from localhost.localdomain (024-205-208-113.res.spectrum.com.
 [24.205.208.113]) by smtp.gmail.com with ESMTPSA id
 z202-20020a3765d3000000b0069a0e1416a5sm4017484qkb.68.2022.04.09.05.01.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Apr 2022 05:01:44 -0700 (PDT)
To: Michal Orzel <michalorzel.eng@gmail.com>, Jens Axboe <axboe@kernel.dk>,
 "Richard Russon (FlatCap)" <ldm@flatcap.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20220409101933.207157-1-michalorzel.eng@gmail.com>
 <20220409101933.207157-2-michalorzel.eng@gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <a56d1184-d399-d5f8-765f-5a4f35dacd5e@redhat.com>
Date: Sat, 9 Apr 2022 05:01:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220409101933.207157-2-michalorzel.eng@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.7 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/9/22 3:19 AM, Michal Orzel wrote: > Get rid of redundant
 assignments which end up in values not being > read either because they are
 overwritten or the function ends. This log is the same as your last patch.
 Content analysis details:   (-3.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.8 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nd9mr-00AljD-Q6
X-Mailman-Approved-At: Sat, 09 Apr 2022 12:21:14 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] block: Remove redundant assignments
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
Cc: linux-block@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


On 4/9/22 3:19 AM, Michal Orzel wrote:
> Get rid of redundant assignments which end up in values not being
> read either because they are overwritten or the function ends.

This log is the same as your last patch.

Instead of a general statement on deadstores, a more specific

analysis of the setting being removed would be helpful.

This will mean splitting the patch to match the analysis.

Tom

>
> Reported by clang-tidy [deadcode.DeadStores]
>
> Signed-off-by: Michal Orzel <michalorzel.eng@gmail.com>
> ---
>   block/badblocks.c        |  2 --
>   block/blk-map.c          |  5 ++---
>   block/partitions/acorn.c |  4 ++--
>   block/partitions/atari.c |  1 -
>   block/partitions/ldm.c   | 15 +++------------
>   5 files changed, 7 insertions(+), 20 deletions(-)
>
> diff --git a/block/badblocks.c b/block/badblocks.c
> index d39056630d9c..3afb550c0f7b 100644
> --- a/block/badblocks.c
> +++ b/block/badblocks.c
> @@ -65,7 +65,6 @@ int badblocks_check(struct badblocks *bb, sector_t s, int sectors,
>   		s >>= bb->shift;
>   		target += (1<<bb->shift) - 1;
>   		target >>= bb->shift;
> -		sectors = target - s;
>   	}
>   	/* 'target' is now the first block after the bad range */
>   
> @@ -345,7 +344,6 @@ int badblocks_clear(struct badblocks *bb, sector_t s, int sectors)
>   		s += (1<<bb->shift) - 1;
>   		s >>= bb->shift;
>   		target >>= bb->shift;
> -		sectors = target - s;
>   	}
>   
>   	write_seqlock_irq(&bb->lock);
> diff --git a/block/blk-map.c b/block/blk-map.c
> index c7f71d83eff1..fa72e63e18c2 100644
> --- a/block/blk-map.c
> +++ b/block/blk-map.c
> @@ -260,10 +260,9 @@ static int bio_map_user_iov(struct request *rq, struct iov_iter *iter,
>   
>   		npages = DIV_ROUND_UP(offs + bytes, PAGE_SIZE);
>   
> -		if (unlikely(offs & queue_dma_alignment(rq->q))) {
> -			ret = -EINVAL;
> +		if (unlikely(offs & queue_dma_alignment(rq->q)))
>   			j = 0;
> -		} else {
> +		else {
>   			for (j = 0; j < npages; j++) {
>   				struct page *page = pages[j];
>   				unsigned int n = PAGE_SIZE - offs;
> diff --git a/block/partitions/acorn.c b/block/partitions/acorn.c
> index 2c381c694c57..d2fc122d7426 100644
> --- a/block/partitions/acorn.c
> +++ b/block/partitions/acorn.c
> @@ -282,13 +282,13 @@ int adfspart_check_ADFS(struct parsed_partitions *state)
>   #ifdef CONFIG_ACORN_PARTITION_RISCIX
>   		case PARTITION_RISCIX_SCSI:
>   		case PARTITION_RISCIX_MFM:
> -			slot = riscix_partition(state, start_sect, slot,
> +			riscix_partition(state, start_sect, slot,
>   						nr_sects);
>   			break;
>   #endif
>   
>   		case PARTITION_LINUX:
> -			slot = linux_partition(state, start_sect, slot,
> +			linux_partition(state, start_sect, slot,
>   					       nr_sects);
>   			break;
>   		}
> diff --git a/block/partitions/atari.c b/block/partitions/atari.c
> index da5994175416..9655c728262a 100644
> --- a/block/partitions/atari.c
> +++ b/block/partitions/atari.c
> @@ -140,7 +140,6 @@ int atari_partition(struct parsed_partitions *state)
>   				/* accept only GEM,BGM,RAW,LNX,SWP partitions */
>   				if (!((pi->flg & 1) && OK_id(pi->id)))
>   					continue;
> -				part_fmt = 2;
>   				put_partition (state, slot,
>   						be32_to_cpu(pi->st),
>   						be32_to_cpu(pi->siz));
> diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
> index 27f6c7d9c776..38e58960ae03 100644
> --- a/block/partitions/ldm.c
> +++ b/block/partitions/ldm.c
> @@ -736,7 +736,6 @@ static bool ldm_parse_cmp3 (const u8 *buffer, int buflen, struct vblk *vb)
>   		len = r_cols;
>   	} else {
>   		r_stripe = 0;
> -		r_cols   = 0;
>   		len = r_parent;
>   	}
>   	if (len < 0)
> @@ -783,11 +782,8 @@ static int ldm_parse_dgr3 (const u8 *buffer, int buflen, struct vblk *vb)
>   		r_id1 = ldm_relative (buffer, buflen, 0x24, r_diskid);
>   		r_id2 = ldm_relative (buffer, buflen, 0x24, r_id1);
>   		len = r_id2;
> -	} else {
> -		r_id1 = 0;
> -		r_id2 = 0;
> +	} else
>   		len = r_diskid;
> -	}
>   	if (len < 0)
>   		return false;
>   
> @@ -826,11 +822,8 @@ static bool ldm_parse_dgr4 (const u8 *buffer, int buflen, struct vblk *vb)
>   		r_id1 = ldm_relative (buffer, buflen, 0x44, r_name);
>   		r_id2 = ldm_relative (buffer, buflen, 0x44, r_id1);
>   		len = r_id2;
> -	} else {
> -		r_id1 = 0;
> -		r_id2 = 0;
> +	} else
>   		len = r_name;
> -	}
>   	if (len < 0)
>   		return false;
>   
> @@ -963,10 +956,8 @@ static bool ldm_parse_prt3(const u8 *buffer, int buflen, struct vblk *vb)
>   			return false;
>   		}
>   		len = r_index;
> -	} else {
> -		r_index = 0;
> +	} else
>   		len = r_diskid;
> -	}
>   	if (len < 0) {
>   		ldm_error("len %d < 0", len);
>   		return false;



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
