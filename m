Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0040672E4B9
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 13 Jun 2023 15:59:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1q94YK-0002ED-Pl;
	Tue, 13 Jun 2023 13:59:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1q94YJ-0002E7-Mf
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 13 Jun 2023 13:59:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UHwniRR27yVzLP/gq8rU0422EQprtY2eRyHqttSz1Qo=; b=KYi/t+zbtv5dkqwKZ/MJT8l15V
 leRoWjGY85sb7IuTQtHXC84wquQel6xlH4b/UMX6tWmLGn5OtMCQ0aXSYhXQGreVPa01AGQ3CJ5sV
 jj2qyCi8Anp4p5AsP8Heq0VAarwk7d2AGoLRXlciApXHvPXk3xED/2ilocA58z/sfxKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UHwniRR27yVzLP/gq8rU0422EQprtY2eRyHqttSz1Qo=; b=YrNo5JOaJNOU83r2G/67Mk+9NY
 BQt6hInqOYPAfOw1jLMmLL+4TKU2trRrUmiB0dT9nu0gYEpIY8/6oHKT/uKpg8spvpA7Rwq/V2At8
 oaArE29NABTBcT4Vh20BXpsyHgZmuxa/JIU5gmJdMNyVhzobZptChb+OEVGOJ1DYHZks=;
Received: from mail-he1eur04on2130.outbound.protection.outlook.com
 ([40.107.7.130] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q94YD-001qND-E7 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 13 Jun 2023 13:59:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHiTMExcOtAEdhm7171DbwqQVjoxJUF8Y2kdQtoEQ4yrCH3WeUzHaOt/TZOhM4Mv90S8prkVHvLUlN4WleiM5SEzKQa/xuQdNDUWHKH/XjbHl7t3hO5+66suO0iBYBPX+PdRmOveWKJntcP4w7c0jV+eB657nZJyK+jxPCdYfWEZjj10OWUhkwWuUII86VvEeb9zqWd+9sP6tke6stnEQgtPwoUygKRqVzI5YZUVFHs3pZ2VY/4lGG4JkEeuJXLu1aPoYtj5NbqcGiFp4O1CUPfiNBpmgR1qN88kAdzdNTPPUC2j3fBbFGHpZ+oiM+uPvHuqHdafFgoekJ4aTonuXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UHwniRR27yVzLP/gq8rU0422EQprtY2eRyHqttSz1Qo=;
 b=jqzGsi7flcQbBm8cJDUGS69WryDRHB2T0ay4CXVKNXhBbPRLeFYgegv9QQFkmyCidWxlG1+WMzjoiDHAiGa/DjcxzMj8o10fNTh3BOG0Q/bcygXgbP0gOuxbfNaaX4+1+1ekmHVirNvC2i7rToMr4iy9g3Dt6keoeMDZUZiPTXkL+q4ZpHUMhoHFwtweTuuVFE7rBLHMIcX6js4Cj5I9Eq/juaYVLg/HvkPoNf8StCHG8uxP77qMuN0KK+BvjxArhLJFgrMH3H/25if2ueiQ0MvV82AJmmVz3ibPp3pBOTCvjRrl5TvZj4De0Vf+FV3CmrFVmyGtmy6B8BAUW6SmeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UHwniRR27yVzLP/gq8rU0422EQprtY2eRyHqttSz1Qo=;
 b=OTUJ6zOehVf23XaVhdtcl7fzOqz1tU1jPOdv/TRm06B1p78kYLNEf6SHECYS+tAg9ivZdRbb1UdxbEiFzP5pqUag3YUt6CGAxTV46CRnNzmYVaGVy8+jn+yHEE3sZMdrTT7ikqRrCpnMT8Ziu5y996KWDs+noa17ZDjoOgTiTsjzeuijGs06aL4l57gx8MFFlnlwX468rknLWsYVbugITr7TkXQb/FzZxc7TCPt3z4WIw4dQlziL0ZnK0JcPnNyDhpgtjlfIWGiu69fOI0gYsq5qqq1yWMhHL1YXe64TCOT5U837GxoY6Zc6RbEHTMaE15sBI0/LzfhuSoRoI+EWkA==
Received: from AM0PR06MB5203.eurprd06.prod.outlook.com (2603:10a6:208:104::33)
 by PAWPR06MB8884.eurprd06.prod.outlook.com (2603:10a6:102:38a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.38; Tue, 13 Jun
 2023 08:24:19 +0000
Received: from AM0PR06MB5203.eurprd06.prod.outlook.com
 ([fe80::8a1b:cf75:a821:cccc]) by AM0PR06MB5203.eurprd06.prod.outlook.com
 ([fe80::8a1b:cf75:a821:cccc%4]) with mapi id 15.20.6455.043; Tue, 13 Jun 2023
 08:24:19 +0000
To: Tuo Li <islituo@gmail.com>
Thread-Topic: [BUG] ntfs: possible data races in ntfs_clear_extent_inode()
Thread-Index: AQHZnbBcskKTKtOEpEGWpA0pT3Z+aa+IZXcA
Date: Tue, 13 Jun 2023 08:24:19 +0000
Message-ID: <4A0F8558-72FC-49EA-9EDB-38BB3613E5B2@tuxera.com>
References: <0c336a41-54fb-2904-42e2-1d9ee3950b21@gmail.com>
In-Reply-To: <0c336a41-54fb-2904-42e2-1d9ee3950b21@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB5203:EE_|PAWPR06MB8884:EE_
x-ms-office365-filtering-correlation-id: f8519ea4-18f0-41d9-07f7-08db6be79588
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: imko4pYvOrn4RWdCvb8+RIdgXxS5waXRGLaNvE38es5t7NbPXgfOHW/C6Vse8YxY1EAm2apROM4NhCX1wDI1Y7nDAEriHkxPfzD5g2zEHeP+oMBYQgN3U1vYQeLJ3qQYyCcuc3Y5Cpb71DpBLQrbNfKL5p14Qiny5WrmPIpPy07rUo1TYLd6PdIDmLJEKiGKtriTKnz/RVbI4AIXguUwc8b1rGqvlFmn2j5oZVm9nMFEVvPdtF5nzP92+CQ2C/5VtxxSgsarW/LLpLdW11+uY8q5Ay//euCIUfthOlMzZhM5V9S2tCnPjVkYAdjSyaZ0PToDxi77g7eUexv4tYSkPJLT1+mRHjMHetQ7aevjkIErpqXVKklqx3Ni0qBRBAocnDCy/jgYJa+UJlH6eMoPtZp4SNK1W4s3mca8CJF+F+U2XxQizvChUwnMSlgOMZvpwRXgwen9BlzEYCujWiso50pKlaOgFBDndGEaixSl2gETZlefKg5zyeGRCxb14to+CFIeFXRTPLmaxlsZDODriJ5F+x7YWMsPoSfs8gHRbqp+5gWSuGCuxsA35zFIsLc+XhGNBTQzItXa45xduaiiAiqlCHXkYClsqomnIFMuutumuR6VPCvN3UGlWgrNGRrXMFCcEoiRisX0hMdqOWK5ZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR06MB5203.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(39840400004)(346002)(136003)(366004)(451199021)(2906002)(5660300002)(316002)(478600001)(41300700001)(54906003)(66446008)(71200400001)(64756008)(8936002)(4326008)(66556008)(66476007)(76116006)(91956017)(66946007)(6916009)(6486002)(8676002)(26005)(6512007)(6506007)(122000001)(966005)(53546011)(186003)(2616005)(83380400001)(38070700005)(36756003)(86362001)(33656002)(38100700002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hNCiZ/YOuRNM5bmUnLsBOw0zRBqs47eoNfx62wyMhEy92lZQsgIXROO5cEBG?=
 =?us-ascii?Q?eqi66TQcFRRkowPmWwzXzKA0KCX1Nt+FlB/xPRjlIwSuLmS96XrRvty1GIpR?=
 =?us-ascii?Q?gvbbUetLpnDotYzSfYKNWDfqLxvUv0XiOg4sorQS08CTiBqVFGH4bXGNoNm4?=
 =?us-ascii?Q?COL/ea4MSM2a1KKDozumLhFXsEdZkUx03le9M7iygdyQBFoh6vY1vwSghXij?=
 =?us-ascii?Q?ox+ZVPu10bFMSl2fVTaNED4VdluEdjEzB7/tOsw/nFSvuCGT8H7ebFOA/tDG?=
 =?us-ascii?Q?u8G7XY4fHx9cIpp/9uwGXs8yXS154CGdwpWWew/FTgLbHqJYz0LhID+8BZZ7?=
 =?us-ascii?Q?v3D5RJ1ZM/0bTLNUZJTSSxuzmE7B5Dsl7xsVKrMF/7iB03APxsagSOMr9xHu?=
 =?us-ascii?Q?IZsS/UJPMEXMu0f8CPkhD6zmkOtbeiNle71g3Mbj3qNOuOmk7C7H2w35BMhv?=
 =?us-ascii?Q?M5wcf7zR87UoLZzhlB/7hCCml1NEPaNN/gYU3+dEVe7Q3j/DVmh4rwwmxkMz?=
 =?us-ascii?Q?Z3xsUam2sD1e+dxEDSF4HkldqjunanyS99rIWJ2/YHQ5pS7hFKwBPZBUIqnP?=
 =?us-ascii?Q?qyIXic5IeDY4M8OREANMNe7PfIL3OqCVm7bo/AZIQbOGQgcjxUnU7+cC+HyI?=
 =?us-ascii?Q?GGaHmo5Z15MX4G+emxMIm5Aw97+x8NLsOuxu+fJ+FK7htp5LsKWj35r3Bt2c?=
 =?us-ascii?Q?G8XCo7i6H69mqmHFj3ggjx35vCiWwjnOCwy2CTDaHO0ZqJbLfTJ3dcJNvQmX?=
 =?us-ascii?Q?1nNai2nQOc1v6z4xitGrITcfsQ0DTWEh3ZpcoL440hAvmgabu33m1GNjNOio?=
 =?us-ascii?Q?i2tkZZMLQ1wLlCv8gsYPYh0dilt5ItHjC8u4hIuAfJ+LvAHYaXamZ63WY4bu?=
 =?us-ascii?Q?JuisxsY8l1b4N47/MndlEYHqrrbMJ70QZQBFx0F1zYgDmz1aoAS8C70hgNj6?=
 =?us-ascii?Q?xCYrrY4a0PtJg7RwfJ+EgHoPKAOyCJhMRtG++zUzC0epPvf5u+lQ31mRfvFx?=
 =?us-ascii?Q?x9RiVbWamy+CKpO3KyBhFcYSrSiAk/GCgMhhBOdZeVB4HEA1h39PtgVaJRhF?=
 =?us-ascii?Q?mwdKT5ysFo4xy/l113jaug/XS2Vwkff1sp5vi24eBsLRbBZPUm/SVeL+sn7j?=
 =?us-ascii?Q?zrtWXgkMUoH71RUjc+fwZS61tjLTd7pPJtP0fWdF47QHIUhptWyVWiz1MFXg?=
 =?us-ascii?Q?NPsU48/5KC4LJ2EtoGI13R+lDg4tSmoyjUwpKgcyqgUukNZyDpcdySjXHOBQ?=
 =?us-ascii?Q?LRrFL8O3eEofuuePuDr3vfPsLF5KS5PKGexww+7TqTVGgjcznxUxwgM4IuXd?=
 =?us-ascii?Q?9fhJEf/hFKotlAmIIrloG5ls9kmvtxEXO0key9sxxA4vXyiQVpCAE0qF3kR1?=
 =?us-ascii?Q?8KrcZKDXBdPEwzG8dcy8UGRJoTvfqRyE+c0+hRmyZmX0jyhcQCvYM8o9WG8l?=
 =?us-ascii?Q?/rDRNoXWCNUllDY97M7yR62wmjcDHaO71ZTQzOutdIsiyByTsGFcmx4x9++0?=
 =?us-ascii?Q?d9IUlI8OuBhIXpkNGMVG677AcYw2XUjaWlAgEzmdPyK9E10210J1riCEpN54?=
 =?us-ascii?Q?yf6l43pv0vHxyHlMU3ZVpXn9c31L4tF6juPo22Ev?=
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB5203.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8519ea4-18f0-41d9-07f7-08db6be79588
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2023 08:24:19.3123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E24ADhrojUaTpJRMx1lyVITnO2OuB2QLOGTfIlUYFlvsIxIRpD3xtuD9cX/hJL8UVlreInGpGSLdY1brRqwo7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR06MB8884
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 These are all red herrings. You do not need to lock something
 when there is no possibility of another process accessing the data structure.
 All the functions you are quoting are inode destruction. By [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.130 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q94YD-001qND-E7
Subject: Re: [Linux-ntfs-dev] [BUG] ntfs: possible data races in
 ntfs_clear_extent_inode()
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "baijiaju1990@outlook.com" <baijiaju1990@outlook.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5909642278670452228=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============5909642278670452228==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4A0F855872FC49EA9EDB38BB3613E5B2tuxeracom_"

--_000_4A0F855872FC49EA9EDB38BB3613E5B2tuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

These are all red herrings.  You do not need to lock something when there i=
s no possibility of another process accessing the data structure.  All the =
functions you are quoting are inode destruction.  By very definition nothin=
g can possibly have a reference on an inode which is in this code path as i=
t only gets called when there are no references left.  The inode is about t=
o be freed so any access to it would be accessing freed memory.

Thus your static analysis tool is giving you false positive because it does=
n't understand the context of what is going on.

Best regards,

Anton

On 13 Jun 2023, at 05:34, Tuo Li <islituo@gmail.com> wrote:

Hello,

Our static analysis tool finds some possible data races in the NTFS file
system in Linux 6.4.0-rc6.

In most calling contexts, the variable ni->ext.base_ntfs_ino is accessed
with holding the lock ni->extent_lock. Here is an example:

  ntfs_extent_mft_record_free() --> Line 2773 in fs/ntfs/mtf.c
    mutex_lock(&ni->extent_lock); --> Line 2786 in fs/ntfs/mtf.c (Lock ni->=
extent_lock)
    base_ni =3D ni->ext.base_ntfs_ino; --> Line 2787 in fs/ntfs/mft.c (Acce=
ss ni->ext.base_ntfs_ino)

However, in the following calling contexts:

  ntfs_evict_big_inode() --> Line 2247 in fs/ntfs/inode.c
     ntfs_clear_extent_inode() --> Line 2274 in fs/ntfs/inode.c
        if (!is_bad_inode(VFS_I(ni->ext.base_ntfs_ino))) --> Line 2224 in f=
s/ntfs/inode.c (Access ni->ext.base_ntfs_ino)

  ntfs_evict_big_inode() --> Line 2247 in fs/ntfs/inode.c
    ni->ext.base_ntfs_ino =3D NULL; --> Line 2285 in fs/ntfs/inode.c (Acces=
s ni->ext.base_ntfs_ino)

the variable ni->ext.base_ntfs_ino is accessed without holding the lock
ni->extent_lock, and thus data races can occur.

I am not quite sure whether these possible data races are real and how to f=
ix them if they are real.
Any feedback would be appreciated, thanks!

Reported-by: BassCheck <bass@buaa.edu.cn>

Best wishes,
Tuo Li

--
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


--_000_4A0F855872FC49EA9EDB38BB3613E5B2tuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <5A309D0A7C1D4642B8FB1F76C733ED44@eurprd06.prod.outlook.com>
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
<div>These are all red herrings. &nbsp;You do not need to lock something wh=
en there is no possibility of another process accessing the data structure.=
 &nbsp;All the functions you are quoting are inode destruction. &nbsp;By ve=
ry definition nothing can possibly have a reference
 on an inode which is in this code path as it only gets called when there a=
re no references left. &nbsp;The inode is about to be freed so any access t=
o it would be accessing freed memory.</div>
<div><br>
</div>
<div>Thus your static analysis tool is giving you false positive because it=
 doesn't understand the context of what is going on.</div>
<div><br>
</div>
<div>Best regards,</div>
<div><br>
</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>Anton<=
br>
<div><br>
<blockquote type=3D"cite">
<div>On 13 Jun 2023, at 05:34, Tuo Li &lt;islituo@gmail.com&gt; wrote:</div=
>
<br class=3D"Apple-interchange-newline">
<div>
<div>Hello,<br>
<br>
Our static analysis tool finds some possible data races in the NTFS file<br=
>
system in Linux 6.4.0-rc6.<br>
<br>
In most calling contexts, the variable ni-&gt;ext.base_ntfs_ino is accessed=
<br>
with holding the lock ni-&gt;extent_lock. Here is an example:<br>
<br>
&nbsp; ntfs_extent_mft_record_free() --&gt; Line 2773 in fs/ntfs/mtf.c<br>
&nbsp;&nbsp;&nbsp; mutex_lock(&amp;ni-&gt;extent_lock); --&gt; Line 2786 in=
 fs/ntfs/mtf.c (Lock ni-&gt;extent_lock)<br>
&nbsp;&nbsp;&nbsp; base_ni =3D ni-&gt;ext.base_ntfs_ino; --&gt; Line 2787 i=
n fs/ntfs/mft.c (Access ni-&gt;ext.base_ntfs_ino)<br>
<br>
However, in the following calling contexts:<br>
<br>
&nbsp; ntfs_evict_big_inode() --&gt; Line 2247 in fs/ntfs/inode.c<br>
&nbsp;&nbsp;&nbsp;&nbsp; ntfs_clear_extent_inode() --&gt; Line 2274 in fs/n=
tfs/inode.c<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!is_bad_inode(VFS_I(ni-&gt;e=
xt.base_ntfs_ino))) --&gt; Line 2224 in fs/ntfs/inode.c (Access ni-&gt;ext.=
base_ntfs_ino)<br>
<br>
&nbsp; ntfs_evict_big_inode() --&gt; Line 2247 in fs/ntfs/inode.c<br>
&nbsp;&nbsp;&nbsp; ni-&gt;ext.base_ntfs_ino =3D NULL; --&gt; Line 2285 in f=
s/ntfs/inode.c (Access ni-&gt;ext.base_ntfs_ino)<br>
<br>
the variable ni-&gt;ext.base_ntfs_ino is accessed without holding the lock<=
br>
ni-&gt;extent_lock, and thus data races can occur.<br>
<br>
I am not quite sure whether these possible data races are real and how to f=
ix them if they are real.<br>
Any feedback would be appreciated, thanks!<br>
<br>
Reported-by: BassCheck &lt;bass@buaa.edu.cn&gt;<br>
<br>
Best wishes,<br>
Tuo Li<br>
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
</div>
</body>
</html>

--_000_4A0F855872FC49EA9EDB38BB3613E5B2tuxeracom_--


--===============5909642278670452228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5909642278670452228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============5909642278670452228==--

