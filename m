Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6188C6F8075
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  5 May 2023 11:58:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pusCv-0004bS-Em;
	Fri, 05 May 2023 09:58:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1pusCu-0004bM-2P
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 05 May 2023 09:58:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0Z9ow5xh/2z4N3mwOubgLfbXULcMzcPKHf541RHV4M4=; b=LilRZG3ITZ3+tLDw+TMrW8qKeH
 5QQyas+Y7oWB5hw9B5Mx9BJkkQoLsJNJ1RmvocyWZNMAnwnkZnDDkBJRsCgGq4ur0jBbxYxy44zWz
 YR+RWlwkNx0puqCgAEhQUeHkkl63uTIDpZhYn2AdxJFkm9pg9yiSmYyzNK9rPgo4Gc4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0Z9ow5xh/2z4N3mwOubgLfbXULcMzcPKHf541RHV4M4=; b=R6mO04vL0Q82Y9/Q90cqnhkFZ5
 7+8894CKhVa0JxKs9iptKd/3NDx4f4zVEiL8L6A20IpQ4vHOSYUpQ7r0npw1TDQmzLnBS1elz08ro
 Oz6R0Wu4drsRmknffClQScOv0gv2u1lOm+piTy3JkAvqFoLdXUBYc8a/bBzajqDD2fTM=;
Received: from mail-db5eur01on2103.outbound.protection.outlook.com
 ([40.107.15.103] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pusCq-00F8AH-Vv for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 05 May 2023 09:58:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P69CypxXKB/Fd/7DxX2C2twLjk4UZcxy5Iu9ADA0/aTLYaTLXHWaPYgj9o+CW0aK2S3clVavZP7Oa0YaPRa4+qX+5pxnJMDVWLYh0qGn6mfClU6u4YjBjlbJ03sxSLYsnPx5My20rBkN/Q2rabC5kxYVkSpafp7CeJ/R1YaB2km83LdazTj6BUnYgek884NayStEF3ngNH6z7TfUSVOInmo3DeAPU2p8GapfAqioRgigW6Qurrh74eQM+1BrKyjVibDL/RZkdiem5Q+KkpTXCOf3fDYCBHniN+TKXv3Gc+ki3lVpVKA8+N1lUS3ZW5JpU5Idf7GMluafowAVKW8OKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Z9ow5xh/2z4N3mwOubgLfbXULcMzcPKHf541RHV4M4=;
 b=QeduWt2U7NPsaCXZ89y1ZJImoW9uS85hv39mz+uVEOO3ZHXzNjgjokZt08KF8RQApV9LiSmPbaAGDyGbWK+T4pGSXth5/o5o76Er+wvJ0uybQa6hLlWNSTYeCeZ65FC1yFNZhTn74X7JJqAuk0MIil8olwL7DfCmOlp1kuQ4NjZPXgZXOm9m4kO5NyJW+mvETo1xLD4M10i+e4Zigp5iDbXjBeRG0rrdo35bFSCycVIt02NrK8h49f+ofFimMG8KJVMXfbD+c9iikatYiiIhr61tddUx51vmRUHU4WiH23wHOaRt53Jx7YMA/BosTSVXxOIoTqxdJp8uJKDYCIBb3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Z9ow5xh/2z4N3mwOubgLfbXULcMzcPKHf541RHV4M4=;
 b=PQIDDAwTYQyOSeb8cfdUAwLJIPG5zCpWtk0keJ0jQjkItvf+cx4ZxsVAqUiZBf5RonPzRqOoh/JyTGHNGMOPFfrhKS+VzhO0ysYFh7hN+mqAaNyF0fTtDb4xJmIPOEfqbfQ/yzbnAsq2AmSSss695bNAFAJF2LOqR9W1RqVY3oEywt4qiMtGmQP17vwvf8yxNDJ2CC1DG8nPitD/ZlGe1wES6xPygmD1M2b8aCXTGwpfa3GVWKXfqesYrNQ6qANTxGfBYEKEbx7tY45eBVeLxP97N10TWT1BxpHs1FnxvfKYCU0OrxSgzPJQ9wd+n32I5ysWwBmvRgjXERW4J4HJbg==
Received: from AM0PR06MB5203.eurprd06.prod.outlook.com (2603:10a6:208:104::33)
 by AS8PR06MB8396.eurprd06.prod.outlook.com (2603:10a6:20b:447::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.27; Fri, 5 May
 2023 08:23:37 +0000
Received: from AM0PR06MB5203.eurprd06.prod.outlook.com
 ([fe80::8c8:e489:5fb5:5f35]) by AM0PR06MB5203.eurprd06.prod.outlook.com
 ([fe80::8c8:e489:5fb5:5f35%3]) with mapi id 15.20.6363.027; Fri, 5 May 2023
 08:23:37 +0000
From: Anton Altaparmakov <anton@tuxera.com>
To: Namjae Jeon <linkinjeon@kernel.org>
Thread-Topic: [PATCH] ntfs: do not dereference a null ctx on error
Thread-Index: AQHZaYmBkUfZDqkpik2+Yq44LGSx5q9LYEqAgAAiXQA=
Date: Fri, 5 May 2023 08:23:37 +0000
Message-ID: <5C0539F7-95D3-4BD0-AE29-6D0F42CA89D5@tuxera.com>
References: <20230407194433.25659-1-listdansp@mail.ru>
 <CAKYAXd_nMBzkTo882h=DgHGgzRHfh7+NMQ7A-0SJ5yN_ZE0d7w@mail.gmail.com>
In-Reply-To: <CAKYAXd_nMBzkTo882h=DgHGgzRHfh7+NMQ7A-0SJ5yN_ZE0d7w@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB5203:EE_|AS8PR06MB8396:EE_
x-ms-office365-filtering-correlation-id: e78950f8-45fe-41b2-307f-08db4d42065d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4Dm7XmLOg+2ehnKpFM+60BupFz5TpC5f4mplEqr+y3O8NHn4IDO2p7f9I3Uc6BRpC//xvm6mrzQxT3MTAlJhENGbr314nAcqEOxnvg0TRkEkSEdb28MqK5DbpdkwdEZ7jUH3s3iCvNgvSj8ZgC8JJxa/fb5Z2kvwwziXDR6WAZcUzVxJtIxCBudRBV/u3VES4m0myCrOmmJq8t+5T3x4sQZ4+XSl4HyoYgQybCDobSpqytJD1jCvNSCl1ZBNKLT1ZW0sXtTyt7v8NyReRNx9HPRtI9T9AAdGpQ8PdDEjt5L909SWjTDG2YDOkX1NVeGqw9ht95iYngZ4MZGoqlFZ+Ze/72CzGOQONFRIchEKeSgu0q0vDYOzDpNzQkqDdraNdPv5AYv+gWvgnwBqNQflCcDYmB6kU7luEDoAV4CYuy4wvYwzO6yiU4xuX6w4ess0cQ5d+AFOUSPe1N1QZIrBh9J3TqGlAwAAyZXjMYfY+Dicaiia/rvxmUYktRbEZMNR8YxQe/s92txQ1nbySft621MAgrzsGyXdQg0CYXdGA98gxRFAtGnY7hoFB/aaqFxmUNY06YHVmpK1SiawZv0gd+e9IHtbgOwNBuMQ7xLrZSWrI1XeHyt35StesEMeKxvQJX+ThrDaZPaIKt3OgF5RN9BvoajPduoLKgDNt6W8New=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR06MB5203.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39850400004)(136003)(346002)(396003)(376002)(451199021)(5660300002)(8936002)(8676002)(64756008)(66946007)(316002)(4326008)(76116006)(91956017)(66556008)(66476007)(66446008)(6916009)(2906002)(54906003)(41300700001)(478600001)(6486002)(966005)(71200400001)(53546011)(186003)(6506007)(6512007)(36756003)(83380400001)(2616005)(26005)(122000001)(33656002)(38100700002)(38070700005)(86362001)(241875001)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KuZBXESJu1hcP22sAl1tNpqHrjCVGMqzfqzMhh03gXHO620y0RlTexQ+C7nk?=
 =?us-ascii?Q?ZPYfxeBCoEsOOiJF21OTGAxEJ2DBSm0ehlah7COeF9DYdBHlS/PpufsLKLCD?=
 =?us-ascii?Q?BP39FxSaNy8vcEviqqJpUp3z6jk0BpqBrmnW2Ntx7isdue/TTi+GJij3gKRL?=
 =?us-ascii?Q?BkIM73iycL9wU7f8b7OWk3Ncg3nMs/Eo/ctvp/+gPNaCikOqrJI4D+7GExxf?=
 =?us-ascii?Q?hbyOcC+AZdyWI+lGw1Y0SXzkZ8jwClJNO0WeYaasCit7prC0E77uJ/7rw+/9?=
 =?us-ascii?Q?1qkysWp+k8j2gtBP95gQp0M6LDNCDkwebVYvghK2c5DIQCxkj6i7SuHj1Xx4?=
 =?us-ascii?Q?KNO31xSZm2qcLT9mY9pXqPMl7+9PnRIjtV6JSGzbJxL+vcQ87cvKb7ScuV4R?=
 =?us-ascii?Q?z6B3pzDHa7LciF1nS74xH+fkJOLxYdD6URMFKPpRBuDZE4Ni0gnsjJsCXNgP?=
 =?us-ascii?Q?1ziparZlU0+CgJCXKHDMlGspkRhkGJZ6grOtudGmVOyiTrva2v/SV3lbMdPY?=
 =?us-ascii?Q?5wIQp3lOT9+01Rw0Xi/kMjjc+D/4EkOFIhHIaz2fIeP/L2zBoHgEb8N+34Qt?=
 =?us-ascii?Q?RbEhYi7sycF8p2Z0WgDHwXyYS2u8v/Z2c9GmKdaArKhvUiiAI97+XE2R7iHM?=
 =?us-ascii?Q?fhL4rNe7ROXz+t7O8hrZVB/lg73XzJJXv80/smSCveBkyDW8gLHefD7mQWzK?=
 =?us-ascii?Q?/W8+A8q/Cbjzj1U6a5PyoB1NDk41Wt7Aya89nlgNV757QKCwd3ktSPWqiTw6?=
 =?us-ascii?Q?qppuZbQ8Eb/TmytlEnb4XGzSUh5wCECX+nlN9FUwcCUb1kOek8As2HDMkhrw?=
 =?us-ascii?Q?J+q3rhnpgvLLT3WojqQYeZOcSqtWFfa2+GTP3L55VPg1SUFjTVehhb/WZJEZ?=
 =?us-ascii?Q?PJBsa/lGkYe2m/WCuWmVr9rz7G02KwXR0uEvQFNHPUbTtmLc9fla0c2j/miX?=
 =?us-ascii?Q?gc9a3crJaSztyPqONZjblQ/qozXA2aWZmloLS9xipFrnKrYgSdAZ5RBvmG/b?=
 =?us-ascii?Q?PaDcqOqkCTtYETIfdYY0qFeEPutc63huv1aeN6+QuRNsGqBNydtiy4KarzOa?=
 =?us-ascii?Q?Q/u5sALcOu7/EdNPk1+vD2i9WJQSVT9EP+njd+ZIxR1H58WSI9+QDqMVco5A?=
 =?us-ascii?Q?joQIPCb67amEpNrzOLAz26oMHvnMF2o0rbuFCDB5p0j9iUHxgo4X2rz17ug4?=
 =?us-ascii?Q?xkPdPz0IBjgdG6t3xucLdRVuwddLRCIsjyBvXYZoQyzICZV8hdwJRAKc8Pcp?=
 =?us-ascii?Q?rWEu/ZgE9XtN5nZ8HbeDENOUrbDZrD+SB7FKzlH/AAtedjQrKuhxqCjNjCsm?=
 =?us-ascii?Q?YyglJj6aoxyoBGX7Cin1K6r6O4p8oOHJaR1XhmJ+1YXb+dHROCD+7WQcSpNK?=
 =?us-ascii?Q?ZGHaXx8uGkONO0yb9Mr68k9Ud8fBdYK/K13OO/m7AhrUMF/gR8DPp4Dsti8d?=
 =?us-ascii?Q?vzdQlZ124ktYe1oXJU7GsX4YBGiYscud1woyxSY11dv9wWODx7x98P0bXUZs?=
 =?us-ascii?Q?IrYex0OyQpkbEfgbxLbNOxy1f1Ggah+B8VXLRqEPnXGuY63Fui/A5rwABRAL?=
 =?us-ascii?Q?4Zx/HX5hT664phFw6UU+Mv2wBlFgUKkmHQIzIMFm?=
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB5203.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e78950f8-45fe-41b2-307f-08db4d42065d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2023 08:23:37.2885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IGwPXd+i7uaOyTa8Q52sctcNbn75bMvikVLXylRNXpUy00/UpA1DbyZoOlWX41u6JRlSPowgL+R1qnG4xBIUqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR06MB8396
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 5 May 2023, at 07:20,
 Namjae Jeon <linkinjeon@kernel.org>
 wrote: 2023-04-08 4:44 GMT+09:00, Danila Chernetsov <listdansp@mail.ru>:
 In ntfs_mft_data_extend_allocation_nolock(), if an error condition [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.103 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.103 listed in list.dnswl.org]
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
X-Headers-End: 1pusCq-00F8AH-Vv
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: do not dereference a null ctx on
 error
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, Christian Brauner <brauner@kernel.org>,
 "lvc-project@linuxtesting.org" <lvc-project@linuxtesting.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Danila Chernetsov <listdansp@mail.ru>
Content-Type: multipart/mixed; boundary="===============4322662346687811925=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============4322662346687811925==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5C0539F795D34BD0AE296D0F42CA89D5tuxeracom_"

--_000_5C0539F795D34BD0AE296D0F42CA89D5tuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

On 5 May 2023, at 07:20, Namjae Jeon <linkinjeon@kernel.org> wrote:
2023-04-08 4:44 GMT+09:00, Danila Chernetsov <listdansp@mail.ru>:
In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
'ctx' pointer in error handling.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Danila Chernetsov <listdansp@mail.ru>
---
fs/ntfs/mft.c | 38 +++++++++++++++++++++-----------------
1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 48030899dc6e..e1126ce6f8ec 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -1955,36 +1955,40 @@ static int
ntfs_mft_data_extend_allocation_nolock(ntfs_volume *vol)
"attribute.%s", es);
NVolSetErrors(vol);
}
- a =3D ctx->attr;
+
if (ntfs_rl_truncate_nolock(vol, &mft_ni->runlist, old_last_vcn)) {
ntfs_error(vol->sb, "Failed to truncate mft data attribute "
"runlist.%s", es);
NVolSetErrors(vol);
}
- if (mp_rebuilt && !IS_ERR(ctx->mrec)) {
- if (ntfs_mapping_pairs_build(vol, (u8*)a + le16_to_cpu(
+ if (ctx) {
+ a =3D ctx->attr;
+ if (mp_rebuilt && !IS_ERR(ctx->mrec)) {
+ if (ntfs_mapping_pairs_build(vol, (u8*)a + le16_to_cpu(
a->data.non_resident.mapping_pairs_offset),
old_alen - le16_to_cpu(
- a->data.non_resident.mapping_pairs_offset),
+ a->data.non_resident.mapping_pairs_offset),
rl2, ll, -1, NULL)) {
- ntfs_error(vol->sb, "Failed to restore mapping pairs "
+ ntfs_error(vol->sb, "Failed to restore mapping pairs "
"array.%s", es);
- NVolSetErrors(vol);
- }
- if (ntfs_attr_record_resize(ctx->mrec, a, old_alen)) {
- ntfs_error(vol->sb, "Failed to restore attribute "
+ NVolSetErrors(vol);
+ }
+ if (ntfs_attr_record_resize(ctx->mrec, a, old_alen)) {
+ ntfs_error(vol->sb, "Failed to restore attribute "
"record.%s", es);
- NVolSetErrors(vol);
+ NVolSetErrors(vol);
+ }
+ flush_dcache_mft_record_page(ctx->ntfs_ino);
+ mark_mft_record_dirty(ctx->ntfs_ino);
}
- flush_dcache_mft_record_page(ctx->ntfs_ino);
- mark_mft_record_dirty(ctx->ntfs_ino);
- } else if (IS_ERR(ctx->mrec)) {
- ntfs_error(vol->sb, "Failed to restore attribute search "
+ else if (IS_ERR(ctx->mrec)) {
+ ntfs_error(vol->sb, "Failed to restore attribute search "
"context.%s", es);
- NVolSetErrors(vol);
+ NVolSetErrors(vol);
+ }
+ if (ctx)
I think that this check is not needed.

That is correct.  It doesn't do any harm but yes ctx cannot be NULL or it w=
ould have crashed above when it was dereferenced.

Best regards,

Anton

+ ntfs_attr_put_search_ctx(ctx);
}
- if (ctx)
- ntfs_attr_put_search_ctx(ctx);
if (!IS_ERR(mrec))
unmap_mft_record(mft_ni);
up_write(&mft_ni->runlist.lock);
--
2.25.1



--
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


--_000_5C0539F795D34BD0AE296D0F42CA89D5tuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <B49875CE9A9B6646838439D95DECF23F@eurprd06.prod.outlook.com>
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
<div>On 5 May 2023, at 07:20, Namjae Jeon &lt;linkinjeon@kernel.org&gt; wro=
te:</div>
<div>
<div>2023-04-08 4:44 GMT+09:00, Danila Chernetsov &lt;listdansp@mail.ru&gt;=
:<br>
<blockquote type=3D"cite">In ntfs_mft_data_extend_allocation_nolock(), if a=
n error condition occurs<br>
prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL<=
br>
'ctx' pointer in error handling.<br>
<br>
Found by Linux Verification Center (linuxtesting.org) with SVACE.<br>
<br>
Fixes: 1da177e4c3f4 (&quot;Linux-2.6.12-rc2&quot;)<br>
Signed-off-by: Danila Chernetsov &lt;listdansp@mail.ru&gt;<br>
---<br>
fs/ntfs/mft.c | 38 +++++++++++++++++++++-----------------<br>
1 file changed, 21 insertions(+), 17 deletions(-)<br>
<br>
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c<br>
index 48030899dc6e..e1126ce6f8ec 100644<br>
--- a/fs/ntfs/mft.c<br>
+++ b/fs/ntfs/mft.c<br>
@@ -1955,36 +1955,40 @@ static int<br>
ntfs_mft_data_extend_allocation_nolock(ntfs_volume *vol)<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre"></span>&quot;attribute.%s&quot;, es);<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>NVolSetErrors(vol);<br=
>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>}<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span>a =3D ctx=
-&gt;attr;<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>if (ntfs_rl=
_truncate_nolock(vol, &amp;mft_ni-&gt;runlist, old_last_vcn)) {<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>ntfs_error(vol-&gt;sb,=
 &quot;Failed to truncate mft data attribute &quot;<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre"></span>&quot;runlist.%s&quot;, es);<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>NVolSetErrors(vol);<br=
>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>}<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span>if (mp_re=
built &amp;&amp; !IS_ERR(ctx-&gt;mrec)) {<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>if (ntfs_mapping_pai=
rs_build(vol, (u8*)a + le16_to_cpu(<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span>if (ctx) =
{<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>a =3D ctx-&gt;attr;<=
br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>if (mp_rebuilt &amp;=
&amp; !IS_ERR(ctx-&gt;mrec)) {<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>if (ntfs_mapping_pairs_build(vo=
l, (u8*)a + le16_to_cpu(<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre"></span>a-&gt;data.non_resident.mapping_pairs_offset=
),<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre"></span>old_alen - le16_to_cpu(<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre"></span>a-&gt;data.non_resident.mapping_pairs_offs=
et),<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre"></span>a-&gt;data.non_resident.mapping_pairs_offset),<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre"></span>rl2, ll, -1, NULL))
 {<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>ntfs_error(vol-&gt;sb, &quot;Fa=
iled to restore mapping pairs &quot;<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre"></span>ntfs_error(vol-&gt;sb,
 &quot;Failed to restore mapping pairs &quot;<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre"></span><span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre"></span>&quot;array.%s&quot;,
 es);<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>NVolSetErrors(vol);<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>}<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>if (ntfs_attr_record=
_resize(ctx-&gt;mrec, a, old_alen)) {<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>ntfs_error(vol-&gt;sb, &quot;Fa=
iled to restore attribute &quot;<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre"></span>NVolSetErrors(vol);<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>}<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>if (ntfs_attr_record_resize(ctx=
-&gt;mrec, a, old_alen)) {<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre"></span>ntfs_error(vol-&gt;sb,
 &quot;Failed to restore attribute &quot;<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre"></span><span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre"></span>&quot;record.%s&quot;,
 es);<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>NVolSetErrors(vol);<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre"></span>NVolSetErrors(vol);<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>}<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>flush_dcache_mft_record_page(ct=
x-&gt;ntfs_ino);<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>mark_mft_record_dirty(ctx-&gt;n=
tfs_ino);<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>}<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>flush_dcache_mft_rec=
ord_page(ctx-&gt;ntfs_ino);<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>mark_mft_record_dirt=
y(ctx-&gt;ntfs_ino);<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span>} else if=
 (IS_ERR(ctx-&gt;mrec)) {<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>ntfs_error(vol-&gt;s=
b, &quot;Failed to restore attribute search &quot;<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>else if (IS_ERR(ctx-=
&gt;mrec)) {<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>ntfs_error(vol-&gt;sb, &quot;Fa=
iled to restore attribute search &quot;<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre"></span>&quot;context.%s&quot;, es);<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>NVolSetErrors(vol);<=
br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre"></span>NVolSetErrors(vol);<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>}<br>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>if (ctx)<br>
</blockquote>
I think that this check is not needed.<br>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>That is correct. &nbsp;It doesn't do any harm but yes ctx cannot be NU=
LL or it would have crashed above when it was dereferenced.</div>
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
<div>
<blockquote type=3D"cite">+<span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre"> </span>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>ntfs_attr_put_search_c=
tx(ctx);<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>}<br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span>if (ctx)<=
br>
-<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre"></span>ntfs_attr_put_search=
_ctx(ctx);<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>if (!IS_ERR=
(mrec))<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>unmap_mft_record(mft_n=
i);<br>
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>up_write(&a=
mp;mft_ni-&gt;runlist.lock);<br>
--<br>
2.25.1<br>
<br>
<br>
</blockquote>
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

--_000_5C0539F795D34BD0AE296D0F42CA89D5tuxeracom_--


--===============4322662346687811925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4322662346687811925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============4322662346687811925==--

