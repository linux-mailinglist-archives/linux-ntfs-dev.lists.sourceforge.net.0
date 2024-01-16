Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2DB82EC8A
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Jan 2024 11:07:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPgLV-0000EC-5H;
	Tue, 16 Jan 2024 10:07:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1rPgLU-0000E1-4P
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 10:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gbp1bsqxtc1MG62MxCVieMCVqE20Uqfxr256lUzalkA=; b=hPF+0XECG7+Lyt2A7Q/I/7bBgh
 O389b26tZXT68jPIkf3+QUwNBd7zNDGbLnYi/g8EtxOcNZGwyp4M/DI3A+7Bo4l4soTMioc/08I6u
 NSlXnI1k9Ad9ynh+ekWyKBjC19r/mcw9zCaIgx5OGdwP98pBlZIKxrQHJke09vc40b2M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gbp1bsqxtc1MG62MxCVieMCVqE20Uqfxr256lUzalkA=; b=VYQ9JlaJppr9f264/wro63PxYr
 gEFcVHPG/PLM1l7c4A47ZzVPLC8VBveMM2j0SFULEb9yTpX1u08XhQ4QNbhLnD+0KhRG9w47HkL/U
 RHVw0zVQZmGpVQxeAbDOvgzIMwmtbGcniDGi7LbDn59DxojbD0djK1CzN2SnveTsnCtE=;
Received: from mail-db8eur05on2104.outbound.protection.outlook.com
 ([40.107.20.104] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPgLK-0004KS-Ry for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 10:07:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fuGHNJhoQsiD311V0feF0J2FmQi7TKBx3pXGBEOtesFLY1YwzhCFnHY/rxwDRA2vCN3hehi7wZp7fXLIFrZkwjDyeyTUdaic2qTQeuI13c6I5UtXiHpcw5MRyecY/PvqRWlsg6hrh+49FSAZbGMdSmxci8Y6IcerTZVdxx/wqFCzKey97P3+6UwFFk2N1ii8a58xLIN64UX6Ki23Du/L7Bgm2vkxfRGtk5hNMXr5H+1fetZ6s37ea3qQSuZnoszxT0D5aYKn9+Trm09yUf9HX82WXu8hF1ovLAn97vE1PJ8JL7Xk4cKlRZmzMmhgTez6yEhyz/nEy8QCHyc1aigONw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gbp1bsqxtc1MG62MxCVieMCVqE20Uqfxr256lUzalkA=;
 b=clM4mJ6wmxs2JhzqxI0ltkU91B8IloTG3xwMo3sfrWlYrRGSsQNq4Uio7xYptyViDFHE1pBpcXW1MFFifkUnMgQPNYBToIj486JNwFS1t8q7h0jDY330Z4HxQ+fEVr/NZ0OlcL2Wcdh3b5FzNLAbY163QKopKlxxvouojONhxSox4IMS7/fNXcPfj2JvSZOwOEPzWqi52/kRfLvmqQbo2zVZIUS7OnkGL9xIz0XsfMVU+76EaSSN8GRizI0jVvYop8UmtDDJ5Qcgr3o9baY32wzN/T0jkvNbFL2S00CaZDgaXlYtm9500kUDdynJLJMPrF/mXvPWwzNFb4adwkuAMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gbp1bsqxtc1MG62MxCVieMCVqE20Uqfxr256lUzalkA=;
 b=FqUccbq8tL/83PDXeUNp9YdYUajiPBtFpHia5cXAxMEBBLKVhCd1eB9S60rwc3o6hZpsEpuHTNzpgYjtkHN/1zyC+lqnT/eT9I3uiksvYC/GTcAl7ym4Yj5Qs6HIYnJV9lOO/a3SlSicEECKAeWSo2CiNo+o81Nlps65NeH0i1CpGBiIF1X1o53vz/icdZXOI0Eqt44iFQL3AV3Hq0CQtfae82prit5nPTF04aS8ZK4XYjVTrJNlAauTicIc1YubPbKp1lsBDtnD+D4ikj/Mw7qr8gllkYFJ6DgP64Y74Eecd0BQiECpUTmVi6fJVqyLEUDnFIFeaR5W9Aoa2kfsVQ==
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com (2603:10a6:20b:254::18)
 by DB9PR06MB7434.eurprd06.prod.outlook.com (2603:10a6:10:251::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.28; Tue, 16 Jan
 2024 09:51:47 +0000
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c]) by AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c%4]) with mapi id 15.20.7181.027; Tue, 16 Jan 2024
 09:51:47 +0000
To: Christian Brauner <brauner@kernel.org>
Thread-Topic: [PATCH] Remove NTFS classic
Thread-Index: AQHaSGGeNKTzB3XDBES+RHdZGnNlrg==
Date: Tue, 16 Jan 2024 09:51:47 +0000
Message-ID: <1B634C72-9768-43E9-93B6-3396CBAA958E@tuxera.com>
References: <20240115072025.2071931-1-willy@infradead.org>
 <20240116-fernbedienung-vorwort-a21384fd7962@brauner>
In-Reply-To: <20240116-fernbedienung-vorwort-a21384fd7962@brauner>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR06MB7239:EE_|DB9PR06MB7434:EE_
x-ms-office365-filtering-correlation-id: 1eb141d0-9f56-4f12-5488-08dc1678c183
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QlSIictnZfnhZfs2hYkbczlrWknxcaam4Uu5TqS9YAhybLODthbRcn7qnA4ULTn8/OnFKjwjKHSVGIPzNPRBeHdAziUQb+3MRQiRdtq6HEd4Qh8VrBRXe+QAOC0ABeHs8Ul8kvBnahBz9RAXCBxdjQHN85WkNTDLO7ABPuzBDPxWGT9gxpws6L0nZkqrlt0xFb9tibkHmZrc0za4CgIbxfsu/aarkxQutMksd2J/5uDjQNZLXasrxPDCJ9O8hEgRAtIub88Jmh2XW5YjgAY/wlR9mhG49SlhMs+0i6NIU6wkAqR96CTAbdPTVKTDYKsSYLIpozM/+z0SShRP7WQq8sBV0KsLaGnS39+udaISNUxNT2o9qd0olNGXLq91vIL71RbaKr4uRHwNXIAWesr7fKyB+DkAfPMsCPKo4mjoyBscvwxfi3APjApZqqoqJ4uNXQ36BtL7OFzahwr0ouQj4OCN61+5UaBCBvbTclFAH+bhQRH4wrZ+x+5oHz1EGEG2HuirI/NqfykLGTampdrmsgMkzcSvVv1tKapyU8WO6gXL6USS3cxYIqHsQc2wtrwyUzIZwDGdmGzkoXoKWJNPcWhpKS2cUQt89TharswC/Nb9r4VoOF52j03LUINeU5dSIpsbudfLwF9dZL/WP7YGPg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7239.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39840400004)(346002)(366004)(376002)(396003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(38070700009)(478600001)(83380400001)(966005)(4326008)(5660300002)(66476007)(8676002)(8936002)(6512007)(316002)(66556008)(66946007)(64756008)(6506007)(54906003)(66446008)(6916009)(91956017)(71200400001)(6486002)(76116006)(26005)(2616005)(122000001)(2906002)(53546011)(38100700002)(41300700001)(86362001)(36756003)(33656002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C1pDwBJnvBtT9jxU+Eed6m3x6hmVdpmWDolsWAYrfNdjMisODtOF4yrLbj5H?=
 =?us-ascii?Q?z6zbWony06l0Mnsk1ErFvC2McKsyPWNb0wXZb+mWtSi3Kf6Ls4VI88htr0fk?=
 =?us-ascii?Q?n56bfqCrOmKKxmcY1z4qJrhgCVe0nsUqCokjMbv7Chy4UU/MC3omCHqN0PK9?=
 =?us-ascii?Q?rXFnmyJQlWFijqk7LixRZLr3OSyCsRwPWF/mc7D2wbJY0sDlyzeA3wihHtsi?=
 =?us-ascii?Q?+gMKg5qXlIkrQclOAY7dBCJGaPwczd1c5Ow95XomVrwdfDXCjXkmlkN9d69c?=
 =?us-ascii?Q?s9yZ2vdeP3bRuGHpGZBg0A3SPTm5FcBphBuhRM1AI91SgqRYzXhj+4Vn43IP?=
 =?us-ascii?Q?prSpJpSG1bhS+H62QxAKBla/eDql6TTcWlatodEQLcg8QU0oqmPMet4CA9Ux?=
 =?us-ascii?Q?34sFaI6DHip7pzkREqCqcBpHyK9PFpKFZ8utYLylWaDUVQewk7gY4ET1tSgb?=
 =?us-ascii?Q?itaoPldgqVvyKbvveRxGcN0CLxa/pdfaOgEtmozGZRlMSr0T/GLoRCfJyPj5?=
 =?us-ascii?Q?vda7CntfQGfK4GSzsojgK+1XrvpE+UNw823SoiJ8xOtt72IZAH4Q0MH4MC5e?=
 =?us-ascii?Q?GDmpQt90eqRyLFYVVBS+ADpRb/eAUxy2DFsmc0D5iPM8HLTVmzh65wWkCkHX?=
 =?us-ascii?Q?6GUD/TS3N55ByHbKN55VCWPqaThGCrrq40lfOLiJ8+J+I/whz3qfXYis0A05?=
 =?us-ascii?Q?V6JPqt/m5QdMf1sVBWAx824/rFDDg3ko1qNqLYbuC99NI1eCozrMJW0offRF?=
 =?us-ascii?Q?SQnr+3LgC3hDJONgcP6QU9rQlybLsX3SHJmpwMwGOJzK2SGj34+5UJc0cDAp?=
 =?us-ascii?Q?QaoGoHDePAG08ip0tB5oS2CS5CQw7ILV9HUhp/O1GccpRn5/JRRMry35VrZt?=
 =?us-ascii?Q?5oOqQfaK4eA0vkN9vbfw77po2H4X0cuRIxFNMXvIEfu9ycPKIKgyBMqSitef?=
 =?us-ascii?Q?f1dvEWRYCN1qxuvu6uMSOfjsG1SrmAmoJVCWBa6vzGx65M1k86krAoMBKHAc?=
 =?us-ascii?Q?X7IkxpJ652gx8txyh4LybX/E8+nx4uaiGJiM4mvb1EAL2sNJbIURovXid9M4?=
 =?us-ascii?Q?Sv9TyJyhiodEF+UKAQUKe9dq0SUDAZnCIyOj9GKt0wJKg32N+iZKV7MEwP3Y?=
 =?us-ascii?Q?br1yE6guvcE0SORq79JM7FweaaMkkzgLd2EV65D+AfDm9icf1hzYQd7gNjsL?=
 =?us-ascii?Q?mvJH0XTt5dSuFFMjGqBW55B9zoIWwEdrFbSaf0HkSp1fVUv0bLZV7qDifvQ+?=
 =?us-ascii?Q?PD1kIx5QEvT6yfqT8cookmr1Qlcs7QmI6p3llCOgqMMvq/nIUT3kUShaHT8U?=
 =?us-ascii?Q?qvGS/k98xzx5fm4iXzPG7lwB0r/NZTyNpjnbVnWc8IViKqgovIFpKA3yazYo?=
 =?us-ascii?Q?swNlNGl9ZudLlkQaPoNlLaLfEnJ6KGHhFpbHFmxFojY1r1VQcJTZfPYGH3Fi?=
 =?us-ascii?Q?ePClgJHVhDbJk+ly3TzQfGVQdWiQSqGoD+glnMLVMYCS432C0y1G+e+TljLq?=
 =?us-ascii?Q?fki1EO5E3e2SSkovQTB1U5E+noFyL3ZEOm0Wocds1kRRdt9gpaExNzSGlMdv?=
 =?us-ascii?Q?qduyDWebp3EEdKS3iQQqEr847bRU1tM0eFgo+XhR?=
Content-ID: <5DDE382A8A79DB4CA1105011F80C9448@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7239.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eb141d0-9f56-4f12-5488-08dc1678c183
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2024 09:51:47.7724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SHn0arLpUUhbzehyhkxwK5RpLvxScorzopaEzcc1ZRl10IQuFSZAggcMuLnO8eX/7xW2CI4irZMtZ6wY6/nt6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB7434
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, It seems there is consensus to remove it so please add:
 Acked-by: Anton Altaparmakov <anton@tuxera.com> 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.104 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.104 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPgLK-0004KS-Ry
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

It seems there is consensus to remove it so please add: 

Acked-by: Anton Altaparmakov <anton@tuxera.com>

Best regards,

Anton

> On 16 Jan 2024, at 09:33, Christian Brauner <brauner@kernel.org> wrote:
> 
> On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle) wrote:
>> The replacement, NTFS3, was merged over two years ago.  It is now time to
>> remove the original from the tree as it is the last user of several APIs,
>> and it is not worth changing.
>> 
>> 
> 
> I see no reason to not at least try and remove it given that we have
> ntfs3 as a replacement. Worst case is we have to put it back in. Let's
> try it.
> 
> ---
> 
> Applied to the vfs.fs branch of the vfs/vfs.git tree.
> Patches in the vfs.fs branch should appear in linux-next soon.
> 
> Please report any outstanding bugs that were missed during review in a
> new review to the original patch series allowing us to drop it.
> 
> It's encouraged to provide Acked-bys and Reviewed-bys even though the
> patch has now been applied. If possible patch trailers will be updated.
> 
> Note that commit hashes shown below are subject to change due to rebase,
> trailer updates or similar. If in doubt, please check the listed branch.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
> branch: vfs.fs
> 
> [1/1] fs: Remove NTFS classic
>      https://git.kernel.org/vfs/vfs/c/9c67092ed339

-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
