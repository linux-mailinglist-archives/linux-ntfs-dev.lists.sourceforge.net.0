Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC0182EDBF
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Jan 2024 12:32:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPhfz-0004y4-Vf;
	Tue, 16 Jan 2024 11:32:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1rPhfy-0004xx-E4
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 11:32:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jCrDoC5//K3jDj4AkTtwGMoPuSRE/3XWO8qhcTqalA0=; b=I3bNXYEm/wFZvc8ut7AKYezOc3
 m1lmixPET2Ryn8kjTus5bgdXfLaWPdVSvrXtfzowIALUuuu3vYpQ0DgYtLRzNbIv7qtY7TKhCM4BN
 RQn3wlf1beSGxF4i/A9EjtPiYJJSnKijmBH77r36OCo0wsPh2sGWyrnCWB/hURWuHP1M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jCrDoC5//K3jDj4AkTtwGMoPuSRE/3XWO8qhcTqalA0=; b=NXOXhpLy2+P+/mjBv9hJtSSkAG
 LCmjO0+krVvQcsZHLl61eMJNAjohXl6N20APg+rSa5p/Aff0O4RtI36RBXZJT5QDCeZeid3gr57Fq
 o4ZT4DC7lg500gIA61ifvEix24V4oZdSDTfQYLUXuhDhoWJiroEs+juhVg46AIL0uh50=;
Received: from mail-db3eur04on2125.outbound.protection.outlook.com
 ([40.107.6.125] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPhfv-0000vK-Rk for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 11:32:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hotqwTCVpcSOU0POQyw33gDhCf7wJeImpCJdUjmrEZ/9NdjUc5vWFVa9r+9a5U++YiYqNxb4C71k6rJCNeX56miK2mc7AjNEku40VYqZV82xNxThjVB/AqJG9oGye6w6uiFsp4bNSh/amkFA48tR2eKURLNrlu8eKPamb+minM3782sfFLDcZzBGiuN1fZpThMtNJZG7EizUlufQnxFcSj413Se7QPLDvFmweq1R9a0oDB8p+Qw3RjBRhXy9G/DOmOy/JeWkufb7zgf3lG1DLa3/lPuAcyHIh7APy3JtYC5V3T/nDli+urHTlymXQIVhjeTqhXP7y0EIPXa9nGFrXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jCrDoC5//K3jDj4AkTtwGMoPuSRE/3XWO8qhcTqalA0=;
 b=IlhOpuDKOmhjiPCzFwk+HeOHGh1itgXp5OXVIFBDG6dL1M+SqykH4EKgJbeP3pwQN8lqVyzgC3vTcq0oscQmWCnFN4i570HxOHWZ8NoNMLUhlQpfUfUW3Ytdmo2N0tUBZUQtAxnT2BDxaocxL37fBLQIiLqRd+U/xX+DyBQp5/beMoKMr1+RX5Idsb9DmjXz81clb+m8IEG4WnWq4Kh+LLuB2pz5d4QSEs00LJ5Cz/Up+JZMa9fBvv6VpWKwHVfxCNJmazUnGncwBnCTemeEFNVW5KRYQy59Ru3HUbRwanThvrL+22Ttv9yWBQULVX+IdL2i4A6EcrlkrCTm7nZVag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jCrDoC5//K3jDj4AkTtwGMoPuSRE/3XWO8qhcTqalA0=;
 b=BBooE++OeSLpwl28p96cMUWaFsgjEsa8ZX1NcvajFJqEu46fmdFSuHS2oFK5puQnxjPdRReFizvr/kx5ICdy8HtfE2BMsbpofzHa7WHqzHmV1/v6MhVvQCe0XrU8MDuRI1vBF94eSpXh+x4nAJJKYBUfLElu174V3JNRr7grxWQjaBZsrbhoUmNmGE4FzYB6QMiolCKjqml30fuFaztBBNcgm1z7RPG+at3mOE2hf+Qn2PpLtd1hqJ3c28EmsYA9pgp6ljYBpoZWGVrwW+y4UCTTwW4PQgtivt4WtBhTqj7yc2LQ+ERJPLvBCn76Ln5bFjW9qEKGyAYu0sR+SPLlrA==
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com (2603:10a6:20b:254::18)
 by PAXPR06MB7997.eurprd06.prod.outlook.com (2603:10a6:102:1a9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.23; Tue, 16 Jan
 2024 11:31:58 +0000
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c]) by AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c%4]) with mapi id 15.20.7181.027; Tue, 16 Jan 2024
 11:31:58 +0000
To: Christian Brauner <brauner@kernel.org>
Thread-Topic: [PATCH] Remove NTFS classic
Thread-Index: AQHaSGGfEiUWkRrnEEiuiqZRoPZdx7DcR0iAgAAHIoA=
Date: Tue, 16 Jan 2024 11:31:57 +0000
Message-ID: <386ECF5E-DCF3-4312-A9E2-92F42142DC94@tuxera.com>
References: <20240115072025.2071931-1-willy@infradead.org>
 <20240116-fernbedienung-vorwort-a21384fd7962@brauner>
 <1B634C72-9768-43E9-93B6-3396CBAA958E@tuxera.com>
 <20240116-gutgesinnt-autodidaktisch-d1ac1d2f8253@brauner>
In-Reply-To: <20240116-gutgesinnt-autodidaktisch-d1ac1d2f8253@brauner>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR06MB7239:EE_|PAXPR06MB7997:EE_
x-ms-office365-filtering-correlation-id: e3e7971e-727a-4a4c-c8db-08dc1686bfd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1vNO86YHpy6ttv1oJqV7KXSY8+c/aYe21T/mNkEITJ/nUf794OzP50z/DjTSasbA/QBOUhMZEdq0LCkCbo4IJxkYDwPoyRT1GrjrgY9rar+U1FbeEvwu2Z+zKN/I1r9aaoc37NP15beT0vHlV24mOijZcKbwY+RI5CVYtvBT0E0a63rY9xlHsfxbxGitZ5yzhomcOY0Gb61/boLR813I6qrCDd1ifXqnuj6Iehn1WSbwZfglaHKIGLHRt7N2ojLCd5qEzg8KJATj/9NoMGWMnHu9KmUf3BWorIssuKqGYT3AFsddkRBATLpYWJjV9hVyGVNEaBHFCpND0Bwx8hC9HGIv9fNpVL68+ZXNRNIMIM3cUoURc28ukKsJNp/2RonO075FG734XnIM6jAlQLhtTjnkJ48mh89nZjEqdu8UB/u200bmnZZDg5aIUh03/9zmmKlg5N29vy8OFFyE93U5mwWrH/Y1WDX34ccOVdKrMzMEX5Ao90Ka6NhNKeUJ/4xtmB0N6T2zV7fP4BP/jrCIyocqnCkIM3ELLUIEL5K/F4WHbF3oFD4ymXIxSTo0OJ8Ja8H8OToY2enAD1v8q5lq5j0228aCsk8JagPh1XpeToLXUNVANVKkbUU/mcTapUKFiy+ZqRZwRO4WQk0JiO9ICA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7239.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39840400004)(346002)(376002)(136003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(122000001)(86362001)(38100700002)(2616005)(26005)(36756003)(33656002)(38070700009)(83380400001)(6512007)(6506007)(966005)(316002)(6486002)(4744005)(54906003)(66476007)(53546011)(91956017)(66556008)(64756008)(66446008)(66946007)(76116006)(6916009)(2906002)(8936002)(8676002)(5660300002)(4326008)(71200400001)(478600001)(41300700001)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bqLgOEI1+xxmrgw/00J3U+DuHj+tc0ODqqSZEG48ADC/DPGGG3HzHW+8NtLG?=
 =?us-ascii?Q?GCLDZmx8mPpEm1bB8mFL8Mo3huGDeCelD5sdchhKH8YYMju5MGiowVERSRPA?=
 =?us-ascii?Q?UeJy+AeEz+w4rydXN52dq8Wr4edVkXMHlxmOjBEDBLpQgo1Ue+seOx76WLgh?=
 =?us-ascii?Q?Wb9EHmxDyEdUstpRVcRl5hlwdx9hZ/j4Qj5MKoGM7UwfPRnyoFtbeiEm5Kdb?=
 =?us-ascii?Q?h8ggulEqC5xQWz8h/IjYQ1s1ZVDiR5hEyYg9GdMC87+AbQHV9RMHZBI9rBSG?=
 =?us-ascii?Q?FcQPYMPTrmrD/YRFgE3UcfQd0nQHOf5gn7aDwz6kkTGoxdRM5sZew1Q80roi?=
 =?us-ascii?Q?FVlQHFVYNr6yKXYzDqJw3r+PcwTg7JsHpL5s0pBwNw2AcQzlBLzb8sKvUjFI?=
 =?us-ascii?Q?rueOzgF4pLcRHHK+SMIOv3It0YuXrjPNWJAatcjdD1bg+ybMtXfx+4x550gx?=
 =?us-ascii?Q?v2HGRcTYYaXhkcA7wanUYKcaMDyP6GuTMCvxC/XVt5RKlCb9+bWGuPaWhrer?=
 =?us-ascii?Q?YTO6+09ZQOJgONOkZEQnkhTdGl5haXWz7XusfzAnEcXn7/ODc0RncsUIQ4BU?=
 =?us-ascii?Q?sKjywtgADrUkficviNyKuztmn7nABS7DafJDyuITs3FyUzWWjj4TjHCj6BeE?=
 =?us-ascii?Q?V6eOV6TdsdbaSqgrWcb5RftAZeL76ufuJ6WYo6Duh/vLfz4ZNUmvhwNIT7oA?=
 =?us-ascii?Q?4aJwEtjt5wbl7lop77yO7VJ53uHvCXDpw+JHv2zX1pbG+2SFcs9kg5vIaoIL?=
 =?us-ascii?Q?lfGrOjMnWVNteyjLb0wtaQDJ9CMOC/EMwmELVLNBkYvyrl5AibSY/i2FcOGQ?=
 =?us-ascii?Q?3I6JXRxkXX3bUsEhZJPNaX17b5WSWXDus5SOSTukwIk0L5Fux6FKLsZaGbjm?=
 =?us-ascii?Q?GH1Y26jtrB4EAlTR1bs3WMkzXMBNNeS/A0+5ey/kP/f6OKr1fINgB15748cX?=
 =?us-ascii?Q?9v9MZxUbBd5vmSKKQB2s5VGJYyR8yVf3v23o5NZHWjjC+r/An59/8ualWe5M?=
 =?us-ascii?Q?i3nfOzC4PbY4NhyuVZPjnCb3RCZaJJqyrN6xGAwfkDSIjze/azWEcpucbO7N?=
 =?us-ascii?Q?PElVgGLTknsUUwYG57wJ0tZYCTdZiXaljMk0BQH+ACSgOmJgSD1T1nnn1F4o?=
 =?us-ascii?Q?pwSvuI3Hw3J2ZSHLe0svrG7tlrrYDHlftsL3BHsl3lgd4vkbfrQW6uNqVO+q?=
 =?us-ascii?Q?rAQAlgKPYiR1JQJTmqbz0/i4gBCTQJpf4IZx3Nls+Nygmcmew2acbOZVDnkW?=
 =?us-ascii?Q?tlfn/iWQE2Y0yZzumPsrzI5eF5FddiHdCPSOp5flUrJuO6ytLIgJklSJUv8D?=
 =?us-ascii?Q?v9pEALuzHn2mHFCyQpb+qnT+yd241PzQ4JcOJWHfAzwJhHzTlqu+FAG9+e3l?=
 =?us-ascii?Q?RAm/IxjkaPEi9H4l5SIDV1FXTO9oZ2MGDvjBbNvWcSHPlytqtdAVM+iqhHCW?=
 =?us-ascii?Q?L5WXgFpRyJd0uX94LpBwaQExHqa0dyorKzJPs2zQbFboNfU1YZ+3R1gnU7Eg?=
 =?us-ascii?Q?MRoRAvF1PZ396NtSyzKhuEOypr0gOAG0mPqU/xy/aD1Gl2dpt5/as7IA83kL?=
 =?us-ascii?Q?xUqfR6ckm5pBbMYmrZitt1f/gw/u+y3enyfmLy0S?=
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7239.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3e7971e-727a-4a4c-c8db-08dc1686bfd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2024 11:31:57.9634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UHmq1jrubZ0+Q8r9kKJyQs1kebspDU6Q+Lkn+cH8+uwCBimPh+pABToLaX/QHW3bABFaDxDjDvonNKCPK2Przw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR06MB7997
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 16 Jan 2024, at 11:06,
 Christian Brauner <brauner@kernel.org>
 wrote: On Tue, Jan 16, 2024 at 09:51:47AM +0000, Anton Altaparmakov wrote:
 It seems there is consensus to remove it so please add: 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.125 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.125 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPhfv-0000vK-Rk
Subject: Re: [Linux-ntfs-dev] [PATCH] Remove NTFS classic
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
Cc: Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: multipart/mixed; boundary="===============8455736050841372688=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============8455736050841372688==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_386ECF5EDCF34312A9E292F42142DC94tuxeracom_"

--_000_386ECF5EDCF34312A9E292F42142DC94tuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

On 16 Jan 2024, at 11:06, Christian Brauner <brauner@kernel.org> wrote:
On Tue, Jan 16, 2024 at 09:51:47AM +0000, Anton Altaparmakov wrote:
It seems there is consensus to remove it so please add:

Well, we'll try. This is one of those cases where we might end up not
being able to do it.

If that happens, I am happy to update the APIs as Matthew detailed but obvi=
ously I do not want to waste my time doing that if it will be removed anywa=
y...

Best regards,

Anton

But imho this is a case where there's sufficient
reason to at least try and remove this code precisely because we have an
alternative implementation that's been around for a while.

IOW, this isn't like reiserfs where we're actually getting rid of a
filesystem completely.

--
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


--_000_386ECF5EDCF34312A9E292F42142DC94tuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <3B976E85D448544B9A8F4F214FF73059@eurprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; line-br=
eak: after-white-space;">
Hi,<br id=3D"lineBreakAtBeginningOfMessage">
<div><br>
<blockquote type=3D"cite">
<div>On 16 Jan 2024, at 11:06, Christian Brauner &lt;brauner@kernel.org&gt;=
 wrote:</div>
<div>
<div>On Tue, Jan 16, 2024 at 09:51:47AM +0000, Anton Altaparmakov wrote:<br=
>
<blockquote type=3D"cite">It seems there is consensus to remove it so pleas=
e add: <br>
</blockquote>
<br>
Well, we'll try. This is one of those cases where we might end up not<br>
being able to do it.</div>
</div>
</blockquote>
<div><br>
</div>
<div>If that happens, I am happy to update the APIs as Matthew detailed but=
 obviously I do not want to waste my time doing that if it will be removed =
anyway...</div>
<div><br>
</div>
<div>Best regards,</div>
<div><br>
</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>Anton<=
/div>
<br>
<blockquote type=3D"cite">
<div>
<div>But imho this is a case where there's sufficient<br>
reason to at least try and remove this code precisely because we have an<br=
>
alternative implementation that's been around for a while.<br>
<br>
IOW, this isn't like reiserfs where we're actually getting rid of a<br>
filesystem completely.<br>
</div>
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
</body>
</html>

--_000_386ECF5EDCF34312A9E292F42142DC94tuxeracom_--


--===============8455736050841372688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8455736050841372688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============8455736050841372688==--

