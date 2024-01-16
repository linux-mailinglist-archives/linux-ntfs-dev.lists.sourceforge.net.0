Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A1582EC2A
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Jan 2024 10:51:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPg6K-0008GB-7b;
	Tue, 16 Jan 2024 09:51:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anton@tuxera.com>) id 1rPg6I-0008G3-My
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 09:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7nxZq0MV/HCCm/4Ykqivd9WtQ7uH82OobBOJMdK0Knc=; b=VrQvZb9+d6brMvsZ79abBa8lFf
 c5lzC5YLUt4JOlEpVBHH+/gyExY0PldpoXY4W5+y3K5ttkvwk45dwaC2YAbFn6sIdcH0gOWAS68p7
 yBhfM0yPIx9AZ4ah60QqymcB2iH5NCRI+q3TNjkXyYZyD2pGb0ZWrHbgS/G19v60Znqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7nxZq0MV/HCCm/4Ykqivd9WtQ7uH82OobBOJMdK0Knc=; b=C8jcJ8NRUcCrcQGoMX/I6/+bdT
 frlVflqiLt6R6oVirGfJ+JXm9f3AzxFkBDDGRSUmijGet5Tm51sJEbSVdioXBDCMNJNj0Vip2cMid
 05Ou8LufxqVFcyS0FCXGm37ke5+Fq9M92YwZBN22Cp+F20HTdhfz0CtXrMTzc5A6Xi+E=;
Received: from mail-vi1eur02on2108.outbound.protection.outlook.com
 ([40.107.241.108] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPg6D-0003T5-4l for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 09:51:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nqZIVsKRtH9BLp3ZWfpMNLNViKxAbL2etGMXGpaMnR2O257KWa6XD9WaacWXK7BGoebj89HyasA4rkH9EX+ZKLgHSMrSWZA038LoPa+VeVe8tu8w+LbSILDfxjxxM6GNA3f0JCk8fWy35QdFiXwNkPCqLpMwNuRnYX23JtsFTBDmlZK92jHzcDWBIvwrWJU3juAJ7asV/GRnRCFFMWDkegHG40XYbTEXXyXS3gUDjPoTpgfEOUnO0MBI3z9JFb9H/3ciA2QE+jx2oSXJdMpaaj//oU1NixBjUxd2IROjGqHQhuEylshaDPd3ynNzSE/VQjClWpvT7tEPNqVNXHaovg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7nxZq0MV/HCCm/4Ykqivd9WtQ7uH82OobBOJMdK0Knc=;
 b=iEFO0+NNFkKEdyT4wZfj71PIWdzDkQ5EOalMnS6UT6FCLnlC3b0ss9kFHHlKSGHLz+wPGu0FFnloybTokapFDbvLjEX7yeJZxFxggFI9pWXIebSmPFEIc8scwxY3yvwyCsdzzirRENNmQbkxpSRBhCgHp4uyGXpQNSQEaRUImYYarPnjHR0K4AQZO+4k1+M9D8xOlNlqeNt6PJLAuaZe4aH6lZtTtUA0BTS63LCsG4pI1bUlEiobrpgfNCAmB2nJ4DlGV4Na7QdgMlTzlGnO+h8SNbrkmK+MhkGVvXNN/pKlppeGbY+LrWQrsCn3iVn+iG7Va/L5q4JGBymKZdPRWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7nxZq0MV/HCCm/4Ykqivd9WtQ7uH82OobBOJMdK0Knc=;
 b=RVeltehoMrIr6XmQOLX3pUV/NAYvoNKw+SYHMWQqT+F9xFna5esEiY8tLWriCc8/+b3kQyPH3TCb8CZW44cOGqgz7PoFau2W8KpOoSnpNzTL0zb5JmgaIrUUyt1VVSILZbSNRqvboo7cXZvzaxML2tPY7eTjomb/T8Qg1XQX2uDaKOuszpsfs1C85ZzsnFDpCGJiq0VFPvjN+C/B0dLiYK9uGj18hDupkjjxvO26n//UlqAJSgY8fRe8T0sRy0R7M4OSQTfUJfsTxPoSWnUfw6cEhxdlO7LQErmQorQ0SkRgQ0+9bFIywpwsLmAUnyhzvcZqotu9ls0szUnXwENJnw==
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com (2603:10a6:20b:254::18)
 by DB9PR06MB7465.eurprd06.prod.outlook.com (2603:10a6:10:25a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.28; Tue, 16 Jan
 2024 09:51:01 +0000
Received: from AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c]) by AS8PR06MB7239.eurprd06.prod.outlook.com
 ([fe80::6306:f08a:57eb:467c%4]) with mapi id 15.20.7181.027; Tue, 16 Jan 2024
 09:51:01 +0000
To: Matthew Wilcox <willy@infradead.org>
Thread-Topic: [PATCH] Remove NTFS classic
Thread-Index: AQHaSGGDO1CfjvoGoEeouP3cti5bsQ==
Date: Tue, 16 Jan 2024 09:51:01 +0000
Message-ID: <0F5B3A39-E9B7-4A53-A9AC-9902F5E74BBA@tuxera.com>
References: <20240115072025.2071931-1-willy@infradead.org>
 <8a5d4fcb-f6dc-4c7e-a26c-0b0e91430104@tuxera.com>
 <ZaVF72QxQm/cN5yy@casper.infradead.org>
In-Reply-To: <ZaVF72QxQm/cN5yy@casper.infradead.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR06MB7239:EE_|DB9PR06MB7465:EE_
x-ms-office365-filtering-correlation-id: 49439bcb-3e6c-45bd-1576-08dc1678a5e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /QRENZmfp7g1nSY7cl1yYIebjlRXXadbGxtwoN8SoYCgZu+L+EM2b1E4WyCu8AYWdvBEOIpad+XLCxGsyFzcxGBl6Eas3ThwMYdHcNV20pLkEw7KWAiN5swBRS+TXJ/TWn5pcSDbMFtWiakrxRY0xTwP0ngyXIRb5gt+5E90+wXAfOuW1Mj+TvXnoRuguOJ33ZSfuX4tdHzJWV8C7v+4DSGKoewY9rIxL46LCI9ze1/2hoJ68M+GAkUaaJlqfViexsKJqRRJSRJki/UddwwDbWUcLtMT/kdkVY7zi6dIznnKKqucZ7zrXOgBXi4C+eYhgw5DE3BQiFj1elYwZlixbchFVWtSw6kttE6ki6Rr6ksS4Wf/7sqwjsX/5vYvhlN00NrxWY50PXmYOgxF6InkvGOvfKCcb83KhNOqD+7+XskdnlxqTn3UYA+NVaAxp9vKrhqSjRjD7hoqkFyc/oRTZJCK0XYLYxnSTH/3p4uIGuCOJt962c2pxnOni9aRu27ztrEEbgkhKl6Wy0zSBbUTVMKokIQrAt3tH603OQn1O78BHRvUY5REPu7sm8eldSimH+H//mqcPAaPs3JZqG7S+a4C0VLfqbDWs9Z/7z5UrxwaVcmAjKouwnK6qsaz4wD7Bgc80IYgZMybPwWQ3/r5IA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7239.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39840400004)(396003)(346002)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(38070700009)(478600001)(966005)(4326008)(5660300002)(316002)(8936002)(8676002)(66476007)(66556008)(66946007)(66446008)(64756008)(6506007)(54906003)(76116006)(6916009)(6512007)(91956017)(71200400001)(6486002)(26005)(2616005)(122000001)(38100700002)(53546011)(41300700001)(86362001)(2906002)(36756003)(33656002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lei/5ejRvVev3pZkzmv9Whpc2cyOtfqIj3ReHkYhLRK4uKr1kis10Hw2q8Hy?=
 =?us-ascii?Q?kbkE+xhUJnBUYtNWDKWR++tqaL5js9lLWawasIiPu3RniBc+farAIS2EGFm1?=
 =?us-ascii?Q?aNPw8JCT/r389Hs4SaRQ5ujXAkdK2L6TJHJMC/QJh3UZuudJnOGzrIP4yqTw?=
 =?us-ascii?Q?U/ZXOS2ldH9PLFxh60vDg7SrXJx+M+qu7NmE3WQCslX09Pnjj9zm7TDtrbgh?=
 =?us-ascii?Q?/xApyM6D7olu7bkCUqmNO3kGS22unb2RCDZK+t9wKzcscTbPr/EUd4RhEae4?=
 =?us-ascii?Q?xuWuvx8tTsuCsQ0v5LytY5UHG6SIBgXwI/TxMsb+pOUFqzbxKH/i0yOOoy9B?=
 =?us-ascii?Q?/8RcQjD5lnt/Xvk+NDYYDpkIz9nVVjlkMxO80GkQe0eNjT0GELG44d0meAbC?=
 =?us-ascii?Q?j0O00EMnqJ/DMK59Qn6Cw/QTg8GUIkaXWdC9styUKmIvvqllTl/nhKMYBT4m?=
 =?us-ascii?Q?9V4tITwMWAR8CnYUOH4sccxwgVDjzWIGVmFwMYbsqUBAOaz2vPPiLMFaDh2B?=
 =?us-ascii?Q?MxR79IbWW4duH50LxmRkVb0SO59Oj0f2OgmqFQ1LPUyuoOsBRHYU7aRlIymw?=
 =?us-ascii?Q?VsWGOIf5Nuu2szoE8hgRj0xb182LEZHItKAERHJhtVx6MOpfOqdGPeoqbOjX?=
 =?us-ascii?Q?jSxmVIF7cXAgcx+3ff2rxckiGBrsLdUucpeQ9HuEDZtBflLRs48ecSDmgnaE?=
 =?us-ascii?Q?UlbouBbi5tM84cdMBm6ocM7xLdl3cfGVLQ/0vbGlroYpd3bi76hp2M9hXBEI?=
 =?us-ascii?Q?5EcEGsAgN6xOIn+EUTKB9u+DgGhw3Oy1b3H6scfDlkHv1cjJC9L5b2TV+JOK?=
 =?us-ascii?Q?q5jcXlOL7LYzHFO4KO8WVLxsqadhLiFfIdmDHifYb7CpJvRY6Io3HiWwwnXM?=
 =?us-ascii?Q?bxpsLxttNv+VeUpvz6pxSHtNB74KrtD6zLXGXGr4/eUzzkCw1CWTyT+xurkI?=
 =?us-ascii?Q?cKgkrrKgS24espQEl/Vo/MWLAT/iLyiVYZ13L7jh9uYIrpSbFGX99Ndv29lT?=
 =?us-ascii?Q?VSUp/7KV5mjhmzIeKN66uGE2aPw9JegBd5N9HlX/KZSrGhLCHYq5P4jlJcW1?=
 =?us-ascii?Q?GvHfKsFVCEVUvAqLW3yXv5Co7bQvohjmXkzAxMflXoq8WpzKHU2D2dg5Kdwt?=
 =?us-ascii?Q?CaBiQ2bV2VA722g385ntv4EM7bQaXlm/uitWDq4OIhG+B3ckVR5SBPuOcZ0k?=
 =?us-ascii?Q?4JzHLrLOGws50gqc2DPRdxDEpxUh9puux08Lcx5W3BS58WCIER8jZYG6qeuz?=
 =?us-ascii?Q?buewlLrHWTFpUcdxnbbOx4UTVWN7AsW6ejSy3X8ph065xTgsHYl5fbWt9ylU?=
 =?us-ascii?Q?vY2yyH/LZeZSNkPuvYABCh9+eJwYw9wFvQQ4AtasrL1fe/mUchQ/uIZc09gi?=
 =?us-ascii?Q?xeGrwRBQEKL85pqW3/YGqVo2S7/T7q1feNDKf8yH0vT/9tBD0UJwb7s3V2Vv?=
 =?us-ascii?Q?3hgL/z8L8Zf02Bl7A9Tz6dMmKxgEs2JMSvlUBOUksS5sXkb/jzqzCdALcPTp?=
 =?us-ascii?Q?c/FWEKAvufBDuiUWWTcciA81GHmchy0wx9bdjt6EjEquDN8HYnD/VIoJaHM9?=
 =?us-ascii?Q?7lx703irxWSLIl9kB6Rte+QpBrryb0KNZ9hpX1xF?=
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7239.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49439bcb-3e6c-45bd-1576-08dc1678a5e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2024 09:51:01.4816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hD4IiLb9RcrkT9WvUktdGgxhHvyvipCOZYEoApYYJeEWXndRU2HG9Qnub3Y78bNtJjhyNL9wW/xtnmUN3OH6Sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB7465
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Matthew, On 15 Jan 2024, at 14:49,
 Matthew Wilcox <willy@infradead.org>
 wrote: On Mon, Jan 15, 2024 at 11:00:35AM +0000, Anton Altaparmakov wrote:
 Hi Matthew, On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote: The replacement,
 NTFS3, was merged over two years ago. It is now time to remove the original
 from the tree as it is the last user of several APIs, a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.241.108 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.241.108 listed in wl.mailspike.net]
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
X-Headers-End: 1rPg6D-0003T5-4l
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
Cc: "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, Christian Brauner <brauner@kernel.org>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>
Content-Type: multipart/mixed; boundary="===============2158191845714404863=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============2158191845714404863==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0F5B3A39E9B74A53A9AC9902F5E74BBAtuxeracom_"

--_000_0F5B3A39E9B74A53A9AC9902F5E74BBAtuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Matthew,

On 15 Jan 2024, at 14:49, Matthew Wilcox <willy@infradead.org> wrote:
On Mon, Jan 15, 2024 at 11:00:35AM +0000, Anton Altaparmakov wrote:
Hi Matthew,

On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote:
The replacement, NTFS3, was merged over two years ago.  It is now time to
remove the original from the tree as it is the last user of several APIs,
and it is not worth changing.

It was my impression that people are complaining ntfs3 is causing a whole
lot of problems including corrupting people's data.  Also, it appears the
maintainer has basically disappeared after it got merged.

I'm not terribly happy with how the maintainer behaves either, but
you've also been missing in action for nine years (if we're counting
code authored by you) or two years (if a R-b is enough).

According to your documentation, you don't support creating new files
or directories, so I'd suggest that your code has never been put through
the xfstests wringer in the way that ntfs3 has.

Also, which APIs are you referring to?  I can take a look into those.

The biggest one for me is the folio work.  Everywhere in your code that
use a struct page needs to be converted to a struct folio.  Support for
large folios is optional, and I wouldn't bother trying to add that.
Take a look at, eg, nilfs2, ext4, ext2, iomap, NFS, AFS for some
filesystems which have been (at least mostly) converted.

Any functions in mm/folio-compat.c should no longer be called.

If we're being really ambitious, filesystems should stop using the
buffer cache and switch to using iomap.  There's a lot of work going
on and unmaintained filesystems are holding us back.

Thanks.  I would have been happy to do that but it seems everyone else pref=
ers to remove it so I have given my ack for that instead...

Best regards,

Anton

--
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


--_000_0F5B3A39E9B74A53A9AC9902F5E74BBAtuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <D2654B4145E2EA40830EE35A5C0AE9E9@eurprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; line-br=
eak: after-white-space;">
Hi Matthew,<br id=3D"lineBreakAtBeginningOfMessage">
<div><br>
<blockquote type=3D"cite">
<div>On 15 Jan 2024, at 14:49, Matthew Wilcox &lt;willy@infradead.org&gt; w=
rote:</div>
<div>
<div>On Mon, Jan 15, 2024 at 11:00:35AM +0000, Anton Altaparmakov wrote:<br=
>
<blockquote type=3D"cite">Hi Matthew,<br>
<br>
On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote:<br>
<blockquote type=3D"cite">The replacement, NTFS3, was merged over two years=
 ago. &nbsp;It is now time to<br>
remove the original from the tree as it is the last user of several APIs,<b=
r>
and it is not worth changing.<br>
</blockquote>
<br>
It was my impression that people are complaining ntfs3 is causing a whole<b=
r>
lot of problems including corrupting people's data. &nbsp;Also, it appears =
the<br>
maintainer has basically disappeared after it got merged.<br>
</blockquote>
<br>
I'm not terribly happy with how the maintainer behaves either, but<br>
you've also been missing in action for nine years (if we're counting<br>
code authored by you) or two years (if a R-b is enough).<br>
<br>
According to your documentation, you don't support creating new files<br>
or directories, so I'd suggest that your code has never been put through<br=
>
the xfstests wringer in the way that ntfs3 has.<br>
<br>
<blockquote type=3D"cite">Also, which APIs are you referring to? &nbsp;I ca=
n take a look into those.<br>
</blockquote>
<br>
The biggest one for me is the folio work. &nbsp;Everywhere in your code tha=
t<br>
use a struct page needs to be converted to a struct folio. &nbsp;Support fo=
r<br>
large folios is optional, and I wouldn't bother trying to add that.<br>
Take a look at, eg, nilfs2, ext4, ext2, iomap, NFS, AFS for some<br>
filesystems which have been (at least mostly) converted.<br>
<br>
Any functions in mm/folio-compat.c should no longer be called.<br>
<br>
If we're being really ambitious, filesystems should stop using the<br>
buffer cache and switch to using iomap. &nbsp;There's a lot of work going<b=
r>
on and unmaintained filesystems are holding us back.<br>
</div>
</div>
</blockquote>
<br>
</div>
<div>Thanks. &nbsp;I would have been happy to do that but it seems everyone=
 else prefers to remove it so I have given my ack for that instead...</div>
<div><br>
</div>
<div>Best regards,</div>
<div><br>
</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>Anton<=
/div>
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

--_000_0F5B3A39E9B74A53A9AC9902F5E74BBAtuxeracom_--


--===============2158191845714404863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2158191845714404863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============2158191845714404863==--

