Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B95591CB4
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 13 Aug 2022 23:29:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oMyha-0006X3-NG;
	Sat, 13 Aug 2022 21:29:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Conor.Dooley@microchip.com>) id 1oMtmN-0005bf-FE
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 13 Aug 2022 16:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DpPLFh7zeZbmQYpt+A8J6d1FwvqRSRRNuiETtXvd/nk=; b=QncCQ8zQF4sUARpweyU7SHP5tb
 a13ZjmrL5lEQBpSAIf5UkJLaX3MyRKcmhbYlhDlTSBSz/8U/GdoAED15v1Ywo+wykiWQI8+wI9yxb
 ycC4AWsNinx2UZHFT+DCBUIpPe5Z1WZzgmGAqYExDlMKf6JeJqHdGKB4mhzW8Tkb8au4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DpPLFh7zeZbmQYpt+A8J6d1FwvqRSRRNuiETtXvd/nk=; b=W/SjDeKmOrpASxEBza/+HSS9wB
 7iD4B9gsONWJDomVK+UO0vCjPsmGueFiaY5P5urpPf6AtMw92KA5olCRE8X+aY3IMrqc0tt5QAAcq
 wlRrH5/9qkAQq/SL2Xy18JR5Zrm5Z88IqWF4X07V3GcRX/THWegqJhNsMjCBsEg51IIg=;
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oMtmI-000qV5-BG for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 13 Aug 2022 16:14:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1660407262; x=1691943262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DpPLFh7zeZbmQYpt+A8J6d1FwvqRSRRNuiETtXvd/nk=;
 b=vpE/ZW/U6V+0rnEDB3HVvXv4Solx6vrHsE4/0xIIEN0k2Br6NOQnvObI
 ptdagBriBxKSX2+xImmLS9jBdYBW52OuW2eotRzgzRUo7Arg3JqDV68CA
 HHKGw09w3gk/P5Kn+u4CX1RIYSdfbq/p6sGaEj+s6v6aZzCqbNhKSerBA
 Rgl5SqDaGuzdGt6rlEsVRXacFrkagjl8qOPn3iNTB+pRSaVHijMlLO4Va
 8kHVCxSAAuGX/yQ01wM1J2YcEQSH1BwZseQdUs74ta7PG3Jpfjt5URhIT
 ZsKZKl5ofOvNl3JV1RWieiSPJCk1QLeThGINvDV5L2EnBUBoO+r613ply g==;
X-IronPort-AV: E=Sophos;i="5.93,235,1654585200"; d="scan'208";a="176120074"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2022 09:14:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Sat, 13 Aug 2022 09:14:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12 via Frontend Transport; Sat, 13 Aug 2022 09:14:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JThnFgU/515PITOytcVpKHK346V0Fv0hjXPps9vFGzBOwdoxRjCrEIT+Ces+yMXG86RVc/c7BDUi/J6NWXJEgYAdKDD0GGwFUsCiJXVnQMBy9LGB/nRu6LHuGNYdlxdImCKJvXRN9Hlb3MFc+g7t1ymBh+ZXXomvy239peO3d6GBt0StWFgVzWspS+d8LLbcdwzI0jQD984oB0I2UHpOlspvj7alimocSHwBDFdr0J8KVIglh25B2P1wDDH0o30L7e/n8QXklrEDEf/5IZXdTwB/N8qA4CG03768PvTRkV1qrXXG5wplzrRUYkGOunonzMrBdQFW/DZkvc0UHpS4Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DpPLFh7zeZbmQYpt+A8J6d1FwvqRSRRNuiETtXvd/nk=;
 b=P01hlGf3X2t7Ga0eV25kPndoaZB/d6TtdHgm1588ciiN1XPos3xYuw91XLX6krnD3pKfMMz3d77Hdu7lLjH1YPyWsNSr9jUWIaa51ZpFRqXCUl2bcgtIZAvwwc3t4pqJ5ZkT/LMntGsfskjKIyCTenl+kzb3vBvpvj5Gk9zP0L10h8vJGp83J5yk/fHlyeHw96++uO8quzz/vsmEHUp0Qn0O9nZZ6cBXy8Bhcugoj5FxuVkjQLzCu+HztvgZM/krgVDwsFUgIfeSrRWy5KAWd+jv8DqyfMvDQfa/IFNIn+KKvsBQbWjuEf3lt7YZz4DcLqSAWSC0MN5BT0CLtqmWwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DpPLFh7zeZbmQYpt+A8J6d1FwvqRSRRNuiETtXvd/nk=;
 b=uJTHlbJsy1mMxZyogQ1Jv1BC9Tg9TjdaiaHLccGaLkyHTkSUg/xyvtA3Sj3Vz7GMnUYUYo9wC0ewLD5cFUhFzVUoiOWVVb2q2tJc/mMfD0Z0Xjlg7ggD3huMHAmk8Law4O3i7tcoGIOP3ELg1VxV/yTVXb21FjPL/a6P3knrSXs=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 by CH2PR11MB4246.namprd11.prod.outlook.com (2603:10b6:610:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Sat, 13 Aug
 2022 16:14:00 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::ac89:75cd:26e0:51c3]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::ac89:75cd:26e0:51c3%8]) with mapi id 15.20.5525.011; Sat, 13 Aug 2022
 16:13:59 +0000
To: <tangmin@cdjrlc.com>, <anton@tuxera.com>
Thread-Topic: [PATCH] treewide: Unneeded semicolon
Thread-Index: AQHYry7nzB4UD5NYqUqbcdmjxpk/1a2tAQWA
Date: Sat, 13 Aug 2022 16:13:59 +0000
Message-ID: <687da07e-ad0a-dd47-5f54-27f55e2d9b96@microchip.com>
References: <20220813160723.5769-1-tangmin@cdjrlc.com>
In-Reply-To: <20220813160723.5769-1-tangmin@cdjrlc.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d7eb23b-8116-4b92-f642-08da7d46d4d2
x-ms-traffictypediagnostic: CH2PR11MB4246:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oPdiwbU5Rl4Xki5aeDx57sDQKx47bn5O2DlGTpTKAEtTuSh0DZPZwZwEY9Gakaw3WkpjqZB6X3mmYfCYe1iTULKjhnMMO1o4CLVt3OUtuU1bXbfWj5f5rm84hrJSKIvibHId0mn8nuD6LjbqYugCwOto44N0EVzrNEJJE9RR5N3ZHbenCkzfgoi7n1QbsMg+lxkdHY0DIfiZhrscTmr8Lcl9+T2n5omF8RQPmGiK3DVPthI7sBCDgF46J88SrnPlPgVfz9QJEKLEwSCSqLqniSGuS+VagKrPEwjcypvcvHnI2xZdQo0vwXFOR3frU39ieRKYJTtdrFC1eq4N+GlJ6Cb/iQSL1xRubpRHMGsVRIfYReFVFw+PmGwj38CHRY/8pVr9gyIzquBRMIwfu1GDTw9wn4aX/GjlDjXf1Te22xALNcpCeZw8kzxYOL940FiKcafo8xhWthJuqD5SoFpZYyIRWkTG9EgDjyt52HUoQCgvnARcajp9oGvBfjKmaENc/WVJBUcGslHlyU3E/KPma5L92OhDQW8Gi9NmJouT+6cbw+VLye/eTjDLwWFMCKWsRpB4rxzDOGdh6AEv63WZlEkwHHNYqivkVUxLmDSwEajknEvtk/clt4Ip8hEnBRliFetOYDC6NAMXns8J2+FuA+TEBshqg27/vD5IwK4dgHmEQ9MK1MuOin+9E4WgXSQR4+ulFj2XEpjNuVhVlWm++v/CZgOndS7FOfQ4TR5c2jWacYGCV72xbcv7grSKrhqRPACVlszKhMrSO/EAPsE0gw9LnDcgLz8AGTs9eb6DYDOLZPHA73Jj6A9U7cx/IQklb3IHIuSiWDUH8MjLtEZkI4PBC1FsLcKLkM3eZKEFD+U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5154.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(366004)(39850400004)(396003)(346002)(8936002)(5660300002)(316002)(110136005)(4744005)(31686004)(54906003)(36756003)(2906002)(2616005)(6486002)(478600001)(26005)(53546011)(6512007)(6506007)(71200400001)(41300700001)(4326008)(86362001)(38100700002)(83380400001)(31696002)(66556008)(64756008)(66946007)(91956017)(76116006)(66476007)(66446008)(186003)(122000001)(38070700005)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXZJNGJ3d2kzVkg0VHhRWkErYUlDUDd1dkVuQ0tFTWpENFMwaExXK2ltMm1a?=
 =?utf-8?B?NTN4WVVTMmg2Rm9lanZXWEc1SEJhZXVOQlpNU3doSklYR3JvUitZVlJDbG5B?=
 =?utf-8?B?dkIyd0FzVHNOU2s0QmIrVGNwZU1GeFZ1RUZvMm5rcWFMYXAzMTVKNnBGNTVX?=
 =?utf-8?B?K3dVQUFiNUxDbXAyNUpWaUJiSXNXdVZvY3hQMTNteGNSbEFsRGF4eVZjUGlI?=
 =?utf-8?B?THQ2VHhtQUdoRTVMV3R2Q2lTNGhYNzNaZVB3S1Zoa0hKbjNvaWh0NEVIUWJN?=
 =?utf-8?B?OVlYSzN5OTlFWFVHSllXeUNkSTlDWVlXSm1KRHdnV0JzMmV5eFZRaEFrNUht?=
 =?utf-8?B?ZytoR3RpRmo2YlJ4TXBmT0xEL2x3cVNBSDk0WFNKNXN0UkRodkVmdjFzbjIy?=
 =?utf-8?B?NU1UWUsrdnBRMVZjSzQ2RWc0NmpWWCtkUHFHSEhBVjJ1RkNJcjJWczhoelN6?=
 =?utf-8?B?V0FtRmt0QVBSMENjOVpJbFNKU2lZZnZyY2VqN1ZQckIvZytWODdmckQ0Wi80?=
 =?utf-8?B?WnlOT2JTWS9qUDFSWnVreExCQUp6dFZaUGhmd2ZxY3J2eFMwWkhuZGdRTE40?=
 =?utf-8?B?SEYzeXhuV1B1NHZpUzUzQlFVbWR3dzBDSlhZcDhTVE85OElqRkZWRjBBdkwx?=
 =?utf-8?B?TXhoQTFWN3dTdi9SME9vTHNOdjJYSm5icy9xL0hlbFVML09HbXRqMStIN1U5?=
 =?utf-8?B?bjVPdUxocXcwNVNnUUJQTjBPSXZvSzRPMjNBZ2VxdkRDTDFzMnFzMmRvVS9C?=
 =?utf-8?B?V0dybzY1eWxkUkp5MGhoajU5NDFGVXY5Y01CdTk1YkNkZGloVnViWmZqKzBB?=
 =?utf-8?B?MkNycVVZVlB0QStqTzZlUlRObWh2dGQyQXB5VWFwOCttVmF1Z01lZmVNOENI?=
 =?utf-8?B?cWVCYVdYVEZQNnRVSXNUY1NvQm1ldEF1b0diZ0s2SUg5YitUYmFxV21WOFRy?=
 =?utf-8?B?bk9xTkFjVk1sajRoSEhEZFpYclp4SmNQRGxqTCswQmEyb2pCUVNacHUvK1F6?=
 =?utf-8?B?ZUxHa05tc05TcGFxODg3aitjdWxjMkErdTJVOTgvdERJeTNpYXdsaWFCd2Zk?=
 =?utf-8?B?Wk53dCs2U2pYU0xnMVdRcU5YV0RjTk52K1RHMW0zM05STnJSOFZXbEZYbCsw?=
 =?utf-8?B?am9EcEhVeUF1U0tEVlEzaXY1Y1M4bS9STmhaZDZxOHFHSVp6Y2c2RW0raExp?=
 =?utf-8?B?bjdJSEI0QUlkaTQ2SDFxT1U5UGZzYWVTMUxjd0J0S0IrVWlYSjh5M0lXOTc1?=
 =?utf-8?B?eEgrdk5UcStRSy8wTGtDLzFibXVBMzA4djMyUTRUVHVPNWM2bzI1QVJBYnlQ?=
 =?utf-8?B?S01FYzMxUThTTDZQbHovWGc0bHVQbFNmb3NROXk4dWoyUkNIUVBYUHhtYU9O?=
 =?utf-8?B?VUNZbWJwa1hLMHlCYTNCb1NXVjA5cndUdEg2SzJtM0NUTlNCTmEvK2Qra1o1?=
 =?utf-8?B?TmQrL0kvbzgrYWRvQm8xSnlYRG5jMzBaZ1F3MDJFQlZuaSttdUlmUmhrMVB6?=
 =?utf-8?B?OW53V1VxWWVhRlRUbktBbzdGTXhWSTVDZzdLSitkL1NBSlhVYjZjWG8zZVV2?=
 =?utf-8?B?WEJocnpsaU5VTVFYeVB6cHk3ZnpyTkNTdno4UGk5TXZCanl4RUJnMTM1LzF2?=
 =?utf-8?B?bmxnNWd1OVlzb2U0d3pBSTlDOHZGK1J4ZVhtbnVEV0JzbTBBYmNtdWlpZURC?=
 =?utf-8?B?K3I4M1RwSW9LQVNieE16Y0lOMW9JcWtvUVIzME9FdTBMVmFoRWJHSjlRbW11?=
 =?utf-8?B?UzRTRlJTRkExN3FyVlFVbjVSbi92R2J0SUtkNjZNelZnMFA5b1dVcU9JUHp5?=
 =?utf-8?B?WFQxdWRnSGs3Q0V5VytlbEZsREhyLzlud21tL3dTQlFiazhsSVl2RldkeUZM?=
 =?utf-8?B?R2x3eEg1eFpBWkVuNTd3bzNQN2NZSVJzeEtxeTBYc2pBMTlKSURvN2hQSWdF?=
 =?utf-8?B?aGVBaVJnd3JHL3BZL1dVbk1wd1FRT01CaXhjSjdZSE1SbDhOKytjZzh2ZEk5?=
 =?utf-8?B?MDZhVG8vd2tuMDdIaEhvMTN5NXBJRi8ydTd6M05tckpoUU5ZNHBpWTRCdE9T?=
 =?utf-8?B?aWdFQnVhQnNZeW1QUG8xbnNGNDRhWGkzVkpDSC9VQjVNRGNmUHEwZVc0NTRs?=
 =?utf-8?Q?ZoKGvqsTJeV2gLahlYXEhZlhe?=
Content-ID: <C0EA8AE074E25941AFA1115DF81FB8CD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d7eb23b-8116-4b92-f642-08da7d46d4d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2022 16:13:59.7655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FZj0quMunmo4f4yJCo9dEgv0KYzxGGVAe2mSaZVzPVDrRXdYXU4pu6BKDgC1vt4ZMBz10+DUju/iSiHB6NXWfDQwBS9GhN2yjpxyWiBNR24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4246
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13/08/2022 17:07,
 min tang wrote: > [PATCH] treewide: Unneeded
 semicolon Hey, you might want to check whatever script you're using to generate
 these commits. A single line change in a file isn't exactly treewide... 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oMtmI-000qV5-BG
X-Mailman-Approved-At: Sat, 13 Aug 2022 21:29:50 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] treewide: Unneeded semicolon
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
From: "Conor.Dooley--- via Linux-NTFS-Dev"
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Conor.Dooley@microchip.com
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 13/08/2022 17:07, min tang wrote:
> [PATCH] treewide: Unneeded semicolon

Hey, you might want to check whatever script you're using to
generate these commits. A single line change in a file isn't
exactly treewide...

> There is no semicolon after '}' in line 1615.

This doesn't really make much sense, maybe:
"Remove uneeded semicolon after..."
Thanks,
Conor.

> 
> Signed-off-by: min tang <tangmin@cdjrlc.com>
> ---
>  fs/ntfs/super.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
> index 5ae8de09b271..d663b49df84e 100644
> --- a/fs/ntfs/super.c
> +++ b/fs/ntfs/super.c
> @@ -1612,7 +1612,7 @@ static bool load_and_init_attrdef(ntfs_volume *vol)
>  		memcpy((u8*)vol->attrdef + (index++ << PAGE_SHIFT),
>  				page_address(page), size);
>  		ntfs_unmap_page(page);
> -	};
> +	}
>  	if (size == PAGE_SIZE) {
>  		size = i_size & ~PAGE_MASK;
>  		if (size)

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
