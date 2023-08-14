Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5F377B5DE
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 14 Aug 2023 12:02:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qVUPG-0004SA-3K;
	Mon, 14 Aug 2023 10:02:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1qVUPF-0004S4-8Y
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 14 Aug 2023 10:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NdA8tqMeSs9We6Onw4kXnvdnWQ3OYivzpY2Wc7STpE4=; b=Gp+ModLlcl7XqvTeC2d2qDN3pr
 G/tLGhjoFnzm+BQdBraEDomgWnb63vHmQGU711QgLsxMKYe+bzBKyrB7luwMTCfstQdRiU4qEqTet
 FDUuB8VrYYBjh/osp6pGcljSAmSv2weLiPGfecBbdUQgqifb5hmE6Z7TXsDPUpNfqZqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NdA8tqMeSs9We6Onw4kXnvdnWQ3OYivzpY2Wc7STpE4=; b=H+YK/GmcgiQl0c0WQroya/c9VI
 GBVN46gH8XlywpPnIALKZ0fRCYWtbfO9o54fXBScEOUhR/94DlRnCADxzJ32fh4krbJCNvxIygR81
 L0FgLEjFEkDStZZK2jqE9FjyfV+BhALNbIdbJTBQZSsp9sZLY9lChHEzxyV3AS4A5MGs=;
Received: from mail-db8eur05on2117.outbound.protection.outlook.com
 ([40.107.20.117] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qVUPA-0003hE-76 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 14 Aug 2023 10:02:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ntob/eeb8YKEfDcHqfS/JezYAiDxA7e6eEvcIqfLt+INnSgWqdWrbKBmFmrpAm0ph74DQgoqKbDYHcOXvc+z+FBlog/QbkRG3dL8XT5dgnyk30MDUikeYKgO4Y3TsdGyM5mnMf9qf4Nda9eS7qxZFGqHDvppUeMW6h8QnsEgQ5cQ0bb8Ji2KZlqxvGjaXKHRFYFGSjBWPhmV8CAg/LOl6uiBMGyK/pJKNRAuGlEyIbwgbekM33gdH4KikrUjXPE57Vyv/Qk/dgfOhQ2VfPDAkSXNwjBVPip1CHLNMJwXYQU2Xwz1cfn8TbwkA1yq0C0nQmTL442rBHT+amXcfz45ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NdA8tqMeSs9We6Onw4kXnvdnWQ3OYivzpY2Wc7STpE4=;
 b=FYrewzWwHFAkVoPk6WvPbAHo78M6t1mMvHhTE0eHAvV87u70Av90vRwbyRInmLS3v6dfUlYBF6zMjCfGPmTES+UU15P+VdxKScs/NcOpGD5gB4yzerYfT0HSg456mGTtvW7h+ExFLIjeuUdn9rOzN2g6wgLvNR6TaDwD0OwwMYAECItShZdr40fi4C2m7gWMux8fJ1hjib0ekBGAv/RauUir4An784RiiLQN16x/+dsGn2O0m+MbIqpt3TPGMX5RQGNkvpc7Ua3VITHiQslbdou0z9zpahWqJggI8Vv2Hz9cPnhFqBXP010qx9YUtjEf0cuC/td3uT4Td9EE6/k48A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NdA8tqMeSs9We6Onw4kXnvdnWQ3OYivzpY2Wc7STpE4=;
 b=GCwe9SU03eAhHSxAW8JuSeJBn9OkAUsvD6elg4GKYeG9GspWL1Y91Cy/CXwKSkMhUFKiAGbp/V7EVSqMUmm+eMvFFW0C4jFF6JrLSqCTWltX99bqztWLr+B28YNLP1jV0nwKPF9tVO9nGohZazMtqmf9MXJWZi3MhR2AG+4VnzVv3ODKbi+koKkq+06maiMlM5+acX8TTf/EAouVPhb8xiRMabOSPhXF0vc0bcH1IxywGPSzxEKTbUwlbxNBGCGzvPa7vU9gDUlHrdby+5rFuzOhUmQMMcEtOG4UBJdvNtZMSSxj5/ucpn8PzbgmPUtZOoczfXIJsvySWD6KC4MC6g==
Received: from AM0PR06MB5203.eurprd06.prod.outlook.com (2603:10a6:208:104::33)
 by PAXPR06MB7455.eurprd06.prod.outlook.com (2603:10a6:102:150::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 09:29:10 +0000
Received: from AM0PR06MB5203.eurprd06.prod.outlook.com
 ([fe80::734f:7552:66ca:e64c]) by AM0PR06MB5203.eurprd06.prod.outlook.com
 ([fe80::734f:7552:66ca:e64c%3]) with mapi id 15.20.6678.019; Mon, 14 Aug 2023
 09:29:10 +0000
To: Namjae Jeon <linkinjeon@kernel.org>
Thread-Topic: [PATCH v4] ntfs : fix shift-out-of-bounds in ntfs_iget
Thread-Index: AQHZzauNYN9mh3sLtUiJEWtX2JDiT6/o+qEAgACNioA=
Date: Mon, 14 Aug 2023 09:29:10 +0000
Message-ID: <BF7AB30A-8AE7-4819-B99D-8147D455AB95@tuxera.com>
References: <20230813055948.12513-1-ghandatmanas@gmail.com>
 <CAKYAXd8A9+Zcg=8wLV0h4fdcvybp=BB-a0yRKSTHmk0sQi26_A@mail.gmail.com>
In-Reply-To: <CAKYAXd8A9+Zcg=8wLV0h4fdcvybp=BB-a0yRKSTHmk0sQi26_A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB5203:EE_|PAXPR06MB7455:EE_
x-ms-office365-filtering-correlation-id: c24b74f3-773a-43f5-d4af-08db9ca8ea3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jg8fCPs30XddNF/aunYrlbfDPd42cq26AI9XkcQI01PaW4EHXPptqvOfLGRPWf2gWhGGxNuJ0bKmblJD/34om8GYgEisoC/OEOcPjS2f6PRyiX8/eqXIjCvJf0ug0Acc0J/Tqwr0p0daysXjAa58ftW2NLDP93peMTArnthxA/+4+dxHAq6BVEvsmEqQKUdHEOMPF/xvReukYFqifedpm1qPAY3P+nwRSSRWK6Uaf6qdelq04DVbfVMTr50CYKyAmPcVovOTNy86XrvYjXgJArXIjbdy34OuF8W1a57xRQePzxRGEFibg4Bhlxe4sp333Z9SatsOjzWq0ZK8OKm+4Zq07j1Cx5M2bQXZ06eaiQKSq2mBImLCD48kTp/0/PE5Z+uLFTAchaF5nQgtsvHNsgqJyxWr454YKleuNR2MW3vR/ov6pXNRyxYkA/XTXWer87YMwqkhfrTe0EJ3LG4ZhKj9d0I4l61CQEDZDqzOrMruJYGimetOU8oC5bxPd6Bwgknuqi4L2QEeYfczdGzN6lfvEsvmVjbZINu7k2992ssQtUUH0yy93OS0rMFqeuGlHZNxgUIYAlH/+ovpvhApPT9MahG+kCiuic42qyCtuAS7NVnt202eSBkXOS/8PTeESObhj5ZwrbrYxUaWeENcu1Jh0Pte/v6vGzka5jUG6Sg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR06MB5203.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(346002)(39840400004)(396003)(376002)(451199021)(1800799006)(186006)(66899021)(71200400001)(966005)(6486002)(76116006)(91956017)(6506007)(478600001)(33656002)(36756003)(86362001)(83380400001)(2906002)(6512007)(26005)(66946007)(53546011)(2616005)(38070700005)(38100700002)(122000001)(4326008)(316002)(66556008)(64756008)(66476007)(8676002)(54906003)(66446008)(6916009)(5660300002)(8936002)(41300700001)(99710200001)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j78gJYenGX8rrXzIzWYSlaBZPmeXds3jv3qIgEu8GBxMejDRAzoKO3xITGg1?=
 =?us-ascii?Q?vJH6AT8bkIuZD8ILAFibd7JaQJ4+9ntbvpvsgjwm65V3KECH9Zm8ZXijSiZC?=
 =?us-ascii?Q?5lGYZ7op0blCm9iT4con//pVxihL09oHOBySJrnDi6WlJXV4e972nJtKa4T4?=
 =?us-ascii?Q?2BgH63T5jM8zLk6GjzVZ2QPLu08kjsdvpUfOHk1y6xYezt+ZHgt9WVzTZB0Q?=
 =?us-ascii?Q?BWQNlLzU7lA6dI/YuMlQMQf54YEDEv6ymTQqSYa2W7Fws4cVR1nlVslBMMhK?=
 =?us-ascii?Q?Uk3WxEi+hAGfFNbwWqwQkWHYxfdzoD4v6Ct2rPt4sNs+a9n8WD69ZaTd0AOz?=
 =?us-ascii?Q?ifybASM8H7QrOKp5XZ9yaspY/gquBqtCjU2NwqgxtIpRHDhLaykfl1GEOQbZ?=
 =?us-ascii?Q?4VunVuH94YSz5CTSyF3vEwvnvJxyTe0Q+ecwFmKO4PgLZaodLNNXigQda/mf?=
 =?us-ascii?Q?HNt50UfFulcAReYSI1SruVtqgisqEsFabS7W5yEXB1nEdY4adydEabbuUQB/?=
 =?us-ascii?Q?uIy7dwh7kcjKfSH728CN/gzuxKQLKwMoh5u0URjpAnysRhxOYAb97h5wWOVi?=
 =?us-ascii?Q?jA3ZVsdOz3Q/ibArhMpM7TvGijbcmfD6kBKtKMsi8jC9DSI7/9BhapkcPKZG?=
 =?us-ascii?Q?6AsbQW0CMKfvhaS1E1kW7rw9bGL9nCkDA80y/rtKkA4PMNAY0OpaavMfHTRr?=
 =?us-ascii?Q?1LWNrUmBjnmp9MPBWWzVBe9wcGmDLs0kb5DzTiO6mqQdmWZbkYn0u5Kw8Tgx?=
 =?us-ascii?Q?ZhrIP+w9Wp7nAH0Yz5TX89vDsvTFIoXPrkuN8zcEFu1zhAQ60XPOHtXGf1Tf?=
 =?us-ascii?Q?blfWKpteDD7vYKI3rCCJD5+Gk5PZU+1TT+U5Yn/AbFDSwtKzmN9C/pKLN6W0?=
 =?us-ascii?Q?dt6TPX4klkCUo7+rauQUlZDo9tB0weoJ+HWfe+vpvEzMFrj/iJY61WanUk6i?=
 =?us-ascii?Q?EfmFmF0QVkwlhNrEfMeHhFMHZ1zTWtVmY8gZxoMFqD/SZ8b6Ttis+D7Vq1Fh?=
 =?us-ascii?Q?rgakqjoD35FKv3OkaLSaVPBBC1V+BKQdWZQgoTZ2n7Om83D+mYzU1amZmzQO?=
 =?us-ascii?Q?gvg05IgRjNJ8eOdksWc4ekglcAuN75vjoeIuomM+6HBpX/AZYA2z7aO9eM0c?=
 =?us-ascii?Q?AYOG02x2QAEkkT3UEdApehOpKy5CJVKd72dq5Z+05Pu0sQy2fo82SIH8PesF?=
 =?us-ascii?Q?sdAat9QiDT+9BHhPrTFxZ/P5t6vayjyLAmZP2REB6J7nWkYjZ9AT7+2mwZgg?=
 =?us-ascii?Q?DTnXxCGnkChIKH2g+mp6Bq+2YISmV19XYhQ0XDCBkaTRw8zBdckR1pd80oii?=
 =?us-ascii?Q?DH7eRQ4nYQuK1mKxQakxVIeBu/GTwiAz7wrLvOKjEWjhIy7ZSyEr0VmkGqyV?=
 =?us-ascii?Q?/MZgzpsVEm9ZsaHsL8EGOD1LnuvP8SeY41bAnQf4pbOTjfLSYMkxdNpt4axD?=
 =?us-ascii?Q?7CzrMSRXbHmCizdwSXqnhAY9i8D0y+VGyo72aMncGHuPqCs1otCOfFRaue5r?=
 =?us-ascii?Q?+oana+I9NGK7QN6zsOiF5/cR1jSAMAS5egMRI2T/uKxWXaDjNmoN1ka45cgJ?=
 =?us-ascii?Q?FmMyZVLhsjzwivrSdgwu+0IWK9PTgbkdWcrvYU/W?=
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB5203.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c24b74f3-773a-43f5-d4af-08db9ca8ea3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2023 09:29:10.1524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gSvmcNuvhl5pq1T9+sHx/vERSGuwJcbUHueCxibt7E+Pzpo7TkbCVnf7Seg8z42KY3ZNNvw/usUPNHmjWYehvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR06MB7455
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Namjae,
 The compression unit is not only used for compressed
 files. It is also used for sparse files. This is from some internal
 documentation
 I wrote: The compression unit expressed as the log to the base 2 of the number
 of clusters in a compression unit. 0 means not compressed. (This effectively
 limits the compression unit size to be a power of two [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.117 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.117 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1qVUPA-0003hE-76
Subject: Re: [Linux-ntfs-dev] [PATCH v4] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: Manas Ghandat <ghandatmanas@gmail.com>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com"
 <syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "Linux-kernel-mentees@lists.linuxfoundation.org"
 <Linux-kernel-mentees@lists.linuxfoundation.org>
Content-Type: multipart/mixed; boundary="===============8891540855757484988=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============8891540855757484988==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BF7AB30A8AE74819B99D8147D455AB95tuxeracom_"

--_000_BF7AB30A8AE74819B99D8147D455AB95tuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Namjae,

The compression unit is not only used for compressed files.  It is also use=
d for sparse files.  This is from some internal documentation I wrote:

The compression unit expressed as the log to the base 2 of the number of cl=
usters in a compression unit.  0 means not compressed.  (This effectively l=
imits the compression unit size to be a power of two clusters.)  WinNT4 onl=
y uses a value of 4.  Sparse files have this set to 0 on XPSP2.  On Windows=
 7, sparse files have this set to 4 for cluster size <=3D 4096, to 3 for cl=
uster size 8192, to 2 for cluster size 16384, to 1 for cluster size 32768 a=
nd to 0 for cluster size 65536, i.e. for cluster size >=3D 4096, the compre=
ssion unit is set such that 2^compression unit * cluster_size =3D 65536 byt=
es, i.e. so that the compression block size is 65536 bytes thus for cluster=
 size >=3D 4096, the compression unit can be calculated as compression_unit=
 =3D log2(65536 / cluster_size).  And the closest we we can get to approxim=
ating Windows behaviour is to use compression_unit 4 and only allow it for =
cluster size <=3D 4096 when NTFS version is < 3.0, use compression_unit 0 a=
nd only allow it for cluster size <=3D 4096 when NTFS version is =3D 3.0 an=
d use the correct number as described above for Windows 7 when NTFS version=
 is >=3D 3.1.  This is not ideal as XP has NTFS version 3.1, too but XP is =
already out of support so it is better to be aligning ourselves with curren=
t Windows versions like 7 and 8.  Finally, note that even Windows 7 disable=
d compressed files when cluster size > 4096 thus the new compression unit o=
nly applies to sparse files and nothing changes for compressed files (unles=
s Windows 8 or later changes this behaviour which is as yet untested).

The correct check that is missing here is:

if (NInoSparse(ni) && a->data.non_resident.compression_unit && a->data.non_=
resident.compression_unit !=3D vol->sparse_compression_unit) {
ntfs_error(vi->i_sb, "Found non-standard compression unit (%u instead of 0 =
or %d).  Cannot handle this.",
a->data.non_resident.compression_unit, vol->sparse_compression_unit);
err =3D -EOPNOTSUPP;
goto unm_err_out;
}

And vol->sparse_compression_unit is set at mount time like this:

        vol->sparse_compression_unit =3D 4;
        if (vol->cluster_size > 4096) {
                switch (vol->cluster_size) {
                case 65536:
                        vol->sparse_compression_unit =3D 0;
                        break;
                case 32768:
                        vol->sparse_compression_unit =3D 1;
                        break;
                case 16384:
                        vol->sparse_compression_unit =3D 2;
                        break;
                case 8192:
                        vol->sparse_compression_unit =3D 3;
                        break;
                }
        }

Best regards,

Anton

On 14 Aug 2023, at 02:02, Namjae Jeon <linkinjeon@kernel.org> wrote:

2023-08-13 14:59 GMT+09:00, Manas Ghandat <ghandatmanas@gmail.com<mailto:gh=
andatmanas@gmail.com>>:
Hi,
Currently there is not check for ni->itype.compressed.block_size when
a->data.non_resident.compression_unit is present and NInoSparse(ni) is
true. Added the required check to calculation of block size.

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=3D4768a8f039aa677897d0
Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b
---
V3 -> V4: Fix description
V2 -> V3: Fix patching issue.
V1 -> V2: Cleaned up coding style.

fs/ntfs/inode.c | 9 +++++++++
1 file changed, 9 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 6c3f38d66579..a657322874ed 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1077,6 +1077,15 @@ static int ntfs_read_locked_inode(struct inode *vi)
goto unm_err_out;
}
if (a->data.non_resident.compression_unit) {
+ if (a->data.non_resident.compression_unit +
+ vol->cluster_size_bits > 32) {
+ ntfs_error(vi->i_sb,
+ "Found non-standard compression unit (%u).   Cannot handle this.",
+ a->data.non_resident.compression_unit
+ );
+ err =3D -EOPNOTSUPP;
+ goto unm_err_out;
+ }
compression_unit seems to be used when the ntfs inode is compressed.
And it should be either 0 or 4 value. So, I think we can set related
compression block variables of ntfs inode only when ni is
NInoCompressed like this... Anton, Am I missing something ?

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index efe0602b4e51..e5a7d81d575b 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1076,7 +1076,8 @@ static int ntfs_read_locked_inode(struct inode *vi)
                                       err =3D -EOPNOTSUPP;
                                       goto unm_err_out;
                               }
-                               if (a->data.non_resident.compression_unit) =
{
+                               if (NInoCompressed(ni) &&
+                                   a->data.non_resident.compression_unit) =
{
                                       ni->itype.compressed.block_size =3D =
1U <<
                                                       (a->data.non_residen=
t.
                                                       compression_unit +

ni->itype.compressed.block_size =3D 1U <<
(a->data.non_resident.
compression_unit +
--
2.37.2

--
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


--_000_BF7AB30A8AE74819B99D8147D455AB95tuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <7981F3DA5BC3934CB10D122A784D8F7C@eurprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; line-br=
eak: after-white-space;">
Hi Namjae,
<div><br>
</div>
<div>The compression unit is not only used for compressed files. &nbsp;It i=
s also used for sparse files. &nbsp;This is from some internal documentatio=
n I wrote:</div>
<div><br>
</div>
<div>The compression unit expressed as the log to the base 2 of the number =
of clusters in a compression unit. &nbsp;0 means not compressed. &nbsp;(Thi=
s effectively limits the compression unit size to be a power of two cluster=
s.) &nbsp;WinNT4 only uses a value of 4. &nbsp;Sparse
 files have this set to 0 on XPSP2. &nbsp;On Windows 7, sparse files have t=
his set to 4 for cluster size &lt;=3D 4096, to 3 for cluster size 8192, to =
2 for cluster size 16384, to 1 for cluster size 32768 and to 0 for cluster =
size 65536, i.e. for cluster size &gt;=3D 4096,
 the compression unit is set such that 2^compression unit * cluster_size =
=3D 65536 bytes, i.e. so that the compression block size is 65536 bytes thu=
s for cluster size &gt;=3D 4096, the compression unit can be calculated as =
compression_unit =3D log2(65536 / cluster_size).
 &nbsp;And the closest we we can get to approximating Windows behaviour is =
to use compression_unit 4 and only allow it for cluster size &lt;=3D 4096 w=
hen NTFS version is &lt; 3.0, use compression_unit 0 and only allow it for =
cluster size &lt;=3D 4096 when NTFS version is =3D 3.0
 and use the correct number as described above for Windows 7 when NTFS vers=
ion is &gt;=3D 3.1. &nbsp;This is not ideal as XP has NTFS version 3.1, too=
 but XP is already out of support so it is better to be aligning ourselves =
with current Windows versions like 7 and 8.
 &nbsp;Finally, note that even Windows 7 disabled compressed files when clu=
ster size &gt; 4096 thus the new compression unit only applies to sparse fi=
les and nothing changes for compressed files (unless Windows 8 or later cha=
nges this behaviour which is as yet untested).</div>
<div><br>
</div>
<div>The correct check that is missing here is:</div>
<div><br>
</div>
<div>if (NInoSparse(ni) &amp;&amp; a-&gt;data.non_resident.compression_unit=
 &amp;&amp; a-&gt;<span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0=
, 0);">data.non_resident.</span>compression_unit !=3D vol-&gt;sparse_compre=
ssion_unit) {</div>
<div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>ntfs_e=
rror(vi-&gt;i_sb, &quot;Found non-standard compression unit (%u instead of =
0 or %d). &nbsp;Cannot handle this.&quot;,</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>a-&gt;=
<span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">data.non_re=
sident.</span>compression_unit, vol-&gt;sparse_compression_unit);</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>err =
=3D -EOPNOTSUPP;</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>goto u=
nm_err_out;</div>
<div>}</div>
</div>
<div><br>
</div>
<div>And&nbsp;<span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0)=
;">vol-&gt;sparse_compression_unit is set at mount time like this:</span></=
div>
<div><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);"><br>
</span></div>
<div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; vol-&gt;sparse_compression_unit =3D 4;</di=
v>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if (vol-&gt;cluster_size &gt; 4096) {</div=
>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; switch (vol-&g=
t;cluster_size) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; case 65536:</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; vol-&gt;sparse_compression_unit =3D 0;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; break;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; case 32768:</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; vol-&gt;sparse_compression_unit =3D 1;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; break;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; case 16384:</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; vol-&gt;sparse_compression_unit =3D 2;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; break;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; case 8192:</di=
v>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; vol-&gt;sparse_compression_unit =3D 3;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; break;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; }</div>
</div>
<div><br>
</div>
<div>Best regards,</div>
<div><br>
</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>Anton<=
br>
<div><br>
<blockquote type=3D"cite">
<div>On 14 Aug 2023, at 02:02, Namjae Jeon &lt;linkinjeon@kernel.org&gt; wr=
ote:</div>
<br class=3D"Apple-interchange-newline">
<div><span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; text-decoration: none; float: none; display: inline !important;=
">2023-08-13
 14:59 GMT+09:00, Manas Ghandat &lt;</span><a href=3D"mailto:ghandatmanas@g=
mail.com" style=3D"font-family: Menlo-Regular; font-size: 11px; font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: auto; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke=
-width: 0px;">ghandatmanas@gmail.com</a><span style=3D"caret-color: rgb(0, =
0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-alig=
n: start; text-indent: 0px; text-transform: none; white-space: normal; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; float=
: none; display: inline !important;">&gt;:</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">Hi,=
</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; text-decoration: none;">
<blockquote type=3D"cite" style=3D"font-family: Menlo-Regular; font-size: 1=
1px; font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration: none;">
Currently there is not check for ni-&gt;itype.compressed.block_size when<br=
>
a-&gt;data.non_resident.compression_unit is present and NInoSparse(ni) is<b=
r>
true. Added the required check to calculation of block size.<br>
<br>
Signed-off-by: Manas Ghandat &lt;ghandatmanas@gmail.com&gt;<br>
Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com<br>
Closes: https://syzkaller.appspot.com/bug?extid=3D4768a8f039aa677897d0<br>
Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b<br>
---<br>
V3 -&gt; V4: Fix description<br>
V2 -&gt; V3: Fix patching issue.<br>
V1 -&gt; V2: Cleaned up coding style.<br>
<br>
fs/ntfs/inode.c | 9 +++++++++<br>
1 file changed, 9 insertions(+)<br>
<br>
diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c<br>
index 6c3f38d66579..a657322874ed 100644<br>
--- a/fs/ntfs/inode.c<br>
+++ b/fs/ntfs/inode.c<br>
@@ -1077,6 +1077,15 @@ static int ntfs_read_locked_inode(struct inode *vi)<=
br>
<span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"App=
le-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-sp=
an" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=
=3D"white-space: pre;"></span>goto
 unm_err_out;<br>
<span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"App=
le-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-sp=
an" style=3D"white-space: pre;"></span>}<br>
<span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"App=
le-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-sp=
an" style=3D"white-space: pre;"></span>if (a-&gt;data.non_resident.compress=
ion_unit)
 {<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span>if
 (a-&gt;data.non_resident.compression_unit +<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span>vol-&gt;cluster_size_bits
 &gt; 32) {<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"whi=
te-space: pre;"></span>ntfs_error(vi-&gt;i_sb,<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"whi=
te-space: pre;"></span>&quot;Found
 non-standard compression unit (%u). &nbsp;&nbsp;Cannot handle this.&quot;,=
<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"whi=
te-space: pre;"></span>a-&gt;data.non_resident.compression_unit<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"whi=
te-space: pre;"></span>);<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"whi=
te-space: pre;"></span>err
 =3D -EOPNOTSUPP;<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"whi=
te-space: pre;"></span>goto
 unm_err_out;<br>
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" sty=
le=3D"white-space: pre;"></span>}<br>
</blockquote>
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">com=
pression_unit
 seems to be used when the ntfs inode is compressed.</span><br style=3D"car=
et-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-s=
tyle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">And
 it should be either 0 or 4 value. So, I think we can set related</span><br=
 style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size:=
 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">com=
pression
 block variables of ntfs inode only when ni is</span><br style=3D"caret-col=
or: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; text-align: start; text-indent: 0px; text-transform: none; white-space: n=
ormal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">NIn=
oCompressed
 like this... Anton, Am I missing something ?</span><br style=3D"caret-colo=
r: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 text-align: start; text-indent: 0px; text-transform: none; white-space: no=
rmal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: n=
one;">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-si=
ze: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">dif=
f
 --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">ind=
ex
 efe0602b4e51..e5a7d81d575b 100644</span><br style=3D"caret-color: rgb(0, 0=
, 0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">---
 a/fs/ntfs/inode.c</span><br style=3D"caret-color: rgb(0, 0, 0); font-famil=
y: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">+++
 b/fs/ntfs/inode.c</span><br style=3D"caret-color: rgb(0, 0, 0); font-famil=
y: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">@@
 -1076,7 +1076,8 @@ static int ntfs_read_locked_inode(struct inode *vi)</sp=
an><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font=
-size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; text-align: start; text-indent: 0px; text-transf=
orm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;err
 =3D -EOPNOTSUPP;</span><br style=3D"caret-color: rgb(0, 0, 0); font-family=
: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; text-align: start; text-ind=
ent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;goto
 unm_err_out;</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Me=
nlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; text-align: start; text-indent:=
 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</span><br style=3D"caret-color: rgb(0, 0=
, 0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">-
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (a-&gt;data.non_resident.compression_unit=
) {</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regula=
r; font-size: 11px; font-style: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">+
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (NInoCompressed(ni) &amp;&amp;</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: =
11px; font-style: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; text-align: start; text-indent: 0px; text-transform: no=
ne; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">+
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a-&gt;data.non_resid=
ent.compression_unit) {</span><br style=3D"caret-color: rgb(0, 0, 0); font-=
family: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; text-align: start; te=
xt-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;ni-&gt;itype.compressed.block_size
 =3D 1U &lt;&lt;</span><br style=3D"caret-color: rgb(0, 0, 0); font-family:=
 Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;(a-&gt;data.non_resident.</span><br style=3D"car=
et-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-s=
tyle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion: none;">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;compression_unit
 +</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular=
; font-size: 11px; font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-=
transform: none; white-space: normal; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; text-decoration: none;">
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
<span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"App=
le-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-sp=
an" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=
=3D"white-space: pre;"></span>ni-&gt;itype.compressed.block_size
 =3D 1U &lt;&lt;<br>
<span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"App=
le-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-sp=
an" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=
=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"white=
-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"white-space: p=
re;"></span>(a-&gt;data.non_resident.<br>
<span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"App=
le-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-sp=
an" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=
=3D"white-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"white=
-space: pre;"></span><span class=3D"Apple-tab-span" style=3D"white-space: p=
re;"></span>compression_unit
 +<br>
--<br>
2.37.2</blockquote>
</div>
</blockquote>
</div>
<br>
<div>
<div>--&nbsp;<br>
Anton Altaparmakov &lt;anton at&nbsp;tuxera.com&gt; (replace at with @)<br>
Lead in File System Development, Tuxera&nbsp;Inc., http://www.tuxera.com/<b=
r>
Linux NTFS maintainer</div>
</div>
<br>
</div>
</body>
</html>

--_000_BF7AB30A8AE74819B99D8147D455AB95tuxeracom_--


--===============8891540855757484988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8891540855757484988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============8891540855757484988==--

