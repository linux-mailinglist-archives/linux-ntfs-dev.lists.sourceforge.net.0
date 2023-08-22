Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF5C78495E
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 22 Aug 2023 20:24:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qYW3b-0004gC-Ly;
	Tue, 22 Aug 2023 18:24:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qYVR7-0002SY-Bh
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 22 Aug 2023 17:45:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From
 :Reply-To:Cc:To:MIME-Version:Date:Message-ID:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D83pxoorKSMZ3KXT4tteloMjPSR576OWtj/BqTWoltc=; b=G4ja46h6qWYJpxWT5hVfXn/A/7
 djpqniotPa2bw1w9diVuW5skjemQ5b2Q/AwDdKRsZNtYWP1zpDOfJWyK1RAY5dlmOdMJXSGvciTA4
 6czmMCTZyhynHx3qsv+Un1ituH+uWi3hLvpcN/icbg5UIvxudYKWtdA7PJUfpCBe3xqQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:Reply-To:Cc:To:
 MIME-Version:Date:Message-ID:Sender:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D83pxoorKSMZ3KXT4tteloMjPSR576OWtj/BqTWoltc=; b=RXJV8wKLje1LmUAaPLWTIBfiLk
 Fn2yFsnA5KuwcNsK25NNXmo5LGqceTk5yEoWFaug4WbBXN5Zjuurua3oxwScfadwyiZ01Zr76VKUu
 WAkJtPcRZX6OUCPV9rke67cPXx52iFyiG8RxBia73p4yVfv8iCobVslveF32/MIuF9Rs=;
Received: from mail-pf1-f174.google.com ([209.85.210.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qYVR3-00CTcC-TU for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 22 Aug 2023 17:45:01 +0000
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-686be3cbea0so3877270b3a.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 22 Aug 2023 10:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692726292; x=1693331092;
 h=content-transfer-encoding:subject:from:reply-to:cc:to
 :content-language:user-agent:mime-version:date:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=D83pxoorKSMZ3KXT4tteloMjPSR576OWtj/BqTWoltc=;
 b=VfouFOcEQm14bIP+hmAy9H5Cbv7pd8goiWgJvgc1/lWxlzx8olBW3oKzSwr9VnqdBi
 plsJsRPUMXz4Ru4PwMrCp8aDdrOWhuSSnIDwGnUP7utY8nrhv5bXAZKjtoxpOs3IRcT7
 U9wXwvDoj9coLJ+9yMf4iMbS9wKZ4ZxoM7D8k8xSlgYWlS/VtCgnOy9Tk9nxZ5r6nKX7
 03DGfI9Q0eZ6mRNWgpH6ppeR+3UoBXmuuCDsj63/RyrVJzvmsxzgaEx9ZaFZi9TuUGVS
 VtC7G+VBbngPYQTX0KFlorQMeFIm9skopJwZAwnQgZaJKA6LdrMC1srd+bEbmBtsaG+D
 khag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692726292; x=1693331092;
 h=content-transfer-encoding:subject:from:reply-to:cc:to
 :content-language:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=D83pxoorKSMZ3KXT4tteloMjPSR576OWtj/BqTWoltc=;
 b=jJidZ0tL9lftrpiv2UB18PJelsi6yL4bb+8s785LMHVZI5bvEwf3h5dyIS6W5nFB4x
 w6gRmyi+1WEtDcy3cGpP2pC+EUoFNuVOzoMu1QNtiUsDprvV/mCaiRVQefJg7IYTAmUG
 pt+t/ba2bNq+5j6YtIlVn8aaCJAECOWCTFLk4MxQjV8n70/2fPtoDUuymsQUBo1PdVoQ
 k0VqBq8hPLWLR7H5R5hKvm0YmWUMpBMBTwwtxPueHMFmLIm55riiw7Ncq+HskbgO+es+
 +g17bQTmKO9dQtvC5NUWfywkeTuz7+/DN8PhJfzHHGLJqlTX+EB21jCRtyh7AJSuw4np
 Hv7w==
X-Gm-Message-State: AOJu0YwN2jQwMpmoo+dghn3YIONVFoxF269mNAYPsfgkXzuSyVqvgsw8
 ISPr5gVxdCymBS219lrFzTQ=
X-Google-Smtp-Source: AGHT+IFKTE7SIbTMMWJAx0oW0kr9RcAgSRKog0enFdYErkO+dy/8hNTNi/3zJPYuYshsZtVCFglNpw==
X-Received: by 2002:a05:6a20:1456:b0:13f:c159:63ec with SMTP id
 a22-20020a056a20145600b0013fc15963ecmr14333954pzi.24.1692726292148; 
 Tue, 22 Aug 2023 10:44:52 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.176]) by smtp.gmail.com with ESMTPSA id
 n15-20020aa78a4f000000b00682a27905b9sm4500417pfa.13.2023.08.22.10.44.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Aug 2023 10:44:51 -0700 (PDT)
Message-ID: <f2b664d5-0710-67ae-fda8-d407af4df6fe@gmail.com>
Date: Tue, 22 Aug 2023 23:14:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: anton@tuxera.com, linkinjeon@kernel.org,
 syzbot+ef50f8eb00b54feb7ba2@syzkaller.appspotmail.com
From: Manas Ghandat <ghandatmanas@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I was looking at this syzbot issue :
 https://syzkaller.appspot.com/bug?extid=ef50f8eb00b54feb7ba2
 While debugging I found that when we are traversing through the attribute
 list,
 there is case when the next attribute is null (most likely we are traversing
 out of the list) and thus there is this err [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.174 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qYVR3-00CTcC-TU
X-Mailman-Approved-At: Tue, 22 Aug 2023 18:24:44 +0000
Subject: [Linux-ntfs-dev] fs/ntfs : use-after-free Read in ntfs_attr_find
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
Reply-To: 000000000000aefc5005f5df169b@google.com
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi,

I was looking at this syzbot issue : 
https://syzkaller.appspot.com/bug?extid=ef50f8eb00b54feb7ba2

While debugging I found that when we are traversing through the 
attribute list, there is case when the next attribute is null (most 
likely we are traversing out of the list) and thus there is this error. 
I was wondering if we could add a size field to this attribute list. 
This would fix this issue. Currently we are just parsing to the next 
attribute using the length field.




_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
