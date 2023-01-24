Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B79F67A563
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 24 Jan 2023 23:08:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pKRSb-0008El-Bw;
	Tue, 24 Jan 2023 22:08:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sanan.hasanov@Knights.ucf.edu>) id 1pKPPO-0003NT-HC
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 24 Jan 2023 19:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JsTcllUmSdG8veudN2MqkuJA7FkUJ/f7uWAWRnu6QGk=; b=fubcLC/kVNNHpMDpTH9wHKZlko
 iSiOtCqqY72gsn9SsdJ/W15rPpkFtDV4aWaSGa3HkHP6YBm+mRLbk5DLoa/wY/AUOlskLuFf74b3A
 uimCK5bOel5cgcJ7rH4AB2BDQyQhC2/TcbAmwrv4wis5A0RhDNn52Ij8Zqv7mJo0c9Yg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JsTcllUmSdG8veudN2MqkuJA7FkUJ/f7uWAWRnu6QGk=; b=a
 5oJoozDw0ioj/ILZeN5VPjEpyHRzZ0Qqn43epZoxz0VJEZaLF90aNWSKFak4PvqrNltWiy9xH8pM+
 ZO4KBWjmQ4bRdLhU/VpY4M1yZ0MWi76kK+J2Ks57yd5vDomUift6YbzZsi6TbRwqX3vBJNs7v76wa
 dPDAOBoaUg6Mpwyk=;
Received: from mail-dm6nam10on2057.outbound.protection.outlook.com
 ([40.107.93.57] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKPPF-00EZjo-IK for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 24 Jan 2023 19:56:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LGLHzxujv7ivQwAp99iWVqM+dn7AkOiWvsF0mPC8ZFI22aBmDGYBHMjLyTOEIyEy4tvkacf/Kah3+HO0u2UQTD90/XBsSdFHQb+Nr56Z3ZxpVAgHaUYf0KqLmSr4t9+8waTSO0KdnbUSrYQehUXeTRxFVZMtb9muZPMh/svWi6Dav0eAHVVDDuVtjsoxPBU69mURQ4X4/+30XK1j9O090xEeuci41pqKi9FAuEN1rsRB7Hsu4lV5vm3pGi5e8SefUE4uUq3zyRGcBHFtSLvNJoVHTxihFA0gk/tq9rdMzJpFJlZeTt6PBk14Ba0fEvE/YGYnwQgTHUyH90nx6VlL6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JsTcllUmSdG8veudN2MqkuJA7FkUJ/f7uWAWRnu6QGk=;
 b=CvrSOgPQ7hmA6p+zzLv9Ydtjk3g2kHqUC9EC6wFcZMEdZAe437fJNrbkDevLh86X7heFCskIE79Wj4L26ttdBH6Z2RFHwcpkozKolFj43RITcW67CQv3AbHqEJsNh/i1654HOFgcrQ+lTnWWQQGrIzX9OvoZvnPXfP1QBXCH1VhrtuiHfCpL7UmraBRfmhc0sjDwLYlGkSPY1TYn5zeVB8uCmzi+OmkBE5WhhohDMcYdDwLmP5F4cK3dUMX542NHR1H00UyCf9AWXGj71JZ9T916eTgeIlGGc6dhUS6AuEugKi67XYjBrZv9FgHtmjNOhor96PfnXFREle4IazQC1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=knights.ucf.edu; dmarc=pass action=none
 header.from=knights.ucf.edu; dkim=pass header.d=knights.ucf.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=knightsucfedu39751.onmicrosoft.com;
 s=selector2-knightsucfedu39751-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JsTcllUmSdG8veudN2MqkuJA7FkUJ/f7uWAWRnu6QGk=;
 b=gAuvawJDkBY9tAd3ck+g8RXtq5x8iVnp8+rpAOmGBrgiujUwJnl5X4PVluVCdqW/G2KRdV3mSw4txh7H61NLdcAJy4+r3m1j0PSxZAs/B6GzymvMwd7DPN7ch8KkSIub49+eWTducwYMRMkMphkMxh68ywibmeZifP655YK0yLI=
Received: from IA1PR07MB9830.namprd07.prod.outlook.com (2603:10b6:208:44b::14)
 by DM6PR07MB4268.namprd07.prod.outlook.com (2603:10b6:5:c4::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 16:22:14 +0000
Received: from IA1PR07MB9830.namprd07.prod.outlook.com
 ([fe80::670b:627c:6340:583]) by IA1PR07MB9830.namprd07.prod.outlook.com
 ([fe80::670b:627c:6340:583%3]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 16:22:13 +0000
From: Sanan Hasanov <sanan.hasanov@Knights.ucf.edu>
To: "anton@tuxera.com" <anton@tuxera.com>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: kernel BUG in ntfs_perform_write
Thread-Index: AQHZMA79jGy0lztHWEaxuGXqUfjbsA==
Date: Tue, 24 Jan 2023 16:22:13 +0000
Message-ID: <IA1PR07MB9830B42718544D2FCAFD20E6ABC99@IA1PR07MB9830.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=Knights.ucf.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR07MB9830:EE_|DM6PR07MB4268:EE_
x-ms-office365-filtering-correlation-id: ca3439d4-ffd8-4ed9-7759-08dafe2726f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +ZQmSDht5zkWavr2jGWXQHYl9iPFtCnarWyKIKeo4t4+QK4QcefYbVZrULhDvXp0ZPIc80j6r1oKT4P+bo5FIDiAAwY96vF/BTK3+giXBvB4mynSeg0VTAL/qT3DJh/lWxA3MO+IbsxxcdUdm9mPth5V8vZBwMStgRJiktIrV2XUesLUqD1KCzeIxOpaWf8ldWeNG74viYhEsZH6b1bGqchBioeBG73hpChBDZ8uDvOUbiXN91+JwhX7gaHiScMiLK5YDScdUdvzPsnmxkZ9hhOtlnI7yNbcr1wYEK+JCUBuvCMIInRL2kCYWtBMKJ6hm1zm2tq7Qm047zDwPizDyqagHoeXaRoOqAZJ11cWJp5rBGB2ar/C4q60JWIBAeBzvW4u6mcV+u79DM9RAun5DiqMZ6VcaGFzNTXpYav1/WQoV01nMJZz+qcmsyv7hlA65mtWjfjFypjIZ39nxPbGvaz5RSJgbK0waLHMssXXc5uL8r/Webf4Zjj5rDPKO6VwYwKqWJXKxeT+S+QVm7anUxakHVJbdJbOZtufOdJSh/mq7jlSBGYX81868/N2jcg3GWHu9SkJFbzrKJ9OL9TyWLvbEy7MQ/iwjXX17nOyggCUeTsssD85kNx/zsV59WPlzyqrV8wI1113OLDPFRKhd+2W3J3u3F9m/pfVISW3H0poWhu/DVev/MswqHO/8Y5cMAbTcaUO1bJe+31NaMrqLaQja0nrnFbrTo3Hxhzq1GH2MZN7KldVFhbForKy1q46aujWcxfcP2T8n0srN2aAJvY8t2fHhyG8u766nMcuC6g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR07MB9830.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(39860400002)(376002)(396003)(346002)(366004)(136003)(451199015)(966005)(5660300002)(44832011)(2906002)(33656002)(5930299009)(7696005)(478600001)(186003)(6506007)(71200400001)(9686003)(38070700005)(75432002)(786003)(110136005)(54906003)(316002)(45080400002)(66476007)(64756008)(4326008)(8676002)(66556008)(66946007)(76116006)(91956017)(66446008)(8936002)(52536014)(86362001)(55016003)(83380400001)(41300700001)(122000001)(38100700002)(41320700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?WWOjdzcLGx/aKVvwj57+l7WxM/Jme+mwlA2eeNolVT/llrrNPVCwEutCdW?=
 =?iso-8859-1?Q?/S/gDkXwZYdOFRxuVDBKWLCX/XeMw9CLLpllFHfSUja1TE4t8oMezKZj85?=
 =?iso-8859-1?Q?2w/u6L9hWvHbqK/cuhkhtYOqpIbaZRBJIEnZKnVj0Fqml3CG+IplaBfMFq?=
 =?iso-8859-1?Q?zpmyMCtFnz90uj8tE0Fs0Vocy03fHydJKzpPC6MeWPjJB74ht29uvFlN4m?=
 =?iso-8859-1?Q?1YQ1au4iuH032B0UlRaGESkdCFW0x6gEjevupKNFkHUOPeYMzifX2XSAa1?=
 =?iso-8859-1?Q?mJYlS1pfqCWZnrzq2+OdwkGdS/6iuF4YU/EwXxHOQsMO6ERUl81v6JyXPU?=
 =?iso-8859-1?Q?aLLBbpc0TsyFydlUmYF6JH0dve5hZ1rkP8WYOh8F7nIdOqZfTlkfcQaPMi?=
 =?iso-8859-1?Q?qZZsIgZUPqJOyzVHNZOzyZNjeua/cE+uu6AsRDVv5vLDXpTVQ/0wj0wnef?=
 =?iso-8859-1?Q?JxjjKDxZ/GL/GBAEAS4BVFLljU9R1Swn3iQTZxYyptX/YbJDBw3pDVKtaa?=
 =?iso-8859-1?Q?sXJReZmztiuF3fSJRkFsuJ3FrebfwVUCY20BSmELteDNEUw0NBXHjcEMnJ?=
 =?iso-8859-1?Q?nLj8c/CMxh4PTXX0jEdqIbyp8ju7Ro2RZxkx3r2/hWFzR95TP/FvrgV/JC?=
 =?iso-8859-1?Q?5Y/nEDHyz5+6TvfXyjrRVmURVVmfn8e3pPb8USr9BI+TcwpvupENAVZrP1?=
 =?iso-8859-1?Q?v7j7Fy+yGbQCs1kzJiYKY8px8Pnrw31MOfNtysDUaRAWYWPt3Qqg45Lqw4?=
 =?iso-8859-1?Q?ABzBQnRIF1fdejRuCbrFqSB1AXb8SixizDiXsZIk0sS2HMKSMTyaQX5ySq?=
 =?iso-8859-1?Q?7UL1BuOXTBvsIG+7CIF/TKl4WAxOgpdgOhZnoZPqcWwG8t32/Q33kasRmn?=
 =?iso-8859-1?Q?VO5kjIgxFUkJVSeATnO7wqv70xtu4DKnihoqklQZuOz0twn4Pdx1KDk9Rh?=
 =?iso-8859-1?Q?5kqAb50y5z1dUseIXJIkyG6foQoDhDFdzGzfV9Y4aElKhzBFt8KPkGz+ql?=
 =?iso-8859-1?Q?DWYJezLt+g/VASipwmSVpnrYLF+qiLRwh/C3PW/KTAurXY7yz2nnfS2gth?=
 =?iso-8859-1?Q?rWME6PF82xJRR/8I6loWpq10+RSCC71XmHwUiwp16MdpSI7K9xUs250YD7?=
 =?iso-8859-1?Q?06kkwqgavJJ78Axu4eZGaDn+iA8fAHCxzmlSR8sxZWsyFefYnsjeABHwG4?=
 =?iso-8859-1?Q?RAmApfcybYOhqpthkxAqQmpt9N9c+37KGY6ZDRdXzPrUd3PTyB+viXsv9v?=
 =?iso-8859-1?Q?0uPSZwFD0I7zjGDusRzIWEK4yjuKFnfH36PYLJHe5HXZG1zdyggJIg5pix?=
 =?iso-8859-1?Q?2TFwtAnszuJa7s1jCJIYJeuFvlmc0ohrDwF8cHHivgjHhgCpS7cWZ1jmB+?=
 =?iso-8859-1?Q?pLFP/O1BW2pT9gJe6mbfMtJ8z6pH0+InCWzPJHvBaNjqPEAMWvgOxxxqXT?=
 =?iso-8859-1?Q?+tCGtzMbz1c9wQpno9qCuq7jGVKyA+AP1m3dJYf7Nf0HaGSq9JGcW0iUap?=
 =?iso-8859-1?Q?MEyepGKYHaXPAIpfto5060ZgVcwF0sSSl2uTiMJiyfhJU0y3xetOyOLsTb?=
 =?iso-8859-1?Q?sUKU0YKKBhvjZehuzRhLGv/3Z5XA3vF07yCIQmlkZvS2oFWjsiyPyCgf8x?=
 =?iso-8859-1?Q?qW/DPtw5pWR4MueElkUN19+1nNXt1PI8//sdtmKtkrb/vcLNEuAigQmChg?=
 =?iso-8859-1?Q?28wt8ucTMI9+wml9/U52Cwba+IUE6e6q6BWoSe/YwIJlAMlqZ4Usyjy1QW?=
 =?iso-8859-1?Q?NNow=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: knights.ucf.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR07MB9830.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca3439d4-ffd8-4ed9-7759-08dafe2726f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 16:22:13.6572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5b16e182-78b3-412c-9196-68342689eeb7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g6P8Ekwbz9Yf4GVdkcHO9y544IPJba0tcRkQAQnZlnnyXeYKTZT4WjeFyZFfALVDtrdVmzzND4+ph+LKuJ2Pb5fKTQvIQGUy0Ownw3pr3vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR07MB4268
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good day, dear maintainers, We found a bug using a modified
 kernel configuration file used by syzbot. We enhanced the coverage of the
 configuration file using our tool, klocalizer. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.57 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.57 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pKPPF-00EZjo-IK
X-Mailman-Approved-At: Tue, 24 Jan 2023 22:08:07 +0000
Subject: [Linux-ntfs-dev] kernel BUG in ntfs_perform_write
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
Cc: "syzkaller@googlegroups.com" <syzkaller@googlegroups.com>,
 "contact@pgazz.com" <contact@pgazz.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Good day, dear maintainers,

We found a bug using a modified kernel configuration file used by syzbot.

We enhanced the coverage of the configuration file using our tool, klocaliz=
er. =


Kernel Branch:=A06.2.0-rc4-next-20230120
Kernel config:=A0https://drive.google.com/file/d/1E1xcz6pp-gsnaqVzG9EgeAJ7m=
tO-GS3M/view?usp=3Dsharing
Reproducer:=A0https://drive.google.com/file/d/1y5zAf7Q0VGFeGQYoTzjBU2b_UZZe=
UD48/view?usp=3Dsharing

Thank you!

Best regards,
Sanan Hasanov

------------[ cut here ]------------
kernel BUG at fs/ntfs/file.c:493!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 21551 Comm: syz-executor.0 Not tainted 6.2.0-rc4-next-20230120 =
#1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/=
2014
RIP: 0010:__ntfs_grab_cache_pages fs/ntfs/file.c:493 [inline]
RIP: 0010:ntfs_perform_write.isra.0+0x16d6/0x3070 fs/ntfs/file.c:1833
Code: 00 00 48 8b 44 24 40 41 89 d9 48 c7 c2 60 c1 21 8a 48 c7 c7 20 c7 21 =
8a 48 8b 30 e8 14 2f ff ff e9 5c ef ff ff e8 3a 7a d3 fe <0f> 0b e8 33 7a d=
3 fe 48 8b 5c 24 48 31 ff 48 89 de e8 f4 76 d3 fe
RSP: 0018:ffffc9000b16fa78 EFLAGS: 00010216

RAX: 00000000000300c6 RBX: 0000000000000000 RCX: ffffc9000f349000
RDX: 0000000000040000 RSI: ffffffff82aa6d46 RDI: 0000000000000005
RBP: ffffc9000b16fbb8 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000001 R12: ffffea0001b55a00
R13: ffffea0001b55a00 R14: 0000000000000000 R15: dffffc0000000000
FS: =A000007feedead7700(0000) GS:ffff888119a00000(0000) knlGS:0000000000000=
000
CS: =A00010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f6d639e0000 CR3: 000000001260b000 CR4: 0000000000350ef0
Call Trace:
=A0<TASK>
=A0ntfs_file_write_iter+0x5c0/0x1df0 fs/ntfs/file.c:1917
=A0call_write_iter include/linux/fs.h:1851 [inline]
=A0new_sync_write fs/read_write.c:491 [inline]
=A0vfs_write+0x9f3/0xe20 fs/read_write.c:584
=A0ksys_write+0x12b/0x250 fs/read_write.c:637
=A0do_syscall_x64 arch/x86/entry/common.c:50 [inline]
=A0do_syscall_64+0x39/0x80 arch/x86/entry/common.c:80
=A0entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7feedd88edcd
Code: 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 =
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff f=
f 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007feedead6bf8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007feedd9bbf80 RCX: 00007feedd88edcd
RDX: 0000000000000001 RSI: 0000000020000080 RDI: 0000000000000003
RBP: 00007feedead6c50 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 000000000000000a
R13: 00007ffc85b8592f R14: 00007ffc85b85ad0 R15: 00007feedead6d80
=A0</TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__ntfs_grab_cache_pages fs/ntfs/file.c:493 [inline]
RIP: 0010:ntfs_perform_write.isra.0+0x16d6/0x3070 fs/ntfs/file.c:1833
Code: 00 00 48 8b 44 24 40 41 89 d9 48 c7 c2 60 c1 21 8a 48 c7 c7 20 c7 21 =
8a 48 8b 30 e8 14 2f ff ff e9 5c ef ff ff e8 3a 7a d3 fe <0f> 0b e8 33 7a d=
3 fe 48 8b 5c 24 48 31 ff 48 89 de e8 f4 76 d3 fe
RSP: 0018:ffffc9000b16fa78 EFLAGS: 00010216
RAX: 00000000000300c6 RBX: 0000000000000000 RCX: ffffc9000f349000
RDX: 0000000000040000 RSI: ffffffff82aa6d46 RDI: 0000000000000005
RBP: ffffc9000b16fbb8 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000001 R12: ffffea0001b55a00
R13: ffffea0001b55a00 R14: 0000000000000000 R15: dffffc0000000000
FS: =A000007feedead7700(0000) GS:ffff888119a00000(0000) knlGS:0000000000000=
000
CS: =A00010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f6d639e0000 CR3: 000000001260b000 CR4: 0000000000350ef0


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
