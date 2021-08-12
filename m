Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 674DE3EAD22
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 13 Aug 2021 00:27:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mEJB2-0004h1-Mf; Thu, 12 Aug 2021 22:27:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <axboe@kernel.dk>) id 1mEEpm-0002Mz-V4
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 12 Aug 2021 17:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ny72dvyv02gs52BODIXbqFAvUcs0ppK7k7vDL5+fmKc=; b=QKRHIhl46JXrm6/SAgxLc1h9h7
 5WI/z+dAzhadZMoS+1pecoUSZbjt+r96FQmGXafNmM/WVtPcREDA8Pmyyj4TMMqYoN9MTp1CFCQ5Q
 w2NrczMBqy0N1icBhp3bvcQxlCfZn4bUB/w6Lvqf3yjBnjeETy/12J5ed9D1vQva0Pno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ny72dvyv02gs52BODIXbqFAvUcs0ppK7k7vDL5+fmKc=; b=HuroCH9F9q2lpxAUGpxGgY70Ns
 SoNkcazAA83fRBVTNGZNV+cE+BrCp5Za3EiUBkzwJD2YMsZfLDH2qTySIxyxTta8mPyoKnDnaZJMk
 To6KIBi+xJ93JAsUnUYTskr5k1gSx0Pm4fHa7gNzlzt4bwkqPncltJH/wPwGoaeo9REY=;
Received: from mail-oo1-f43.google.com ([209.85.161.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEEpk-0005eO-9T
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 12 Aug 2021 17:49:38 +0000
Received: by mail-oo1-f43.google.com with SMTP id
 y14-20020a4acb8e0000b029028595df5518so2038957ooq.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 12 Aug 2021 10:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ny72dvyv02gs52BODIXbqFAvUcs0ppK7k7vDL5+fmKc=;
 b=lGNAjICNx3vvf1yMVz0aI7CQek+tBGtccOO5YclAlos8J8uO2FuaOnGuBKQnorAHaM
 Z19xWfK6P8799ph/A4dQ/1oW0106jB/+t7Vq6XAD8sB7LJ+fj3SfBmKcuPrFvpyBTSUo
 Nqsjf3+7Y9zK+gv4drQuEtiF187GIPNNYKp159ix//sRalbYXuV3IXJImDWQCD5CO8Cu
 q/Ic5DjFctOOkRxYaQ6JmxfxUiG24ILQJ/DuI72ipRbbkapa0s2JE6MouOHtE4G6XgJu
 CGZ81hgsaq7ljm30bG7/NTpV5l9SqjNuyhXW9QVE5stkLv+AJ589w/oT9q+W0yb1jnwW
 Qadw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ny72dvyv02gs52BODIXbqFAvUcs0ppK7k7vDL5+fmKc=;
 b=b9KLP1gfAQ02VGqUtjnMAyrYwNQ2+eQaqwJ21ChHvl4+p6yQsaj1N68EuJzOyEz98w
 3G+mHvepIgIQXGFOQpcPi9w0ZduBfn/8lO+5DfVFwaNctzjGkv/nnLyy33x5+J9K2t5x
 ZkZWW/ngBJbt7OEqWeME9QXAo3tqptVNA7n2xfLGKYyAaZig2rShJ2iQdx5br3NLrejR
 +boXJyO0d/t4LI2vSap88oVPHe3RBxirVkN8hg/k8j/LMoHDVZEzcbmC2gnNjTQVpjqe
 J6xZ7OimxTPp2enqgZxMI+IGodztBSsv1N3hhU2P+po9VgQOTf0JCfyvdRmnKaqFdA0t
 HOxg==
X-Gm-Message-State: AOAM531Kiuao2o7lJYIG0A75lrcov0eKtn/zhdUbmXLmjqTz9X6940e7
 NRGiSDKHBNAzFo5w5pNQkHnT0skN/1rYu97I
X-Google-Smtp-Source: ABdhPJzLc/kCLGijT6QbBhtFUlVP/yIuX/FFPTJY0ez8pAiOiuUy+sOQkVIfCU1WEJ3z6VKbgyW8eg==
X-Received: by 2002:a9d:175:: with SMTP id 108mr4326252otu.366.1628787086179; 
 Thu, 12 Aug 2021 09:51:26 -0700 (PDT)
Received: from [192.168.1.30] ([207.135.234.126])
 by smtp.gmail.com with ESMTPSA id y33sm709603ota.66.2021.08.12.09.51.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Aug 2021 09:51:25 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>
References: <20210810154512.1809898-1-hch@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <9b8b6257-7bb6-9167-483e-153ab082d80f@kernel.dk>
Date: Thu, 12 Aug 2021 10:51:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210810154512.1809898-1-hch@lst.de>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mEEpk-0005eO-9T
X-Mailman-Approved-At: Thu, 12 Aug 2021 22:27:51 +0000
Subject: Re: [Linux-NTFS-Dev] pass a gendisk instead of block_device in the
 partitioning code
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
Cc: linux-s390@vger.kernel.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Davidlohr Bueso <dave@stgolabs.net>, linux-ntfs-dev@lists.sourceforge.net,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>, linux-block@vger.kernel.org,
 linux-efi@vger.kernel.org, Stefan Haberland <sth@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 8/10/21 9:45 AM, Christoph Hellwig wrote:
> Hi Jens,
> 
> this series passes the gendisk instead of the block_device when operating
> on the whole device in the partition code.

Applied, thanks.

-- 
Jens Axboe



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
