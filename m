Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BE37385C5
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 21 Jun 2023 15:53:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qByHS-0000gr-Ms;
	Wed, 21 Jun 2023 13:53:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <j.granados@samsung.com>) id 1qBy7v-0001pz-HM
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 21 Jun 2023 13:44:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SetH/myydi6dk+ldkx72EVQztsegim0VSf5FSMMJW28=; b=WblWLZiNAWpKf9FPCqwi5bMnBT
 /o68FUkhHUXrZDblDzHQswOXGhn9IQY2sYgUO1m3FDLFn5mhv8YusBhSVprXaCVE7buDIm7AU0j3x
 8VJEI1TAHaVhIgc+Xpq8BHP1g2J9Bpnlby1OF/G4YELH68VLLl/QLDO9C6sPyOKI5Q2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SetH/myydi6dk+ldkx72EVQztsegim0VSf5FSMMJW28=; b=haswjyJTMFtVPMTGayxuNW+x0O
 xDTi6ukfWWXJUPY5AFb2kuiGpf3hOrYTDNmUZyoWKdP1xaSTx2Yun96kMnsy/GwxQseezV4B4sfWS
 VVKiYjjIb5k5BNGGhKA3EUC6YlapuQG4rfj4EUrqXCZ9oy1ImOpHMIBa1wKC94mYvUts=;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBy7u-00AgHq-3A for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 21 Jun 2023 13:44:03 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20230621134353euoutp018c6ff8dabdeed1eb9c37b5ba647c330d~qsHZ_CVub2580325803euoutp01E;
 Wed, 21 Jun 2023 13:43:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20230621134353euoutp018c6ff8dabdeed1eb9c37b5ba647c330d~qsHZ_CVub2580325803euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1687355033;
 bh=SetH/myydi6dk+ldkx72EVQztsegim0VSf5FSMMJW28=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=PTZBv1Kz5BEVObNa7leJ/yxGfQakTivesF5jb6tBj4a7mw0z2DwCV8KG/lz6Htp2A
 zjthU/P8T1sIWZ42nVHC5ArvGqiQK48scKj0Re/P/DwFQFC0M/FPQnfLTFYC/Ucswv
 L2oK3I/5AOGeZQ+wBCu+TIiCshDxA9TJNwfHFkfQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20230621134352eucas1p15e4a4e0ef4e890317f5774efb574c917~qsHZk4hDM0731207312eucas1p1W;
 Wed, 21 Jun 2023 13:43:52 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4E.2B.11320.89EF2946; Wed, 21
 Jun 2023 14:43:52 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20230621134351eucas1p2fb0148f4fe396dbbd6919e2c6f9d997c~qsHYqylm50332103321eucas1p2D;
 Wed, 21 Jun 2023 13:43:51 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20230621134351eusmtrp27ac00183debbcf679144adf320f21783~qsHYfajZr2158321583eusmtrp2a;
 Wed, 21 Jun 2023 13:43:51 +0000 (GMT)
X-AuditID: cbfec7f4-993ff70000022c38-ba-6492fe983db1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B0.8C.10549.79EF2946; Wed, 21
 Jun 2023 14:43:51 +0100 (BST)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20230621134351eusmtip295329994762b412f6d02a3f47b794c24~qsHX0_Bhu0221102211eusmtip2V;
 Wed, 21 Jun 2023 13:43:51 +0000 (GMT)
Received: from localhost (106.210.248.248) by CAMSVWEXC02.scsc.local
 (2002:6a01:e348::6a01:e348) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 21 Jun 2023 14:43:50 +0100
Date: Wed, 21 Jun 2023 15:43:48 +0200
From: Joel Granados <j.granados@samsung.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230621134348.rcdzl7fi7yq2uj6h@localhost>
MIME-Version: 1.0
In-Reply-To: <878rcd2by5.fsf@intel.com>
X-Originating-IP: [106.210.248.248]
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
 CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348)
X-Brightmail-Tracker: H4sIAAAAAAAAA2WTW1BTVxSGZ587aJgj2rpHazvibaYK1lbrcixWKw+now+obacXOxXljFgh
 aCJW61i5WRBEIIRyEeUmFyUIpCGKIlIGQyJyEaigImKIjRhEEJHBSCjx4NSZvn1rrf/fa/0P
 myPdM7hZ3C75PlEh9wv0YFwpvWG00TPVofL/KCbbC8rqexkwtucQkFGiYaD5fBGCEftJEiq0
 OhrCDFk0jKkMLMQ4dBQMhB8lQaMLI6BnrIaBoVLHhFdzl4WWnr8ZSOkNo6BTZWVh/J6VgKEH
 Vhpys1+QMNYey0BVajEDxZWvSNDHTey4dUEA2+lzCCzxZhry7h6joS1/gIGC1hIEaalGBPeH
 zRTUqtNJeGUsY+BefDIFN2KD4HL9MAHlneEMWKviCGjWn6DBUlTOgvplHgnqP8IRaHtu0XC/
 a5SAyismClovZTDQpRmnISo6A0FCdgQJD7NsNAwcNzNQW9JAQfWVTAT2EQcN9QYjBeaSpwQ0
 XSqmISLzGQl57TcJiE1MYaExbpyEwhv/ENCR8BCt9Rda2zYII0dPUILmtAYJ9pcqJPQ3mpBw
 MvQmJWTVbhSGbzcSQk5vKCV05lUgoeS2ihESI/pZoSL9HitEVt1hhSxtiPCqpoz1Xfa962f+
 YuCu/aJi6ZptrgGJCVXUngbPA1E9DXQoapsfg1w4zC/HpsGLdAxy5dz5QoRz04oZqXiOcJLZ
 RDhV7vwQwg8u7H3jKOoZoiRRAcJnHMmEVEyIdFfqJiflCF9LMTBOC8UvwN2Jx18/xfBLcFNf
 J+nkGbwnLu6wvF5O8i2rcJS2FjkH0/nNODInmo1BHCfjV+KebqWzLeOnYVOahXIyyR/AlsYz
 lFNC8rNxgYNzogu/CFtMjHToPNxelTvJh/F13R1C4ttTsbmfl9gHjyZbSYmn48d1Olbi9/B4
 RebrXJhPQviqY4CViiKE88OGJ19ajSPbLJOOddiYc41xHoF5N9zxZJp0phtW6VNIqS3D0b+7
 S+qFuKirj0pA89LfCpb+VrD0/4JJ7SU46/Iz5n/txTg/20ZK7I3Pn39KZSH2HJophiiDdorK
 j+XiL15KvyBliHyn147gIC2a+LT1jrrnF1HB40GvGkRwqAbNnzCbS4ua0SxKHiwXPWbI5mhV
 /u4yf7+Dv4qK4J8UIYGisgbN5iiPmbLF3qYd7vxOv33iblHcIyreTAnOZVYosTqg+VTHWiqy
 qzri2Q7LlqSFtrGywk+8Kw/0lh1pUtu/ePIofDDJNb5PvTdD/UGQm2JTqdYe20Q+mrv5UHLA
 ok6NbaBy69V9hxvmeKcd2xu74uCUIxfclvpTvu+juS6KbaPd3707uPLP/V//BqsfLgiZoVpi
 sPWRqPaH+nVHfHJa1se7kJV5chfllNGXoRvW+xgNZ6H7RRhwLXG+ioPb/rLLSruXi562UaN+
 e/gLeS5XoIwN1q+yfxn2zkjfV9/upkqZQ2cPX1Y/7d9ivV4yHLnix9aN6sLcT+uqZds/13+z
 qY0oD6xes195SZbJW1edWhF6A8WPLLp/a+vP5MzH+dEmHTfVg1IG+C37kFQo/f4FCuwQMC8F
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA2WTe0xTVxzHc+69va3GujtEvSIzrLJsQyiWh/4YymbcsrvNxM0EzXCiHdwp
 QVrWApkaHUKrUMRhEygrpgJaHPbBQ0DFwUxlIHNB5aniHBYUeaNQHGLbtXbLTPbPyed8z/f7
 ze+c5PBwr1quDy9BksLKJOK9AnI+cd3Rcj9I41DHr86f9YGq60MkXOspxeBkhZEES/pauGk2
 IHg2V4TD5ce9BCgvOQm4VF3DgcPNxRywq5u5MD3bywWVo4aAyQwlDsaawxj02y0kTFU6XEtT
 CwkjV58iuGZ0+dr7u0jQDB0m4OTQ71yYKDuG4J56kAvOPwYxOHPtAQYzxtsYXDaPY2C/dBSH
 qQeDHHDWncDhdMkMDo8rjyI4eUNBgL0nh4RGRTWCxkITCeMZcwQ8zKvFoWNgIXTaJkgw1ysx
 V1TBBdPPL3B42GzlQrbVSUJdrutWE5mxcFM7w4HM0xUkdF9gwNLyCxdGdOcQ5Az7QmatDUFB
 1VIoyjuPwcAPVg4UaTIx0Pdmc6CzbJKEsx0VCNSzeeiDXxHT0fkZ80x5nGD+HLUTjFFndEnd
 t3Bm7rkaMXetNpwZb2tFjM54gNGm55JMUfotgilu2sTY7rRhzPPZAKam/A7G5DQN459HxwjX
 yaSpKazfHqk8Zb1guwhChKIIEIaERQhFoWt3vBcSLgiOWhfP7k1IY2XBUbuEexrmfsOTrwd9
 p5lyonTU7q9C83g0FUYb+qcIN3tRekSnGyI9ui9dNd3F8fAi+kW3ilSh+S7PE0TXmBTIs6lF
 9HThDHK7COotuu/EMczNJBVI3xi9h7vZmwqiTbcHOO4ATrVF0IqxTtJ9sIjaQitKs7gqxOPx
 qbV0f5/cU2rA6Jz6updhPvU63frjwMvxcCqNftQwhrn9OLWcPuvguXEe9TY90Ep6Bl1J9zSe
 /ocP0lP2RygPLdK+UqR9pUj7X5FHDqBvO4b+L6+iy0pGcA+vp83mCaIYcc8hbzZVnrQ7SS4S
 ysVJ8lTJbmGcNKkauf5MXfPs+YtIN/xEaEEYD1mQvytprTTcRD6ERCphBd78N6rV8V78ePG+
 /axMulOWupeVW1C46xFP4D6L46SuDyhJ2SlaszpcFLYmYnV4xJpQwVL+J8lZYi9qtziFTWTZ
 ZFb2bw7jzfNJx14rj+b39kWHUfmOwWfLtqZtKGyK2bbxHWnDzMXEzE11On/O05KqRCx0eeQB
 ZXP9l2Oxm6vaskb2ZSyMexRZNmPSKg853/dTHrlq74oZ1dbtutUbW5zNDRgwtK/aMCeub7d2
 bKwONvM+1G1eqf0mkPatXcCUSFZsbeHXLo61Zx+q2h83zbdEPezeVZ4xaFI1bHkQ/ldfiGVs
 27vOj5fs32LjHLm7zP/rLzhj7UFXZj/1zzhlL8hv/Oin7G8XKy/c//7UxX1nkjQamyC49Yq+
 QFauN43qo1dszxO9GT/Sn39wSUJRaWxkSaC5O+as/fHWxEnbAi8/UbI5IumrxDv6hNwd00Jm
 SEDI94hFAbhMLv4bHgGuKMgEAAA=
X-CMS-MailID: 20230621134351eucas1p2fb0148f4fe396dbbd6919e2c6f9d997c
X-Msg-Generator: CA
X-RootMTR: 20230621094824eucas1p2b6adfbd3f15ff3665674917f419b25d3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230621094824eucas1p2b6adfbd3f15ff3665674917f419b25d3
References: <20230621091000.424843-1-j.granados@samsung.com>
 <CGME20230621094824eucas1p2b6adfbd3f15ff3665674917f419b25d3@eucas1p2.samsung.com>
 <20230621094817.433842-1-j.granados@samsung.com> <87o7l92hg8.fsf@intel.com>
 <20230621130614.s36w4u7dzmb5d5p3@localhost> <878rcd2by5.fsf@intel.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 21, 2023 at 04:15:46PM +0300, Jani Nikula wrote:
 > On Wed, 21 Jun 2023, Joel Granados <j.granados@samsung.com> wrote: > >
 On Wed, Jun 21, 2023 at 02:16:55PM +0300, Jani Nikula wrote: > >> [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qBy7u-00AgHq-3A
X-Mailman-Approved-At: Wed, 21 Jun 2023 13:53:53 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 09/11] sysctl: Remove the end element
 in sysctl table arrays
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Miaohe Lin <linmiaohe@huawei.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, dri-devel@lists.freedesktop.org,
 Ben Segall <bsegall@google.com>, linux-sctp@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>, Wei Liu <wei.liu@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>, bridge@lists.linux-foundation.org,
 James Morris <jmorris@namei.org>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Eric Biggers <ebiggers@kernel.org>,
 linux-cachefs@redhat.com, Mel Gorman <mgorman@suse.de>, "Darrick J.
 Wong" <djwong@kernel.org>, Waiman Long <longman@redhat.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, Martin Schiller <ms@dev.tdt.de>,
 Russ Weight <russell.h.weight@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Boqun Feng <boqun.feng@gmail.com>, Nicholas Piggin <npiggin@gmail.com>,
 John Ogness <john.ogness@linutronix.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Remi Denis-Courmont <courmisch@gmail.com>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, Christian Brauner <brauner@kernel.org>,
 Will Drewry <wad@chromium.org>, Neil Horman <nhorman@tuxdriver.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, mcgrof@kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, netfilter-devel@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, Jiri Olsa <jolsa@kernel.org>,
 linux-fsdevel@vger.kernel.org, Matthieu Baerts <matthieu.baerts@tessares.net>,
 Andrew Morton <akpm@linux-foundation.org>, linux-trace-kernel@vger.kernel.org,
 linux-wpan@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 linux-aio@kvack.org, "Jason A.
 Donenfeld" <Jason@zx2c4.com>, linux-ia64@vger.kernel.org,
 Naoya Horiguchi <naoya.horiguchi@nec.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, Phillip Potter <phil@philpotter.co.uk>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 keyrings@vger.kernel.org, John Stultz <jstultz@google.com>,
 Stanislav Fomichev <sdf@google.com>, Jan Karcher <jaka@linux.ibm.com>,
 codalist@telemann.coda.cs.cmu.edu, linux-s390@vger.kernel.org,
 Valentin Schneider <vschneid@redhat.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Corey Minyard <minyard@acm.org>,
 Leon Romanovsky <leon@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Will Deacon <will@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Mat Martineau <martineau@kernel.org>, Matthew Bobrowski <repnop@google.com>,
 Julian Anastasov <ja@ssi.bg>, coreteam@netfilter.org,
 Roopa Prabhu <roopa@nvidia.com>, Yonghong Song <yhs@fb.com>,
 Iurii Zaikin <yzaikin@google.com>, Sven Schnelle <svens@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Mike Travis <mike.travis@hpe.com>,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 Xin Long <lucien.xin@gmail.com>, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, Hao Luo <haoluo@google.com>,
 Theodore Ts'o <tytso@mit.edu>, Stephen Boyd <sboyd@kernel.org>,
 Muchun Song <muchun.song@linux.dev>, Florian Westphal <fw@strlen.de>,
 Robin Holt <robinmholt@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Jon Maloy <jmaloy@redhat.com>, Jarkko Sakkinen <jarkko@kernel.org>,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 Mike Kravetz <mike.kravetz@oracle.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-hams@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Marc Dionne <marc.dionne@auristor.com>,
 Jiri Slaby <jirislaby@kernel.org>, linux-afs@lists.infradead.org,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, lvs-devel@vger.kernel.org,
 coda@cs.cmu.edu, Doug Gilbert <dgilbert@interlog.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 Paolo Abeni <pabeni@redhat.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 intel-gfx@lists.freedesktop.org, Steven Rostedt <rostedt@goodmis.org>,
 linux-crypto@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net, mptcp@lists.linux.dev,
 Jan Harkes <jaharkes@cs.cmu.edu>, linux-nfs@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, Andy Lutomirski <luto@amacapital.net>,
 linux-xfs@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 netdev@vger.kernel.org, Ying Xue <ying.xue@windriver.com>, bpf@vger.kernel.org,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Alexander Aring <alex.aring@gmail.com>, Jan Kara <jack@suse.cz>,
 Steve Wahl <steve.wahl@hpe.com>, Peter Zijlstra <peterz@infradead.org>,
 Balbir Singh <bsingharora@gmail.com>, Amir Goldstein <amir73il@gmail.com>,
 KP Singh <kpsingh@kernel.org>, David Howells <dhowells@redhat.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, "H. Peter
 Anvin" <hpa@zytor.com>, David Airlie <airlied@gmail.com>,
 Steffen Klassert <steffen.klassert@secunet.com>, rds-devel@oss.oracle.com,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-scsi@vger.kernel.org,
 dccp@vger.kernel.org, Mark Fasheh <mark@fasheh.com>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Jason Gunthorpe <jgg@ziepe.ca>,
 Ingo Molnar <mingo@redhat.com>, Jakub Kicinski <kuba@kernel.org>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, Joerg Reuter <jreuter@yaina.de>,
 linux-hyperv@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, apparmor@lists.ubuntu.com,
 linux-raid@vger.kernel.org, Paul Moore <paul@paul-moore.com>,
 Juergen Gross <jgross@suse.com>, John Johansen <john.johansen@canonical.com>,
 linux-x25@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 David Ahern <dsahern@kernel.org>, kexec@lists.infradead.org,
 linux-security-module@vger.kernel.org, Benjamin LaHaise <bcrl@kvack.org>,
 tipc-discussion@lists.sourceforge.net, Daniel Vetter <daniel@ffwll.ch>,
 Martin KaFai Lau <martin.lau@linux.dev>, Karsten Graul <kgraul@linux.ibm.com>,
 Joel Becker <jlbec@evilplan.org>
Content-Type: multipart/mixed; boundary="===============3410878705989318345=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============3410878705989318345==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="nwcq3i6cyedok5cv"
Content-Disposition: inline

--nwcq3i6cyedok5cv
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 21, 2023 at 04:15:46PM +0300, Jani Nikula wrote:
> On Wed, 21 Jun 2023, Joel Granados <j.granados@samsung.com> wrote:
> > On Wed, Jun 21, 2023 at 02:16:55PM +0300, Jani Nikula wrote:
> >> On Wed, 21 Jun 2023, Joel Granados <j.granados@samsung.com> wrote:
> >> > Remove the empty end element from all the arrays that are passed to =
the
> >> > register sysctl calls. In some files this means reducing the explicit
> >> > array size by one. Also make sure that we are using the size in
> >> > ctl_table_header instead of evaluating the .procname element.
> >>=20
> >> Where's the harm in removing the end elements driver by driver? This is
> >> an unwieldy patch to handle.
> >
> > I totally agree. Its a big one!!! but I'm concerned of breaking bisecti=
bility:
> > * I could for example separate all the removes into separate commits and
> >   then have a final commit that removes the check for the empty element.
> >   But this will leave the tree in a state where the for loop will have
> >   undefined behavior when it looks for the empty end element. It might
> >   or might not work (probably not :) until the final commit where I fix
> >   that.
> >
> > * I could also change the logic that looks for the final element,
> >   commit that first and then remove the empty element one commit per
> >   driver after that. But then for all the arrays that still have an
> >   empty element, there would again be undefined behavior as it would
> >   think that the last element is valid (when it is really the sentinel).
> >
> > Any ideas on how to get around these?
>=20
> First add size to the register calls, and allow the last one to be
> sentinel but do not require the sentinel.
>=20
> Start removing sentinels, adjusting the size passed in.
This is a great idea! and I think I don't even have to adjust the size
because if I change the logic to stop on the sentinel or the size; so when
the sentinel is there, it will stop before the size. And when the
sentinel is not there, it will stop on the correct size.

There might be issues with indirection calls. And there might also be
lots of places where I need to adjust a for loop (as dan has pointed
out) but its worth a try for V2.

Best
>=20
> Once enough sentinels have been removed, add warning if the final entry
> is a sentinel.
>=20
> Never really remove the check? (But surely you can rework the logic to
> not count the number of elements up front, only while iterating.)
>=20
>=20
> BR,
> Jani.
>=20
> >>=20
> >> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915=
/i915_perf.c
> >> > index f43950219ffc..e4d7372afb10 100644
> >> > --- a/drivers/gpu/drm/i915/i915_perf.c
> >> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> >> > @@ -4884,24 +4884,23 @@ int i915_perf_remove_config_ioctl(struct drm=
_device *dev, void *data,
> >> > =20
> >> >  static struct ctl_table oa_table[] =3D {
> >> >  	{
> >> > -	 .procname =3D "perf_stream_paranoid",
> >> > -	 .data =3D &i915_perf_stream_paranoid,
> >> > -	 .maxlen =3D sizeof(i915_perf_stream_paranoid),
> >> > -	 .mode =3D 0644,
> >> > -	 .proc_handler =3D proc_dointvec_minmax,
> >> > -	 .extra1 =3D SYSCTL_ZERO,
> >> > -	 .extra2 =3D SYSCTL_ONE,
> >> > -	 },
> >> > +		.procname =3D "perf_stream_paranoid",
> >> > +		.data =3D &i915_perf_stream_paranoid,
> >> > +		.maxlen =3D sizeof(i915_perf_stream_paranoid),
> >> > +		.mode =3D 0644,
> >> > +		.proc_handler =3D proc_dointvec_minmax,
> >> > +		.extra1 =3D SYSCTL_ZERO,
> >> > +		.extra2 =3D SYSCTL_ONE,
> >> > +	},
> >> >  	{
> >> > -	 .procname =3D "oa_max_sample_rate",
> >> > -	 .data =3D &i915_oa_max_sample_rate,
> >> > -	 .maxlen =3D sizeof(i915_oa_max_sample_rate),
> >> > -	 .mode =3D 0644,
> >> > -	 .proc_handler =3D proc_dointvec_minmax,
> >> > -	 .extra1 =3D SYSCTL_ZERO,
> >> > -	 .extra2 =3D &oa_sample_rate_hard_limit,
> >> > -	 },
> >> > -	{}
> >> > +		.procname =3D "oa_max_sample_rate",
> >> > +		.data =3D &i915_oa_max_sample_rate,
> >> > +		.maxlen =3D sizeof(i915_oa_max_sample_rate),
> >> > +		.mode =3D 0644,
> >> > +		.proc_handler =3D proc_dointvec_minmax,
> >> > +		.extra1 =3D SYSCTL_ZERO,
> >> > +		.extra2 =3D &oa_sample_rate_hard_limit,
> >> > +	}
> >> >  };
> >>=20
> >> The existing indentation is off, but fixing it doesn't really belong in
> >> this patch.
> >
> > Agreed. But I actually was trying to fix something that checkpatch
> > flagged. I'll change these back (which will cause this patch to be
> > flagged).
> >
> > An alternative solution would be to fix the indentation as part of the
> > preparation patches. Tell me what you think.
> >
> > Thx
> >
> >>=20
> >> BR,
> >> Jani.
> >>=20
> >>=20
> >> --=20
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --=20
> Jani Nikula, Intel Open Source Graphics Center

--=20

Joel Granados

--nwcq3i6cyedok5cv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmSS/pIACgkQupfNUreW
QU8FZgv+NJjIGObr29DU3w9gC84AcnW6dJTp9wHS00NxSXpo+c714JQ2xV0z8i/m
wZbyBR21D/CkjJCTL0pwjCh1xi+PdMHmpB9mDlQSxEg6i+fJXBb7GvWvkOfNagP8
Z2t/NzP/RPP+/BjBP3QOGNyQWgZ4Jl6lMvzlt0aJlHMx7/QD7PRgnNN3KYiFzB+I
FTf5QLbTT85TSPPoGBQCzF6Ych5vKNmIzRZxD2o1zPJFftGIcYOfYOC7vX/1tuOa
1l2+maHSi22uTAHFL3XKvcQBxuLeBCoAIgYOGeO0B+wApLgDVUdHb3PPMw74sOuD
RtgKG6gEgO937g+zKo5xP6M5iLH8xYavJRYPNGH5FBfL7DDROXI6t9tjBpvpUbPS
VQDducT3r8p7hbIhb+3MnRgJri1yF7SjRZF6iewJ9G3Rd7o8PlcLC3aTZLvilO9j
4YYKID1bOqsI9tcLY5oeM6HROqdmLhzFQQlzZCCz4Y/1XVO7ZKpJHP97wqBETkbq
DRVhBHDj
=lxdq
-----END PGP SIGNATURE-----

--nwcq3i6cyedok5cv--


--===============3410878705989318345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3410878705989318345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============3410878705989318345==--

