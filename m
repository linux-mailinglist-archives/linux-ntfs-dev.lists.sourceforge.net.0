Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED7767C697
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 26 Jan 2023 10:04:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pKyBU-0002J7-V0;
	Thu, 26 Jan 2023 09:04:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sanan.hasanov@Knights.ucf.edu>) id 1pKsaN-0008Re-FR
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 26 Jan 2023 03:05:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dfyz/CoSJFVgo9P8KdVC/8xwZJv2oSUP4VBxZCoK+V0=; b=Nx7sr7oiYLho+uBzGB6kv4bsSQ
 MtcNWvl43+HwQlR1usnMIT7wqpKjsYMTly382XW7SlTN1ClPuoa+gVzGHztlYvaDVApYulCpjimAH
 wgpo8Mdl0lNSdzBOBz2KgCTlBH2FQEcVrQagvAU32CK+TenzjKu2OfZhrgmH58K/Ej9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Dfyz/CoSJFVgo9P8KdVC/8xwZJv2oSUP4VBxZCoK+V0=; b=a
 PR6mTii8D4daaiUfzLoynWXiFsjfBsINgKO79tjcFbrM5OIcRSWpReXvCgaQsrJksSY1MmsfKhFM1
 Nj46JQud/5zkidA7C/SrfJe2NE5vFKNDJeymrz8736cTLOzBljbDRVQERXOA29842bof+WyYHztZN
 Vp1WgKf4BmcS1K5w=;
Received: from mail-co1nam11on2060.outbound.protection.outlook.com
 ([40.107.220.60] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKsaI-00GAeG-Jm for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 26 Jan 2023 03:05:58 +0000
Received: from MW4PR07MB8713.namprd07.prod.outlook.com (2603:10b6:303:106::12)
 by MW4PR07MB9447.namprd07.prod.outlook.com (2603:10b6:303:220::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21; Thu, 26 Jan
 2023 02:50:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DY9NMSLYLooHa+rvnQfhepVXfEE6SHTF+husujyd4Wu+xGAz43W1KOTBxZqXJvj0pERnxu8KebgIaL5Ih7S4LY6m9UQTETrBIJK3a6do6V34VNsEUUuBqGbpFRN+gDyGClPmqgCOfUw13OW4vtuOJOh8kmSqSyLI7bJ50pTAQemx9wKD2JdzqNZFHfJPWPEAt+ugN6U2xaS72xD2r0mhykxPh9F0iX3+7J+n7+hsgtDKlfHMdOolnuYYgRPs1kh2toVk2baUlm0bB+Ta6R+YQij3E48sijCApW/Sk23lmA2aA7u1kWuQL7XmTTbSn2eRBLj13Uf86bGrpS2FgqVrBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dfyz/CoSJFVgo9P8KdVC/8xwZJv2oSUP4VBxZCoK+V0=;
 b=oVR1WwmwLODhaVPhZs/9tRTjoDTkTpFu55Fv/49jS0IEiuOOqUGRtAtinc3AwJ7MSGno4ecRaIgezByWrawRvW2ivfFHQPyBkI75V26OMkZ6MzriRcGPg2lijUk4mPR+BnPCI/FlHibHOBd6khfS9goFI5pysU33N990tHl61ovE3fMRjGmGGYK2vcSSTdAv/2VU1F2wLr7md2z2LMjsIYCRlAuWEqWLqAqNS/E8e4TX0DCf7Vr0pePqqC14xowfHkBWlIZemzVnUTF3Y1Qqiq7MtBqB9gRgulk+HNpNQLfU3IN/vR9j38yLs+CuJpCoYvC+ZqEqd2Oep3Wq9TkNWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=knights.ucf.edu; dmarc=pass action=none
 header.from=knights.ucf.edu; dkim=pass header.d=knights.ucf.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=knightsucfedu39751.onmicrosoft.com;
 s=selector2-knightsucfedu39751-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dfyz/CoSJFVgo9P8KdVC/8xwZJv2oSUP4VBxZCoK+V0=;
 b=HHzolz4WzH5IQd0nT2AzfVBjMYMTYYnzwEWAwbIQwQrpEdqCrtlfGDCXcX48AA03teDGOWDm7zJ9exZQTrkdpcjcnJ9wMXlLc46/DBomXXAZ/otydnSOYV9DzAq5eJnPAqP62VSXv6IfOvgQJKcpOekJUVCfI17PQs8DAfwwFu0=
Received: from IA1PR07MB9830.namprd07.prod.outlook.com (2603:10b6:208:44b::14)
 by MW4PR07MB8713.namprd07.prod.outlook.com (2603:10b6:303:106::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 23:59:08 +0000
Received: from IA1PR07MB9830.namprd07.prod.outlook.com
 ([fe80::670b:627c:6340:583]) by IA1PR07MB9830.namprd07.prod.outlook.com
 ([fe80::670b:627c:6340:583%3]) with mapi id 15.20.6002.033; Wed, 25 Jan 2023
 23:59:08 +0000
From: Sanan Hasanov <sanan.hasanov@Knights.ucf.edu>
To: "anton@tuxera.com" <anton@tuxera.com>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "akpm@linux-foundation.org"
 <akpm@linux-foundation.org>, "glider@google.com" <glider@google.com>,
 "elver@google.com" <elver@google.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "yury.norov@gmail.com" <yury.norov@gmail.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "alexandr.lobakin@intel.com" <alexandr.lobakin@intel.com>,
 "mpatocka@redhat.com" <mpatocka@redhat.com>, "linux-arch@vger.kernel.org"
 <linux-arch@vger.kernel.org>
Thread-Topic: KASAN: slab-out-of-bounds Read in ntfs_test_inode
Thread-Index: AQHZMRD+n+nlipTnJkil/gls/hqoiA==
Date: Wed, 25 Jan 2023 23:59:07 +0000
Message-ID: <IA1PR07MB9830B66A4EA036D79BC66CA5ABCE9@IA1PR07MB9830.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=Knights.ucf.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR07MB9830:EE_|MW4PR07MB8713:EE_|MW4PR07MB9447:EE_
x-ms-office365-filtering-correlation-id: 9481de60-6d3d-4511-488a-08daff302599
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jG+iQZvm6xPajj6xWl8CLigLQTYWUKO0gSsngVfpBMxl4vbhNjhJmlfwJVMkAMJcGg3o6tLSZm7yLD5w6V/EHipl16Zv3Wlk44dj7aWE8dmOuDkcTu3YyHCd1CU9jWGfKu553lDQvrA4ZxckMNwQWctc2tMLB9+WMgsiLlMDfK297nCRuRTIc6X8U/qJX/vjKfayQy58UaqIYT48dDvorUh7TdCBZWAzw/UteU3cVhdqv2jCpdo5DvgAK+xTXCVGRV21TYZaOCtwHr/7A+uisfkcvTpTlemO8PU41WF2SZ5G4bcMKqwW/ME3gWxiL+tdY57H7yTfw0prul+gQNJBGppWKbXBvkvl/InRCHLaw3rArRzJvQKrqZh+8350mGxMl2yUXTuxZN3+EfFqOz7Prsky0NV66GKk0fVEcHbo7ceQrchyikosP30lfvuuhoB2FhwztqYH7Rn9QNpaTOHyIrE8vdA/9u6ecwRruAXnEgBQmVwCX00JPOARmCosMW++nPTsnaweopkjON4t3Bs1fE05c8XbE9HXwm3mzrvTxmklmHPiDbKHlFAIsV4sNYzH4UwK9sbIXMGndb3wnBb3m7bMM0jOs2K35InE+MewOQIe+/my4jjDrYVjQeg5YTJ/edGt0qpVQIIiBIFsrNpjgh5eHGexUijqqXLRVn0iYp+ZLDTQz1oAGSxlV5pbw+bqsFF2/Sf/BJwRhCnlTJrXeWidOrhyWJM28612ptBMYGuIEqxn/Efio5Q7eESCQ+16CapLRSxnJ5nOAXDNW8x9lSInxBfHdPkE75WMGc2EY+suK8m/GTE3+GiHC60dX9YAK67th2hbTEbG9mjesQ2VWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR07MB9830.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(346002)(136003)(39860400002)(396003)(366004)(376002)(451199018)(5930299012)(76116006)(66556008)(64756008)(86362001)(41320700001)(83380400001)(66446008)(38070700005)(5660300002)(52536014)(122000001)(38100700002)(41300700001)(66476007)(7416002)(66946007)(2906002)(44832011)(8936002)(786003)(9686003)(54906003)(4326008)(33656002)(8676002)(71200400001)(6506007)(7696005)(316002)(186003)(26005)(75432002)(478600001)(55016003)(110136005)(921005)(966005)(505234007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?8GMFof676ZU8uq2GGCQhhXoRGSFsguT5jp0nwmsHwVWNlD83p+zGXREaL0?=
 =?iso-8859-1?Q?RPoJCHhx0DFcxE37iWtqkOl0RVYeqb11vqHqtYZFo3MJzv4sLyCJYYJd/p?=
 =?iso-8859-1?Q?nrDn05w40HUvkt1knB5QyAvM0mhTgFZIdyHxs08J8rRW+gsbI4w9i1xXkr?=
 =?iso-8859-1?Q?G6wO5CRrW1c70ksCJGN1lyvi8KbsiK+teFUp8fMpJt0KdKUFr2uZndIZ/g?=
 =?iso-8859-1?Q?+rwbulfvQz++zpjZPMFKR5WsQkIvGyMsu85LdD2Cx8WSIE/S9iXLhLUCTn?=
 =?iso-8859-1?Q?H9rHYCquQhhPQGtxphPE/Jceh/Jk/HjRHMDwzqxhsOQiTcopk4Xj+6fzpw?=
 =?iso-8859-1?Q?6V6rZI769v1YBW3gg17XExIk/p/16YgcKRJgnM0wipv5/kAlipAUTggNMU?=
 =?iso-8859-1?Q?/NWXZN2R3bFjrjk2AZ9pCY/GtJNM1Gt8BLsfXklKhVLDUrstNdrDcj1o3Y?=
 =?iso-8859-1?Q?7SF/linGi3edZ+m3lj8DrpcXB08qtp97s2qesTrEj2Xw+rf1c+7MGIbPWI?=
 =?iso-8859-1?Q?UjA05CuhzAuYPzWSwK7tD99TrVRXphFmo5Wa4Cz7cHvdCMANLhhlqGOz9E?=
 =?iso-8859-1?Q?wtHWYv+s8bk+K0q6+oQ5ymbfmPklbU8bD7DYWz/UkkUNrfr7IUIllq6V0a?=
 =?iso-8859-1?Q?3KM6oAecrFZDutztaXv1SQYW8AZ5n23QCqGoPtaBwgxKim7P7Kaf0qIEeX?=
 =?iso-8859-1?Q?rEFvN2hqAifjgsLYUtwOijUiyHziXHRqz8VCfyDvdzErq5H7Vjb60V4Rj1?=
 =?iso-8859-1?Q?s+WY9bp9ofYL5Jv01PF2eUYm20rFnbn9lQnAIpwucmIiUKt71Y+uBqhfQG?=
 =?iso-8859-1?Q?iUQFKpWL+BmQtxfggvWjuXT8xhxKJ8HQX0scYZF5TtOcWAVlOWjGH6zOrj?=
 =?iso-8859-1?Q?IcO/yAQimoSdel9D6coETtEqMpmSinCXtqQ5UH3fByR6T6pUet4+t99zvw?=
 =?iso-8859-1?Q?oHci+F5IGyn3XrBmDPS2s2aK+els7bDL5WBur/mXuDUDJkLWT5TeAgPe8U?=
 =?iso-8859-1?Q?Ctto/NSGi1xYhDRAHfyLFfAw95uWvDtvFTBTxpEyewMXCz+nNx1aDDffSX?=
 =?iso-8859-1?Q?xOpRNzBh8Gi2FDzwSNbN3jDWcNiWWGNm691FcpKVnV7mNANmLAB5XQRmBh?=
 =?iso-8859-1?Q?V/yFEDfMi9aWTnRsjQWF9Q6Gge9mWTYM/JrZJXVrkyhtaLhfs+UBwXBH2a?=
 =?iso-8859-1?Q?i3VU+zJJlZet8F+NZKkxX6Z5wZefoXMgtqSar3+L4vTanPzg7xdfqqV+zx?=
 =?iso-8859-1?Q?qXypm287D1O/hzOOrUvpbMzSUFSIfzc6qBB6l52pUpBF4/nzbfp4r1YiKf?=
 =?iso-8859-1?Q?aM0RPsGL5LkpNuEn81N+VFHNcfkZTWNDI/HKvZNdjhpYW/B2ZuOcyqNiVQ?=
 =?iso-8859-1?Q?WdZWfn2SHOTJxVdpa0pqV8DOM/Y3gxALuDniqPQKzZQ6qDtZQsMDggkEom?=
 =?iso-8859-1?Q?ZujnqgnYd9XDKyc77dwJq0zFoizE16m0zKJMNUaurtaGLXJtGyJfZyOBH4?=
 =?iso-8859-1?Q?GXq1GLHjEROBmdQQxD//uERkMkWWOuK5tk/6IQi8AWzUDqN59wKjEQ3zq4?=
 =?iso-8859-1?Q?ahIM138eEmLA8YpYUgV15FDp0PvMHMVbEwTzlKISbFBN4C3VAUVO5cr8Mf?=
 =?iso-8859-1?Q?P0yWJSVoLZdBp+xraQmTePtT+hXen73ztfFRGt1KFF2GJTrrtB5XHwwg?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR07MB9830.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9481de60-6d3d-4511-488a-08daff302599
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2023 23:59:08.0037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5b16e182-78b3-412c-9196-68342689eeb7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /xxcPhe/1xIPT1mZexp5xLejbhLvWgmv0XE8v6WtVCpAULkgv/aHCkn9Qd0KxsTwwogYCMuJvTqnZFe3BO2lofDpgACMCAeFUf6PyWvuNgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR07MB8713
X-OriginatorOrg: knights.ucf.edu
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.60 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pKsaI-00GAeG-Jm
X-Mailman-Approved-At: Thu, 26 Jan 2023 09:04:39 +0000
Subject: [Linux-ntfs-dev] KASAN: slab-out-of-bounds Read in ntfs_test_inode
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
er.

Kernel Branch:=A06.2.0-rc5-next-20230124
Kernel config:=A0https://drive.google.com/file/d/1F-LszDAizEEH0ZX0HcSR06v5q=
8FPl2Uv/view?usp=3Dsharing
Reproducer:=A0https://drive.google.com/file/d/1gufgF45viKoO91FN6MNaC3yu_ZSC=
7cBS/view?usp=3Dsharing

Thank you!

Best regards,
Sanan Hasanov

ntfs: volume version 3.1.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
BUG: KASAN: slab-out-of-bounds in instrument_atomic_read include/linux/inst=
rumented.h:72 [inline]
BUG: KASAN: slab-out-of-bounds in _test_bit include/asm-generic/bitops/inst=
rumented-non-atomic.h:141 [inline]
BUG: KASAN: slab-out-of-bounds in NInoAttr fs/ntfs/inode.h:200 [inline]
BUG: KASAN: slab-out-of-bounds in ntfs_test_inode+0x9a/0x2f0 fs/ntfs/inode.=
c:55
Read of size 8 at addr ffff88804360fec0 by task syz-executor.0/7772

CPU: 0 PID: 7772 Comm: syz-executor.0 Not tainted 6.2.0-rc5-next-20230124 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/=
2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd1/0x138 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:306 [inline]
 print_report+0x156/0x455 mm/kasan/report.c:417
 kasan_report+0xc0/0xf0 mm/kasan/report.c:517
 check_region_inline mm/kasan/generic.c:183 [inline]
 kasan_check_range+0x144/0x190 mm/kasan/generic.c:189
 instrument_atomic_read include/linux/instrumented.h:72 [inline]
 _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
 NInoAttr fs/ntfs/inode.h:200 [inline]
 ntfs_test_inode+0x9a/0x2f0 fs/ntfs/inode.c:55
 find_inode+0xe4/0x220 fs/inode.c:916
 ilookup5_nowait fs/inode.c:1429 [inline]
 ilookup5 fs/inode.c:1458 [inline]
 iget5_locked+0xb6/0x270 fs/inode.c:1239
 ntfs_iget+0xa1/0x180 fs/ntfs/inode.c:168
 load_and_check_logfile fs/ntfs/super.c:1216 [inline]
 load_system_files fs/ntfs/super.c:1949 [inline]
 ntfs_fill_super+0x5988/0x9250 fs/ntfs/super.c:2900
 mount_bdev+0x351/0x410 fs/super.c:1359
 legacy_get_tree+0x109/0x220 fs/fs_context.c:610
 vfs_get_tree+0x8d/0x2f0 fs/super.c:1489
 do_new_mount fs/namespace.c:3031 [inline]
 path_mount+0x675/0x1e20 fs/namespace.c:3361
 do_mount fs/namespace.c:3374 [inline]
 __do_sys_mount fs/namespace.c:3583 [inline]
 __se_sys_mount fs/namespace.c:3560 [inline]
 __x64_sys_mount+0x283/0x300 fs/namespace.c:3560
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0x80 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f815329176e
Code: 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 =
00 00 00 00 90 f3 0f 1e fa 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff f=
f 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f8154488a08 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000200 RCX: 00007f815329176e
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007f8154488a60
RBP: 00007f8154488aa0 R08: 00007f8154488aa0 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000206 R12: 0000000020000000
R13: 0000000020000100 R14: 00007f8154488a60 R15: 0000000020076700
 </TASK>

Allocated by task 7394:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 kasan_set_track+0x25/0x30 mm/kasan/common.c:52
 __kasan_slab_alloc+0x7f/0x90 mm/kasan/common.c:325
 kasan_slab_alloc include/linux/kasan.h:186 [inline]
 slab_post_alloc_hook mm/slab.h:769 [inline]
 slab_alloc_node mm/slub.c:3452 [inline]
 slab_alloc mm/slub.c:3460 [inline]
 __kmem_cache_alloc_lru mm/slub.c:3467 [inline]
 kmem_cache_alloc_lru+0x20e/0x580 mm/slub.c:3483
 __d_alloc+0x32/0x980 fs/dcache.c:1769
 d_alloc+0x4e/0x240 fs/dcache.c:1849
 __lookup_hash+0xc8/0x180 fs/namei.c:1598
 filename_create+0x1d6/0x4a0 fs/namei.c:3809
 do_mkdirat+0x9d/0x310 fs/namei.c:4053
 __do_sys_mkdirat fs/namei.c:4076 [inline]
 __se_sys_mkdirat fs/namei.c:4074 [inline]
 __x64_sys_mkdirat+0x119/0x170 fs/namei.c:4074
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0x80 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Last potentially related work creation:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 __kasan_record_aux_stack+0xbf/0xd0 mm/kasan/generic.c:488
 __call_rcu_common.constprop.0+0x99/0x790 kernel/rcu/tree.c:2624
 dentry_free+0xc3/0x160 fs/dcache.c:377
 __dentry_kill+0x4c8/0x640 fs/dcache.c:621
 dentry_kill fs/dcache.c:745 [inline]
 dput+0x6b5/0xe10 fs/dcache.c:913
 do_unlinkat+0x3ef/0x670 fs/namei.c:4319
 __do_sys_unlink fs/namei.c:4364 [inline]
 __se_sys_unlink fs/namei.c:4362 [inline]
 __x64_sys_unlink+0xca/0x110 fs/namei.c:4362
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0x80 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Second to last potentially related work creation:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 __kasan_record_aux_stack+0xbf/0xd0 mm/kasan/generic.c:488
 __call_rcu_common.constprop.0+0x99/0x790 kernel/rcu/tree.c:2624
 dentry_free+0xc3/0x160 fs/dcache.c:377
 __dentry_kill+0x4c8/0x640 fs/dcache.c:621
 shrink_dentry_list+0x12c/0x4f0 fs/dcache.c:1201
 shrink_dcache_parent+0xa7/0x3f0 fs/dcache.c:1652
 vfs_rmdir fs/namei.c:4125 [inline]
 vfs_rmdir+0x2fa/0x630 fs/namei.c:4098
 do_rmdir+0x329/0x390 fs/namei.c:4180
 __do_sys_unlinkat fs/namei.c:4358 [inline]
 __se_sys_unlinkat fs/namei.c:4352 [inline]
 __x64_sys_unlinkat+0xef/0x130 fs/namei.c:4352
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0x80 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The buggy address belongs to the object at ffff88804360fd60
 which belongs to the cache dentry of size 312
The buggy address is located 40 bytes to the right of
 312-byte region [ffff88804360fd60, ffff88804360fe98)

The buggy address belongs to the physical page:
page:0000000042a7ca23 refcount:1 mapcount:0 mapping:0000000000000000 index:=
0x0 pfn:0x4360e
head:0000000042a7ca23 order:1 entire_mapcount:0 nr_pages_mapped:0 pincount:0
ksm flags: 0xfff00000010200(slab|head|node=3D0|zone=3D1|lastcpupid=3D0x7ff)
raw: 00fff00000010200 ffff88810021b2c0 ffffea00010d3280 dead000000000003
raw: 0000000000000000 0000000000150015 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff88804360fd80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff88804360fe00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>ffff88804360fe80: 00 00 00 fc fc fc fc fc fc fc fc fc fc fc fc fc
                                           ^
 ffff88804360ff00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88804360ff80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
