Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CED82E359
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Jan 2024 00:27:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPWM6-000361-8Q;
	Mon, 15 Jan 2024 23:26:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@fromorbit.com>) id 1rPW8K-0004Yx-Su
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 23:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1e97FCLCiaJtKaM8A2COfDOTaSxHrLETGTHNR2Gz2g0=; b=XlYM6Q2kX+dsKeBQ+f03p1e2NB
 I9Vl4BcQFLw/QxPEMIphF4ZuisEwStTFPLh4FfoEOQ7Hvd7E7TY84/N5xv7RDhaWBUQ4HAFtSeqer
 haNxr9M2z01+pqVlltXkp1AM6TSrwJ9GGnyfYgVSjovR3ReJN4AYyDD4yAfiZczRFnGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1e97FCLCiaJtKaM8A2COfDOTaSxHrLETGTHNR2Gz2g0=; b=L6o4uhUP3o2WaSBXkSAl+d9gzQ
 ceTZal64l2rgc/Q4ChhbUbb2Mp6iOq3qrMiAbHjgLrWmeU5i/0mEeImRdiQxz/e5EMf8w/nnjJz5/
 a5FiFNTj17VSVe5UOMkcl4o7wuyuRl/5xhC5fG+Oe4fmWpswD2TXF71WKmwfAH4yJB0w=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rPW8F-0007YK-UG for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 23:12:44 +0000
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-3bd72353d9fso1819669b6e.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Jan 2024 15:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fromorbit-com.20230601.gappssmtp.com; s=20230601; t=1705360350; x=1705965150;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1e97FCLCiaJtKaM8A2COfDOTaSxHrLETGTHNR2Gz2g0=;
 b=FLEYrqWdjHKm0bgj72FftRbNxOxd6K4iArzjlwFr2yC+6CweE/U8gpRjA1mohpaegI
 bvwk/EUkfPD5olZDNgRqBfsazqF63taJQn6N+Q8hyrQWqsjFDoRUY6KlUilteBUT5DF/
 yHo3eDN24+MXo4Wn8GmO7N3lUWJWqxmUFOqshSZrIOhUSdNGhZS7V5vpSYpHZ3n8mNOL
 zF0CupK7dTOqnh4GCYyc2j5V3nXjpkFWQNLOlhEG/V8VvOyDcDYMTfOP7uH5vfI5YR7M
 jPBslgSVQsoEDDeo2Mw9jXXYXTL5zU3mdZYDrEUaN4EJd2ptX0VX4QtZyqQOrnwSkdCb
 jDmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705360350; x=1705965150;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1e97FCLCiaJtKaM8A2COfDOTaSxHrLETGTHNR2Gz2g0=;
 b=mgk4OlBCCU3bo5qE/F6eUoFXg7bEcxtAROTVvlR4yp4sfFY+E5fOOb+pS+44Azggd+
 QAhN7HKdaEGcY7rYiARoRF4zUbdZ+Wnx3gYMoUxdpuzBZQsgqVGVyZZaTk9D4MSOf9UM
 FEz7MB9tKPGxoFP9rLR1zYjcZfSWUZQBo8+JIHKVZGeHbqE/2OISbbYlYHXxakdU9YG7
 MdBlMm3Cn+oiU6YZTKp8I3uOjbR16slmL2oZqGPoMJabEInEmLvH4KyqcnFR4sLVnY8y
 8OMPBXld053ndtmb0PSvtb9HniwfH7LVDgSf2yN0g3Ri83Ih9wU9SNLcz4nTRvgi7dDT
 txgQ==
X-Gm-Message-State: AOJu0YzTFUjTHXSOzcwqw5k7MV797FUSEwKSpgOn+cZs7ZaJLvV5GnDp
 81tGmHyTw45bmiiU9z/PWZaf8jqK6nJ4nBRCG1bxNSUeoD4=
X-Google-Smtp-Source: AGHT+IEakymELxTP8tP1+uJr4la+L3kGSc1S57KZxO+IjJWRQ7o3tOzQsgoBElifHzj0+fepJu8f5g==
X-Received: by 2002:a92:d981:0:b0:35f:f425:520b with SMTP id
 r1-20020a92d981000000b0035ff425520bmr5550056iln.42.1705357241458; 
 Mon, 15 Jan 2024 14:20:41 -0800 (PST)
Received: from dread.disaster.area (pa49-180-249-6.pa.nsw.optusnet.com.au.
 [49.180.249.6]) by smtp.gmail.com with ESMTPSA id
 f3-20020a170902e98300b001d5dbd68290sm548079plb.246.2024.01.15.14.20.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jan 2024 14:20:40 -0800 (PST)
Received: from dave by dread.disaster.area with local (Exim 4.96)
 (envelope-from <david@fromorbit.com>) id 1rPVJt-00AsOX-0I;
 Tue, 16 Jan 2024 09:20:37 +1100
Date: Tue, 16 Jan 2024 09:20:37 +1100
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <ZaWvtfFMftPXg92X@dread.disaster.area>
References: <20240115072025.2071931-1-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240115072025.2071931-1-willy@infradead.org>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 15, 2024 at 07:20:25AM +0000,
 Matthew Wilcox (Oracle)
 wrote: > The replacement, NTFS3, was merged over two years ago. It is now
 time to > remove the original from the tree as it is the las [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPW8F-0007YK-UG
X-Mailman-Approved-At: Mon, 15 Jan 2024 23:26:56 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] fs: Remove NTFS classic
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
From: Dave Chinner via Linux-ntfs-dev <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Dave Chinner <david@fromorbit.com>
Cc: Christian Brauner <brauner@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Jan 15, 2024 at 07:20:25AM +0000, Matthew Wilcox (Oracle) wrote:
> The replacement, NTFS3, was merged over two years ago.  It is now time to
> remove the original from the tree as it is the last user of several APIs,
> and it is not worth changing.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> Cc: Anton Altaparmakov <anton@tuxera.com>
> Cc: Namjae Jeon <linkinjeon@kernel.org>

I agree - this is largely untestable code and given the newer,
better featured functionality we have (ntfs3, ntfs3g), we should
just get rid of this old code.

Acked-by: Dave Chinner <david@fromorbit.com>

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
