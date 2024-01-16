Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F6E82ED99
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Jan 2024 12:22:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPhWi-0007F5-P4;
	Tue, 16 Jan 2024 11:22:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1rPhWh-0007Eq-2B
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 11:22:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HPBAwrsd+tqrLvHZDM/Q//WTfkW8qkPWYrM98clJhJs=; b=IT6sotzL6hyOLIh0sk0pr5qiXi
 wp3DcDsLSSj4J8kbUFV0JBoSub3XDznoafPYqK3q+99QPS2CTHSSRlwT7zLfBDKkLILXV+tWMgH1c
 9HwX51sT5vV36PYscHoC+JwEQiI/mgE4qHTpLEY3qXKxXy3c4P4BA24JVPqcmns67cX8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HPBAwrsd+tqrLvHZDM/Q//WTfkW8qkPWYrM98clJhJs=; b=Ll0jqFWuGEJhy18CPkuPWnr3jk
 Cgw8zDhkEuRWKGondaeVh6AyrB8fjEoIWCB7KW2wr8HcJosI9VRRFI2j0tB1PyPciu0rFfw2M4uc6
 rTugWYbNj7zxSQ6IIOyD59vtd+8tddtaG8HgpY6OfXs+gaaZc32OwFEWCU3uvGlrCr/k=;
Received: from mail-db3eur04on2130.outbound.protection.outlook.com
 ([40.107.6.130] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPhWc-0000I8-3h for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 11:22:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BK7xn/Uw0zsGAidv0u6EACYMZWQH7e932+XarHRULvOJD17dElCUX10/1u167VYGpubr3i5fOD00dlOEwmZSIYvS3wH0eCGpS059Edk4UKJQQFbD0a/gqFhHI+J9YzO2Z8jFr1Z+AJd8RK8LjPOsK2Lj5ieKsEvKJsvPhzq7sHBmooZ5thi3vXNRsMQGSkNrYjxCyfMaOJ5adcDrm2IIJHTYf0HI9JZ3jzd3Jg85H2o06Uau0oPmudg1pJg2XHrSpm9AYS/hVYNGc9rpM0oXmhM1CNQWYeGTs+M9XUwlb+IQGbD+kI9ucCOOlDbFFWrugXdJ6a7SoPb8Z0z3PHAL4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HPBAwrsd+tqrLvHZDM/Q//WTfkW8qkPWYrM98clJhJs=;
 b=XKkHZTiIlgTBO66VLhotH9MTdXINAugXCUeQECKrrdQGHOoCM3vq8baIq8YzIJunZDwITARtLZP3975asJgw8UwlEz5urVGI7cLvSd+pStcwmXmRnDa0OVg4dIos+c5o7U+LIksvnVkrTkqmx5IG3XNKEURBdyjIIohJ9zXTjDjPXiHe7yDduJ2tRn/zpOctHEPTjWp2+memmkA4ZEXlgzlllzGfQWcJm96gxCLhWOvlcbbkeqJtv4KYTzQz3H6m2doVR7RwBvqI+BzOLYVp1CwvbpOshdhoYpZa+dmRTIqY4UIoaTczIgUCCwkTte0LX/i63zAkiYaMp6aCU6xYAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HPBAwrsd+tqrLvHZDM/Q//WTfkW8qkPWYrM98clJhJs=;
 b=F9ZZZSaTiOpES2nest1vAay4s5hQTY3P9rSVGkTgAQUuq7Q2F7KcECHPm6F5Y1oLJMQrbDgoXT9zN+TOh2oj9+kwQX3pWb5BLEy2ZDoQrdb4aDFEmXbagbw5CUAWZ07y9l3IpH5+Q/LPsZ6ldzzNIFPzEGjsOK2jlNwC8D3Ls6quAvGPri4GHhJZOc7L6lu7TUoL9Buqj3BuayDJnR/FH0AyrLJL+GzdL4bzCkzIgvpCWCdeHqRpsydYvNYWiorSsuxmsBaoHSdsyXn1JjEej0GJb+fym51+os0MOcmsdJJG4Hesc4gvoJUv3VOIvHVc8MrdZ994kS147+5ep3Vk8Q==
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com (2603:10a6:20b:254::18)
 by DB9PR06MB7465.eurprd06.prod.outlook.com (2603:10a6:10:25a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.28; Tue, 16 Jan
 2024 09:50:08 +0000
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c]) by AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c%4]) with mapi id 15.20.7181.027; Tue, 16 Jan 2024
 09:50:08 +0000
To: Christian Brauner <brauner@kernel.org>
Thread-Topic: [PATCH] Remove NTFS classic
Thread-Index: AQHaSGFjH7rHGelBN0GHlVETO1ezQA==
Date: Tue, 16 Jan 2024 09:50:08 +0000
Message-ID: <0A1C1916-87EB-4977-950C-CF555E5CA486@tuxera.com>
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
x-ms-traffictypediagnostic: AS8PR06MB7239:EE_|DB9PR06MB7465:EE_
x-ms-office365-filtering-correlation-id: 642517d1-c94c-4eae-f830-08dc1678862a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uUDndzGNJK9L/PHD2wRVOrQYuHgkg5Yb4403YEhVP7EKpoDfNjjjZme7LlgQfBgVZXoKqj5UmmOfN3UQtIcSQz02Bfonpkhnn5MmN28k/OhnYnwqUHlfPH1A6A+UZhxtaaHL54Fz0QXwjHBYX6n5ZN2gOQSgLz8WrrUgmun7Y5vVY4pKXkxQRbNWFqN+gCqsAW27HlI5wNSL+IowEyMaEhYTpqgkY37C/5Iu04rJROoIfYDgHnxqFGIZ8stNTnzr754AZAvCDoPEeX6nk2Zsl8trk5Y3A0P8NCS8debf70EpNHKQdZ0D8NdhsgebZPpl3tnX/xYRlV7LLvxzZrNgxkswwde4QGrgrrCaDNyGRVTHf8NPY1O7R5jFL5wnUVgJ7dSUf9rSMBPQJBqF1MjZEHjfq7Em60FKUjAnER7WGsZ476BcMA3gxsGUSIsojsk8hH4C9HKF+Df6yoYhnJqkSjNG46ENKaBygb+8ikQWbR/CGTd6TQSjoAwM1Nm/P7plqnyMcm+xCIDRBifY/+nv2O4Xpr0qtgwBkue6XG36ZvYr46LWDKWVqdt1Q9hyJQO3Fza4M51x9JKxeO6umqYNVv2CLKc4CXS91CcBqYi2/Dv+k32nAjhI6IyoKswwbF8lZ65f6pRzS1gWOojlj9k09Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7239.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39840400004)(396003)(346002)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(38070700009)(83380400001)(478600001)(966005)(4326008)(5660300002)(316002)(8936002)(8676002)(66476007)(66556008)(66946007)(66446008)(64756008)(6506007)(54906003)(76116006)(6916009)(6512007)(91956017)(71200400001)(6486002)(26005)(2616005)(122000001)(38100700002)(53546011)(41300700001)(86362001)(2906002)(36756003)(33656002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aCnxnfM8zzANA5y71JhYsDObiqP0x+puyZWqfBzcvWZDHH2fTuZy9UZJb5/b?=
 =?us-ascii?Q?Kp88g0v/Aw8Tnlvm4Be5HtIn97lShtpvB2lX5/gNoCtNWuR0yyXnHsliUVcu?=
 =?us-ascii?Q?l5EEohr5vCKPMHpHVwzMpFL1YURq2TIK+sYDoU8HSz+yAupUzdnjQn7W+UWm?=
 =?us-ascii?Q?FaIbI2R/ELG5U5QAfjy2kLOSEpgp/uKoS+Q25CvVTLtMVHoGQbf5Vc9sWRF0?=
 =?us-ascii?Q?HWzeEGqRvJGKxQJZOmxdMxxPKxET5VP9ME5E8QVeBGhKYmaof+th4M7sbvaT?=
 =?us-ascii?Q?sgsWPUM9zTW7Nm7zGtK0cd8vhbmYMEgKUJd9y4DhWslp3E5kch4RN+XWJ92e?=
 =?us-ascii?Q?kKGmjVMyCsAQrVVG4KRuoJI5rIqiyXYbK/P21cf5Mf2Wpj5Ny9zNej81eXfD?=
 =?us-ascii?Q?njSxR7bK8f2IiFNiBt6PfHOAWzIy4AJL4X2KUeKucU+bXtINhVChOGqv8Hvn?=
 =?us-ascii?Q?gIlOnQmKJ40CRQrbg49QuXkyzHhh2WKN98n55/li2l7jE2Xxlv9Zw1gy5GJp?=
 =?us-ascii?Q?NZlJXIFixfSHrmPsg10x/WbgutUGhZib1aqa3Dp4wXcNA1N6tHKWq8fHRpSw?=
 =?us-ascii?Q?DgnOotdkxd1D9Y9nwFHxWA9RI5IeEsdl9JK63PUH0+gNje6GH8uHJOkdaJSA?=
 =?us-ascii?Q?8HT7kVHFNDaARlYJ+iop9NcBLjOd/MuUfLRbGUhGex9TH3eJvyKJT+VG47dP?=
 =?us-ascii?Q?lJCrGMR2WOGBKlnk2SmnDooxkJ/78Tzr+cCvEfd955b58cHC26l9xPHI7UGO?=
 =?us-ascii?Q?IAjmL1bixiUHS3V2URnm06QfqOHzy/+ZTDAK7+MooNUDy1UnjgQBhARMe+rv?=
 =?us-ascii?Q?vQ8pKE8dh3AynlwEocQVUpPV2LYMzLhMj6v0411BgVM7wkaCi2qHYB0tpWc8?=
 =?us-ascii?Q?48R6sDocjYSlYmlkO5ykOwetq90BPSwHywlQbDRWCAL5tJB6COCwONAEIxR5?=
 =?us-ascii?Q?W4JnZTrk6DNVFZSkADlC/vv+ADXDBDesPBwoVtzMPKN93DQoKValz5pi+4RS?=
 =?us-ascii?Q?bP97s17E0t1MQ+bFCa/uKRDz+nVM2JAaAjUuo1dSbBdPwLXR/kMaLQ73akmz?=
 =?us-ascii?Q?ivMA1GtQ4VB5ynZl0LVv0l/8zNOLnnvi5e+bGlHkPHR1LaGy8gwAT2emAlTK?=
 =?us-ascii?Q?xZbI+2SiJz4N6OQLLNWJzsD6gH53uHh1QUHamF7U6h1lGHiw/nnum02eucGz?=
 =?us-ascii?Q?N52cBp7b+rqS4gq7iYfWsL6WOkjQ/gZd7cELm7IqKfooLPDrs2NBRpS5n4l6?=
 =?us-ascii?Q?dI1vL0pA4YRXzisdMD2nqMVqog1OafhbM63JGzqjABNy+JQYCUgegcna6um5?=
 =?us-ascii?Q?/TK6ixEiMuDL8Xp2xWr2au0YMf/dkw66M4rCLfhSxFgUdtN4/PW7F1Mqqech?=
 =?us-ascii?Q?ePTDeUgf0IPezE5RY/ojaFSC7JeIsZLSlh5N27HHO3RgAD0IlO+nzKg70ldJ?=
 =?us-ascii?Q?6HpCL4uLkAW8KjJQoIQWrgvYqYL8XdjOnG0CutgRxqcRP/4I6rVg2eIifrv0?=
 =?us-ascii?Q?WakQcGmpBFt1aYmDP0hz+LaUf09Wg/5GcuCOCDgYsiKOPXyxDbGzqrHmdFEm?=
 =?us-ascii?Q?uKjZh24rH0ZCdU4d3Xe0MDV+v+JR6dleNL9Qa/f2?=
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7239.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 642517d1-c94c-4eae-f830-08dc1678862a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2024 09:50:08.2501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6a5FMtyMPdBn6TSFO779qHtZ7IamhlVmVImy2sSU1EhSbKJu4GvwaYE8o9RIeA8lfxFyoWA3tnIrgERzgnUuhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB7465
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, It seems there is consensus to remove it so please add:
 Acked-by: Anton Altaparmakov <anton@tuxera.com<mailto:anton@tuxera.com>> 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.130 listed in wl.mailspike.net]
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
X-Headers-End: 1rPhWc-0000I8-3h
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
Content-Type: multipart/mixed; boundary="===============5006228480876189119=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============5006228480876189119==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A1C191687EB4977950CCF555E5CA486tuxeracom_"

--_000_0A1C191687EB4977950CCF555E5CA486tuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

It seems there is consensus to remove it so please add:

Acked-by: Anton Altaparmakov <anton@tuxera.com<mailto:anton@tuxera.com>>

Best regards,

Anton

On 16 Jan 2024, at 09:33, Christian Brauner <brauner@kernel.org> wrote:

On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle) wrote:
The replacement, NTFS3, was merged over two years ago.  It is now time to
remove the original from the tree as it is the last user of several APIs,
and it is not worth changing.



I see no reason to not at least try and remove it given that we have
ntfs3 as a replacement. Worst case is we have to put it back in. Let's
try it.

---

Applied to the vfs.fs branch of the vfs/vfs.git tree.
Patches in the vfs.fs branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

Note that commit hashes shown below are subject to change due to rebase,
trailer updates or similar. If in doubt, please check the listed branch.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs.fs

[1/1] fs: Remove NTFS classic
     https://git.kernel.org/vfs/vfs/c/9c67092ed339

--
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


--_000_0A1C191687EB4977950CCF555E5CA486tuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <505F75EEDE3F734C8A1F9D1C96A280C0@eurprd06.prod.outlook.com>
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
<div>It seems there is consensus to remove it so please add:
<div><br>
</div>
<div>Acked-by: Anton Altaparmakov &lt;<a href=3D"mailto:anton@tuxera.com">a=
nton@tuxera.com</a>&gt;</div>
<div><br>
</div>
<div>Best regards,</div>
<div><br>
</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>Anton<=
br id=3D"lineBreakAtBeginningOfMessage">
<div><br>
<blockquote type=3D"cite">
<div>On 16 Jan 2024, at 09:33, Christian Brauner &lt;brauner@kernel.org&gt;=
 wrote:</div>
<br class=3D"Apple-interchange-newline">
<div>
<div>On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle) wrote:<br>
<blockquote type=3D"cite">The replacement, NTFS3, was merged over two years=
 ago. &nbsp;It is now time to<br>
remove the original from the tree as it is the last user of several APIs,<b=
r>
and it is not worth changing.<br>
<br>
<br>
</blockquote>
<br>
I see no reason to not at least try and remove it given that we have<br>
ntfs3 as a replacement. Worst case is we have to put it back in. Let's<br>
try it.<br>
<br>
---<br>
<br>
Applied to the vfs.fs branch of the vfs/vfs.git tree.<br>
Patches in the vfs.fs branch should appear in linux-next soon.<br>
<br>
Please report any outstanding bugs that were missed during review in a<br>
new review to the original patch series allowing us to drop it.<br>
<br>
It's encouraged to provide Acked-bys and Reviewed-bys even though the<br>
patch has now been applied. If possible patch trailers will be updated.<br>
<br>
Note that commit hashes shown below are subject to change due to rebase,<br=
>
trailer updates or similar. If in doubt, please check the listed branch.<br=
>
<br>
tree: &nbsp;&nbsp;https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.g=
it<br>
branch: vfs.fs<br>
<br>
[1/1] fs: Remove NTFS classic<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;https://git.kernel.org/vfs/vfs/c/9c67092ed339=
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
</div>
</div>
</body>
</html>

--_000_0A1C191687EB4977950CCF555E5CA486tuxeracom_--


--===============5006228480876189119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5006228480876189119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============5006228480876189119==--

