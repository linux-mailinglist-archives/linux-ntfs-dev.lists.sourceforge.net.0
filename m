Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AAE5A3513
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Aug 2022 08:43:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRpXP-0005Zr-NV;
	Sat, 27 Aug 2022 06:43:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@oracle.com>) id 1oRpXN-0005Zl-7e
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 06:43:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Transfer-Encoding:
 Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mwe5zuuoQh4QAamTOFwvzyr+jhfyQGqclMzkeLc5o8k=; b=aa34N/6t5wBWu+jFJQNmfn3oiL
 aV3qNr8sQqex9il1jQ6tvhpAiunl1QEp0qj2F3+8RB3WiA8uac6a4bQQKvHgDGhh2IdKQW8N9YVQe
 oKi5RwOlyMMbPIUMdqLviJ/RFRlMapFd5rGiNhTWe2rIdn5lZiq9GWIyCUw0iO9lgoO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Transfer-Encoding:Content-Type:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mwe5zuuoQh4QAamTOFwvzyr+jhfyQGqclMzkeLc5o8k=; b=XcAzYFpJxmqHfFslHxwHRCtNW6
 FqIl64VX7hl/rTVEBsdSUKWsC3sszT2OHnmDCaANU6GHv6/4UqxY861DNw3+GvnhjJwBdNFMzk+Nc
 PH8GvxaVsEO4rSG0Ts3heU9sV7aEMNXyp1ROlhfeuB8ymIDyHBFqTamjdvpNKJ9Nc3Yc=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRpX3-0005uH-Qv for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 06:43:08 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27R1v4cU020014;
 Sat, 27 Aug 2022 06:42:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2022-7-12;
 bh=Mwe5zuuoQh4QAamTOFwvzyr+jhfyQGqclMzkeLc5o8k=;
 b=R+wtAJc++hahltcKDyHBFOtU3puGGrsV9flNEkN76wT4P44xqF1ZjIGIzVvfOt4HABk/
 6idnr+umMecPQhntAxerOm1NsLtFq0k9BDiLwtx1cyOs8VEKSJOGadBa8zURqd7fiwUp
 DoA50v8/crTgwViMVqSoh5xoZ+4i1L/4b59YWI/YYOvBD3vslacx7JRKJ+KsRfV/rh1B
 OjjbdNvKXyvjnUEFss4dZkdXO3SLY1F2igU9z63jQp7i6fXkuFQwgW6OW6J1H1yKAgrX
 jSbT0pdqDUMyUOxJs9068hmEHVBp6uZAKsZ3GrZWNwhcCh03/b4PJ7+nwR3DVmGutOcb 0g== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3j7a2206ym-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 27 Aug 2022 06:42:44 +0000
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 27R1X4h9017997; Sat, 27 Aug 2022 06:42:42 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam02lp2043.outbound.protection.outlook.com [104.47.56.43])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3j79q04fnn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 27 Aug 2022 06:42:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qiw+4pNxX9ndos+o/XJq83BZ4QbR1vse3lLE0Jb6BZprz37Wic25/75V/0zfRN10GPujRH4kRj7LFTAs+fu1Ozyrq1wrqZswT0hYIowjEu3/pFLVDqfUj4MQPDekeUYrKSIlHv2667FqQuw8cbpvmp8dwKLFBK0mkAsNnHGEsGksY8feZ7J2drqj/QffmdjTuraBW3ukRATt+WmfKCouIR2LjFM3zpmJkqonvMIELoi8MZFmwaV8IREu8yiiTb3viXVncWuz4jHo/4fPgaCi6HH0VhlmaEnzhogDAZei2YvtTZOGIQAuQ213pl7zyJiVZoqkr8+KFUvjNqVACkjy3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eWseL9MMhM9c79SqstyvYNxCtGoKdrIvGHAiXHkzp4w=;
 b=noHjlOM+P2LPFvtAv8acjS46BwhymRjqy8r8InnUSxdpY8gQSdDTC9U2VXQna1Ex5Aj6rbm4RoYSOcpKSseFuSO7Ce4GoJK9fVzdO3CyNMz5GAYarFRNFeo9Agl6MLAtvUSvDQ1kLmoiCh4Y+uM1fd2BQELV/UQTazxnBMqKAnHTP3wzJwtX4CLTg8B/AeJt+VtZnzzM8ouxUYkLde/xvboR39Lnu1GWFOc/NQypfUBDeCRGMBbp6rHwW/Okmsu6aysPyamuyM/C3lI/hJ1aB5CkHU075LO5zT7ILNxy7pb1FEVe1Z2Mco+mpXkApiyveRQQYEMqM73nfZHe7oGs3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eWseL9MMhM9c79SqstyvYNxCtGoKdrIvGHAiXHkzp4w=;
 b=tCjspqlK+wQzUC5zWGep0owk/wMozjyUgtMjXLmHeEbwkHzqGCVlblwf6iQhlSgoR42ByNxCkR4VzR4Q3NzQTsDLaWXTN8eV/jMr5TVBCmz7V3ofIn2usOHajYC4cq0iuFPmFY4Wqe5olLGxeymgVpEhphqY+iWuRgIwbvXWF9M=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by PH8PR10MB6624.namprd10.prod.outlook.com
 (2603:10b6:510:220::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.16; Sat, 27 Aug
 2022 06:42:40 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::209e:de4d:68ea:c026]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::209e:de4d:68ea:c026%3]) with mapi id 15.20.5566.016; Sat, 27 Aug 2022
 06:42:40 +0000
Date: Sat, 27 Aug 2022 09:42:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hawkins Jiawei <yin31149@gmail.com>
Message-ID: <20220827064217.GK2030@kadam>
References: <20220826151520.GF2071@kadam>
 <20220826154231.6634-1-yin31149@gmail.com>
Content-Disposition: inline
In-Reply-To: <20220826154231.6634-1-yin31149@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0004.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4c::9)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e2fa133-9865-45e9-d5af-08da87f7558c
X-MS-TrafficTypeDiagnostic: PH8PR10MB6624:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wDkyGGPa1OsUzd6/SlfVEMGlkYwI/ppuVpO0Ha4lMwXZE3fHadDubRx2TsFeA9JPugTb9ZkNkmXhtQ5qWhFPYZ9aQU2E+EmoqW48pbZLyCoVc6Ma+/+ujY0fkg3pM7PuiRpky80e12fvAHPsCVdf5Tj6vA87rOIYYydiFpP5gaCr/ZKod1EeWOU1qdy328UUOaeO9mqKfpnaJj2rfRhbFQiSyhWbtW4sAnJ5Y65DfNX25ojzkcGofM6oagJjrBuLlf9y26o0PbKQItppGGhZyEuLW2txLPECAinG86oa42ApADrEzZa7n4Rd94X8y+lh4+QxIpsGA+e14R34rfEQG6BnUmNH8hk6msWNnhTN+Ic3HQLjlp1+Rgd89k3+7LTRvoDmVZZzLKR985fRKWgAtU+zTuHxtIv30ezTDDW9NldUV8ER9LFTUoPSzhfeT0AWXcA2e1dFcVUnBeudCax0iVFpyQnePCUI3sh0DvCIghjykq2pYawW4SD83tLn+M+90sXjh7BLoCKTka7GSRJFmHz3n6dU7L6hKdbt66ClcLruHZgXBdJPsb2akd4XglCO7Z5ty5rcdKtAkqs42T51m+dhdOsU4rZ1OlEdor/EW095ARoQvD/4KtJxMVBWNy3aqVIDjDO9+pGB8KIcXO+SpfFoaq7TqfPfZhTfTviEYKbqrDcVy2ReLgML7hswXKfv9+h/9PCvGqglyGIs1mqIeQL4XRq2E1VuG5jv1wT2an820g5hZd0HuK19K5/dgBoLTp3cxljgmtb2jW0PiRaXjA6fc7/n4XAdnPIDmVIRwS0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(396003)(376002)(39860400002)(136003)(366004)(346002)(83380400001)(478600001)(1076003)(186003)(6486002)(966005)(5660300002)(4326008)(316002)(6916009)(66946007)(66556008)(66476007)(33656002)(8676002)(38100700002)(2906002)(33716001)(44832011)(38350700002)(8936002)(41300700001)(9686003)(26005)(6666004)(6512007)(6506007)(52116002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?fuMWWwSrL6QPFA5xY7UZaA+DrGXkM0ZyDUSnB1iyu9uMMlr5zC6KlftIws?=
 =?iso-8859-1?Q?VzWrU+tv2c4e3kVjjDhJl8KTlgQKPvKem20A8dN2qP4mzMqajNYP6wlPR2?=
 =?iso-8859-1?Q?3fW5ISX1PHR/mloSzWN3D7HEeYAO5H0AunGfuS2DoSs6eAS224GoZztcMs?=
 =?iso-8859-1?Q?TNgKyMzErC2P8zg0MkiM/WZ1uQG0iD6LdEKFtMBxuS65uUnkUcpVH7mAj5?=
 =?iso-8859-1?Q?hMnuV8qLQ7clrvhtjNs1+9r381Wxnh4HXr8NZYDZ04J+Hz0T84daxfChht?=
 =?iso-8859-1?Q?TI7eih8NBiJLJ7zheq/mq+TXG8VlIelQyGunvaLKRfv3HNHXk95lN2svxg?=
 =?iso-8859-1?Q?LD9p06YGHvma8mzupDmPH8uAt7wVc6TLa3MT0JZIhz/piN6hNIo79WzLY8?=
 =?iso-8859-1?Q?gOTC/E4tu3q6Vyd45njyrMs+wdlZ424r/6neG92UftB9urq5nplSpR62in?=
 =?iso-8859-1?Q?C41dmcU9tu5/TPV0m3xWegvc0hkBQ8iXxlFpgfsiQSKNcFof6FbEiqF9dx?=
 =?iso-8859-1?Q?KsGnjZt3p7ccpeUVGYN1Pr/ZviFs4FLOMepZtljC15cb9xPK7b7r9TgUpo?=
 =?iso-8859-1?Q?SAxpXLUC3WplTu29bS8jR5cumnZ6T/5HOMWD3OO2V9dLSU5fJRiuP6xUQi?=
 =?iso-8859-1?Q?ftl35eUGeQTRK7wlqg94VGXDXiqdDXE+Tfziqh9YFvQXKEn7m+Uv0d57uY?=
 =?iso-8859-1?Q?AVvFiS22Qn52tJRYj7p7l9KiS2Vgb2CvNb+11V8XumgHicYVLsu7ydELSi?=
 =?iso-8859-1?Q?HTYOaBTAT2d307lj+gBS+rI+Cd5uB/GFmRdItqXxVP94YQJzBHSaFcwi/f?=
 =?iso-8859-1?Q?WPCpge3pOwIOTkNkz36e32b81V40X0zBL2D3UeNUcEwUuV1ZFfUdF3I0nl?=
 =?iso-8859-1?Q?uyuDQOJxuI34Sa/TTtz88UZapYS3RkiLyIaHkqsfyTzN7RPh6zw03X9As5?=
 =?iso-8859-1?Q?6emKu+fkRniGpmTIw+A/CBU0BofL/5jr6RzS3oVNVpYD1EUePe/fVwiC71?=
 =?iso-8859-1?Q?2G5HHFJhgO2XbjZgHy4VzttTqhzOQ3oYsbdLbVadDOJEu359ezMn8Id6BC?=
 =?iso-8859-1?Q?bwnPEYmeLjE1KZ/aekoo3ZGCi3It1m6FbK5sr8hfM/WwamT0b3tLM6wExo?=
 =?iso-8859-1?Q?jptuJZk6XMkSl9xtcmZLrEpng2rGiY4Nu3Heqo7p5jqKDiOwjoj6ih8zvz?=
 =?iso-8859-1?Q?OtR1a1A2c2vY1XZWEWkIBqu6rXqLdTBmyE39g48/qe+72IBSNRISzBrSVB?=
 =?iso-8859-1?Q?JscwHuhMOP2m0iPwboLSjvFxLCBA7zGUT0QsM7SFDbifMVpuFeZLlhFDNA?=
 =?iso-8859-1?Q?d5LyvCTsdOeSNLrwF5eFUX6mmxQvnMywqQjHa8LAtgSAUv9a0JerAFhleM?=
 =?iso-8859-1?Q?QWQNGvxy4QX1d7uB00uVQZEw/oMzF7F15kiDgi6ZEr9/BUjAEiGMAbHIUE?=
 =?iso-8859-1?Q?yWOLd01LVjWOtGqyfF5WwR6hnzWibkOSwmfRntRSVPsfjdOGn5PoJBpWIc?=
 =?iso-8859-1?Q?s6VRcM1cvrJcUHQZiTDYKrpZc35TOejOQ2ARZt+XGUjYIKadhsvSzs9CBm?=
 =?iso-8859-1?Q?3ay+InsRVj+c6VDrvgWiA0P4r1UhIVSx6aPXwcZ2NrG0BJJGV9UwjcTdzJ?=
 =?iso-8859-1?Q?PaFk3rGiHUQaaV8WloGMyJXtY30aIclXLtb1d50gBEVvHKaszqDlft4Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e2fa133-9865-45e9-d5af-08da87f7558c
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2022 06:42:40.2060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0ssuhQvG6yZycYoeeydOUf9W7cSg6z7cS8gsD4fpW0mJDFweQe84kOmVEyeY0IID0uW4WtdDm0xyToOHsu8roPVNzbJ32R+5XNcOFGHLe/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6624
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_02,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 spamscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208270026
X-Proofpoint-GUID: s1F9azY0YQe0NtdGuYZ5RRAlq3y5Ffyl
X-Proofpoint-ORIG-GUID: s1F9azY0YQe0NtdGuYZ5RRAlq3y5Ffyl
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 26, 2022 at 11:42:32PM +0800,
 Hawkins Jiawei wrote:
 > On Fri, 26 Aug 2022 at 23:15, Dan Carpenter <dan.carpenter@oracle.com>
 wrote: > > > > On Fri, Aug 26, 2022 at 08:32:57PM +0800, Hawkin [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1oRpX3-0005uH-Qv
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: change check order in
 ntfs_attr_find
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Aug 26, 2022 at 11:42:32PM +0800, Hawkins Jiawei wrote:
> On Fri, 26 Aug 2022 at 23:15, Dan Carpenter <dan.carpenter@oracle.com> wr=
ote:
> >
> > On Fri, Aug 26, 2022 at 08:32:57PM +0800, Hawkins Jiawei wrote:
> > > > syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git   master
> > > >
> > > > Looks like it is improper check order that causes this bug.
> > >
> > > Sorry for wrong command.
> > > #syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/li=
nux.git   master
> > >
> > > diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
> > > index 52615e6090e1..6480cd2d371d 100644
> > > --- a/fs/ntfs/attrib.c
> > > +++ b/fs/ntfs/attrib.c
> > > @@ -594,10 +594,11 @@ static int ntfs_attr_find(const ATTR_TYPE type,=
 const ntfschar *name,
> > > =A0 =A0 =A0 for (;; a =3D (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->leng=
th))) {
> > > =A0 =A0 =A0 =A0 =A0 =A0 =A0 u8 *mrec_end =3D (u8 *)ctx->mrec +
> > > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0le32_to_cp=
u(ctx->mrec->bytes_allocated);
> > > + =A0 =A0 =A0 =A0 =A0 =A0 if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mre=
c_end)
> > > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> >
> > This definitely seems like a bug. =A0But your code won't build. =A0Syzb=
ot
> > must have -Werror turned off?
> Hi Dan,
> Did you mean we should put the variable declares at the beginning of the =
function?
> (Correct me if I understand anything wrong)

You can declare it at the beginning of the block.

> =

> >
> > Btw, this was in the original code, but those casts are ugly. =A0Ideally
> > there would be some way to get rid of them. =A0But otherwise at least
> > put a space after the u8. =A0"(u8 *)a < (u8 *)ctx->mrec".
> >
> > > =A0 =A0 =A0 =A0 =A0 =A0 =A0 u8 *name_end =3D (u8 *)a + le16_to_cpu(a-=
>name_offset) +
> > > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0a->name_le=
ngth * sizeof(ntfschar);
> > > - =A0 =A0 =A0 =A0 =A0 =A0 if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mre=
c_end ||
> > > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 name_end > mrec_end)
> > > + =A0 =A0 =A0 =A0 =A0 =A0 if (name_end > mrec_end)
> > > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> >
> > regards,
> > dan carpenter
> So maybe I can try to refactor these codes. But I wonder if this can be
> done in a seperate bug

The kernel has a strict "one thing per patch rule".  Those rules are
for reviewers and easier backporting.  So the trick is to write the
commit message to persuade the reviewer that the way you've written the
patch is the easiest way to review it.  So here is how I would write the
commit message:

[PATCH] ntfs: fix out of bounds read in ntfs_attr_find()

This code deferences "a" to calculate "name_end" and then it checks to
ensure that "a" is within bounds.  Move the bounds checks earlier and
add some comments to make it more clear what they're doing.  Then
calculate "name_end" and check that.

(Btw, are the wrap around checks really sufficient?  It seems like it
could wrap to something still within the ->mrec buffer but before the
current entry so it would end up in a forever loop or something?)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index 52615e6090e1..90d567acb2a3 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -594,11 +594,20 @@ static int ntfs_attr_find(const ATTR_TYPE type, const=
 ntfschar *name,
 	for (;;	a =3D (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
 		u8 *mrec_end =3D (u8 *)ctx->mrec +
 		               le32_to_cpu(ctx->mrec->bytes_allocated);
-		u8 *name_end =3D (u8 *)a + le16_to_cpu(a->name_offset) +
-			       a->name_length * sizeof(ntfschar);
-		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
-		    name_end > mrec_end)
+		u8 *name_end;
+
+		/* check for wrap around */
+		if ((u8 *)a < (u8 *)ctx->mrec)
+			break;
+		/* check for overflow */
+		if ((u8 *)a > mrec_end)
 			break;
+
+		name_end =3D (u8 *)a + le16_to_cpu(a->name_offset) +
+			   a->name_length * sizeof(ntfschar);
+		if (name_end > mrec_end)
+			break;
+
 		ctx->attr =3D a;
 		if (unlikely(le32_to_cpu(a->type) > le32_to_cpu(type) ||
 				a->type =3D=3D AT_END))


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
