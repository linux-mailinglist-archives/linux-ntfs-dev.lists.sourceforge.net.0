Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E8E1FFF66
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 Jun 2020 02:42:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jm57I-0008Ap-AR; Fri, 19 Jun 2020 00:42:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <axboe@kernel.dk>) id 1jlwPn-00080q-TL
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Jun 2020 15:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HOJP6wvSVr5cP9VUVwOJUZjUCeQr91p+ALeEGFJ2Uuw=; b=jXJvBbgjfeXIsqeUlBJjq3dgUo
 /WTEFyMIctdXcQA40yfRBS77mIe2Lwfqg/Mr4j/QrKs6pdaItOM53dl8mrxuk+EgMfXed4zxBaeQ6
 jRG77LIA6xy21EvFKheDzNN4+T/BYeRUvq6Lf7bnFaGSqmMmgTebOxwqA9V6yu85urCU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HOJP6wvSVr5cP9VUVwOJUZjUCeQr91p+ALeEGFJ2Uuw=; b=fJe5vtAFXhwyRwpITB6O4yw4mM
 14NdkpOeY5z1lUKoX9zww9GUkB2PvGuq4qN1K2+45cygqOkgOeZ3tVK1vsxk9Gw7KPRBoncFpRCNg
 vZEdNm7IxKyghuKSPn8Y03lpCdTcjM1+Q5tMrLRArr9B++55dOus4SR7A7nHEJGfSZRs=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jlwPk-007sZ7-R8
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Jun 2020 15:25:19 +0000
Received: by mail-oi1-f194.google.com with SMTP id t25so5405131oij.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 18 Jun 2020 08:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=HOJP6wvSVr5cP9VUVwOJUZjUCeQr91p+ALeEGFJ2Uuw=;
 b=VkMZVqIDULx69/93VDiJvXALKl0x3dVQtv37s5iXSF6yNDNjNUIn4+4PtBNPJ/ikcf
 FT38ZuddsBMnhkap/oVa5EkEPFinpzx/l2X9gqKrwYajrdJ5sW02G0AgHf+IITm4vZnw
 DCVSLojf/JtW/ufz87GQzKXE6CPXgDfOive7XR0sK9ViVC8i5AEEnMBjR1lFlTGsZWrC
 /DRnUnD1Ist3h8/1NuVShKfAZ9Cr3CtCSMAX5WHLPPzd+hTCn5mrgjWq5LhGqKctmSEf
 an3BqXabsLwf+lqrRB4HI3G0iPNMuMYDUNMV6TNnhJNyPpelqL4PeAkTcsyCtZhBrpcz
 8ncQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HOJP6wvSVr5cP9VUVwOJUZjUCeQr91p+ALeEGFJ2Uuw=;
 b=odweJmE2QR3bul8iCkxpYr4Azz7Z3gEW+Zb03WAzgWM422zX+SGIFfzDMBinVNRUrE
 PUEqwbaBu2MNK0DkuTEUipA9Gq6bYZL+wGzaEg/fdpQv73qHiNU/6vzuqLuoRrv4qtti
 zpzplWWDozpmV4ax0CRav+Hh7XpbZ3BVodB0g1JvjIWOjRp4JP0LzBHsMjmesZAuF8W7
 uW0T/vTD0AjI9Pq7CtLgTxMOeqiSIf122RsHeI/HAoP+FSitR21Ja5iVi8sHxasSs7c+
 vvhbZ5JKNbb28rhzYYZsShXsPx3ys0dLqScGFGMO2wx+l4ByQ5gf9Nwb/eulqpLnvo7f
 iInw==
X-Gm-Message-State: AOAM533UbOi74235ooE8wpNEyHIH9iUvBq9Gw4k40E4QyRpx2c4dJvrE
 Nc8l1L3pzNiiM2eecs3ca9ZqTkc7svFWlg==
X-Google-Smtp-Source: ABdhPJyKbE/hcxHeJAWi5OdQxlewCp0j5xpxQTHssL82cdNWLNgZqVKuqg9p269GbY95oxRbhPOrGg==
X-Received: by 2002:a17:90b:e89:: with SMTP id
 fv9mr4714013pjb.131.1592493486640; 
 Thu, 18 Jun 2020 08:18:06 -0700 (PDT)
Received: from [192.168.1.159] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id nl11sm7157204pjb.0.2020.06.18.08.18.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 08:18:06 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Richard Russon (FlatCap)" <ldm@flatcap.org>, linux-block@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net
References: <20200422130317.38683-1-andriy.shevchenko@linux.intel.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <05fd74af-453a-b751-b27b-109e0eba377f@kernel.dk>
Date: Thu, 18 Jun 2020 09:18:04 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200422130317.38683-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlwPk-007sZ7-R8
X-Mailman-Approved-At: Fri, 19 Jun 2020 00:42:47 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v1] partitions/ldm: Replace uuid_copy()
 with import_uuid() where it makes sense
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 4/22/20 7:03 AM, Andy Shevchenko wrote:
> There is a specific API to treat raw data as UUID, i.e. import_uuid().
> Use it instead of uuid_copy() with explicit casting.

Applied, thanks.

-- 
Jens Axboe



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
