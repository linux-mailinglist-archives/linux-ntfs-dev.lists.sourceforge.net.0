Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC48559D41
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 24 Jun 2022 17:26:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4lCx-0005Ml-5D; Fri, 24 Jun 2022 15:26:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <anton@tuxera.com>) id 1o4jk8-0003FN-DW
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 24 Jun 2022 13:53:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ksukm/Fd2e9fGiw1H4gSY9neSFMqQhHLWHiu2L2oz98=; b=U4vF80xtkVt3Cow2YOZUQGOOHO
 ABoTAtv8zxFMfKXNoStV7wIOAyjraJqTmjsgR2qHunkXJroxVGEhF3m4HdbVeuHgeZb/DMjqY98Bb
 vi7c9/BReLputpK+BUwdstG2/+mV4nn+qAD3VoaQGxm/l9HTJYCyPiyRVhsr7vYXF+uY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ksukm/Fd2e9fGiw1H4gSY9neSFMqQhHLWHiu2L2oz98=; b=OzcQAPLU4ILR+rdeYXrGAwpghA
 RH0BeyjWqE6Lbwy0EK6mHeUewoU/7EkaVoXZiWg+lz4HAUCZq16vG752onhvyTjlk/Jhif1bsVME8
 7lCl07RHe1YbWp0R2FXa0TSn4LiSKfwev9QumHqalnKJBDavZHjngq2lk8QD59tjbCjc=;
Received: from mail-eopbgr50100.outbound.protection.outlook.com
 ([40.107.5.100] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o4jjy-0000Ml-LN
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 24 Jun 2022 13:53:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pm/QkRpCjTdR3qbbE+O+sXoi18tMMCwKTVEUVrM+3ppL5ehQnu0Z7N5dbeJPnG8qVRkDSzWfMCJIBYBj571yNUlXWVlRaN9ZJzgFOqeKFJBhZ6Ad727xXMHlkM6pvvt9D+30lJ1zzXh6bwcsZHoYtj1Sv4DXmyZXaUXg92CrjpI6O7nmFx6wQ5LbQ+lZCpQHS+/aOB8j7RvuALM2GWZu5lWzpfoUDh9AblFc7eaPHapwjKgSSHUtDEpHGdTAaFc2oQKcj23Lv88npqQ5lCN3JoeTZBH6RO2kZD73DTJwVIYX5pIOgaCpdnxkeXi9Y4wkklRyvVn0WrU1v9G5zcsXxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ksukm/Fd2e9fGiw1H4gSY9neSFMqQhHLWHiu2L2oz98=;
 b=YJ7Tb670Xbqk7ypbk4PM3e2GJowLRidh0AXiJz4GaPHc0NUZYYqdqe7+rTG9dgneo30qwvvFB/Gs5uMGgx2YtLikyGDf+LmrM77iUwQmT/UDtZRy7bMNVB7MUk4o0EogNiEfaZs9no6BPc3nZPRZPDFF/bB0jGexrxSNbfJY6bC3n1F7uGEXUZvNJqti6cmagV5Yk4tKQrHgujk14HqB7OgKe3Oj2zyrotVwx3vB4i6Lf7f0sj7kpTaawSAEghwA4RosAKE73oPPbdWzzcOc5XWYKZgcoQSbtD220UMqAGtpOfr7vDJWEuKo7drFZYA4/ABoNcRcgEQ5C4pi62GYYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ksukm/Fd2e9fGiw1H4gSY9neSFMqQhHLWHiu2L2oz98=;
 b=Ax+OAn63KU+ZOhox/fQaCkFV2503tNG6HTsS7YhrJLZX9JBFnl7b0oiVSyRQbnza/BD6IbaLb4VpKk7u6UJBeyDjVDv3Sl07fdJ1X/yLK2KQ78yLWIw7wswBjCJ99WeyMFKt0QtG8Ii8gz9OhwYpQCH7+VCGRMfe9ScNybKertl8dXX3mgC69Wl3v4DXosLWvRvVa9cgVwhXZXe4Z3LW9ep7DFgppTzvA2PuLq8Oz50RkHYjlTieKFWGBpbzmGmaKGH3cJZlz9rx0N1Af3uxfBq/zmWHeGSD2Qg4aGLhMwnddqHek6dy+B62UI9vmMXWiuXqn8QNaOGKzSC2jRiODQ==
Received: from VI1PR0602MB2893.eurprd06.prod.outlook.com
 (2603:10a6:800:b6::14) by AM0PR06MB5220.eurprd06.prod.outlook.com
 (2603:10a6:208:fd::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Fri, 24 Jun
 2022 12:19:19 +0000
Received: from VI1PR0602MB2893.eurprd06.prod.outlook.com
 ([fe80::b9ef:2a79:1d11:eed8]) by VI1PR0602MB2893.eurprd06.prod.outlook.com
 ([fe80::b9ef:2a79:1d11:eed8%11]) with mapi id 15.20.5353.023; Fri, 24 Jun
 2022 12:19:19 +0000
From: Anton Altaparmakov <anton@tuxera.com>
To: Namjae Jeon <linkinjeon@kernel.org>
Thread-Topic: [PATCH v2] fs/ntfs: fix BUG_ON of ntfs_read_block()
Thread-Index: AQHYhuajXKYx3jWHokCYXG7OU9gkzq1dOdoAgACd6wCAAKOuAA==
Date: Fri, 24 Jun 2022 12:19:19 +0000
Message-ID: <7FBC6FD2-5D60-4EB8-96D5-A6014D271950@tuxera.com>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623094956.977053-1-xu.xin16@zte.com.cn>
 <YrSeAGmk4GZndtdn@sol.localdomain>
 <CAKYAXd8qoLKbWGX7omYUfarSugRnose8X8o3Zhb1XctiUtamQg@mail.gmail.com>
In-Reply-To: <CAKYAXd8qoLKbWGX7omYUfarSugRnose8X8o3Zhb1XctiUtamQg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e92f634-4818-4047-68f8-08da55dbc374
x-ms-traffictypediagnostic: AM0PR06MB5220:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4uRv96UdgdmQObtyaN2MlKZ09Hv+z+ld2WpUC4WNuTyKxjuYr9Hl6/ASY5g9nHqPptnCc70UBpNSaiWcogfLm/hhuycuJLcp/j1+OQYNspKyOS5sTSu0lODUU1sWPLMEJUtV+JLDoj5JLAvSpRgc7zAXiXQkz6chc8ViRmTh4LoxO83XoijmMuUYQ89vq0XXLdoU9Xbr3YrHuvMnpgJHOwQzgIxPuUms/tzbySClQsN9olxDFTYqUQvfUqNTcgod1mTBOISTJX57ukjTa9FJwKRV9Y5JQEpgr1TVS6HlAhZcT6g+xdN4rnEfbybX0i72/82PW0Q0gpdKKVns0dGjB7/1Trzge+98b53BXwGPTGxc1/dQ9SxhYMif0BZhTMfYA4OPIipGXgHnleV3+3wKVjHSpDNlz6ntT6BTBbJDyi5AP1NqozwBK+P8+BNe1R1U8Jl0KGgjPLKVVbWH6pU4ke9LI84//hmCiAZZntP4edsheE5T4QTE8UOEdDj0Cka9sOE6CBbujLXdUuAVh6gLCYGjLIZot4RFxCaIyQXJez6oa4KI+bng8u2+U7PLpG2O3Vwm3twE5tm2ixn2mC+frzl1ORinKFMsgys5TWfpBig6rdoJr8AnfjgFUfQ6lJyADy+a+exxqQHTPCq+vsIKR2uFEJyx7cO/ecttafVBmIN+vuGUsbLme0rlLyyvPiTHoHdEpe/jgVzUMcOmMFL1h24GhV5WE3U+yrE6tVAW0wvvN/8/Sdhudtxd8xcYXYkQCEvsO8e93R8V6d+79bPB4zZsmNUZleJUFOH/wyK9oAUCgMqtpMLX48TGFaWsnayjT3w15KXjMbJdXcTNATDx8f6bbTXAkW/HzGtztTkaQb0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0602MB2893.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(39840400004)(346002)(136003)(376002)(54906003)(186003)(8676002)(66946007)(38100700002)(86362001)(66446008)(36756003)(316002)(71200400001)(2616005)(4326008)(91956017)(38070700005)(6916009)(76116006)(64756008)(6512007)(53546011)(41300700001)(26005)(66556008)(83380400001)(8936002)(478600001)(33656002)(166002)(7416002)(6486002)(2906002)(66476007)(966005)(122000001)(6506007)(5660300002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?caJBM30ic6hmDRvX7uf4MGDtRfitmex5521TC8NGOJe23rvWI6a0UACOp5SF?=
 =?us-ascii?Q?wRHAQeWRrLkk3GhaJvtd5MD7zb6DVTrhFNe0Nie1sPx72aiCJZjlIx3znggg?=
 =?us-ascii?Q?DtGJ0BpQymzjXI/2bvArZ0Ela+dhOQfYfD5n5n302DYinBy15zvrV+PrRn+K?=
 =?us-ascii?Q?7KjyG8Z8ouPPKB0adHz+zh0l5FXI/d8Nuxmc+sLsCxWaMT/akKvcpxH5Fhb2?=
 =?us-ascii?Q?d+00YKxiHblL6CZb02rUI4IAk8KuL2SRcBr1PKTmnOG3KswJiIx1DXJb4bE0?=
 =?us-ascii?Q?w8wwQxrxdZqFnMQ9WTPWkKQFqdALgjOaQ2Lze7EQX1JtKSz2BcAi8SlHergP?=
 =?us-ascii?Q?kx2T9Dj8N+MXRlgxqXPDlKjifecN2bDvDL0Rb5NaxAWqBouVdsm6k7Qzezg3?=
 =?us-ascii?Q?A5MDxbdUNWuSO276V8mhnKMsPtFDSbu3MufSSwHGT6aXhGq7ZeWAon7Ake1/?=
 =?us-ascii?Q?ymjXVesnMlnSrqrIfD6n7OosPVT1MwiL6kZbxHWGn3BEk3bEKiXJzX5mvI5q?=
 =?us-ascii?Q?Xk8FKY5i98rqxgPAph70A1x2ANgE8ClsRzhtVJXR277TouzzpP+Osu3lYcZR?=
 =?us-ascii?Q?WboGUzKbfa9rvL+EpM2B9PRMH/GsP+xbwbN6xb0CfyNLlii6z/MnJCdRsxVV?=
 =?us-ascii?Q?d2+i/axR3XAmnw5ArMpsS5/XsuyxhewllKNiIVvjGe6jEEo6Tx/bAuPRGLEi?=
 =?us-ascii?Q?dpty9UtQHc5/c6XCchwXLnX492GPNGp7mETfA2CIyxPUhyIL6UwBXAmOnjti?=
 =?us-ascii?Q?L9JZyseytQvpFItAsQBlCK7P342CDohu+hzP5GMu00xwphDMWGb/I7NFvXz6?=
 =?us-ascii?Q?itt/2HsIhu1/CrCm1sEldqMp0BR3r0QwE8MUV93paDy5LWNWHY9Zwm0cpWkW?=
 =?us-ascii?Q?mxRXaf1087BpbN8H2lIEIeplgNPsE77Fb+qhbN/xgZcmjJ+Q4c4B0H6g+lba?=
 =?us-ascii?Q?elgrjy4ZMJf4oWHIMR/iO4PhTw9NaSXP0g25zOz54cEefic3hIVjS3T80XXU?=
 =?us-ascii?Q?yQz9znArxID4xnzWDoJlAMtC6Bt6OD2Tn/zCfLvpJbZHhXlCaNZEsAkl889Z?=
 =?us-ascii?Q?66JeRN3R6cqdnAGTyd1yvo2aeefOhU+Mhpc9WxjxM45oulopNmqR0M07KLcc?=
 =?us-ascii?Q?juY1WPM8T6CYbEjOfAnqZwTR5aqL24xSVon67O+IjqWTCGBxMo0nOr0SkSJ6?=
 =?us-ascii?Q?zm1Ndo/Ua/JbqC77CTcaG8NtZBk5fgxIDSmozl6f6ufYkFXmbTjpMCRgxANn?=
 =?us-ascii?Q?23gUYUime1vrdmrpyG+s9u07gG2nWYvVmGWLfxcVFV/p8JO6B4H8tnFlkenh?=
 =?us-ascii?Q?U/4JJsnabYIYlf46Lmzw0iuJon5HVr9yP6p8qpYavBwtHbToIuO9VYCkXqTt?=
 =?us-ascii?Q?HHfcKwKyP0exInB/Yv8Rw5rtmaqcZg5+9mQULAcfxa/1zxfMEuF4phmmjrc4?=
 =?us-ascii?Q?RlbH+7CST6R4xG6qjDJfr+ELB1ZYjBv5doraLnwlvcyEaI2Sq8Z6skmdlXrD?=
 =?us-ascii?Q?LhXqTz7drSfq7kOOhFnVXXYnq65VjAicsz5TTrjcKDzE58xwUtjKIG6SSqqr?=
 =?us-ascii?Q?BiMg+VGfLj0ZmTJa2RW4vZtBfIE2u5jZo9FhCcKt?=
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0602MB2893.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e92f634-4818-4047-68f8-08da55dbc374
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2022 12:19:19.1106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /KI3RdC1sxMhAUWZ5pzwbsYMXDKsf+zC+8QjMrQmjwP8l7E0k9MAYFqwreb+lflM14ZHL0wfQBzCtw4jU2QoTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB5220
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 24 Jun 2022, at 03:33,
 Namjae Jeon <linkinjeon@kernel.org<mailto:linkinjeon@kernel.org>>
 wrote: 2022-06-24 2:08 GMT+09:00,
 Eric Biggers <ebiggers@kernel.org<mailto:ebiggers@kernel.org>>:
 On Thu, Jun 23, 2022 at 09:49:56AM +0000,
 cgel.zte@gmail.com<mailto:cgel.zte@gmail.com>
 wrote: From: xu xin < [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.100 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1o4jjy-0000Ml-LN
X-Mailman-Approved-At: Fri, 24 Jun 2022 15:26:53 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs/ntfs: fix BUG_ON of
 ntfs_read_block()
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
Cc: Yang Yang <yang.yang29@zte.com.cn>, "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "cgel.zte@gmail.com" <cgel.zte@gmail.com>, Zeal Robot <zealci@zte.com.cn>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Eric Biggers <ebiggers@kernel.org>,
 "xu.xin16@zte.com.cn" <xu.xin16@zte.com.cn>,
 Jiang Xuexin <jiang.xuexin@zte.com.cn>,
 "syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com"
 <syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Zhang wenya <zhang.wenya1@zte.com.cn>, Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: multipart/mixed; boundary="===============6061197582212692074=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============6061197582212692074==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7FBC6FD25D604EB896D5A6014D271950tuxeracom_"

--_000_7FBC6FD25D604EB896D5A6014D271950tuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

On 24 Jun 2022, at 03:33, Namjae Jeon <linkinjeon@kernel.org<mailto:linkinj=
eon@kernel.org>> wrote:

2022-06-24 2:08 GMT+09:00, Eric Biggers <ebiggers@kernel.org<mailto:ebigger=
s@kernel.org>>:
On Thu, Jun 23, 2022 at 09:49:56AM +0000, cgel.zte@gmail.com<mailto:cgel.zt=
e@gmail.com> wrote:
From: xu xin <xu.xin16@zte.com.cn<mailto:xu.xin16@zte.com.cn>>

As the bug description at
https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@zte.com.cn/
attckers can use this bug to crash the system.

So to avoid panic, remove the BUG_ON, and use ntfs_warning to output a
warning to the syslog and return instead until someone really solve
the problem.

Cc: stable@vger.kernel.org
Reported-by: Zeal Robot <zealci@zte.com.cn>
Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com
Reviewed-by: Songyi Zhang <zhang.songyi@zte.com.cn>
Reviewed-by: Yang Yang <yang.yang29@zte.com.cn>
Reviewed-by: Jiang Xuexin<jiang.xuexin@zte.com.cn>
Reviewed-by: Zhang wenya<zhang.wenya1@zte.com.cn>
Signed-off-by: xu xin <xu.xin16@zte.com.cn>
---

Change for v2:
- Use ntfs_warning instead of WARN().
- Add the tag Cc: stable@vger.kernel.org.
---
fs/ntfs/aops.c | 7 ++++++-
1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index 5f4fb6ca6f2e..84d68efb4ace 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -183,7 +183,12 @@ static int ntfs_read_block(struct page *page)
vol =3D ni->vol;

/* $MFT/$DATA must have its complete runlist in memory at all times. */
- BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
+ if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
+ ntfs_warning(vi->i_sb, "Error because ni->runlist.rl, ni->mft_no, "
+ "and NInoAttr(ni) is null.");
+ unlock_page(page);
+ return -EINVAL;
+ }

A better warning message that doesn't rely on implementation details
(struct
field and macro names) would be "Runlist of $MFT/$DATA is not cached".
Also,
why does this situation happen in the first place? Is there a way to
prevent
this situation in the first place?

ntfs_mapping_pairs_decompress() should return error pointer instead of NULL=
.

Callers is checking error value using IS_ERR(). and the mapping pairs
array of @MFT entry is empty, I think it's corrupted, it should cause
mount failure.

NAK

Sorry but this patch is incorrect.  It is perfectly valid to have an empty =
non-resident attribute.  E.g. if you truncate a file to zero size this is e=
xactly what you will get on-disk and when you then unmount and mount next t=
ime and try to access that file with your patch you will now get an -EIO er=
ror trying to access the file and you will not be able to write to the file=
 nor truncate it as you will keep getting the i/o error.

The correct solution is to use IS_ERR_OR_NULL() in places where an empty at=
tribute is not acceptable.  Such a case is for example when mounting the $M=
FT::$DATA::unnamed attribute cannot be empty which should then be addressed=
 inside in fs/ntfs/inode.c::ntfs_read_inode_mount().  There may be more cal=
l sites to ntfs_mapping_pairs_decompress() which require similar treatment.=
  Need to go through the code to see...

Best regards,

Anton


I haven't checked if this patch fix the problem. Xu, Can you check it ?

diff --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c
index 97932fb5179c..31263fe0772f 100644
--- a/fs/ntfs/runlist.c
+++ b/fs/ntfs/runlist.c
@@ -766,8 +766,11 @@ runlist_element
*ntfs_mapping_pairs_decompress(const ntfs_volume *vol,
return ERR_PTR(-EIO);
}
/* If the mapping pairs array is valid but empty, nothing to do. */
- if (!vcn && !*buf)
+ if (!vcn && !*buf) {
+ if (!old_rl)
+ return ERR_PTR(-EIO);
return old_rl;
+ }
/* Current position in runlist array. */
rlpos =3D 0;
/* Allocate first page and set current runlist size to one page. */


- Eric


--_000_7FBC6FD25D604EB896D5A6014D271950tuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <875CD356BE6D034E965A3B77ABFA4CDC@eurprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break:=
 after-white-space;" class=3D"">
Hi,
<div class=3D"">
<div><br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On 24 Jun 2022, at 03:33, Namjae Jeon &lt;<a href=3D"mailto=
:linkinjeon@kernel.org" class=3D"">linkinjeon@kernel.org</a>&gt; wrote:</di=
v>
<br class=3D"Apple-interchange-newline">
<div class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none; float: none; display: inline =
!important;" class=3D"">2022-06-24
 2:08 GMT+09:00, Eric Biggers &lt;</span><a href=3D"mailto:ebiggers@kernel.=
org" style=3D"font-family: Menlo-Regular; font-size: 11px; font-style: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px;" class=3D"">ebiggers@kernel.org</a>=
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">&gt;:</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Me=
nlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; text-align: start; text-indent:=
 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<blockquote type=3D"cite" style=3D"font-family: Menlo-Regular; font-size: 1=
1px; font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -we=
bkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoratio=
n: none;" class=3D"">
On Thu, Jun 23, 2022 at 09:49:56AM +0000, <a href=3D"mailto:cgel.zte@gmail.=
com" class=3D"">
cgel.zte@gmail.com</a> wrote:<br class=3D"">
<blockquote type=3D"cite" class=3D"">From: xu xin &lt;<a href=3D"mailto:xu.=
xin16@zte.com.cn" class=3D"">xu.xin16@zte.com.cn</a>&gt;<br class=3D"">
<br class=3D"">
As the bug description at<br class=3D"">
<a href=3D"https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@zt=
e.com.cn/" class=3D"">https://lore.kernel.org/lkml/20220623033635.973929-1-=
xu.xin16@zte.com.cn/</a><br class=3D"">
attckers can use this bug to crash the system.<br class=3D"">
<br class=3D"">
So to avoid panic, remove the BUG_ON, and use ntfs_warning to output a<br c=
lass=3D"">
warning to the syslog and return instead until someone really solve<br clas=
s=3D"">
the problem.<br class=3D"">
<br class=3D"">
Cc: stable@vger.kernel.org<br class=3D"">
Reported-by: Zeal Robot &lt;zealci@zte.com.cn&gt;<br class=3D"">
Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com<br class=
=3D"">
Reviewed-by: Songyi Zhang &lt;zhang.songyi@zte.com.cn&gt;<br class=3D"">
Reviewed-by: Yang Yang &lt;yang.yang29@zte.com.cn&gt;<br class=3D"">
Reviewed-by: Jiang Xuexin&lt;jiang.xuexin@zte.com.cn&gt;<br class=3D"">
Reviewed-by: Zhang wenya&lt;zhang.wenya1@zte.com.cn&gt;<br class=3D"">
Signed-off-by: xu xin &lt;xu.xin16@zte.com.cn&gt;<br class=3D"">
---<br class=3D"">
<br class=3D"">
Change for v2:<br class=3D"">
- Use ntfs_warning instead of WARN().<br class=3D"">
- Add the tag Cc: stable@vger.kernel.org.<br class=3D"">
---<br class=3D"">
fs/ntfs/aops.c | 7 ++++++-<br class=3D"">
1 file changed, 6 insertions(+), 1 deletion(-)<br class=3D"">
<br class=3D"">
diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c<br class=3D"">
index 5f4fb6ca6f2e..84d68efb4ace 100644<br class=3D"">
--- a/fs/ntfs/aops.c<br class=3D"">
+++ b/fs/ntfs/aops.c<br class=3D"">
@@ -183,7 +183,12 @@ static int ntfs_read_block(struct page *page)<br class=
=3D"">
<span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>vol =3D n=
i-&gt;vol;<br class=3D"">
<br class=3D"">
<span class=3D"Apple-tab-span" style=3D"white-space: pre;"></span>/* $MFT/$=
DATA must have its complete runlist in memory at all times. */<br class=3D"=
">
-<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>BUG_ON(=
!ni-&gt;runlist.rl &amp;&amp; !ni-&gt;mft_no &amp;&amp; !NInoAttr(ni));<br =
class=3D"">
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>if (unl=
ikely(!ni-&gt;runlist.rl &amp;&amp; !ni-&gt;mft_no &amp;&amp; !NInoAttr(ni)=
)) {<br class=3D"">
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span>ntfs_warning(vi-=
&gt;i_sb, &quot;Error because ni-&gt;runlist.rl, ni-&gt;mft_no, &quot;<br c=
lass=3D"">
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span><span class=3D"A=
pple-tab-span" style=3D"white-space: pre;"></span><span class=3D"Apple-tab-=
span" style=3D"white-space: pre;"></span>&quot;and NInoAttr(ni)
 is null.&quot;);<br class=3D"">
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span>unlock_page(page=
);<br class=3D"">
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span><span c=
lass=3D"Apple-tab-span" style=3D"white-space: pre;"></span>return -EINVAL;<=
br class=3D"">
+<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>}<br cl=
ass=3D"">
</blockquote>
<br class=3D"">
A better warning message that doesn't rely on implementation details<br cla=
ss=3D"">
(struct<br class=3D"">
field and macro names) would be &quot;Runlist of $MFT/$DATA is not cached&q=
uot;.<br class=3D"">
Also,<br class=3D"">
why does this situation happen in the first place? Is there a way to<br cla=
ss=3D"">
prevent<br class=3D"">
this situation in the first place?<br class=3D"">
</blockquote>
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-si=
ze: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">ntfs_mapping_pairs_decompress()
 should return error pointer instead of NULL.</span></div>
</blockquote>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Menl=
o-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none; float: none; display: inline =
!important;" class=3D"">Callers
 is checking error value using IS_ERR(). and the mapping pairs</span><br st=
yle=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11=
px; font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">array
 of @MFT entry is empty, I think it's corrupted, it should cause</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: =
11px; font-style: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; text-align: start; text-indent: 0px; text-transform: no=
ne; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">mount
 failure.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-=
Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px; text-decoration: none;" class=3D"">
</div>
</blockquote>
<div><br class=3D"">
</div>
<div>NAK</div>
<div><br class=3D"">
</div>
<div>Sorry but this patch is incorrect. &nbsp;It is perfectly valid to have=
 an empty non-resident attribute. &nbsp;E.g. if you truncate a file to zero=
 size this is exactly what you will get on-disk and when you then unmount a=
nd mount next time and try to access that
 file with your patch you will now get an -EIO error trying to access the f=
ile and you will not be able to write to the file nor truncate it as you wi=
ll keep getting the i/o error.</div>
<div><br class=3D"">
</div>
<div>The correct solution is to use IS_ERR_OR_NULL() in places where an emp=
ty attribute is not acceptable. &nbsp;Such a case is for example when mount=
ing the $MFT::$DATA::unnamed attribute cannot be empty which should then be=
 addressed inside in fs/ntfs/inode.c::ntfs_read_inode_mount().
 &nbsp;There may be more call sites to&nbsp;<span style=3D"font-family: Men=
lo-Regular; font-size: 11px;" class=3D"">ntfs_mapping_pairs_decompress() wh=
ich require similar treatment. &nbsp;Need to go through the code to see...<=
/span></div>
<div><span style=3D"font-family: Menlo-Regular; font-size: 11px;" class=3D"=
"><br class=3D"">
</span></div>
<div><span style=3D"font-family: Menlo-Regular; font-size: 11px;" class=3D"=
">Best regards,</span></div>
<div><span style=3D"font-family: Menlo-Regular; font-size: 11px;" class=3D"=
"><br class=3D"">
</span></div>
<div><span style=3D"font-family: Menlo-Regular; font-size: 11px;" class=3D"=
"><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>Anton</sp=
an></div>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-=
Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">I
 haven't checked if this patch fix the problem. Xu, Can you check it ?</spa=
n><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none;" class=3D"">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-si=
ze: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">diff
 --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c</span><br style=3D"caret-col=
or: rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; text-align: start; text-indent: 0px; text-transform: none; white-space: n=
ormal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">index
 97932fb5179c..31263fe0772f 100644</span><br style=3D"caret-color: rgb(0, 0=
, 0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" class=
=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">---
 a/fs/ntfs/runlist.c</span><br style=3D"caret-color: rgb(0, 0, 0); font-fam=
ily: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">+++
 b/fs/ntfs/runlist.c</span><br style=3D"caret-color: rgb(0, 0, 0); font-fam=
ily: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">@@
 -766,8 +766,11 @@ runlist_element</span><br style=3D"caret-color: rgb(0, 0=
, 0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" class=
=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">*ntfs_mapping_pairs_decompress(const
 ntfs_volume *vol,</span><br style=3D"caret-color: rgb(0, 0, 0); font-famil=
y: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">return
 ERR_PTR(-EIO);</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; text-align: start; text-inden=
t: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">}</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-=
Regular; font-size: 11px; font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">/*
 If the mapping pairs array is valid but empty, nothing to do. */</span><br=
 style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size:=
 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">-
 if (!vcn &amp;&amp; !*buf)</span><br style=3D"caret-color: rgb(0, 0, 0); f=
ont-family: Menlo-Regular; font-size: 11px; font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start=
; text-indent: 0px; text-transform: none; white-space: normal; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">+
 if (!vcn &amp;&amp; !*buf) {</span><br style=3D"caret-color: rgb(0, 0, 0);=
 font-family: Menlo-Regular; font-size: 11px; font-style: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: sta=
rt; text-indent: 0px; text-transform: none; white-space: normal; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""=
>
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">+
 if (!old_rl)</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Me=
nlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; text-align: start; text-indent:=
 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">+
 return ERR_PTR(-EIO);</span><br style=3D"caret-color: rgb(0, 0, 0); font-f=
amily: Menlo-Regular; font-size: 11px; font-style: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">return
 old_rl;</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-R=
egular; font-size: 11px; font-style: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px;=
 text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text=
-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">+
 }</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular=
; font-size: 11px; font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-=
transform: none; white-space: normal; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">/*
 Current position in runlist array. */</span><br style=3D"caret-color: rgb(=
0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-a=
lign: start; text-indent: 0px; text-transform: none; white-space: normal; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" c=
lass=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">rlpos
 =3D 0;</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Re=
gular; font-size: 11px; font-style: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-=
stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-=
size: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; float: none; display: inline !important;" cla=
ss=3D"">/*
 Allocate first page and set current runlist size to one page. */</span><br=
 style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-size:=
 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; text-decoration: none;" class=3D"">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; font-si=
ze: 11px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;" class=3D"">
<blockquote type=3D"cite" style=3D"font-family: Menlo-Regular; font-size: 1=
1px; font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -we=
bkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoratio=
n: none;" class=3D"">
<br class=3D"">
- Eric</blockquote>
</div>
</blockquote>
</div>
<br class=3D"">
</div>
</body>
</html>

--_000_7FBC6FD25D604EB896D5A6014D271950tuxeracom_--


--===============6061197582212692074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6061197582212692074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============6061197582212692074==--

