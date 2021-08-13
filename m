Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD0A3EC3E9
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 14 Aug 2021 18:44:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mEwm6-0006T4-NL; Sat, 14 Aug 2021 16:44:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1mEgw9-0007Yc-OI
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 13 Aug 2021 23:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6yFTZIaEgp5H00dOMerBFBCLeoc8spOxtK7FHqbj7Z8=; b=HeuLPa929WeLxXUqnBF8OxmWdQ
 98dQbPtIbiRaT9NYIn07KirxEBUAnKcG+ggHK0bQQ05/HzwBJQePv6Xdw+LQUjjDcGMI83Y8FxwyV
 9SYwX/k0CkZrRJVvZv466RwJULOYt9YsTKIeDss2nafJzS1pq5Xgby/FmM1JMEWYrOlA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6yFTZIaEgp5H00dOMerBFBCLeoc8spOxtK7FHqbj7Z8=; b=B
 Wf+viqi6u5APTpoTPwg8mpAt9EzcB27yhRAeirTuIocCLqsM6rvJUfjtyWTnohify2D9Q2IsTnx/L
 cD+I6aLQbJcVKt3w5I45KrI1JG/bZVYiDqhBQSyM/PiVkrQb/2sJ/M3eibw2v1F/pl/FgGmKrIi+x
 nGGuV90aGE6sJqVI=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEgw1-005b0E-Fc
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 13 Aug 2021 23:50:05 +0000
Received: by mail-lf1-f51.google.com with SMTP id p38so23100273lfa.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 13 Aug 2021 16:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=6yFTZIaEgp5H00dOMerBFBCLeoc8spOxtK7FHqbj7Z8=;
 b=AOynv45tzmtsW0Bi2SASWB9SqD81av84eAjiWkLfpy1LS3wdZCCTAKknaAePocoWv0
 sTK7ReQ+KN+EqE4+e/aWycphoD/Ki9Sh1KqT0jUy7WDCmnJTY4TE/wVmNmuPkcGng/1h
 EaGZiG0e8CizEeZQPJuRyiF1zVb8lKPOuKGoMQzOScuGtJ338lxuk+K2Vb2KVhDscj0o
 ySeRr13j6ILkF2oQkkjdWKMnpyglZNGYAYmbgGsmZVqESDcObwsaXCR7oLcM6DJWqS6O
 Qf6nbyPCea5rcy98MkwoRDDdH5WR4OYn8PYBPtPR9EuU7ZgVu7See8jnuGozKWOgZF4M
 1iQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=6yFTZIaEgp5H00dOMerBFBCLeoc8spOxtK7FHqbj7Z8=;
 b=GAVHsYvzILdCG/g0N7QhEAgOmipUcMTnvdK26iiyGC/J6jpRAiZsL3Mgph3SId8fZN
 w2sIU00OtGRDO4zWxychJxQf4j5E8YZo7g6AMrMsODzUYrj4egXaE6r8C9N7aSyLTXsv
 s23+vMwswPRa6gEQFG0HK7iRQB4M2NxBJi9qM4bC9LgKfolKGJA5MOc7OEyeJ4q6/h2P
 M7z2v/375MuIq6e1WfRsDsUPi/UApXoyFcq8lnasxl0qG60uuLA15SH2wFZtheKws7UQ
 vYDHWGnYRjAPHY4hkibevd4lpzbYjasmfhf8AfhFGUwveTjJCgmqMqY3rTWr3fILHaln
 Bssg==
X-Gm-Message-State: AOAM530nSn0ChiQ6ziRjng9R927Cvtyn6lVitQmeMPDVprRohC2RfH9S
 xc18Acxu7jfZB4v2M+pffo8=
X-Google-Smtp-Source: ABdhPJyfzZ1Iq1e0y7zeNo0ac8SUpfcsVh6aK2rPlhPmD5Hsta9LcD2g3zz+E454DTpRZc31uXBucA==
X-Received: by 2002:a05:6512:398e:: with SMTP id
 j14mr3343870lfu.573.1628898590894; 
 Fri, 13 Aug 2021 16:49:50 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id v1sm305584ljb.44.2021.08.13.16.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 16:49:50 -0700 (PDT)
Date: Sat, 14 Aug 2021 02:49:48 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net
Message-ID: <20210813234948.6b46jafsosgdoec4@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.51 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.dev]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mEgw1-005b0E-Fc
X-Mailman-Approved-At: Sat, 14 Aug 2021 16:44:44 +0000
Subject: [Linux-NTFS-Dev] New mailing list for ntfs3 driver
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
Cc: anton@tuxera.com, nborisov@suse.com, djwong@kernel.org,
 oleksandr@natalenko.name, rdunlap@infradead.org, dsterba@suse.cz,
 willy@infradead.org, linux-kernel@vger.kernel.org, ebiggers@kernel.org,
 hch@lst.de, viro@zeniv.linux.org.uk, joe@perches.com, aaptel@suse.com,
 andy.lavr@gmail.com, pali@kernel.org, mark@harmstone.com,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

New mailing list ntfs3@lists.linux.dev has opened. If you have any
intrest for this driver please consider subscribing.
https://subspace.kernel.org/lists.linux.dev.html

I have included cc list from ntfs3 v27 patch series and also ntfs,
fsdevel and linux-kernel mailing lists. If you think anyone else is
intrested please forward email.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
