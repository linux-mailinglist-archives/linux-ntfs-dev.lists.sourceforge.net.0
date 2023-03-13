Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 819036B9415
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xD-0001TK-Hi;
	Tue, 14 Mar 2023 12:40:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jaharkes@andrew.cmu.edu>) id 1pbiZW-0001Bf-30
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 13 Mar 2023 13:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QHO4CXHOhldd2DiUrl/ejsH2q5KI1USw1eGFcu9b0ig=; b=CqXQ3wJq2LoZDaCMAKJWX9jYb/
 DBt1jIzkWWxOSLoGbyJSDb8WTjQO/l+J4QWfDk8PWYwiY/s4qDgjvuqEC0lpkd4tnwvDph7J8dy3r
 7pLjXaByT35i+WWmTfQreU7aTIurrZNNVNOUkt+wFyEtmk4M1AW3jRDWpxeQMFvToaKs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QHO4CXHOhldd2DiUrl/ejsH2q5KI1USw1eGFcu9b0ig=; b=ZNHPGqjqfSDszPXVyHSDnSm7zJ
 fzoGa03Wi2V2bHGot4MIs0JJr3ILarSOMigXM8oLCpT+HknlPyPQwD4msgTEWPwzypLtkm24X4/lv
 UYZ+6pPuZ+2irL5Z7RsYtnGKJd8SNqD2u6zQHujBLAL7i32voyZfQoN27e5YBu6dVWjY=;
Received: from mail-vs1-f50.google.com ([209.85.217.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbiZV-006XBU-Ih for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 13 Mar 2023 13:50:43 +0000
Received: by mail-vs1-f50.google.com with SMTP id a3so11097523vsi.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 13 Mar 2023 06:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.cmu.edu; s=google-2021; t=1678715435;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QHO4CXHOhldd2DiUrl/ejsH2q5KI1USw1eGFcu9b0ig=;
 b=RBM8aRAfRElM5ICyeIQRrbE56iAzgzf1fwm5dt35dF/ZDP9B7jR1prhxxf7FqOgpyk
 wAMSRbtcRLVqXLongvnovRN35iAlPgM21c/5YBLV/eY7EQf87StTAaIwRNGoAOhOvNmk
 AL9wUacFkbM6nSfZdATNLJEqP1XiOucMJrxuaCoeGm2JrH7IDeeKFe+vyCIle5kqPhKy
 a/G8pMxmYN9RtOywY1BBTTRufV15IdMiU9GdomRK1yBCPHDyduYRvrxaWMXf4AEF9xjN
 I5pSoZ85/DOnxik9MLiDPwnwcdTGZSFAo10OZgjUjrnNYjMM6+KYjVEsgPp8WyQBUZip
 N0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678715435;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QHO4CXHOhldd2DiUrl/ejsH2q5KI1USw1eGFcu9b0ig=;
 b=BRWpJrSZDbB2o14Dk01cbZXTnFlifgyh/7wHeBN0/eHvGZ2BpWYzLaaEE5jPJbPyik
 +aHnzYz2NkD6iBZYVDemLIl1FQ2qwrjOYkuo766InEKjqSevjeJj7VOiQI5Y46IiLVor
 dxmx9ukwtOVBVsOYOSFXmHQ+YBpCRfcSsSEFDHCWssxHfuKgjfKieanLdZqXXOirHG84
 2ibUHdcNlfuXeudtOUy0aRCSEg6dxfmtcuavoNVswxon70m76HAxYMEylQva5b+Yvm86
 3X9voBRcOSzk1/eqG/XchLahJHnCxRFP/6hZNI0SUe3S8LJpPUTZysCJI/99PN6GNiMd
 i0GA==
X-Gm-Message-State: AO0yUKUMJAf0KXdKhXZ9INZmF4SFgTciIIYUUcremulNFUossziBzF6n
 lSjZdEqxNlSXE4SY89rfLyjR3ioeUWmSrSLQ2shw0g==
X-Google-Smtp-Source: AK7set+qWcXGYSBmUrPiyqZz3kW+BzfzdfMTNJfcQQkggbUK3AbU2ZrHzChSpTh7a62BChLAPG+PxA==
X-Received: by 2002:a05:622a:1045:b0:3bd:1a07:2063 with SMTP id
 f5-20020a05622a104500b003bd1a072063mr58524181qte.45.1678713671251; 
 Mon, 13 Mar 2023 06:21:11 -0700 (PDT)
Received: from cs.cmu.edu (tunnel29655-pt.tunnel.tserv13.ash1.ipv6.he.net.
 [2001:470:7:582::2]) by smtp.gmail.com with ESMTPSA id
 y1-20020ac87081000000b003b860983973sm5426091qto.60.2023.03.13.06.21.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Mar 2023 06:21:10 -0700 (PDT)
Date: Mon, 13 Mar 2023 09:21:08 -0400
From: Jan Harkes <jaharkes@cs.cmu.edu>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20230313132108.5xbzbxz62jjzecat@cs.cmu.edu>
Mail-Followup-To: Luis Chamberlain <mcgrof@kernel.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, jack@suse.com, anton@tuxera.com,
 linux-ntfs-dev@lists.sourceforge.net, ebiederm@xmission.com,
 keescook@chromium.org, yzaikin@google.com, j.granados@samsung.com,
 patches@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230310231206.3952808-1-mcgrof@kernel.org>
 <20230310231206.3952808-5-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230310231206.3952808-5-mcgrof@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Looks good to me, nice little cleanup. Jan On Fri, Mar 10,
 2023 at 07:04:07PM -0500, Luis Chamberlain wrote: > There is no need to declare
 an extra tables to just create directory, > this can be easily be done with
 a prefix path with register_ [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pbiZV-006XBU-Ih
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 4/5] coda: simplify one-level sysctl
 registration for coda_table
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
Cc: j.granados@samsung.com, keescook@chromium.org,
 linux-ntfs-dev@lists.sourceforge.net, patches@lists.linux.dev,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 ebiederm@xmission.com, jack@suse.com, linux-fsdevel@vger.kernel.org,
 yzaikin@google.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Looks good to me, nice little cleanup.

Jan

On Fri, Mar 10, 2023 at 07:04:07PM -0500, Luis Chamberlain wrote:
> There is no need to declare an extra tables to just create directory,
> this can be easily be done with a prefix path with register_sysctl().
> 
> Simplify this registration.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>

Acked-by: Jan Harkes <jaharkes@cs.cmu.edu

> ---
>  fs/coda/sysctl.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/fs/coda/sysctl.c b/fs/coda/sysctl.c
> index fda3b702b1c5..a247c14aaab7 100644
> --- a/fs/coda/sysctl.c
> +++ b/fs/coda/sysctl.c
> @@ -39,19 +39,10 @@ static struct ctl_table coda_table[] = {
>  	{}
>  };
>  
> -static struct ctl_table fs_table[] = {
> -	{
> -		.procname	= "coda",
> -		.mode		= 0555,
> -		.child		= coda_table
> -	},
> -	{}
> -};
> -
>  void coda_sysctl_init(void)
>  {
>  	if ( !fs_table_header )
> -		fs_table_header = register_sysctl_table(fs_table);
> +		fs_table_header = register_sysctl("coda", coda_table);
>  }
>  
>  void coda_sysctl_clean(void)
> -- 
> 2.39.1
> 
> 


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
