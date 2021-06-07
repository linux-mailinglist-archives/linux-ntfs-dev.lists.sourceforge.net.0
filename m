Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8B039DB4C
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  7 Jun 2021 13:29:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lqDRP-00034x-Di; Mon, 07 Jun 2021 11:29:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mforce2@gmail.com>) id 1lqBzY-0007TX-M1
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 07 Jun 2021 09:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AvcnTN1BHdD3Kt4RvDykE6ZAznmWeLO+Zb93ck1zaJM=; b=fnGQ06rGqeR0f45KflTG9UiMKr
 2VapqilnXcShTo50PRyxA7FcAw8d4x6K8nw11z93yEV8BEJYs2PCeqNvf/hW1Q/4Gi+0nYuiX9M7f
 jEjDYmMFJcpaRwplm3ceBgcnKRbHDMZCxrIYpYUrRUgDM++BdWfjUDQlukYGw28xjClU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AvcnTN1BHdD3Kt4RvDykE6ZAznmWeLO+Zb93ck1zaJM=; b=k
 +BDnScS4YEfubnTcmOApW4OGp/i3W939geLYIrSJ2bHPcf2SDTU+y7yqdx8zOrd01WqlHM+l4Lkpl
 AICyfnVGX1DwnCs+l43FprFVfOHWE0L1Dvs4ROm6o5LSzlxAFg5AOd9N0fZ8J0LmTkDXUpB71X2he
 zdCDVu48g81uvHtg=;
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lqBzU-00Dckv-Qo
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 07 Jun 2021 09:56:23 +0000
Received: by mail-ej1-f46.google.com with SMTP id c10so25605674eja.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 07 Jun 2021 02:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=AvcnTN1BHdD3Kt4RvDykE6ZAznmWeLO+Zb93ck1zaJM=;
 b=YZXBhqajoh4npRPJENJ7kH/mbGbbRTaTW0ky0sLDEHNyCTWciqHZthrVlsxXLWv0tM
 K32YA8IMM8Bo3oAAaPy2rrzBBxn/jtZ6LlcgqUM7Dj0Um2TviYjyj/2nCDmreyCUCn/F
 gpznxPlICcar4NJeC3BuXXb8JrxBGSpTvjiQJ3v+ZQaJvHUZEgDEKMpzUmC0PSJU4oTL
 dorkA27Gkhi5Sm6siw8WJLn8Ygp96NJU33+Drijf5GzjnzLEC7gqSxGoM/O/btKzLrkB
 stjqqLDUVWVLRWxhSfUyvzAOxfqihWB5J68qZkYkCevnw+uIXTdhz2L/ND52a4G0Ct7h
 hIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=AvcnTN1BHdD3Kt4RvDykE6ZAznmWeLO+Zb93ck1zaJM=;
 b=n8gbg7AN5eQeGVBB3DyypnxzI6AzC0JWFNyasyjmbCZAf10+ao+p9DEx4RY6SNNcj5
 zWyuEKZZOXsC2nr9JAD3VopALWIckenk0EbbPek9I+Vr2uKojjHYGjV636oLqSzwurD2
 C7i67+fNucBarl0NDSGleWOkD4vPqUapLf3+69FTfzjDel3mVfbzwLwgNDroLJsiS/LR
 c4Nv31TZ6i4hTln9EKlkTwi0ojp2dictA3gz7wKPDLsrlXAntEWtENxu8SmAPR4WnDeb
 WMnDE9HgqhwFzhqdfSVfYxu3rxVu4ZONGFaynR3d8s6tfozkuTCHQYKVJV2rtL1+ht2A
 XBkQ==
X-Gm-Message-State: AOAM5306UBp7v31364d/0ferNwQTdmQkMuxN8oXIMFeBqk8Cfu3wG8h/
 mFllWHh5KHJ9syi2Xi+lMeTSeeq0pP+C9qKvsjw=
X-Google-Smtp-Source: ABdhPJzFfoswyH7JwPtkE63RJU+Sfbhdn3mp/4t02QbPN4nzkfnKGuiwz31ebyn909ixLI8DyqOkLxZkF6yP23pyNx4=
X-Received: by 2002:a17:906:c212:: with SMTP id
 d18mr17293083ejz.291.1623059770488; 
 Mon, 07 Jun 2021 02:56:10 -0700 (PDT)
MIME-Version: 1.0
From: Marius Cirsta <mforce2@gmail.com>
Date: Mon, 7 Jun 2021 12:55:59 +0300
Message-ID: <CANO0Vk5++yd2TmJ9xDPe0-=gpeD5wXpdJpKVVibNVkQW4_czOQ@mail.gmail.com>
To: almaz.alexandrovich@paragon-software.com
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.46 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mforce2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (mforce2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lqBzU-00Dckv-Qo
X-Mailman-Approved-At: Mon, 07 Jun 2021 11:29:09 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v26 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: nborisov@suse.com, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 kari.argillander@gmail.com, anton@tuxera.com, joe@perches.com,
 linux-fsdevel@vger.kernel.org, mark@harmstone.com, andy.lavr@gmail.com,
 pali@kernel.org, hch@lst.de, dan.carpenter@oracle.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

I am just a user of the kernel but for me the ntfs support is really
important as I have shared drives that are in NTFS format and ntfs-3g
is not really the best as it has a high CPU usage.

What happened to this review ? I am not sure what the process is but
is no one really interested ?

I saw there were some comments initially but if those were solved then
is it ready for integration ? Is more testing required? I could help
with that if needed.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
