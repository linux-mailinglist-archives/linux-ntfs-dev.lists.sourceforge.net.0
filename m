Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 089A682DA2E
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Jan 2024 14:35:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPN80-0007OU-CT;
	Mon, 15 Jan 2024 13:35:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1rPN7w-0007OK-Tt
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 13:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wRY0Dcxp2VCXUgeMipaS6PPUxOxqovWe4MVNXCf9gzs=; b=aHHJZoAWsSS8nUkNmVvmazm1uf
 Rt6q1llcxJKwodEgRWeQcNfZ37WibVxYHs8AEay75UII6dMM34rC/eaSjtMQ+F/nJKKeJPwkWSxuy
 wr6x74X4QJY00T1qVK4x0xvs/thkINCU+6l6J4JP8dEDp5Z3p69pCK0ouZtw35eLsZWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wRY0Dcxp2VCXUgeMipaS6PPUxOxqovWe4MVNXCf9gzs=; b=K0WyxhUgfQtgxPLk1FGuh7SGAt
 ojFhsUrORPb/Qm/1TQwTaNuiMU8fXo6vBi5JoawnqTwvWCssMA/CHXXEcoHAFwm5BDQw65rqll8Cy
 YSVUjvIZ06mr5aHJIYIHfMMJNukVLZDdeLzBwvVCADHh/IjIvb6qj9NWxinYymwzzYcU=;
Received: from mail-vi1eur04on2111.outbound.protection.outlook.com
 ([40.107.8.111] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPN7p-00014y-Fs for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 13:35:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DeswjCJAeWDXX9kblFQK/qtJzbT0bTi4U/rlDkcigM6/kaoUCIv4jIVJrtg/Scsu3PV0chQr3iKfYV8zm3wGXuD29biaVMkYSpvB9sa/gRyfCpAP6ymjf3sVUvuLif9PpUunTbZNPXwGJlIxorKofeb0UvH4LheFA3c0yCR/FKvCHBRl6S/UaBYL8Yz9VUl9500/NWMrQl6oN42ikp+eHb73m2SRziuMKy+Ab5jQIUmqlk33OtB7ybaDpXHkRBgvwMdScI7fk3v0lbn7sCSpUqW/23TdjWf7CQlFQp1wsl5iiPk0aSfUgLf5ZE+3Q6RdgsID3U3ElHwdHUx+giDCwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wRY0Dcxp2VCXUgeMipaS6PPUxOxqovWe4MVNXCf9gzs=;
 b=Y9ohHvfmhiiMDIi2FfphqbFcsYJEnuBTdhFdgTEGm9IBa77srX34k3D7XtXmrBxWtQ9cRUlkh8Lw2q9MlQWYQKp5aiCR7RbXUAM2DZ6qtYJ0JJ1rEKkbeIok94eAtWmbIlz+LBn7rw1lro2jEfAvksAUf0agSVNt3u+hRoHN78Iuq4uaNoqD0poL0btedz9XwSVnsf0cYI27e0bL0T/0PqwVy7PAKe9HY0qfsrHrI3KBGNJHD4lKd5QbkPMbr33VCAQJtAlBu61k2mcT5uXrmcHbnI7zWAOSb49L9hw5XnnGvl0oQuOgZBgpm2gDLGTH6d/H8RcP5VeVBPCRffpnSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRY0Dcxp2VCXUgeMipaS6PPUxOxqovWe4MVNXCf9gzs=;
 b=MMqVfUeoCLO3s80gXeDc6280kuISpREh9V0p8JRakiKoH7agLNhloEgVjNvl8+Z3mAh6NIYAhm2gcGPTqaEHegMrsytEMASqM14DsW+6CS/OHaCUd5Jb+z6k01S46H/hT3vF9THOjUlGxo5Ov5Th5kih6+BuObXGii1inWeqJgZmwOLZs+R3TDODxQEcV6SJK21CxdC6UzcdMui/nGX0zJHBg8skYmQ3flnnfxWDu1zVGWmDbx6rzC0twOArY2HgI5nVK+1W3VwOXn+Jhjuo+kX48REnhZZ/LFsXE5akxNgQptQyKC3IYsyWp6c1kDwH2fcjduh7HIPpl5U78qVbKQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com (2603:10a6:20b:254::18)
 by PAXPR06MB7549.eurprd06.prod.outlook.com (2603:10a6:102:12d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.23; Mon, 15 Jan
 2024 11:00:36 +0000
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c]) by AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c%4]) with mapi id 15.20.7181.018; Mon, 15 Jan 2024
 11:00:36 +0000
Message-ID: <8a5d4fcb-f6dc-4c7e-a26c-0b0e91430104@tuxera.com>
Date: Mon, 15 Jan 2024 11:00:35 +0000
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Christian Brauner <brauner@kernel.org>
References: <20240115072025.2071931-1-willy@infradead.org>
In-Reply-To: <20240115072025.2071931-1-willy@infradead.org>
X-ClientProxiedBy: AS4P191CA0053.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:657::29) To AS8PR06MB7239.eurprd06.prod.outlook.com
 (2603:10a6:20b:254::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR06MB7239:EE_|PAXPR06MB7549:EE_
X-MS-Office365-Filtering-Correlation-Id: e542547e-6bc1-4ffa-9d93-08dc15b933e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 35Q+ItvlkpaB1OxB1qEPuKUb1hbfenqwgXlk22Ekc1r7wqHEbwLGhh8HklFkVXzx54V/1ZfLr5qVumpGrYIhYDCJNBe1LMajIuTbZ98aLwcNNRZCh5YL6b6bkqCf0KMxNF7Dga4OatQ5u9D+mdHnIgnBPfQh1Y9aUzvP2P7XD8vMYiKrvwSkhysjA/P4zwqLgEv/5BgUqpizqqwZUsgq5x7SUVXJdmBxKo37UobkxEqCJMiuBAhr0EaTMztPVP8wYK5aIVX7xhIMGULv+re+PC4QfgQpLu3SpIhtnFg8zNi+ztpxeEv9JvNxz0vwz5m9GmCI9pBti1yd9wT23z5zIrxQaIhSnJkMDy1mMm2I5lT3Z0/dqtZHLIpqUt4Lx3DgkR16uJrFZvBsGWdnmPt/7sn+VRknMJEWaNpoMm+fhIQRsFZgfilTWs3lYPBPNg7Oll44UabCZHlpgnxbbDUAfusLppEbuGW2PjT0w2JEESwRF/0js34OfVUuogzeZt937OH0wGgbL8QlK7j049rTD/FDBB8wwlpVp6Ymy1Jc3OkUhfVHCxkMCBnNyJ5vXSOfw5dJ7zR/khK5HRDxV5CI4HTEvo+paLdg4iOS1A62/l77JUOXv9+XZKHOoIzDmvtOXX1y4+4MJgaTsNIZ6umeCw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7239.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39840400004)(396003)(346002)(366004)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(6506007)(6512007)(26005)(53546011)(2616005)(5660300002)(4326008)(41300700001)(4744005)(2906002)(966005)(6486002)(8936002)(66476007)(316002)(110136005)(8676002)(66946007)(66556008)(478600001)(36756003)(86362001)(31696002)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2FuSTZTcUxNUitzYnlYWEY1UWs2Y04wbm1XYm54WGtvUUN2TzBNb1c2ZThs?=
 =?utf-8?B?elB1cTNxdkNvNDRuWmljS0FuMjJvYk9TVWtyb2NSMUs0dDNrVHVIeU52cmRG?=
 =?utf-8?B?TFhDb29nZTd1R2ZRZVFlNjFnTE9DelJRbndPNnRNYWJ6WU1md1lxZEVlSmNS?=
 =?utf-8?B?RXhRVUcrRGhnL2JQNENwSi9EK05ic1hiVXVpYlFYMWNuVDV3TUNVcmFRVWZs?=
 =?utf-8?B?eEMxTDIrV1E4OVNwZ3QyVGRuZDhqZDNnUFRVQVlyYVBzazY3dXNKa0ZQM3ow?=
 =?utf-8?B?WHlsaTZBbHVwZEpVbkxkcUhFMkxlSFVmMmRJdUZJNGc4L0hmY0crMzBoeHEx?=
 =?utf-8?B?MG1Wb2VEeG0yMmszQURxQk5QS3JzQ011dVFOQk9UY0ZEQ1JYWlVXZmc1aHBN?=
 =?utf-8?B?TlVGZzBHSDBjVDF6MjBsR204R1E1eGtaN2VSbndTM2VhTTZBb01CZjVPR2ZG?=
 =?utf-8?B?VGtFNi90WlRodXZHRG5pRmlKNmduektDYnNINXRiNGNYWjArSUNyRlQvQTc4?=
 =?utf-8?B?MlYvSlpPWWdkS3Y1amtSMUVlMTRRV09teHRhQXFJUU9IZlpvb3BUR0NKeWJG?=
 =?utf-8?B?UUxOaTJ3dTFSVEpjNlFjeDY1akQ3aFZKbURTWDJNMHIxUHozRU4wVEVZdWRy?=
 =?utf-8?B?S2R5YWVZdFo2K2lveTh5SHBBVEpzUDRsbnBDNVl1RW5ubitTSGgvK0hQM0JH?=
 =?utf-8?B?TkR5S2NmNVJ1d0pid2xjWXRHYS9HaTc4TmwyQ2t3OXlLM3BJc3hRNDZMMGZU?=
 =?utf-8?B?Sk1COG5ZbEovVkNIOTBTN211RnYyaUZLRU1GY3lmU0RCVDVhQ3RKRC9nSVpL?=
 =?utf-8?B?TU9mZkRoaWpqckgxT1dPRXM1ZmZkTWM1Z1g2cFo0MkhPNVRoaEhXc2gzNG1w?=
 =?utf-8?B?S0ZCaXByZndrZVNjYldmMTU4dzJRYllXTmw2cU90Ry82NlhrcDZxSUdJa2Nh?=
 =?utf-8?B?djdRYTJzdmNHMDZYcm5DUlRHMHRFWXF1OTAzb2VCeGNNVWlxZVQxTFNhVTFF?=
 =?utf-8?B?bGk5b3VyWWI1TklBc2cvYWdSK3JmRHdFeDQyODMwWlgzdTUya1lMMEQvbjJk?=
 =?utf-8?B?VEo2YWxIOWV4YnE4RFRCNTdyemdBZ3JBb1ZIdkVpaFZlYkkybGFrQTIwL1pj?=
 =?utf-8?B?aGtqL0JuQ3YvSENqYXB6NnNuU0p0Mi9vQ0VPcHh5UUlRcmlveVY4U01GR08z?=
 =?utf-8?B?L3psUVJSWGs3MXJJRCtIbmxjUlQ5ZFZRd1BJMnMxdkg0emlQWkhTZXdzaHg5?=
 =?utf-8?B?RmgrUjg2RjVwcHhUendYbTlGSWU5ckhYck0vdk9xMzlpYzZLcW5MQjl0dER1?=
 =?utf-8?B?dFBnQjlHRTBTNGYxSTYwZHg5YzRtOUFjSmFEK2RrSzIyaklvaVlxKzJEcjEz?=
 =?utf-8?B?QXFCRGhBQ0RvOUVEem1JMXVDNmdBdW40V2tYS1BZdmpPLyttd25nUTY5NHhH?=
 =?utf-8?B?NjZGL2daa2lCYlR1UGdCcWZmdy94SVZSVmlGdHYxbDI4YlhGM0FJdUIyVXh5?=
 =?utf-8?B?WTY0Z2NLNUxXTTNMMlNwVFZPQm5PZ2hpMnBqZllFTm9Jc2huY3UydGVjUDZF?=
 =?utf-8?B?M3NMb0E1MCtOaThNT0VxQVlHcTFrNHNsQ21lZEhuYkphbm9RMkk1dHJmZjd5?=
 =?utf-8?B?OFB6VzdzNEhMTElnNWxoNGdPL3U1ZFYwcUpQc1l2VVZsUzNuR01PRm5LUk5U?=
 =?utf-8?B?eUU4bko0WllrckNmUWRkZFgxd0tvSFRCTi82UVVwY2xoZm43VU5jRjZFbnVN?=
 =?utf-8?B?Y1BaVytDUlg3R2FVd0RkUVJkY2Nkc3hZSHhBMkFOUXlNaHVCa3pKa3NDaFBS?=
 =?utf-8?B?UTlzbzlLUkQ1a3hvWHVia1JMWTNMRkhia2lSMnd6aEoyZXQ5alB5Y2E0RFNm?=
 =?utf-8?B?bHlYRWhhQ2Y1ZXdlOWRSaGplR2FiRVZJWUExK0ZyWjkyV21XQVBDTDRFRWFr?=
 =?utf-8?B?dm1VNUZXQ3R3S3h2YVE1SElDTVZCMFFZVGdldnFGSWRTV1o5czdqUWwvS2sz?=
 =?utf-8?B?bmtackdlb29FYW54eUQrdXNiRytaMVo1N0tGNkRaQ0tyaGZsUGlLNjFhRWNW?=
 =?utf-8?B?STgrckpkMzBhZ1E1RFU4NWZXOHl3bnVSOFBFYzdVZFJ3VHBIc3hVcFlHQUNp?=
 =?utf-8?Q?/GhtOArIMd908JVsqV6D4mMjm?=
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e542547e-6bc1-4ffa-9d93-08dc15b933e2
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7239.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2024 11:00:36.5532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CYiFWGAtZ+RjohjEdA7Zx6jBlmz+U8Z9ULH9Q5GdGAa01iM6kjObs9NV+wDHP36RYjSWgAQbvcOYLjuPwmDzwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR06MB7549
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Matthew, On 15/01/2024 07:20,
 Matthew Wilcox (Oracle) wrote:
 > The replacement, NTFS3, was merged over two years ago. It is now time to
 > remove the original from the tree as it is the last user of several API
 [...] Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?40.107.8.111>]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.111 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.111 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPN7p-00014y-Fs
Subject: Re: [Linux-ntfs-dev] [PATCH] fs: Remove NTFS classic
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
Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 ntfs3@lists.linux.dev
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Matthew,

On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote:
> The replacement, NTFS3, was merged over two years ago.  It is now time to
> remove the original from the tree as it is the last user of several APIs,
> and it is not worth changing.

It was my impression that people are complaining ntfs3 is causing a 
whole lot of problems including corrupting people's data.  Also, it 
appears the maintainer has basically disappeared after it got merged.

Is it really such a good idea to remove the original ntfs driver which 
actually works fine and does not cause any problems when the replacement 
is so poor and unmaintained?

Also, which APIs are you referring to?  I can take a look into those.

Best regards,

	Anton
-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
