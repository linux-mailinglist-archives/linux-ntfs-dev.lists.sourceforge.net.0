Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61345898383
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  4 Apr 2024 10:53:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rsIqd-0000bm-5R;
	Thu, 04 Apr 2024 08:53:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <regressions@leemhuis.info>) id 1rsIfr-0003sr-HE
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 04 Apr 2024 08:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lvik5pSFcG40Al9cRmT31wTUpqQ/o8j4XMGvq8bSXT8=; b=SvhAJrltjnvWtUUn8KZuTzXUfG
 OZJSB1TUQcuybRbH0eKLWjUnBD7PSvIZzM4Feocq7TSmBp2hgdROzAl2PXjuduqK5aI12+1cFmbR+
 NkeNp/YHBogetyXrM9hokNuo9zWdYHIVz7uy+3wSCVr8Pc+yoKGWEFFyoBH8ky1RuWi4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lvik5pSFcG40Al9cRmT31wTUpqQ/o8j4XMGvq8bSXT8=; b=WCrZ8sBs/HFonI9PiVShWUgJo3
 JGmhJos5vxASXm/yLzv+wuXsQz1BzjeLuEaSgJMggKj5+g5tHvVPLw3/9DH3pGfBtf8EAiHywQPiu
 nEwbcrWOKL/RHgruwgrfq2tnG2OGt31e3QMZmLNVfOqY7DzJ3G97qjfMGzhVss6ihchU=;
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rsIfq-00036Q-Bg for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 04 Apr 2024 08:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 In-Reply-To:References; bh=lvik5pSFcG40Al9cRmT31wTUpqQ/o8j4XMGvq8bSXT8=;
 t=1712220138; x=1712652138; b=Fg78cF17dQrHfNDqsXah/SwD4OjtdZ6u5eAMyGh+DEH+XlR
 ppwkHEvwn3xpDVainyJ92omc+UxfvR+ZWCDSYSwqAjwYLiUnm9cuexJdB5BLZHA1OT7ZIn1Any4Rz
 Cs74sqKgSPFOknmPnDi4B4NyjGo0ZEzkzpZDJqCHrVGZMzFM2AERgNGYMgsaOomjwWrl5v/3gGDHB
 azStChrIuWKkADlo6qKLO+rrtjhs8aNKlVPSRhTjfNLNzaQhckk7uKyE1MGVVsb9/5hs0xvAGgX4l
 XXVYh9oluv13f16pM0Z+qYJKpNhHf66JrHfr/baJPmTSdhBf7zYk9pYhGmIfMIWA==;
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1rsI6m-0003jS-Ir; Thu, 04 Apr 2024 10:06:04 +0200
Message-ID: <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
Date: Thu, 4 Apr 2024 10:06:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christian Brauner <brauner@kernel.org>, Johan Hovold <johan@kernel.org>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
Content-Language: en-US, de-DE
In-Reply-To: <20240325-shrimps-ballverlust-dc44fa157138@brauner>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1712220138;
 05132e1a; 
X-HE-SMSGID: 1rsI6m-0003jS-Ir
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 25.03.24 13:05, Christian Brauner wrote: > On Mon, Mar
 25, 2024 at 11:12:00AM +0100, Johan Hovold wrote: >> On Mon, Mar 25, 2024
 at 09:34:38AM +0100, Christian Brauner wrote: >>> This causes visibl [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.237.130.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rsIfq-00036Q-Bg
X-Mailman-Approved-At: Thu, 04 Apr 2024 08:53:27 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/2] ntfs3: remove warning
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: regressions@lists.linux.dev, linux-ntfs-dev@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 25.03.24 13:05, Christian Brauner wrote:
> On Mon, Mar 25, 2024 at 11:12:00AM +0100, Johan Hovold wrote:
>> On Mon, Mar 25, 2024 at 09:34:38AM +0100, Christian Brauner wrote:
>>> This causes visible changes for users that rely on ntfs3 to serve as an
>>> alternative for the legacy ntfs driver. Print statements such as this
>>> should probably be made conditional on a debug config option or similar.
>>>
>>> Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
>>> Cc: Johan Hovold <johan@kernel.org>
>>> Link: https://lore.kernel.org/r/Zf2zPf5TO5oYt3I3@hovoldconsulting.com
>>> Signed-off-by: Christian Brauner <brauner@kernel.org>
>>
>> Tested-by: Johan Hovold <johan+linaro@kernel.org>
>>
>> I also see a
>>
>> 	ntfs3: Max link count 4000
>>
>> message on mount which wasn't there with NTFS legacy. Is that benign
>> and should be suppressed too perhaps?
> 
> We need a reply from the ntfs3 maintainers here.

Those are known for taken their time to respond -- like we see here, as
nothing happened for 10 days now. Which makes we wonder: should we at
least bring the first patch from this series onto the track towards
mainline?

FWIW, quick side note: just noticed there was another report about the
"Correct links count -> 1." messages:
https://lore.kernel.org/all/6215a88a-7d78-4abb-911f-8a3e7033da3e@gmx.com/

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.

#regzbot duplicate:
https://lore.kernel.org/all/6215a88a-7d78-4abb-911f-8a3e7033da3e@gmx.com/
#regzbot poke


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
