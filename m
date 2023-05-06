Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BEA6F92C0
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  6 May 2023 17:35:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pvJwH-0000h4-Lt;
	Sat, 06 May 2023 15:35:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pv6IT-0005gg-Po
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 06 May 2023 01:01:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q3itPhUCs9C8rwLmk0xSA05Z3HnEQP/E/Xa+mK368uQ=; b=jSlIWd7P74rIRh9qb5OPo6lVpr
 /VT4CqZ7U+OZYEYa3znERxw+nVAKw7tVpAxrEaw6E+7J0etfS86bJeUvdoKVPg3FBNO1+6KDIE5dT
 HfymZfQsBBF2bxVj/6QC4NtHJzVq1S0p1KiVAq7YvjevWrWgTEUXA2urloS0ne8LATjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q3itPhUCs9C8rwLmk0xSA05Z3HnEQP/E/Xa+mK368uQ=; b=WNc9jGAzvZOUqjG0MUnEsvJJm6
 nVq4PAGELTr2fDO4KgtsQ5FSObzw6hnDvsbQG9q/fxARG/OWkmejyDk7agJ++2YqfPAEC68O+l6ev
 4nBUrWKnAoKqKvncirCHuzv8mGma9YkOFmbjRQMrN2kQKRlw8y0c2l/hINTIiAOlF5XU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pv6IT-00Fsgt-Ta for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 06 May 2023 01:01:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 87323641BA
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat,  6 May 2023 01:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD9B0C4339B
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat,  6 May 2023 01:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683334867;
 bh=Q3itPhUCs9C8rwLmk0xSA05Z3HnEQP/E/Xa+mK368uQ=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=qohq5184waisTvURiKc/qTLZtuE10ShoVo0X5ASfso52UABo3CEt3xc9oZQit4Ct0
 dlcyW5MJgFEToEIUYIeHDD4H8ywU4yExgDSTNKGIyKYx5iZU527edWoh70EcQGBoDf
 KRoeX99HbB5qveNhwwNip0cWPuwln87tapnVamJmFNK6cwsohYw5jq/n4KB9esQcTQ
 BcX8ZBOkp8td9jN02aGkg2Etep0er9sDCHh+6KKzYq9R53NmnwV++6e9htY3g1J9Rn
 73iMMeWGkHsSEIFmwWIIkHZS9DkYHKZ3Bx/W2lUenLbOMKIyNWC+1O8yL55Kp5fa2M
 hrFN5Wy1yROvQ==
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-192d5ab4962so1376643fac.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 05 May 2023 18:01:07 -0700 (PDT)
X-Gm-Message-State: AC+VfDz/cAixSop4AqaN8KUzSaNhhe1yW3aNo7/gnqequ/lbdEqRi4Fe
 Rfk1IeM13cfO3mgx4NSP136gskBW683qc9iKPMk=
X-Google-Smtp-Source: ACHHUZ4R3+T3mFgQcs1GyVO9GuU4qBBlPzOU6JLDANY67SB91DgOqdAGEej8ejI+9fvVhTUMYfHYw3CRPXix7+PfSmI=
X-Received: by 2002:a05:6808:b11:b0:38e:e022:7a02 with SMTP id
 s17-20020a0568080b1100b0038ee0227a02mr1300383oij.10.1683334866989; Fri, 05
 May 2023 18:01:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:981:0:b0:4d3:d9bf:b562 with HTTP; Fri, 5 May 2023
 18:01:06 -0700 (PDT)
In-Reply-To: <20230206091815.1687-1-wangdeming@inspur.com>
References: <20230206091815.1687-1-wangdeming@inspur.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Sat, 6 May 2023 10:01:06 +0900
X-Gmail-Original-Message-ID: <CAKYAXd_LnFMEEXWncTA=Y9xbHwh+GmZETM6WBQQ2hqPO6fZuZg@mail.gmail.com>
Message-ID: <CAKYAXd_LnFMEEXWncTA=Y9xbHwh+GmZETM6WBQQ2hqPO6fZuZg@mail.gmail.com>
To: Deming Wang <wangdeming@inspur.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-02-06 18:18 GMT+09:00,
 Deming Wang <wangdeming@inspur.com>:
 > We should use this replace thie. > > Signed-off-by: Deming Wang
 <wangdeming@inspur.com>
 Reviewed-by: Namjae Jeon <linkinjeon@kernel.o [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pv6IT-00Fsgt-Ta
X-Mailman-Approved-At: Sat, 06 May 2023 15:35:12 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: Correct spelling
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
 Christian Brauner <brauner@kernel.org>, linux-kernel@vger.kernel.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-02-06 18:18 GMT+09:00, Deming Wang <wangdeming@inspur.com>:
> We should use this replace thie.
>
> Signed-off-by: Deming Wang <wangdeming@inspur.com>
Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
