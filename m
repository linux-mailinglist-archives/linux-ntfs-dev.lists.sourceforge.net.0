Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 996C314730E
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jan 2020 22:20:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1iuju8-0003kj-2m; Thu, 23 Jan 2020 21:20:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <axboe@kernel.dk>) id 1iuiqN-0003JD-C3
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jan 2020 20:12:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVVJiVofuq6jqT8tysqA5aMKgAsODtyC1uhbEikyAQ8=; b=LYe1L/C1Q4Fj6f8zidp2n8H43B
 qvRkdGrh34h0RIOcEzN/c/l5UbSD4SjEBcCy9xV1czEsyQApNmsNfQR+7m98WRT88hKVgQ4Fuknq5
 uGSG83cRrxvoqylPrBkbrwdfvI/qcjKECwauSzdpvE6TGncXO/1/XfUius4Hk777jBsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hVVJiVofuq6jqT8tysqA5aMKgAsODtyC1uhbEikyAQ8=; b=g07G3LCa1VHFFCU/h1kvX3TfIq
 Uap5qDWv2AutsUVN3Wxs17anYYZbgWqbhNHoCIJwRs7HZmTbqmvHo/mLaxmmDcHNM3KQUoeR03j0A
 tv42HR/GA88P0gaCea+EdCOBxF47ZraiOmi/hGyQLH7Dzl2WqcZvnPERS4xqijNm8eHU=;
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iuiqK-00GB6P-MX
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jan 2020 20:12:47 +0000
Received: by mail-il1-f194.google.com with SMTP id t2so3033190ilq.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 23 Jan 2020 12:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hVVJiVofuq6jqT8tysqA5aMKgAsODtyC1uhbEikyAQ8=;
 b=qrnuqwTbuWLKb92ONC2CXaYTQWIYfF8DxdwKhjeaVXX6GAs7puvD94VO3ij/4IcOsk
 QliauhYOoWF4e4na4cD1Pve2IFiHHDPMc/r9o7NLl9AuTRiu7gJ4AKJYo4OsLW5LRV4F
 1IiT1yR8dcgGaLN4wfGR6Kn4vky0fGbPGMXf9Soc5VsFaWCemq0stfHFjiPn/U5KSQLS
 +wS24wFzJm21kkj+wSckN6tilYc98lc4PfKRh/EXA5g9/Hte1mxFZuaF6rBqGqIUPnpX
 aFnQaE/NxMZna4tB6oAf7PkQ4EVqDvyyj6g9Sa59qLEG+NaXcBS9/cokO/DAU/GA27EH
 Im7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hVVJiVofuq6jqT8tysqA5aMKgAsODtyC1uhbEikyAQ8=;
 b=hjrKi1E4FUxKz8LC1yjN91oBlDbNS8v/3fpu23q+1P8ynqkqoLI4nakt5cwfRh1e+L
 75OhfKCNlnoYSBP3oCLubhHnhbsxFiunEa1qwxacv59Wk5mL3+cJf4qtwSoet27PmxGa
 bJsV7QIcVLho8ulxSNa1XBFfYq6ItnH75lbH16hPOp6Oj2jy1jRynZ6s/hOnHBskOnPy
 D9BpDHrLW5OYtzl8X3ObiRV95Fhao15xv0pf6JsgIdBeT1L7UZUVoHUBNMmbAEyvN4SH
 7jliOg0AMnA+m5yEoIdRhEd7DfzM0d3klIcUU8iEU1AjRqUX6PbjHcFSDxdY3lphAs+1
 gWVQ==
X-Gm-Message-State: APjAAAXk+0TLVPPbXYc2G0BEcLbHmXMDctnLJQPXfcQw/oypO0Bmio2m
 IN8uN4HXy7lXr8CCsaiekS6+JeXKrjXTZQ==
X-Google-Smtp-Source: APXvYqxyUlS85/lEfnr4wwXVf6rmaypUzEXpVAItiquKi8D7EUEX0nSWXUwQiG3fuTzpGObtNiSJDQ==
X-Received: by 2002:a63:1210:: with SMTP id h16mr139816pgl.171.1579804915805; 
 Thu, 23 Jan 2020 10:41:55 -0800 (PST)
Received: from ?IPv6:2600:380:4562:fb25:b980:6664:b71f:35b5?
 ([2600:380:4562:fb25:b980:6664:b71f:35b5])
 by smtp.gmail.com with ESMTPSA id s26sm3520454pfe.166.2020.01.23.10.41.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 10:41:55 -0800 (PST)
To: Colin King <colin.king@canonical.com>, Richard Russon <ldm@flatcap.org>,
 linux-ntfs-dev@lists.sourceforge.net, linux-block@vger.kernel.org
References: <20200123002921.2832716-1-colin.king@canonical.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <0d383b8a-b2c5-7669-f989-4239531d3fc0@kernel.dk>
Date: Thu, 23 Jan 2020 11:41:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200123002921.2832716-1-colin.king@canonical.com>
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iuiqK-00GB6P-MX
X-Mailman-Approved-At: Thu, 23 Jan 2020 21:20:42 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] partitions/ldm: fix spelling mistake
 "to" -> "too"
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 1/22/20 5:29 PM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a ldm_error message. Fix it.

Applied, thanks.

-- 
Jens Axboe



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
