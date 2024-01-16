Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D62882F0FD
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Jan 2024 16:05:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPl0U-0006iX-Ct;
	Tue, 16 Jan 2024 15:05:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1rPl0S-0006iQ-LK
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 15:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a2ghqPNGqWw6LeEcFYLiQrfhf775QrVCwdm3euzaNn4=; b=XT9YeURSejYUnE9iPUjZMJAzcg
 b7jnpF+VevmSzLSD639AhgrOzhg6NctUuzXhcr51YgtCOqSoST/aPtgBL2TMcxy7RlhkciTDENkh3
 iU7Q9MyUrAJgwnKBF7EIHnNNLGbcvoG5AWOpkA1u7w7ihp3Vqmd7EOHY2cAFbd2Ei76c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a2ghqPNGqWw6LeEcFYLiQrfhf775QrVCwdm3euzaNn4=; b=fkw+zj+fzxWA1JbAmK8I/KPC/Q
 9GHADOJehBRnvGr0GxDd3ik4mMPXS6AT6Tv1rMhROmyLfq8MBBa6pt8LYLRPlt6OuollrziBlbpFC
 tXzQJiPtsWCdPqPX40XUk74AgQz+4vCKbpBakTpwhlNENKM6aCJ/64r19I5FRheXzCyQ=;
Received: from mail-db5eur02on2096.outbound.protection.outlook.com
 ([40.107.249.96] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPl0M-00042t-Gz for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 15:05:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0tPgLEgm8+fsuQNdcEoYnSZd6zm7Fp6HjF4rng24VK+OVtoOd2dKpfxKCkVR5SqpoWzeQtApkOuIXfcfx5ADePXBRPQUp6skjBCKgFWtk/0KA5f7Az016VwBMrudY8ENMTuFVH+oDxTJ/w1KYMbIRsNKELWY+X3wNu8Dg82EL9mxhWI0Ru1ph/kOmUdstM5cfiKgwPHsuxxbcn/dqkaO5WUr+oPHjdOWPI2YjjJ9nGwrGAnk4rCVTNuAlSytNoqHqf2ycfgtpWLYAI0IKt+o/h4Y292bCo1X7OEGrweoGfghw0A2mrRmQTL+nfzyRoQGwue77CVdPWfr7iWFnjkOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a2ghqPNGqWw6LeEcFYLiQrfhf775QrVCwdm3euzaNn4=;
 b=iCF3Hhp8I1T109tBszEo7pDpWU9mdUdM2YxWmxA5WDeSlpHocPcGsfB48skhHXhB8EVViYoC4CcOhuA7MsQGmm+cNv6Ik0DIDOtpZH3iO3Ojh2anBA6j+4vM5JvVY/eyzBWVjxlgeKWmVfqUJ5BDhZRzccRA4XIW3vOiUsy7p9JD7wDj2nfopbBBB1IQYmGBC0ZPgdxj3+TMTdy4C8ugbLyP2Ll3O6B6hUdx0hpNZKs2FrGIr8cwNv82uYtnnytuAsgo0nuYKbRsdYKM86DshBfYtwfXbZYsPjM5HzFYrNMqLpvvr/n1Hiwthtnl1fdY97AaFwCk/cRwp6VrCDsBPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2ghqPNGqWw6LeEcFYLiQrfhf775QrVCwdm3euzaNn4=;
 b=EKWR/Kme7mkjyp+a7S0lQxg+gqOW/upOQ9DMhGimBy4dO/qhape2/rT31L1mo5gpSIEwnSPTzcmkKwQIabJVIopx+dgBKlkVEjOMMqmMKgOX3lqdgY84PioO5ipcJqQPxxMIQMnnmw7WzEz6KavvimagOPAs76HsstCk3Y8UZQr09vEQOJKfHtyc+sr2fVKjXlsQATiHQX4TowqVDmB5e5ZITawWe4EGt2URG55e+IL5n1vpOaOittWY4PeEK+oJvhCqDZ+N9uGMNfOZpl2x0cKmlAdROzrEXBolKOgRtsXsbaHcuMcHV/ulFG86ggIZku9wzXFXNqsJxDUYqRqTTw==
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com (2603:10a6:20b:254::18)
 by PAXPR06MB7997.eurprd06.prod.outlook.com (2603:10a6:102:1a9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.23; Tue, 16 Jan
 2024 11:32:37 +0000
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c]) by AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c%4]) with mapi id 15.20.7181.027; Tue, 16 Jan 2024
 11:32:37 +0000
To: Christian Brauner <brauner@kernel.org>
Thread-Topic: [PATCH] Remove NTFS classic
Thread-Index: AQHaSGGfEiUWkRrnEEiuiqZRoPZdx7DcR0iAgAAHWAA=
Date: Tue, 16 Jan 2024 11:32:37 +0000
Message-ID: <5056D55B-C421-4E83-A076-308857D5F26D@tuxera.com>
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
x-ms-office365-filtering-correlation-id: 0f64dc1f-e52b-49ba-4922-08dc1686d768
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5WxyINDTqmWzZNVmMMLW/Z+ED6vUuz00XfYWGZjeEII6uI2XqLIxmjilYdQz00Xl59xAa3yf3hBbXyjKsXenUxlkvmum+xPBzocGunGC3WpmNTGlZTzIll2GhpB8Z4mhs9aRWQSvbSeHiKqHCsgz0Wx0Js0Vp0PaRViVR0DCIU7MKxmWmY80lj1OK9FQC4N5Z/R/hTl8OSH4OljF1TLA8sO0IGyBiO4LIZxHAvh9gxoYuu6AokzAlWJEIFDnt16wpbZzBnOLvdFImOrnlVONTgNRreR73iFNzpAK2R5fgUpYbGkVJVul/RgRjZyolgG7N/8T1LQ035SComXqp9RldqomVueSIPWNEDAHTxXIgkArgz/oZTlzVq/bWyfFCdQdRKk5/iybU8WTeUsR8MYiYs3JRs3lLEhNeKrmoRQ49v90yLaZFCtREKsvcatjzmxOLF75nwcZ/OjBQS02gqrto3S0a9CqYWhsdWW7oh5xuNe1xrRQvRbdSWGfKxpFeB3ITDY8u7LXTJM684pHw9SMAqxnHtwEkCRhB51MH3l9Opcz7UjmJgdPL55o9L/vegi5wdR2IvayuY1zFosl0vjyV0WTwreqq2CUj2lYklRuQ6794iZzHBzrI50h5x2aDjfeAGwF/dxAhHNzJ0xvQXkHsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7239.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39840400004)(346002)(376002)(136003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(122000001)(86362001)(38100700002)(2616005)(26005)(36756003)(33656002)(38070700009)(83380400001)(6512007)(6506007)(966005)(316002)(6486002)(4744005)(54906003)(66476007)(53546011)(91956017)(66556008)(64756008)(66446008)(66946007)(76116006)(6916009)(2906002)(8936002)(8676002)(5660300002)(4326008)(71200400001)(478600001)(41300700001)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b+1kajr5WuHcJ71nZeSJLPuNIjWSCb1rnaCsuUcwikj3Bh6C+JKTyUfLqLhz?=
 =?us-ascii?Q?g7Svx03ipz7IiFY38/78vU/eGJMuFNxxdvP2Y4yZv3W+HeThha7D9fsqj21S?=
 =?us-ascii?Q?tcuqtg7XHipC/xTZrk8RpDPrZ+wWVDLBPQYs4YRIFXEynCCc5JC2+zisnpDS?=
 =?us-ascii?Q?Y78/I/buYDk9UCGgnGONg+dWqXlC9I+VmqYFBD3lCzIRWWHYy4klBxh18pV/?=
 =?us-ascii?Q?E8OhgNl+h3siwDDRDlNz9qWGCsaH5chax8R5fdZqRpguEkoGkEQT5fSnufGR?=
 =?us-ascii?Q?L1kFARhWfnF1baNJO/pUferGSXwD8DtvZDzSlfSwtYYFfF9LbgfBp+4T0t6W?=
 =?us-ascii?Q?xpxnPh/Ylo27ojHNTpArojNjae3wQ1EE5A3h5nnXNF/k0v2gh+Fedf/ChxzJ?=
 =?us-ascii?Q?+O0A0xrGViZOrwAxRJMTaoDa+hbkB0HzULl6YA+SoHV15Dk8LdBwqPqkOjf3?=
 =?us-ascii?Q?z5st7TBjLy3wuCwdLEITymhCTSlLsihgl/OeMkLn1OxNGlh28OVnTwElyO/7?=
 =?us-ascii?Q?m/iyRhra6qyNLel94y+6okuQhSl4LurO3Kqwm0O0yoZmxrX+ziOwaLPH7w4a?=
 =?us-ascii?Q?EIUF0TxgBzevM0/eac4h+C5N+hLfjr4+IE04dIz3UXt3lSxLMT2m80anEoP6?=
 =?us-ascii?Q?wls/bOTKF46fZ/LEkO3oVY5hj3/fe9BlTy9GW4nypu76XOyXnh6EBNlJ0whD?=
 =?us-ascii?Q?lfn8aQRhp8L1LNarIuIZjFLsh7MqRU6x7e8VFfnBYtqbuPKeIteQ08Gzegzv?=
 =?us-ascii?Q?N6N34kN0JPwrNNRf3GQRg/qAH+nEpM2+sR66tSUymETd4qzQw5bmD1TTsMRW?=
 =?us-ascii?Q?3tX4SZo8pDL38AQerq8ZaoCWSb2KyBwijXUmHj2+D9Z89M0JCdkS1dJcCkkM?=
 =?us-ascii?Q?8e8M/WLN7DdnXRopQQ+PsMO/pw9sGKDRS0S5jMgEeDPsOcmwXu9kfw7v2C5u?=
 =?us-ascii?Q?Ir2VXlsBHI5MQHguMY1ZH9h/sUxFIpzfQrnf2KToRtvaFu5V60LMlmHojnd3?=
 =?us-ascii?Q?fTmmHSPM9a74u4I6nlWezGrKiFtK9txdAWZMuNEMU/kRxbnWvAymJJ7dRsGU?=
 =?us-ascii?Q?2rpaLmMWB1WdjosGaMu8FjIu+mecqwI2Iq9FEAtyanVn1wIf9RWiBOq52uaD?=
 =?us-ascii?Q?MttfIJwnXDPoIurW0Rw10jbfFJ3pYiAUrE7WD/v6JjE050moPETMZr52Zfij?=
 =?us-ascii?Q?dDqfyzp9P7DoVE0Cc5HIg8chYamEDxyKBR/Et5WrZngD+DeeK6Tcj6+IIMlL?=
 =?us-ascii?Q?Xvn9g99kTZRSaYeNDETxvhF/lC0EWk2kJh5brHRWFfCVNjdKX8fLKku6yKQm?=
 =?us-ascii?Q?JLqvVQ7RqqpmqipN5fdL/CykiLiNxZ3gDBmVIWpeDsw9SQk5Bje+0YGi+Nh3?=
 =?us-ascii?Q?tRnkWxRhUn9eW8OJqRMP9JnTvpH2Gf8phoItdwaQbjjZfWOQJclj1WMAx0Eu?=
 =?us-ascii?Q?B7CvTBN9Sk6NmSl/RYt3jqDSb/QZq1fS9VXNUeF9DBTzhBzgUqnnru48yOyf?=
 =?us-ascii?Q?M24ypUWg+lNZEqI33cKexPb+Dz+ss0VtEtQYLjbYMIZc+hePAudmR5L9VeOq?=
 =?us-ascii?Q?mAbWgRdEYK5HZ3UnwIVyoq/O5StVZraxdulcrIOT?=
Content-ID: <3C1DB479CDFF4742A873974943ED4218@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7239.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f64dc1f-e52b-49ba-4922-08dc1686d768
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2024 11:32:37.4508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TevyAL1tKtCsg18vj8HF4s9Z9JrcVSKLpRkQyE+am6jE6NBl39lNU9tOpZbydwq3xxnS4lYx10DEFZ7AucM0Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR06MB7997
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, > On 16 Jan 2024, at 11:06,
 Christian Brauner <brauner@kernel.org>
 wrote: > On Tue, Jan 16, 2024 at 09:51:47AM +0000, Anton Altaparmakov wrote:
 >> It seems there is consensus to remove it so please ad [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.249.96 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.249.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPl0M-00042t-Gz
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi,

> On 16 Jan 2024, at 11:06, Christian Brauner <brauner@kernel.org> wrote:
> On Tue, Jan 16, 2024 at 09:51:47AM +0000, Anton Altaparmakov wrote:
>> It seems there is consensus to remove it so please add:
> 
> Well, we'll try. This is one of those cases where we might end up not
> being able to do it.

If that happens, I am happy to update the APIs as Matthew detailed but obviously I do not want to waste my time doing that if it will be removed anyway...

Best regards,

Anton

> But imho this is a case where there's sufficient
> reason to at least try and remove this code precisely because we have an
> alternative implementation that's been around for a while.
> 
> IOW, this isn't like reiserfs where we're actually getting rid of a
> filesystem completely.

-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
