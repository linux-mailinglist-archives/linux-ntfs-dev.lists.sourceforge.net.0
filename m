Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B968A524E
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 15:52:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwMlJ-00027v-9S;
	Mon, 15 Apr 2024 13:52:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1rwMlH-00027o-PW
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 13:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vnC6Z83y53tOYlV29aTBkjeW5nvRG9yFj1DAqqXk3Ig=; b=gcJ7l9T5dV33zgW8dt5Nqt3kFZ
 HbZrMuP0XFXLdGXHySb5EDT1TpdWiNOQ2Mdm3QZyrzk40/yHUWxQmWZm8tUVBsHnIgGviWYdrk5Fe
 Cv9iCYFPh5EjBi3FdOli4uiGKBgLaiSlBmHmurm14rCi9gAS3CyXqeE5UYI/ig9DncMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vnC6Z83y53tOYlV29aTBkjeW5nvRG9yFj1DAqqXk3Ig=; b=KEm9MHlIfba5/tquunP7uBSy7A
 P2nrY73bEIBRJtd6LHexkr+T+vmqCpwwl4z6zcmWHV4mLrL4IEhLCA7hqTu2v9nlC5jFxQPsALU07
 qg3+623qTzieWux1mC+3iQByfPMZjzxOY70mpq5Vw6JOpCGXR/ushLp8PTCG3pi0af00=;
Received: from mail-vi1eur04on2094.outbound.protection.outlook.com
 ([40.107.8.94] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwMl9-00074m-EC for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 13:52:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ivNrlwePdFmyAhcJc8beOeGeAqJ8jwLX9dbEXYn58YS5R6R9xSjQhgGNQot2WNtfiSASy/pZlkT2jBxwiSig6q5hBuj07NhOmaS7f7bLYX/zr1G0YlLzP3U0/t7oGNUuH8UI7u6cfZHekbHZW92Q2odzVX9uR84/AiJSyyS2Pnk0l6bf3IY5/3rGDn7JmcBz0d43K34xTiHbara/lAgnqQ4DDeFFg8Kd/PQABWYOd/OQoMNV9Ang/6c9N1xDmJwPzXvFXTXWnONnvwnTu4p08B49qPJR6pKhuUL3hHSauq47emHrvMYXDzQrs6SJSR1ld0R+lNH4UDwScL7VTT5jFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnC6Z83y53tOYlV29aTBkjeW5nvRG9yFj1DAqqXk3Ig=;
 b=NtpfdAmeiysi7kiUuDgsQpkvd6Y9KbtcsTm/HbYvSV5vIafKMEul1RwxEShCnthnASNv6cHzWfl+/2N8ZwnaHh+X6jtX55IsXbvcun2kMtfQsb0UmKQVkSrwo2w0I2oftaLVnDw+s0g1LNMWmQJzGkPzFX3HGAaDP6dwqNE6856+VsYmREl35foSLztoVZtOshBUorFztXxcuoERiKyq9QWQOOLE03/lESVFTRDRZvDN3tRwgN8p2nacPRbnqXYCrB9hj9Se9cxu/8mxU0JCyvtNMDGVDp7oj1m4fioj6mozfY0ktjfiQ4doKvFhT4ozLDvgpYwczvmg22FSXlQzGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnC6Z83y53tOYlV29aTBkjeW5nvRG9yFj1DAqqXk3Ig=;
 b=inOHud08iYHQhm1hR0OSKIQrk5gQ+zk71xr0n9cNyXaODIZ7lFyBngEQp6rTx9JaHlJzudAw4Ur6eYRQ5RMtvbedZyiWCpd/OCCaAWXHiVX0lOXCr9fnPg3QbTtNdf+UYZJO6SBEQwOqugeTdJWDmqiI2IzJy6k4XaUhj9Bjc/B0w6XA4TkQ5hh3Cw3h7VM8CpQ9JK+65GU3GhOpgDAbaCJgXY9HiaOdNa3mJPZQ0e0bjP1yTkHDEMrYBNI0DNDvMLx/v/2Anzgk3SVjZaG54ke7je8Fg7IHVOa22x5XXIQMo4K64vBui5cvXsUPo9J56fLC1f3CMmohOLx5uazuiA==
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com (2603:10a6:20b:254::18)
 by VI2PR06MB9135.eurprd06.prod.outlook.com (2603:10a6:800:229::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.28; Mon, 15 Apr
 2024 11:18:44 +0000
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::2664:11aa:434c:516c]) by AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::2664:11aa:434c:516c%5]) with mapi id 15.20.7472.027; Mon, 15 Apr 2024
 11:18:44 +0000
To: Johan Hovold <johan@kernel.org>
Thread-Topic: [PATCH 2/2] ntfs3: remove warning
Thread-Index: AQHafo9yVVZa6MRFs06pO1qKZgTUNrFIPKEAgAAfsoCAD3RtgIALMgEAgAY15ICAAAdNgIAAEDyA
Date: Mon, 15 Apr 2024 11:18:44 +0000
Message-ID: <E522C750-A7BD-4B63-9C19-74B435828F97@tuxera.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
 <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
 <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
 <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
 <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
In-Reply-To: <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR06MB7239:EE_|VI2PR06MB9135:EE_
x-ms-office365-filtering-correlation-id: a5ea0a50-beb3-4717-352a-08dc5d3dd019
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 68Shwc5P2nmCrofSu3VZ47RvyfSwzfGqbGmKwQpCoFwD3svGSVt11J5QivmGmZ4kYmoNZV7RCgTzkqSvGinkafjv5Uo8nesQuG/0Yugl3A3+eYAnTBH7zNOyXFXtVc11lJ9sZB48AEdtdvbJ2eR0JAJ5cl1d4LHuqU5fHXCRDgctu1n+Amw+8zBFoHZQN+iaa4RfjczcBqP6QqM4htMs0m8kv+VdqaFva2bG0DxgiBPnKMXsnuGf/AB4fewyt1Y5ZYD5+kOXMA1FdVJ/jNGQlI/Q/B32gGiZk0L6V7Rk1g0MXjDV9O+PhVajqYaDBsvwnnEUlMnER+FfHlqPUuKLr808emcFvqLzimkmSGU9On2taWs/oDgfwQllKTwskVIJiKgBeeicW1c7MtQbZin70Gm5suleE1UtIpG+BfSsCPL6PoFg7cHGEs7rEcBdkw7PhtCEQhuiNG5MdLblubM3jWha/YMOlZ7rPeDbfk+55Omd/83H4OIxrFcvilBBRr6tufHVPetrnMejwb0EnJX9iLvhQ1JUWCaFG65XE9m/Kl+5nI3E7aVXsypMsSoUqwG02YWHJC5pC6lh0YoyLFXnycy+xYBU1MBckL7QxcqFbHZatD0Do/vfVg8yGFM/4G6qgSrFYgTZcG8/TtSz+zj7zQc7bc1lqmfRiOjKMiAXWIk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7239.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x0zo/6RX5Rg/Rqz+6fTDGe5e+nT2cFSBgyLEdEYnWxzrJ6EckN2dMTJGz5zI?=
 =?us-ascii?Q?a4Rer8BdA03PB3K13bK6LIoq1R7hH0BvJ5NaLoJSqqLtMfazEgpyfWKLnjmB?=
 =?us-ascii?Q?RDTl5KT1Jl3Z8UpVFANSyacIY+YFkLATtynIwYngX/rU+CgRcOL5wuPsVKkz?=
 =?us-ascii?Q?3PdUWV9z8y6KrhN3cZEjnj9TtxGHSBSRWPX5HXL1mzljQ02fHt/S72Flgruc?=
 =?us-ascii?Q?zEO3emfM8YtP1Y32oXkzcSmOHX+/RcqTd1mq/G4ZJdsnUTCej7Upc6dM2SpO?=
 =?us-ascii?Q?ctjTiikv6eZBIk7RA5KwiqG5Wh7qvFMmu7HvDPInyfMaPTTKQkFUCBvttvvP?=
 =?us-ascii?Q?HwLO+M4aEhUBOFKln8P4eoeR+tJcS4RBZIBSLH5i54Z5Qeeg8LGCznrLPBFz?=
 =?us-ascii?Q?axtkWAChD8bUTwQEVLykajhe8vPL4Bq3MtlpOi7xvbiRBGyutjQ6XrTNT7fg?=
 =?us-ascii?Q?EziLqNsHexjp4o0wWDYMrHAvCJuKrEpuglbLeODU2jxaaihpUNkjYE6WzLV2?=
 =?us-ascii?Q?f3MEr4plDfSHKPSnhMuMJ/NbK53a9fu+cq+qpBbw0uW+zoFAOn78kctDDaSJ?=
 =?us-ascii?Q?zT351kBd3Uq1lFYsWepFXTnvaXSAUtJT7pG/RmZH9zgwoe5f5v2TbNC/hZOh?=
 =?us-ascii?Q?3U3hse6jV6dxcn5Scl4OCg6PZccXdjKg0V3cXhHEmJkMwwXi0rjcN8w7eswd?=
 =?us-ascii?Q?aDT52yPak5FAfVenDhXXFMCsNP0FXCnj+j8w5dcwDHqjjxYwVrvHaTNadgKx?=
 =?us-ascii?Q?1Jk56QvKl/SsEqa0PfBI0gWwYtfSeCc/mBmLHntO4BR3nKxbMHhAp/W4jW8f?=
 =?us-ascii?Q?Hy04glHYypqb3B9ntrjiYQw9FvepuepwPCupJd21K8cI18CvXxdpAG9AVYI1?=
 =?us-ascii?Q?2Xm/S+RvbyKpdCBWhi6xgrTrebmbGC1gHsRbgxfAojfHV0o4OsxCH0sNYpmC?=
 =?us-ascii?Q?eUghSIfzjufqMzlYG4KtxcxlwAcoE0CpUNvOaKgik6T0mgo0p8P0EAFMyxbw?=
 =?us-ascii?Q?d2P/BoGFEudR6GPhFbVCVQxKVpbDgItpG6bb0UhELwmUHmfkqop9nIc+BI1R?=
 =?us-ascii?Q?ZFxWoAqZpSuNarf1/wHjpTRfa0iJjDL+CzRi0+mG/wfM4FZ4CN+c2OsVN+Gp?=
 =?us-ascii?Q?dLvAXmH+M4OD5bbM6P6nwyJaTIQ+HyhSj2sqNcuD/wts6ozPMP4oud/5B66l?=
 =?us-ascii?Q?gx64up/B/yplgVXh36/CEDCKTLIMBOeChuA/lHDicnhXweuswJkAyfwAdUoL?=
 =?us-ascii?Q?4i1Kl39+vP3E/Fcsy3YMn2PckQmzRwkH0D7uv7yvQOnTi8Qlwxogn+fBtJ92?=
 =?us-ascii?Q?A0QenS/HVDQjLLLCgaVs3rB0uBryamwbWAHkrmnF1eg0DU2aqCENlxuG68Fr?=
 =?us-ascii?Q?83ivvjjZHpe6qtOcto8gmIZZHkA+OgA4xjLCT7uQqoe4Xr5cF73CLV89BybU?=
 =?us-ascii?Q?E1P1PVIGfpoNXeRCU1V7Bps6IKma47jVnkDcOqf+1j65yphB2ovlgTkHW0py?=
 =?us-ascii?Q?E0mmIhX/9gVMeRLV+lTrn7DQGKfw3NJlwtVeWnp5IyE7lXsqHG87EnZi4kJp?=
 =?us-ascii?Q?kktbd4Hf8z00X9/iKSYqnu7Uq3nbz9He4/RKjfGq?=
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7239.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5ea0a50-beb3-4717-352a-08dc5d3dd019
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2024 11:18:44.5324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cb0ewXYC/pP5vlvYDiZAtJnDgKtGbSvrZ0NKyLt9cmVS+tI9f2fmxcFYQc1AtJaGZoWScVFuoB/JCM690Levhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR06MB9135
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 Had a look at ntfs3 code and it is corrupting your volume.
 Every such message you are seeing is damaging a file or directory on your
 volume. I would personally suggest you modify your /etc/fstab to mount
 read-only.
 If it is getting simple things like this wrong who knows what else it is
 doing incorrect... 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.94 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rwMl9-00074m-EC
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
From: Anton Altaparmakov via Linux-ntfs-dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Anton Altaparmakov <anton@tuxera.com>
Cc: Christian Brauner <brauner@kernel.org>,
 Linux regressions mailing list <regressions@lists.linux.dev>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>
Content-Type: multipart/mixed; boundary="===============4035329980169568702=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============4035329980169568702==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E522C750A7BD4B639C1974B435828F97tuxeracom_"

--_000_E522C750A7BD4B639C1974B435828F97tuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Had a look at ntfs3 code and it is corrupting your volume.  Every such mess=
age you are seeing is damaging a file or directory on your volume.

I would personally suggest you modify your /etc/fstab to mount read-only.  =
If it is getting simple things like this wrong who knows what else it is do=
ing incorrect...

Best regards,

Anton

On 15 Apr 2024, at 11:20, Johan Hovold <johan@kernel.org> wrote:

On Mon, Apr 15, 2024 at 11:54:19AM +0200, Johan Hovold wrote:
On Thu, Apr 11, 2024 at 02:03:52PM +0300, Konstantin Komarov wrote:

Messages like this:

diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
index eb7a8c9fba01..8cc94a6a97ed 100644
--- a/fs/ntfs3/inode.c
+++ b/fs/ntfs3/inode.c
@@ -424,7 +424,6 @@ static struct inode *ntfs_read_mft(struct inode *inode,
    if (names !=3D le16_to_cpu(rec->hard_links)) {
        /* Correct minor error on the fly. Do not mark inode as dirty. */
-        ntfs_inode_warn(inode, "Correct links count -> %u.", names);
        rec->hard_links =3D cpu_to_le16(names);
        ni->mi.dirty =3D true;
    }

can also be suppressed for the sake of seamless transition from a remote
NTFS driver.
However, I believe that file system corrections should be reported to
the user.

A colleague of mine also tracked down a failed boot to the removal of
the ntfs driver and reported seeing similar warnings with the ntfs3
driver.

We're both accessing an NTFS partition on a Windows on Arm device, but
it makes you wonder whether these warnings (corrections) are correct or
indicative of a problem in the driver?

This is what I see with a recursive ls on that partition (I've added
rec->hard_links in parentheses):

[   38.287555] ntfs3: nvme0n1p3: ino=3D2e1e7, Correct links count -> 1 (2).
[   38.288593] ntfs3: nvme0n1p3: ino=3D75ff, Correct links count -> 1 (2).
[   38.289887] ntfs3: nvme0n1p3: ino=3D1b4e1, Correct links count -> 1 (2).
[   38.290144] ntfs3: nvme0n1p3: ino=3D78c6, Correct links count -> 1 (2).
[   38.291313] ntfs3: nvme0n1p3: ino=3D8781b, Correct links count -> 1 (2).
[   38.291823] ntfs3: nvme0n1p3: ino=3D8781e, Correct links count -> 1 (2).
[   38.292289] ntfs3: nvme0n1p3: ino=3D87820, Correct links count -> 1 (2).
[   38.292978] ntfs3: nvme0n1p3: ino=3D87823, Correct links count -> 1 (2).
[   38.300531] ntfs3: nvme0n1p3: ino=3Da324, Correct links count -> 1 (2).
[   38.312235] ntfs3: nvme0n1p3: ino=3D882c3, Correct links count -> 1 (2).
[   43.286846] ntfs3: 5479 callbacks suppressed
[   43.286856] ntfs3: nvme0n1p3: ino=3D14aa, Correct links count -> 1 (2).
[   43.286998] ntfs3: nvme0n1p3: ino=3D14ac, Correct links count -> 1 (2).
[   43.287194] ntfs3: nvme0n1p3: ino=3D12cc2, Correct links count -> 1 (2).
[   43.287386] ntfs3: nvme0n1p3: ino=3D12ccd, Correct links count -> 1 (2).
[   43.287576] ntfs3: nvme0n1p3: ino=3D12d15, Correct links count -> 1 (2).
[   43.287667] ntfs3: nvme0n1p3: ino=3D12d19, Correct links count -> 1 (2).
[   43.287877] ntfs3: nvme0n1p3: ino=3D12d3a, Correct links count -> 1 (2).
[   43.288051] ntfs3: nvme0n1p3: ino=3D12d88, Correct links count -> 1 (2).
[   43.288265] ntfs3: nvme0n1p3: ino=3D874, Correct links count -> 1 (2).
[   43.288326] ntfs3: nvme0n1p3: ino=3D875, Correct links count -> 1 (2).
[   48.288211] ntfs3: 7735 callbacks suppressed
[   48.288220] ntfs3: nvme0n1p3: ino=3D33391, Correct links count -> 1 (2).
[   48.289115] ntfs3: nvme0n1p3: ino=3D347a4, Correct links count -> 1 (2).
[   48.290214] ntfs3: nvme0n1p3: ino=3D3553f, Correct links count -> 1 (2).
[   48.291193] ntfs3: nvme0n1p3: ino=3D35793, Correct links count -> 1 (2).
[   48.292818] ntfs3: nvme0n1p3: ino=3D358a0, Correct links count -> 1 (2).
[   48.293529] ntfs3: nvme0n1p3: ino=3D38f54, Correct links count -> 1 (2).
[   48.293901] ntfs3: nvme0n1p3: ino=3D391f6, Correct links count -> 1 (2).
[   48.294303] ntfs3: nvme0n1p3: ino=3D39324, Correct links count -> 1 (2).
[   48.294729] ntfs3: nvme0n1p3: ino=3D394a0, Correct links count -> 1 (2).
[   48.295063] ntfs3: nvme0n1p3: ino=3D3956a, Correct links count -> 1 (2).
[   53.289392] ntfs3: 11442 callbacks suppressed
[   53.289401] ntfs3: nvme0n1p3: ino=3D6293e, Correct links count -> 1 (2).
[   53.289972] ntfs3: nvme0n1p3: ino=3D61df1, Correct links count -> 1 (2).
[   53.290241] ntfs3: nvme0n1p3: ino=3D61df3, Correct links count -> 1 (2).
[   53.290578] ntfs3: nvme0n1p3: ino=3D61f3b, Correct links count -> 1 (2).
[   53.290881] ntfs3: nvme0n1p3: ino=3D62025, Correct links count -> 1 (2).
[   53.291045] ntfs3: nvme0n1p3: ino=3D629af, Correct links count -> 1 (2).
[   53.291181] ntfs3: nvme0n1p3: ino=3D61e3c, Correct links count -> 1 (2).
[   53.291463] ntfs3: nvme0n1p3: ino=3D61e22, Correct links count -> 1 (2).
[   53.291743] ntfs3: nvme0n1p3: ino=3D62882, Correct links count -> 1 (2).
[   53.292099] ntfs3: nvme0n1p3: ino=3D61b3d, Correct links count -> 1 (2).
[   58.291790] ntfs3: 5373 callbacks suppressed
[   58.291799] ntfs3: nvme0n1p3: ino=3D6d5a5, Correct links count -> 1 (2).
[   58.292106] ntfs3: nvme0n1p3: ino=3D6d7f6, Correct links count -> 1 (2).
[   58.292372] ntfs3: nvme0n1p3: ino=3D6db43, Correct links count -> 1 (2).
[   58.292653] ntfs3: nvme0n1p3: ino=3D72557, Correct links count -> 1 (2).
[   58.293244] ntfs3: nvme0n1p3: ino=3D728d8, Correct links count -> 1 (2).
[   58.294306] ntfs3: nvme0n1p3: ino=3D72c6e, Correct links count -> 1 (2).
[   58.294944] ntfs3: nvme0n1p3: ino=3D72ff7, Correct links count -> 1 (2).
[   58.295666] ntfs3: nvme0n1p3: ino=3D73271, Correct links count -> 1 (2).
[   58.296281] ntfs3: nvme0n1p3: ino=3D735fd, Correct links count -> 1 (2).
[   58.296991] ntfs3: nvme0n1p3: ino=3D73880, Correct links count -> 1 (2).
[   63.295009] ntfs3: 13921 callbacks suppressed
[   63.295017] ntfs3: nvme0n1p3: ino=3D6be65, Correct links count -> 1 (2).
[   63.295902] ntfs3: nvme0n1p3: ino=3D6c08e, Correct links count -> 1 (2).
[   63.296252] ntfs3: nvme0n1p3: ino=3D6c2e3, Correct links count -> 1 (2).
[   63.297581] ntfs3: nvme0n1p3: ino=3D6c610, Correct links count -> 1 (2).
[   63.298321] ntfs3: nvme0n1p3: ino=3D6c7f9, Correct links count -> 1 (2).
[   63.298730] ntfs3: nvme0n1p3: ino=3D6cb24, Correct links count -> 1 (2).
[   63.299079] ntfs3: nvme0n1p3: ino=3D6ceda, Correct links count -> 1 (2).
[   63.299408] ntfs3: nvme0n1p3: ino=3D6d288, Correct links count -> 1 (2).
[   63.299727] ntfs3: nvme0n1p3: ino=3D6d533, Correct links count -> 1 (2).
[   63.300080] ntfs3: nvme0n1p3: ino=3D6d77b, Correct links count -> 1 (2).
[   68.299457] ntfs3: 8228 callbacks suppressed
[   68.299467] ntfs3: nvme0n1p3: ino=3D3e248, Correct links count -> 1 (2).
[   68.301391] ntfs3: nvme0n1p3: ino=3D5d7b7, Correct links count -> 1 (2).
[   68.302440] ntfs3: nvme0n1p3: ino=3D5853d, Correct links count -> 1 (2).
[   68.303123] ntfs3: nvme0n1p3: ino=3D3ca2e, Correct links count -> 1 (2).
[   68.303722] ntfs3: nvme0n1p3: ino=3D59a98, Correct links count -> 1 (2).
[   68.304292] ntfs3: nvme0n1p3: ino=3D59a9b, Correct links count -> 1 (2).
[   68.304981] ntfs3: nvme0n1p3: ino=3D59a9e, Correct links count -> 1 (2).
[   68.305629] ntfs3: nvme0n1p3: ino=3D59aa1, Correct links count -> 1 (2).
[   68.306120] ntfs3: nvme0n1p3: ino=3D3214f, Correct links count -> 1 (2).
[   68.306539] ntfs3: nvme0n1p3: ino=3D2077b, Correct links count -> 1 (2).
[   73.302727] ntfs3: 8502 callbacks suppressed
[   73.302736] ntfs3: nvme0n1p3: ino=3D5aa99, Correct links count -> 1 (2).
[   73.303992] ntfs3: nvme0n1p3: ino=3D50ee9, Correct links count -> 1 (2).
[   73.304744] ntfs3: nvme0n1p3: ino=3D20420, Correct links count -> 1 (2).
[   73.305080] ntfs3: nvme0n1p3: ino=3D258c, Correct links count -> 1 (2).
[   73.305470] ntfs3: nvme0n1p3: ino=3D5a30d, Correct links count -> 1 (2).
[   73.307283] ntfs3: nvme0n1p3: ino=3D5a54c, Correct links count -> 1 (2).
[   73.307890] ntfs3: nvme0n1p3: ino=3D5c9de, Correct links count -> 1 (2).
[   73.308495] ntfs3: nvme0n1p3: ino=3D3d82d, Correct links count -> 1 (2).
[   73.309581] ntfs3: nvme0n1p3: ino=3D3d839, Correct links count -> 1 (2).
[   73.310016] ntfs3: nvme0n1p3: ino=3D25c77, Correct links count -> 1 (2).
[   78.304861] ntfs3: 11462 callbacks suppressed
[   78.304868] ntfs3: nvme0n1p3: ino=3D5c714, Correct links count -> 1 (2).
[   78.305579] ntfs3: nvme0n1p3: ino=3D57d11, Correct links count -> 1 (2).
[   78.306151] ntfs3: nvme0n1p3: ino=3D5842d, Correct links count -> 1 (2).
[   78.307412] ntfs3: nvme0n1p3: ino=3D34e6, Correct links count -> 1 (3).
[   78.307843] ntfs3: nvme0n1p3: ino=3D5bb23, Correct links count -> 1 (2).
[   78.308509] ntfs3: nvme0n1p3: ino=3D5c722, Correct links count -> 1 (2).
[   78.310018] ntfs3: nvme0n1p3: ino=3D5d761, Correct links count -> 1 (2).
[   78.310717] ntfs3: nvme0n1p3: ino=3D33d18, Correct links count -> 1 (3).
[   78.311179] ntfs3: nvme0n1p3: ino=3D5d75b, Correct links count -> 1 (3).
[   78.311605] ntfs3: nvme0n1p3: ino=3D5c708, Correct links count -> 1 (3).

Johan

--
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/


--_000_E522C750A7BD4B639C1974B435828F97tuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <3AC056F1E67FBC4BB8D9D0432CA11734@eurprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; line-br=
eak: after-white-space;">
Hi,
<div><br>
</div>
<div>Had a look at ntfs3 code and it is corrupting your volume. &nbsp;Every=
 such message you are seeing is damaging a file or directory on your volume=
.</div>
<div><br>
</div>
<div>I would personally suggest you modify your /etc/fstab to mount read-on=
ly. &nbsp;If it is getting simple things like this wrong who knows what els=
e it is doing incorrect...</div>
<div><br>
</div>
<div>Best regards,</div>
<div><br>
</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>Anton<=
br id=3D"lineBreakAtBeginningOfMessage">
<div><br>
<blockquote type=3D"cite">
<div>On 15 Apr 2024, at 11:20, Johan Hovold &lt;johan@kernel.org&gt; wrote:=
</div>
<br class=3D"Apple-interchange-newline">
<div><span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; text-decoration: none; float: none; display: inline !important;=
">On
 Mon, Apr 15, 2024 at 11:54:19AM +0200, Johan Hovold wrote:</span><br style=
=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px;=
 font-style: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none;">
<blockquote type=3D"cite" style=3D"font-family: Menlo-Regular; font-size: 1=
1px; font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration: none;">
On Thu, Apr 11, 2024 at 02:03:52PM +0300, Konstantin Komarov wrote:<br>
</blockquote>
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-si=
ze: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;">
<blockquote type=3D"cite" style=3D"font-family: Menlo-Regular; font-size: 1=
1px; font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration: none;">
<blockquote type=3D"cite">Messages like this:<br>
<br>
diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c<br>
index eb7a8c9fba01..8cc94a6a97ed 100644<br>
--- a/fs/ntfs3/inode.c<br>
+++ b/fs/ntfs3/inode.c<br>
@@ -424,7 +424,6 @@ static struct inode *ntfs_read_mft(struct inode *inode,=
<br>
&nbsp;&nbsp; &nbsp;if (names !=3D le16_to_cpu(rec-&gt;hard_links)) {<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<span class=3D"Apple-converted-space">=
&nbsp;</span>/* Correct minor error on the fly. Do not mark inode as dirty.=
 */<br>
-&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ntfs_inode_warn(inode, &quot;Correct=
 links count -&gt; %u.&quot;, names);<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<span class=3D"Apple-converted-space">=
&nbsp;</span>rec-&gt;hard_links =3D cpu_to_le16(names);<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<span class=3D"Apple-converted-space">=
&nbsp;</span>ni-&gt;mi.dirty =3D true;<br>
&nbsp;&nbsp; &nbsp;}<br>
<br>
can also be suppressed for the sake of seamless transition from a remote<sp=
an class=3D"Apple-converted-space">&nbsp;</span><br>
NTFS driver.<br>
However, I believe that file system corrections should be reported to<span =
class=3D"Apple-converted-space">&nbsp;</span><br>
the user.<br>
</blockquote>
<br>
A colleague of mine also tracked down a failed boot to the removal of<br>
the ntfs driver and reported seeing similar warnings with the ntfs3<br>
driver.<br>
<br>
We're both accessing an NTFS partition on a Windows on Arm device, but<br>
it makes you wonder whether these warnings (corrections) are correct or<br>
indicative of a problem in the driver?<br>
</blockquote>
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-si=
ze: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">Thi=
s
 is what I see with a recursive ls on that partition (I've added</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: =
11px; font-style: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; text-align: start; text-indent: 0px; text-transform: no=
ne; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">rec=
-&gt;hard_links
 in parentheses):</span><br style=3D"caret-color: rgb(0, 0, 0); font-family=
: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; text-align: start; text-ind=
ent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration: none;">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-si=
ze: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.287555] ntfs3: nvme0n1p3: ino=3D2e1e7, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.288593] ntfs3: nvme0n1p3: ino=3D75ff, Correct links count -=
&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.289887] ntfs3: nvme0n1p3: ino=3D1b4e1, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.290144] ntfs3: nvme0n1p3: ino=3D78c6, Correct links count -=
&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.291313] ntfs3: nvme0n1p3: ino=3D8781b, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.291823] ntfs3: nvme0n1p3: ino=3D8781e, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.292289] ntfs3: nvme0n1p3: ino=3D87820, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.292978] ntfs3: nvme0n1p3: ino=3D87823, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.300531] ntfs3: nvme0n1p3: ino=3Da324, Correct links count -=
&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;38.312235] ntfs3: nvme0n1p3: ino=3D882c3, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.286846] ntfs3: 5479 callbacks suppressed</span><br style=3D=
"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.286856] ntfs3: nvme0n1p3: ino=3D14aa, Correct links count -=
&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.286998] ntfs3: nvme0n1p3: ino=3D14ac, Correct links count -=
&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.287194] ntfs3: nvme0n1p3: ino=3D12cc2, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.287386] ntfs3: nvme0n1p3: ino=3D12ccd, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.287576] ntfs3: nvme0n1p3: ino=3D12d15, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.287667] ntfs3: nvme0n1p3: ino=3D12d19, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.287877] ntfs3: nvme0n1p3: ino=3D12d3a, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.288051] ntfs3: nvme0n1p3: ino=3D12d88, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.288265] ntfs3: nvme0n1p3: ino=3D874, Correct links count -&=
gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo=
-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0p=
x; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;43.288326] ntfs3: nvme0n1p3: ino=3D875, Correct links count -&=
gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo=
-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0p=
x; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.288211] ntfs3: 7735 callbacks suppressed</span><br style=3D=
"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.288220] ntfs3: nvme0n1p3: ino=3D33391, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.289115] ntfs3: nvme0n1p3: ino=3D347a4, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.290214] ntfs3: nvme0n1p3: ino=3D3553f, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.291193] ntfs3: nvme0n1p3: ino=3D35793, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.292818] ntfs3: nvme0n1p3: ino=3D358a0, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.293529] ntfs3: nvme0n1p3: ino=3D38f54, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.293901] ntfs3: nvme0n1p3: ino=3D391f6, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.294303] ntfs3: nvme0n1p3: ino=3D39324, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.294729] ntfs3: nvme0n1p3: ino=3D394a0, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;48.295063] ntfs3: nvme0n1p3: ino=3D3956a, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.289392] ntfs3: 11442 callbacks suppressed</span><br style=
=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px;=
 font-style: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.289401] ntfs3: nvme0n1p3: ino=3D6293e, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.289972] ntfs3: nvme0n1p3: ino=3D61df1, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.290241] ntfs3: nvme0n1p3: ino=3D61df3, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.290578] ntfs3: nvme0n1p3: ino=3D61f3b, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.290881] ntfs3: nvme0n1p3: ino=3D62025, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.291045] ntfs3: nvme0n1p3: ino=3D629af, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.291181] ntfs3: nvme0n1p3: ino=3D61e3c, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.291463] ntfs3: nvme0n1p3: ino=3D61e22, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.291743] ntfs3: nvme0n1p3: ino=3D62882, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;53.292099] ntfs3: nvme0n1p3: ino=3D61b3d, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.291790] ntfs3: 5373 callbacks suppressed</span><br style=3D=
"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.291799] ntfs3: nvme0n1p3: ino=3D6d5a5, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.292106] ntfs3: nvme0n1p3: ino=3D6d7f6, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.292372] ntfs3: nvme0n1p3: ino=3D6db43, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.292653] ntfs3: nvme0n1p3: ino=3D72557, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.293244] ntfs3: nvme0n1p3: ino=3D728d8, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.294306] ntfs3: nvme0n1p3: ino=3D72c6e, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.294944] ntfs3: nvme0n1p3: ino=3D72ff7, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.295666] ntfs3: nvme0n1p3: ino=3D73271, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.296281] ntfs3: nvme0n1p3: ino=3D735fd, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;58.296991] ntfs3: nvme0n1p3: ino=3D73880, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.295009] ntfs3: 13921 callbacks suppressed</span><br style=
=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px;=
 font-style: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.295017] ntfs3: nvme0n1p3: ino=3D6be65, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.295902] ntfs3: nvme0n1p3: ino=3D6c08e, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.296252] ntfs3: nvme0n1p3: ino=3D6c2e3, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.297581] ntfs3: nvme0n1p3: ino=3D6c610, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.298321] ntfs3: nvme0n1p3: ino=3D6c7f9, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.298730] ntfs3: nvme0n1p3: ino=3D6cb24, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.299079] ntfs3: nvme0n1p3: ino=3D6ceda, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.299408] ntfs3: nvme0n1p3: ino=3D6d288, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.299727] ntfs3: nvme0n1p3: ino=3D6d533, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;63.300080] ntfs3: nvme0n1p3: ino=3D6d77b, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.299457] ntfs3: 8228 callbacks suppressed</span><br style=3D=
"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.299467] ntfs3: nvme0n1p3: ino=3D3e248, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.301391] ntfs3: nvme0n1p3: ino=3D5d7b7, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.302440] ntfs3: nvme0n1p3: ino=3D5853d, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.303123] ntfs3: nvme0n1p3: ino=3D3ca2e, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.303722] ntfs3: nvme0n1p3: ino=3D59a98, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.304292] ntfs3: nvme0n1p3: ino=3D59a9b, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.304981] ntfs3: nvme0n1p3: ino=3D59a9e, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.305629] ntfs3: nvme0n1p3: ino=3D59aa1, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.306120] ntfs3: nvme0n1p3: ino=3D3214f, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;68.306539] ntfs3: nvme0n1p3: ino=3D2077b, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.302727] ntfs3: 8502 callbacks suppressed</span><br style=3D=
"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.302736] ntfs3: nvme0n1p3: ino=3D5aa99, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.303992] ntfs3: nvme0n1p3: ino=3D50ee9, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.304744] ntfs3: nvme0n1p3: ino=3D20420, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.305080] ntfs3: nvme0n1p3: ino=3D258c, Correct links count -=
&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.305470] ntfs3: nvme0n1p3: ino=3D5a30d, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.307283] ntfs3: nvme0n1p3: ino=3D5a54c, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.307890] ntfs3: nvme0n1p3: ino=3D5c9de, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.308495] ntfs3: nvme0n1p3: ino=3D3d82d, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.309581] ntfs3: nvme0n1p3: ino=3D3d839, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;73.310016] ntfs3: nvme0n1p3: ino=3D25c77, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.304861] ntfs3: 11462 callbacks suppressed</span><br style=
=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px;=
 font-style: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.304868] ntfs3: nvme0n1p3: ino=3D5c714, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.305579] ntfs3: nvme0n1p3: ino=3D57d11, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.306151] ntfs3: nvme0n1p3: ino=3D5842d, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.307412] ntfs3: nvme0n1p3: ino=3D34e6, Correct links count -=
&gt; 1 (3).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.307843] ntfs3: nvme0n1p3: ino=3D5bb23, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.308509] ntfs3: nvme0n1p3: ino=3D5c722, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.310018] ntfs3: nvme0n1p3: ino=3D5d761, Correct links count =
-&gt; 1 (2).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.310717] ntfs3: nvme0n1p3: ino=3D33d18, Correct links count =
-&gt; 1 (3).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.311179] ntfs3: nvme0n1p3: ino=3D5d75b, Correct links count =
-&gt; 1 (3).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">[
 &nbsp;&nbsp;78.311605] ntfs3: nvme0n1p3: ino=3D5c708, Correct links count =
-&gt; 1 (3).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Men=
lo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-si=
ze: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">Joh=
an</span></div>
</blockquote>
</div>
<br>
<div>
<div dir=3D"auto" style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none; overflow-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;">
<div>--&nbsp;<br>
Anton Altaparmakov &lt;anton at&nbsp;tuxera.com&gt; (replace at with @)<br>
Lead in File System Development, Tuxera&nbsp;Inc., http://www.tuxera.com/<b=
r>
</div>
</div>
</div>
<br>
</div>
</body>
</html>

--_000_E522C750A7BD4B639C1974B435828F97tuxeracom_--


--===============4035329980169568702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4035329980169568702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============4035329980169568702==--

