Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D523B5B16
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 28 Jun 2021 11:17:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lxnOk-0008Pe-VE; Mon, 28 Jun 2021 09:17:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <desmondcheongzx@gmail.com>) id 1lxhHk-0004OZ-Sd
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 28 Jun 2021 02:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/ZglMk5xEV7kqPnzl923s5w51WPieL3sLq9YmzBcALE=; b=hJCZc2G5JNaVd3i9DyGcA0ggxk
 Cjqg+oPX/Zz2No1VEQDydxFLk6B+trYvoUVIp9TmlrVNU9eqGD4flWzPTzjSWIZE5xC+0ALZ2yiRN
 T6BeNQBApEDG5mSQ5H561WXgu1cZlQCX3i9hAx0j89dL49qz73/Jejcrg+wSX4sYMN7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/ZglMk5xEV7kqPnzl923s5w51WPieL3sLq9YmzBcALE=; b=O4G0sNj8EuMZiT8Cgi2j/q/uU4
 1UDhcoVZGVQ4WPnz8LAUdirqWUA9TvziejvxD0bwjAufSbxieIgZFa+PqsD0GZv2BZJJW0RUyWuPg
 6xBQKvdaafl5wFEl+TG77SJR/Gu/50rwI5Snxan6l3FR+a7+CiJI0KjCAff1LgdXkk9U=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lxhHb-00063Z-AU
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 28 Jun 2021 02:46:09 +0000
Received: by mail-pf1-f171.google.com with SMTP id a127so12853286pfa.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 27 Jun 2021 19:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/ZglMk5xEV7kqPnzl923s5w51WPieL3sLq9YmzBcALE=;
 b=nUlOpiZdsURZNX3nXwrPK+lpBucURq3MdKAQtTyUnwKnkg7GvNT0HpVWB7Npvqk0lc
 J2yelxl+xiSaTC4As+derq954XeTRGPPldSVUofYHA3gs4bIdr3vQy+EomVFHj2kDaIh
 i01MYeGTLmrGifrVCvEetNzpWtfrEjRTYByTWGhhw9BA5LU3f6BagH91yjHD8+lV35in
 7Q2krdV5Dre6o1fpocAdU1Az4ghMdA3aghNV9uau6s2kR8QO2gaZX+q7px9+SNDp46uJ
 tBGXas+0+fckhDeVeWzEgRzwuDu3msk/F6LzKeSp+1Ct825R41NfphxwazxJCYTSpnHg
 3TmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/ZglMk5xEV7kqPnzl923s5w51WPieL3sLq9YmzBcALE=;
 b=iiW61POA5fqZFw9IE3G5kpJXIpuFqNCvpCiuaXLziCSsiQ6r0EbrLh0H1g2GZV073N
 2ARVD6ITuVZBTeTVfE8VGb6OPJrEiBEaHVSWVGmr48XjO3/YFXbxaj0mev+p1RqCFKF7
 X2sZBhvwor11FfnWeEGX/CwFxZXQRz6iBNzUqCPXybOBPM9R0q0wYo6WOSxfnsoOcDp0
 cL6BS8DJn3uCrXv7D/zwVRWx0WkV5tRkQl7vjcDiM4vKY6g4fdTk97mfGJH071OOmAze
 Njyw5BppGJDUJ3NRVADbZsfWty6AklSL42Qakc0Pc2uCgZR8vHCADsn3EPO3MTcCUFL8
 ztUg==
X-Gm-Message-State: AOAM53110WiMBHvvyVl3vh4Mzfruy5Q+51hawWwUHKFs1OU2bgHf2Pkg
 ZFmryR5qRct7HlSahB1i9fE=
X-Google-Smtp-Source: ABdhPJyox2quKoYGLxF1JyW4tUbI8GVPUip1KPU4wHP8CJqx1CNd54QO7ZciKVkiyP1c17eJJ7/BWQ==
X-Received: by 2002:a63:1841:: with SMTP id 1mr11515809pgy.377.1624848355530; 
 Sun, 27 Jun 2021 19:45:55 -0700 (PDT)
Received: from [192.168.1.237] ([118.200.190.93])
 by smtp.gmail.com with ESMTPSA id n127sm1472443pga.58.2021.06.27.19.45.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Jun 2021 19:45:54 -0700 (PDT)
To: anton@tuxera.com
References: <20210614050540.289494-1-desmondcheongzx@gmail.com>
From: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <ea63e5af-6ac4-08fe-4261-904d55392b10@gmail.com>
Date: Mon, 28 Jun 2021 10:45:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210614050540.289494-1-desmondcheongzx@gmail.com>
Content-Language: en-US
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (desmondcheongzx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.8 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lxhHb-00063Z-AU
X-Mailman-Approved-At: Mon, 28 Jun 2021 09:17:45 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: Fix validity check for file name
 attribute
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
Cc: linux-ntfs-dev@lists.sourceforge.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org,
 syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 14/6/21 1:05 pm, Desmond Cheong Zhi Xi wrote:
> When checking the file name attribute, we want to ensure that it fits
> within the bounds of ATTR_RECORD. To do this, we should check
> that (attr record + file name offset + file name length) < (attr
> record + attr record length).
> 
> However, the original check did not include the file name offset in
> the calculation. This means that corrupted on-disk metadata might not
> caught by the incorrect file name check, and lead to an invalid memory
> access.
> 
> An example can be seen in the crash report of a memory corruption
> error found by Syzbot:
> https://syzkaller.appspot.com/bug?id=a1a1e379b225812688566745c3e2f7242bffc246
> 
> Adding the file name offset to the validity check fixes this error and
> passes the Syzbot reproducer test.
> 
> Reported-by: syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com
> Tested-by: syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> ---
>   fs/ntfs/inode.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index f5c058b3192c..4474adb393ca 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -477,7 +477,7 @@ static int ntfs_is_extended_system_file(ntfs_attr_search_ctx *ctx)
>   		}
>   		file_name_attr = (FILE_NAME_ATTR*)((u8*)attr +
>   				le16_to_cpu(attr->data.resident.value_offset));
> -		p2 = (u8*)attr + le32_to_cpu(attr->data.resident.value_length);
> +		p2 = (u8 *)file_name_attr + le32_to_cpu(attr->data.resident.value_length);
>   		if (p2 < (u8*)attr || p2 > p)
>   			goto err_corrupt_attr;
>   		/* This attribute is ok, but is it in the $Extend directory? */
> 

Hi Anton,

Any chance to review this patch?

Best wishes,
Desmond


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
