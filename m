Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64739A0BBD3
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 13 Jan 2025 16:26:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1tXMKx-00075l-29;
	Mon, 13 Jan 2025 15:26:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1tXM6h-0000dP-GK
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 13 Jan 2025 15:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o62hMA98/bRxM6fdmM7b38fy78anUvDPQ8PqFAsKK88=; b=CZLYhw8+PmrZYgHC2YumjL3AQu
 srd1vzVjegR2Zi7D1TL4Bu2BrV3GZpU9j754TTeaqYjqbyhLs5jUZQ0K0Wwnhy3OFMp8qmtSQIVlw
 MCT9FYOg9EXEsHVZSDCZfT1ddpY59zId2vX5MXPOx2J+rFFX8JeyDQi/0OL7gg4D8YuE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-Id:
 Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o62hMA98/bRxM6fdmM7b38fy78anUvDPQ8PqFAsKK88=; b=H8toeT32R8xwZsYm0enl1uYrJs
 H8dWZavqKwCFbUFu12RpJji1dx4vYQxKNJEr8ZSm/mUBZY4cKtqjcqwmbeE3DCNLIFB7tCKN6VYeu
 gNzlYsj3X4YBpHe7y4uDM0XjrKLeO3dMmhFJpDXsPCq9TJ5x2J7NLKRSsE3BGtlirbiE=;
Received: from mail-qt1-f172.google.com ([209.85.160.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tXM6g-00029x-6E for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 13 Jan 2025 15:11:59 +0000
Received: by mail-qt1-f172.google.com with SMTP id
 d75a77b69052e-467918c35easo57537371cf.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 13 Jan 2025 07:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1736781107; x=1737385907;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:date:message-id:subject
 :references:in-reply-to:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o62hMA98/bRxM6fdmM7b38fy78anUvDPQ8PqFAsKK88=;
 b=Iz3mTZYiZkOfTizcUsIeQ6ESL5P01sWxxqDrAjhMPntFI4eHdEq8X+qFuzI5J0Cskj
 Ux+8oS1QfAJGjx3JGRcqO/ma2FQ0S0ZpER848F73EHTMxRn+CYIFlzt3O0s5Bjz40NJ/
 1HWD70hNgBxGHSnWXReKd4l900MgUI/BSA+xwpMK37PwkFGatVdDnBoS1e+77H0K9Gmy
 RQVFxzT8+qQWiMfmamMnPBWbLhYdM+P5qqA8tpqCCbKzDZZdtY3Ac/+1z/a/Wp9rYR5w
 1JQy75HzC4BNXVv2r36j1WPghaSDWykSNWYWJhNyUrWjB8ga6TF+KefeL2Z2cXLzJuG1
 gOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736781107; x=1737385907;
 h=content-transfer-encoding:mime-version:date:message-id:subject
 :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=o62hMA98/bRxM6fdmM7b38fy78anUvDPQ8PqFAsKK88=;
 b=j7uQu3BcV8Ob97xeaCX3zCzWUWbHtWvyMDzyzZhMWsQn30t+ATo63wQEOeEz6yo6/v
 2mFLRS2T5bvXL4SzFYI8HAaUa62ZHX8DyVNcr4IDXLs6R0abvarAPDh7hS5YSimpynIw
 0CJrE/rH3XLajD7CC8GcHD2KEziyYhAnVbo0PMkMcDdXr+tFUTwdrNtZm3klX+j29UQZ
 uUuHPZXROH917JGgE9A+bb1NLZFswO60aYZZ1IYtZpWKYDuRf51mj5GrO8aLk+zbIHmu
 +F0MXDwfHLJpySO2WhacXurDhzwAPxOOa2jovXVpTXx94OkBVbbPAiY2kwXFIWWi2OUS
 ZDmQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSaH6a3Fhy9boSJq8tq9LlH496taYsDKkEvv23MtY+om8nlmMKe7H0Y5uccUY7gJ/Prmx6QRzYCRJPsa85eg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxkF+3BN0qVcoTVNOIveR7SmsY52AuYoyzFfC9usuvnWF3hDlWq
 OSQUMh8Ua3mWA1GUL4S17K5j2cAQlxyob7x/UJOlHQIW65qWeyeU97Wux4AR5Zn5apxuPc2oqx3
 3
X-Gm-Gg: ASbGnctEuHjzIXgCcviJR6iQ4uPC4MiXafq/Fsx77o10Gvr5X2/PIJMTvZaVSWQyy5J
 48k26yt8fNG8G1xj0eH1qkzIn7hv73yrMUlbzx4tGj2bbjQOoM6UGF+sBvjNbc0C29TpeDcOJGS
 NdsXkDkH9T2H2oifmK+vufCaeEUwZ9lM9hZSEF4ghoe2BiX/sYUmfgG27xv3iHh4cbHRtfmEy0t
 tEO7VfrdZz6w6/d77ZiCDPlUQq7W3fScRbFNrBY65JQsVg=
X-Google-Smtp-Source: AGHT+IEhVcmz2FEH54p4MZ54Eyi46I1ThIv1W3jOEvT3NqBJ8E8cO001T+ALkmYH/dwGreT7/eefLA==
X-Received: by 2002:a05:6e02:18cc:b0:3ce:6628:3e0 with SMTP id
 e9e14a558f8ab-3ce662805eemr45446365ab.17.1736779659535; 
 Mon, 13 Jan 2025 06:47:39 -0800 (PST)
Received: from [127.0.0.1] ([96.43.243.2]) by smtp.gmail.com with ESMTPSA id
 8926c6da1cb9f-4ea1b7459e9sm2768810173.118.2025.01.13.06.47.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2025 06:47:38 -0800 (PST)
From: Jens Axboe <axboe@kernel.dk>
To: linux-block@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20250111062758.910458-1-rdunlap@infradead.org>
References: <20250111062758.910458-1-rdunlap@infradead.org>
Message-Id: <173677965850.1125204.10539957651432273035.b4-ty@kernel.dk>
Date: Mon, 13 Jan 2025 07:47:38 -0700
MIME-Version: 1.0
X-Mailer: b4 0.14.3-dev-14bd6
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 10 Jan 2025 22:27:58 -0800, Randy Dunlap wrote: >
 Remove the file's first comment describing what the file is. > This comment
 is not in kernel-doc format so it causes a kernel-doc > warning. > [...] 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.172 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.172 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.172 listed in list.dnswl.org]
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.172 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tXM6g-00029x-6E
X-Mailman-Approved-At: Mon, 13 Jan 2025 15:26:41 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] partitions: ldm: remove the initial
 kernel-doc notation
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


On Fri, 10 Jan 2025 22:27:58 -0800, Randy Dunlap wrote:
> Remove the file's first comment describing what the file is.
> This comment is not in kernel-doc format so it causes a kernel-doc
> warning.
> 
> ldm.h:13: warning: expecting prototype for ldm(). Prototype was for _FS_PT_LDM_H_() instead
> 
> 
> [...]

Applied, thanks!

[1/1] partitions: ldm: remove the initial kernel-doc notation
      commit: e494e451611a3de6ae95f99e8339210c157d70fb

Best regards,
-- 
Jens Axboe





_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
