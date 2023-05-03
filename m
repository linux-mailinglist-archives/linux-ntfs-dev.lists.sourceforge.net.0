Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F1B6F622A
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  4 May 2023 01:42:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1puM6s-0006Ne-Ku;
	Wed, 03 May 2023 23:42:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1puM6n-0006NW-Az
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 03 May 2023 23:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=diityjePMxOkZmaAkmFpWKkHo2mGVj1f6bn3SbWbpQ4=; b=iJtWobM6Kh4QAE5DEyrxzlVug9
 3CiXzpHFJ3Lhlz24wF+JGXouDhhHy60vv5s5gv2ZRbElzqkcp+x0uYI0Nivekvt03tUHTsTq0BE/y
 l34gtpYRMLmfXL56M+qnSSESqPBherW68EZ4h49IB6kbbueJjQYl7ct3gpr7QJNau4NY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=diityjePMxOkZmaAkmFpWKkHo2mGVj1f6bn3SbWbpQ4=; b=PPnwB9UqmDtxYOlTUS3GcaseEX
 IZSjGPQOgmz+X6QJSWVx5tAmapgogv58xAPYAg94QpmHmktxVrzh3ra3BjKa2Ydz8CWeIqYRjQvxq
 2qU35nC9QKe6cWfd3Oa83zrKL/5yrN/VFEl+oP5mugkAH/waBiF0ypM2h8Li22eRjZ7I=;
Received: from mail-vi1eur04on2124.outbound.protection.outlook.com
 ([40.107.8.124] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1puM6c-00DR34-Aj for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 03 May 2023 23:42:03 +0000
Received: from AM7PR06MB6626.eurprd06.prod.outlook.com (2603:10a6:20b:1a0::21)
 by AM0PR06MB6323.eurprd06.prod.outlook.com (2603:10a6:208:174::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.25; Wed, 3 May
 2023 23:41:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AwEBT/9ACdcHsmA6TZJ95wQbm+ejAC5ezRUuWEfs943wvohAnO3Wfdd7zoxgl4o2r/DLYj2Gd0ggvH8gxtB6gUvtk1LI0+2xQkTOKqctNvkYPMF6bD6Ztt5Gpt3+SYZhRZPJPTd26PyBsHFzwGQ6RoEqyCmXe1sH/fYGLssI+9UxKViFSfsb0vXC4b3SgRMXAQ0DkgMA+XsurX4NfcWEUd/7chQ9E7Ozeo00t0yzH3KkTsEUxdVQD5ZmtG0iM5LcuXdu+tQch8K+PA7n25UGwiXRY8XuQqXK6IXG8o3VKnoadKblMbLIsJ8p7pSMUzp5aqVdvhM9lVMK2nQpnlUG8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=diityjePMxOkZmaAkmFpWKkHo2mGVj1f6bn3SbWbpQ4=;
 b=Pttzh6defQy0TEnb24m+Q2bUtML5hDs0zKB+rTaurJsu1aA6tvfFP4x6uyIKtxN6ZymfDZnoJdIKGPOd43ZanOFP3+Nk8N4LMDBivD+VNVagN8kKxifGMd5a6Cum5hJ+pTSLzW5fbRprsWuOPcER+DzUGxg5jqFrY9EcCk7P5ao14+F3OdTDOhyz/NhosiaJrLklr8FJ0nXkJl4P9DbxKhVPj28qYl9Yo9L246XE+3le6XI5vQhuTas/2/PgEtQaKYohF+tuGYNLr7prkzj7RFxZ3PMv/nnNCMLf0ELXljYBBgBCwXAD+R8hjGP19XbnHyBDDSaDV+ImxwTadV20Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=diityjePMxOkZmaAkmFpWKkHo2mGVj1f6bn3SbWbpQ4=;
 b=GcNrDUPHLeqrxsXJHfhuZ8IgxH/7UfHP3sGj8U/dsw1KdKyxNGce0YP/ItFwQnbWGMr5Z6eMX+mXUfnlF4uF9Y8+AB8dLJdjlB/YYJ8fy2TQfYiMriztKnos0CQ+awxL9SvM/sQOtB6QcaMdbOSccPDy2qmXH6jvlOW/1uPRuoDBk5vwsKS54kbk1DbGCbjbsV1twKW49XLXFDEdTTwGZU4M1Igs1kBT/ShOoFQ/SlB7jPT8mFm/VSCeCOJ12HWc0ycGbxWD+x/H75xiX+d9Il92Qv0UpMIHk/AP9nXpNJW3GN40K4HZ6SR0/KavuP9nDpEWj/m9QZKoxuhagFQ9cQ==
Received: from AM0PR06MB5203.eurprd06.prod.outlook.com (2603:10a6:208:104::33)
 by AM7PR06MB6626.eurprd06.prod.outlook.com (2603:10a6:20b:1a0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.31; Wed, 3 May
 2023 21:37:28 +0000
Received: from AM0PR06MB5203.eurprd06.prod.outlook.com
 ([fe80::8c8:e489:5fb5:5f35]) by AM0PR06MB5203.eurprd06.prod.outlook.com
 ([fe80::8c8:e489:5fb5:5f35%3]) with mapi id 15.20.6363.022; Wed, 3 May 2023
 21:37:28 +0000
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: ntfs orphan? (was Re: [PATCH] ntfs: do not dereference a null
 ctx on error)
Thread-Index: AQHZfXX97fh99OQFbkWBWwSMgHn4J69JCz6AgAAIs4A=
Date: Wed, 3 May 2023 21:37:27 +0000
Message-ID: <A55E04FE-2A6D-48D7-8219-77CFDDDABB0A@tuxera.com>
References: <20230407194433.25659-1-listdansp@mail.ru>
 <ZFHgAhisxjKQxhLx@debian.me>
 <20230503140609.e65bdc2b0e55ba6f49bbb620@linux-foundation.org>
In-Reply-To: <20230503140609.e65bdc2b0e55ba6f49bbb620@linux-foundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB5203:EE_|AM7PR06MB6626:EE_|AM0PR06MB6323:EE_
x-ms-office365-filtering-correlation-id: 060b435e-ccba-4b8a-9c6a-08db4c1e9779
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X/TMzxxrVe0XtlHwNECKJh36P8jC5LMHDw4Lhnl6UOvWLyhfHTrGMSJC6uZYnv15OoHELGp57k9yADi/gAB2dCRmJCApUs5bgihtrH9rWYO53t3Mlx2cwjNBAwc02rJtDXd8VHdJKPBLPdP2+cSwtR3Br4umsHff/c+p5csuE0qzT/+sVfB9gdYIZsahU+XlmAxs81ZO1cRYxXYbQlCRJLoKu4AueX488nkpG5YJQe4sFHN7fb2VfnjBNwPrh0fHNE1DLXyOFLguup7YPct+quEQhlRuigCb0t4Z8fpYzyXezJafAF9GF66F26CupYmgBoCZ1iWrqdPeqrRqGpQ2l0YO/MfbGGOIDBHchBMPDXz769uSvB+QSO6PHcpe1vMR7Vq9g7jfgNvGQnLFG9w7MtiS/ue2yRql1I9vxZQzN1XpT3tAUa3UIrCKkFFusxqBjDmDLiFZiaunoO/1/6XucnadfpKMFGISAQPOB3WwiNNCrNbfSwfim+pkUNrSlqlyFUlXqXFjV+S3/t3F/NNEWKpJ2MVu1Br1sggtkx1n5YiW+0EBjX7dBgtMX1HCfNSfdozL0/o4U3aKUnjs54bRbfZ0OGEH+GYuuW+0NDPsLogBit9oAMdjuuIwxJITgVdo0dqUmoJczKuou9eVkttPAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR06MB5203.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39840400004)(366004)(346002)(376002)(396003)(136003)(451199021)(478600001)(6512007)(53546011)(26005)(6506007)(71200400001)(6486002)(91956017)(54906003)(83380400001)(966005)(186003)(2616005)(4326008)(66446008)(66556008)(66946007)(76116006)(64756008)(41300700001)(8676002)(122000001)(8936002)(66476007)(38100700002)(316002)(6916009)(86362001)(38070700005)(66899021)(2906002)(5660300002)(36756003)(33656002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NiOJoXV+wBmnrEzPYAdo3TZe7IgyM+rdyHoy6ePNJHsXj9Iv7g/zVEFQD84l?=
 =?us-ascii?Q?9wvj/7fJ9Gg8v5v1db/tb/CoVJlx7LP+J7UbUY3wXK4sXxFpl23WBqhHAnl4?=
 =?us-ascii?Q?7DDzSuS1Q3mntHIe6srhKzc99hwTqyuwdgPUiEhKpg4n8GxeWUJCaU77FYqC?=
 =?us-ascii?Q?HYufe3G9y6NqV4kOWB249Dql3Wc8fOB7NKxoFR7gwXkc7TfY5hqj8ESG5lQM?=
 =?us-ascii?Q?zE5iXcUKcQR/kfqfke+AnYtGYCzLT2zflu5VmpbXfPZXLJIRx+KvK3z1aeoQ?=
 =?us-ascii?Q?cOuPx6lWeasOrH05zmzvRUyH8DR/3W9mxtM4zIj/fntChtU/yOP3kaSkfVDy?=
 =?us-ascii?Q?JFoNL03jaY94z6/oQ26xz3Ug7AtPDLf9y3+7DlYJ6zMEy1QaO+eb78uOUpHN?=
 =?us-ascii?Q?jF5lCE4Fw4XY+FWL3FqHevaXW+9z113VMGIYBnxkVg94kKAAeBvffWbJAW8o?=
 =?us-ascii?Q?SGqQoa+wSAf6opXCpzK2kX4FwlycpSXUXtbiPamRWePEWYCiMnZtUImXiNGF?=
 =?us-ascii?Q?79uzeRqkWoqnhMI7qUXv+iKOSOQ9CX1Qxk7kY9a4YrZ1zR6/uX8BjLPvukN3?=
 =?us-ascii?Q?q7zj+3+PcGu/IWF+Zv3z0Bertqf50RxZ+8mjIhCsrHApJAVyDnUtrBklOzXQ?=
 =?us-ascii?Q?uJyxM1A/pAjzsrWRg7V7V2VbzLaJ7mggaCjChiEHyIQwU3dGYoY2Th/Wf/JH?=
 =?us-ascii?Q?pA5RpyAmsX3YjNBBfMC0ULrr7ZsvrnMqdytsfYmi19jMofPWZA1jCA+DjsJ6?=
 =?us-ascii?Q?fQJefI2ZhWYGzz/M31W+GkEJkN2mhMMA2MI3kuwwbwxwPc7i4mDI4Z+wFue2?=
 =?us-ascii?Q?3fhXMAvPpwbbvmV5BWAI1StKBk2QUneAO+yG5voGBaM0D+0XqeteTC/7sOUd?=
 =?us-ascii?Q?bkqZnw+5FyA1DFHyhUqdE0bf4T3j6FMDOWi2OR+hJB9y3LikSq2I/RsRX0SM?=
 =?us-ascii?Q?BobkG5Rc2EPzl+gSu7QsQORxSj3SUrBDI2LbUkgY8GdHtz6QKShHwcXFWhjy?=
 =?us-ascii?Q?XSeI8LBmrYvmFEA+RwNSISwDYKHHpVRBScqRLYjL2LMflYaUhigq7dBLXn9E?=
 =?us-ascii?Q?n6GfvFgs5+/qwG8jp0oKlfGS+KayXIG3eAwrYtvsmRzx5SBffGeuM9ye0uxO?=
 =?us-ascii?Q?01VnyHRkZjbrwhi1kVkIVcuoemcNn5nZ+6BmLHLg/1yw1i0b79Wf1BWs43c8?=
 =?us-ascii?Q?cDOhIAsf2UdrsUu1ImoEBGxRdHKPSQmqxAeIMLxhHUUxHldiMmlhg8DcZcaz?=
 =?us-ascii?Q?qxv/lccEgyV3WwUamQ0LV+eCBnloyOwxIwVK7w88xMv/+euiG4v4a0M/WOBZ?=
 =?us-ascii?Q?O9ren+aup+h2r2YfvLY27aRtVf1deQwvvD8xQGxe1y9havWDPHfUlFp1fC4g?=
 =?us-ascii?Q?64+AZbMmGxmydmayMbr0HYdLrb5CftdK4T0GSDqcTEaYqNhDQvE9qG9hIcci?=
 =?us-ascii?Q?w+cRqCbh2GeZ4nlz+EdxijUzb4GmBNtt8mwMT5TCZRHow6loXlSgh6jbPVTe?=
 =?us-ascii?Q?/fZSXCWtCELbJbbJGq3/iCWsT/yNrjcN3wHwp/Svjh7QLX4gn6cSqohdrrw1?=
 =?us-ascii?Q?PwOjAmk6Oj70ep+rtqN8nUMjJI8hhZUJ++R2SnSA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB5203.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 060b435e-ccba-4b8a-9c6a-08db4c1e9779
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2023 21:37:27.6543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C6N4hq8mElKQREiOo4WlQE4KnWFOULo7YcwSTskvW5UjwOdPdUSx1vHIBdXItIzoS9ufmObo02V6EF5jnn9vYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR06MB6626
X-OriginatorOrg: tuxera.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 3 May 2023, at 22:06,
 Andrew Morton <akpm@linux-foundation.org>
 wrote: On Wed, 3 May 2023 11:16:02 +0700 Bagas Sanjaya <bagasdotme@gmail.com>
 wrote: On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1puM6c-00DR34-Aj
Subject: Re: [Linux-ntfs-dev] ntfs orphan? (was Re: [PATCH] ntfs: do not
 dereference a null ctx on error)
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
Cc: Christian Brauner <brauner@kernel.org>,
 "lvc-project@linuxtesting.org" <lvc-project@linuxtesting.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux Memory Management <linux-mm@kvack.org>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Danila Chernetsov <listdansp@mail.ru>
Content-Type: multipart/mixed; boundary="===============7049929765886173536=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============7049929765886173536==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A55E04FE2A6D48D7821977CFDDDABB0Atuxeracom_"

--_000_A55E04FE2A6D48D7821977CFDDDABB0Atuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

On 3 May 2023, at 22:06, Andrew Morton <akpm@linux-foundation.org> wrote:
On Wed, 3 May 2023 11:16:02 +0700 Bagas Sanjaya <bagasdotme@gmail.com> wrot=
e:
On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila Chernetsov wrote:
In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
'ctx' pointer in error handling.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Duplicate of 10-years-old outstanding patch at [1].

Well, the patches are actually quite different.  Is Danila's longer one
better?

Yes, I think the new, longer one is much nicer.  Please take that one.  Oh =
just noticed the next email in my inbox - you already have, thank you.

I'm not speaking of the patch itself but rather on unfortunate state
of ntfs subsystem. It seems like the maintainer is MIA (has not
responding to patch submissions for a long time). Some trivial
patches, however, are merged through mm tree.

Konstantin (from newer ntfs3 subsystem), Andrew, would you like to take a
look on this orphaned subsystem (and help reviewing)? I'd like to send
MAINTAINERS update if it turns out to be the case.


Sure, I can join linux-ntfs-dev@lists.sourceforge.net and hendle things
which come along.

Or Christian may want to do that?

Sorry, I am not totally MIA - I do handle the odd patch but I do miss many.=
  Sorry to say I have been so busy it is very easy for things to slip throu=
gh my attention or to be read and then forgotten and my inbox is currently =
at 79213 messages so the old patch is probably somewhere in there just chan=
ces of me ever getting to the bottom of my inbox and dealing with all those=
 old messages is close to zero given I am losing ground constantly rather t=
han winning it.  I am trying just not succeeding very well...

Best regards,

Anton



[1]: https://lore.kernel.org/all/1358389709-20561-1-git-send-email-nickolai=
@csail.mit.edu/



--
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


--_000_A55E04FE2A6D48D7821977CFDDDABB0Atuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <47731CC74033EA47AB2A3062D2D4EFFC@eurprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; line-br=
eak: after-white-space;">
Hi,<br>
<div><br>
<blockquote type=3D"cite">
<div>On 3 May 2023, at 22:06, Andrew Morton &lt;akpm@linux-foundation.org&g=
t; wrote:</div>
<div>
<div>On Wed, 3 May 2023 11:16:02 +0700 Bagas Sanjaya &lt;bagasdotme@gmail.c=
om&gt; wrote:<br>
<blockquote type=3D"cite">On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila =
Chernetsov wrote:<br>
<blockquote type=3D"cite">In ntfs_mft_data_extend_allocation_nolock(), if a=
n error condition occurs<br>
prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL<=
br>
'ctx' pointer in error handling.<br>
<br>
Found by Linux Verification Center (linuxtesting.org) with SVACE.<br>
</blockquote>
<br>
Duplicate of 10-years-old outstanding patch at [1].<br>
</blockquote>
<br>
Well, the patches are actually quite different. &nbsp;Is Danila's longer on=
e<br>
better?<br>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Yes, I think the new, longer one is much nicer. &nbsp;Please take that=
 one. &nbsp;Oh just noticed the next email in my inbox - you already have, =
thank you.</div>
<br>
<blockquote type=3D"cite">
<div>
<div>
<blockquote type=3D"cite">I'm not speaking of the patch itself but rather o=
n unfortunate state<br>
of ntfs subsystem. It seems like the maintainer is MIA (has not<br>
responding to patch submissions for a long time). Some trivial<br>
patches, however, are merged through mm tree.<br>
<br>
Konstantin (from newer ntfs3 subsystem), Andrew, would you like to take a<b=
r>
look on this orphaned subsystem (and help reviewing)? I'd like to send<br>
MAINTAINERS update if it turns out to be the case.<br>
<br>
</blockquote>
<br>
Sure, I can join linux-ntfs-dev@lists.sourceforge.net and hendle things<br>
which come along.<br>
<br>
Or Christian may want to do that?<br>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Sorry, I am not totally MIA - I do handle the odd patch but I do miss =
many. &nbsp;Sorry to say I have been so busy it is very easy for things to =
slip through my attention or to be read and then forgotten and my inbox is =
currently at 79213 messages so the old
 patch is probably somewhere in there just chances of me ever getting to th=
e bottom of my inbox and dealing with all those old messages is close to ze=
ro given I am losing ground constantly rather than winning it. &nbsp;I am t=
rying just not succeeding very well...</div>
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
<div><br>
<blockquote type=3D"cite"><br>
[1]: https://lore.kernel.org/all/1358389709-20561-1-git-send-email-nickolai=
@csail.mit.edu/<br>
</blockquote>
<br>
<br>
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

--_000_A55E04FE2A6D48D7821977CFDDDABB0Atuxeracom_--


--===============7049929765886173536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7049929765886173536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============7049929765886173536==--

