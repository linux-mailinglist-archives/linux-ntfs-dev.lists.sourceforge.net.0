Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7965A7D29
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 14:22:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTMjp-0008GP-9G;
	Wed, 31 Aug 2022 12:22:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@oracle.com>) id 1oTMjn-0008GD-6N
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 12:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Transfer-Encoding:
 Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iwln4fGZGqarpKqZxyWTCI6p5cGhgKQLmxm4Lch8hzo=; b=NdBZxBimh5NAPlkwUrkfNaKVdl
 1+0/hmweQky1UusnpbvobFKX+pkeXjujh60Smh1ye8OBOXpIZqhT7kbXwucfvcuAM4J7qWgFzNZH2
 i7sEBcIEpJdY30af2AY/vkWn+XlthbpzOoypfQx0AALFU8veqmtmiqFrF6laYR5gr24g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Transfer-Encoding:Content-Type:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iwln4fGZGqarpKqZxyWTCI6p5cGhgKQLmxm4Lch8hzo=; b=eQcMVam/wipUu7s6ExQROpe1lv
 KodDYC/qp/1lDMHpp91Ucp/dWW4HGKV0+XVm0kuRdF2/gnpk6vMrz5rpMSukO9Vp4bMhtZ5tDk83Y
 ryiI3VqMvrMUDtjrZ804Cvq+GfbdfQ8utRU8n2YjhCvxcFhy0jSdPUDJRkJ2F9kPOEYM=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oTMjf-008leS-0l for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 12:22:31 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27V8nInX005548;
 Wed, 31 Aug 2022 12:21:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2022-7-12;
 bh=iwln4fGZGqarpKqZxyWTCI6p5cGhgKQLmxm4Lch8hzo=;
 b=1mOD6ja+cDvyF9tEqkNyqweyfZ8BQuWMe+H8t7ygzq5elJv0xUMUvMRWBp/pYIQ9onQe
 DgUod1d9VFLO1/f1CAoa1RgNnAWHmleZguljL+2tNAZML1VPT5byCNyl3hTgLrms90xu
 +AOP18rRGaUBHgtnKPFcgNDCXU/JPTrHj3tunuJRSosov0gl6m5IEnmXA8pcZHPZZAKN
 EGgLmsmKEdEwd1S/tzUjaPD3uSF2MpoHT2EK84EtOCEdt8HSQW8RTCL4Z3Yd2NN3alYr
 7/rRGegppbDjVt/e9qMLKPKZr0nZJS3Gp1i5+ZMTqlgZ9yK7myAFB3n/jdGQLvq19jlI IA== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3j7a229011-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 31 Aug 2022 12:21:01 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 27VBDpjX024448; Wed, 31 Aug 2022 12:21:01 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam04lp2174.outbound.protection.outlook.com [104.47.73.174])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3ja6gq9jc1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 31 Aug 2022 12:21:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fcl8DnS78fI/29vblO48viyn0+Kqd27e+DZ5dh1VZbWRt6uGlJrxxx2u8NjN36ZVRg+gCjigaIfJldceaIi1XlSTS3XRbzU8PYSBifilZtCYHZWcdjXY6LKAtNv2SgVKv4nx7s05mX5wdDpkv2IAzfW7nZJsGgPjZsRmsOs9u8mMj42w8Eqlw4QkdBhdXYWPaqaTdI9yss+B3bHEadIrra15zhZOldhXSAXzzO/TB017A4jB4qCg8/v+SvFQuwqCwWYIix9d8epitLh2+ELC30HkXodnobdy8kUY63qd4Y66chUkhDn/4L8wlcikz3RVcybcrxeClCaoGywI517XRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZv6itle3axti3wd1oXjSDblQ7HVv07o6+ZgJ7daezk=;
 b=UfAZdbG7l1DorxaGNvGYLv/3V6r1zfdqk3rMaIq7vN8jNXpm1GYuLbgL9mh8NMgWID872oSjr5cVZ4THH+Zh00+ez3XuUI+3ngDTYtuCnVe7Axx4amnr5r5TEEfLHqNx/q4ii8vd2B6GeKuaIkUkW7x8k7xq2dinrBSljQMSu9Eym3UaVedxZrnDKGZpi8dpqUnKBtqxBWnGv66wjgJpJBLf9PLNaQc5l8SgjoBNdtT5bjq3rIlCdrDbTHN0X91CZuhQuN0ImJgh8c4OqvSrtUmeJOV6CB+4nC76SevZ8+z6RcrKeY/NjVdmznK90EYeKHeIY/VSHmBTxAr9fSyOSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZv6itle3axti3wd1oXjSDblQ7HVv07o6+ZgJ7daezk=;
 b=gFApE0Rh00Z9GffawLVGD4FlmQtcd+a73g1EejouiGnerpITFMAham6iMyFtpfT7V1AcC2LqAlUarpYylP29BFybFoxB2CeMik3YwUyka58BG7hA2DfIty5WD7MtEKJgMV/kY4ur5362ctdB5e5bLW9ytrrf/ouSb2G8uwda5Ss=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by SN4PR10MB5606.namprd10.prod.outlook.com
 (2603:10b6:806:209::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Wed, 31 Aug
 2022 12:20:58 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::209e:de4d:68ea:c026]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::209e:de4d:68ea:c026%3]) with mapi id 15.20.5566.021; Wed, 31 Aug 2022
 12:20:58 +0000
Date: Wed, 31 Aug 2022 15:20:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hawkins Jiawei <yin31149@gmail.com>
Message-ID: <20220831122046.GA2030@kadam>
References: <20220831110727.GK2071@kadam>
 <20220831120324.4477-1-yin31149@gmail.com>
Content-Disposition: inline
In-Reply-To: <20220831120324.4477-1-yin31149@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: MR1P264CA0192.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:57::8) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8cd6a227-2f59-451d-8431-08da8b4b426d
X-MS-TrafficTypeDiagnostic: SN4PR10MB5606:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +qBoTU+gHcWWcUyA/1Gr3vWTz6HbxXeLjv/KUV3tpLftHhoATM63y7WdoxiOtCV3dmvXMOV8GgdpCxH31Bo670fBJhqSquMbzGSBQdwkts3rpTK8fbp+VR0c9O3xD0PkH3nuNVuY7xSPtFh7FARJnI7q/8vUmlu4NXvOOmSDWKBzg7byzLAdS6XeWXA3UX5BTmfopwlRCALtT/hW9Trys3nzxgCcjr8UuY4RXLdiwVSlKO8mxnHGwfYMvVgnV6t6DgUen95KLaGRry4aiOMPsh1yngKAY5u4pTmCooj2jrABQBpTkKzmfklpDhlGpZZ4cR2aeRawQhddLWrKMaIVAFSOJlDSmfRfJcHO9sGCtPObfZueJHBOpTYUt4+QBGGWIZibKlwDqkc2HpCAXFVL15wGP0t4dqh0nYTa5j5ThkZtLWXU1IKSceG4qxM7bEtW4WWa5aOci6ZYrjLXps7acdmGrC1G54CwKRuLsMOd5xdgpRiBxO+T1Ho+ykCvGuwztpifcbsYvsPrP6izvDQ2CEOYGIOYKe43SP/gMeZLyIO+1YnI73KCyRZCl8sEtuALGrwURZFWObLnNBSv7gvHhS7nd8K+3bfPy74nP9vrRX0mcg4txQGAm5bpr5Io/h2zHBWo/YoB9Icc9Vs/Q5ykBwT/sWPpJ7Npk/EvI8TQkSB8j6R/9bXW6RbLF8I0WSom/gBVVCxXAgWxw1Fmzn2RxEzgIv2pozgZix9Y/I3UWDbtS1Ipp0O+Bn/STEZ/thWsfBWfGT5lzzpR+IYyRQ4GJ+prqnAShbMaI8cP7wrqE1i5lIrW60ToEt1NARdUfeLbn0NdXiQkW096NPE49+WZkg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(346002)(136003)(376002)(366004)(396003)(39860400002)(66556008)(9686003)(66946007)(2906002)(6916009)(8936002)(6512007)(86362001)(26005)(6666004)(66476007)(33716001)(52116002)(1076003)(83380400001)(186003)(6486002)(38350700002)(8676002)(4326008)(41300700001)(6506007)(33656002)(316002)(966005)(5660300002)(38100700002)(478600001)(44832011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?6q2/UC0iIm+8VH7u+1rHJu2HHHsoJyPqFlKoNZNl6KV9OT5V6wgUO5tzVt?=
 =?iso-8859-1?Q?DsRtvM724TKCBPp9FPHrWNlfpLTmrRtJCU8x0e4zTh1kvlgRUj379sPWF9?=
 =?iso-8859-1?Q?g2AZkwhJ8T6xc0Skhyxyqc5UpSd75pRVan7WeXLkJMjngOQCgFEvjyr4xc?=
 =?iso-8859-1?Q?8YwdNHgg9lZPans5Vp1Dsd2166tyRgFZwmP1HJ3cCuLBXTB+2giQ14xFuj?=
 =?iso-8859-1?Q?qG4dgZgZIxeOe6qPCaa7X41SaRi1L2Vc/UjydQxM4wIVcrbxzQgxOkNETD?=
 =?iso-8859-1?Q?NiTDiEnLRqE0+S2UGjC17Ki33YbuGPPnRsjKr+bfwsgzzsAhY+xKsPz+0Q?=
 =?iso-8859-1?Q?bdooBMX86aXjm627yYe5CVQc+rUU/ktieyz8UkdLx3u3WqyR6QImK+ZLxL?=
 =?iso-8859-1?Q?vsYH8mNvHLfQ8CmiZu5J4LdGjIJp32knPuVOxsyeyMx+CzLQbNl0dR5PIo?=
 =?iso-8859-1?Q?O3gtQPHYvYmlV/8Peoa1acvRq7WXmsdlNTTZ+I8WfHRw5T2YgzIgiSzDnp?=
 =?iso-8859-1?Q?ZgJfSt5n+OEP2U258C9VoOkI0rekjSr1IovjSCVM7weJMIOp468e4213kt?=
 =?iso-8859-1?Q?lBqcVv4TqSRbzyKUd4Tb+8FEAZowWmldh7SdO7ECcaxn8/oO2yKlgu2jhh?=
 =?iso-8859-1?Q?1wlgxgu7ZDRshrew7FKw7vJxqM/SbybZwPBxPKjzmXRhuKhvvSQbLhNTOO?=
 =?iso-8859-1?Q?oAc1tCGOBw/mBktzcP4lPSFdo/mPDku4a2F4QU8SY10GOq88Xub1wXDjcT?=
 =?iso-8859-1?Q?mWIzPuy4lxXEiKZly9Pz55nRVj5Yi7t1zdr/TLg5Xw7KndH4bwj76N4UpD?=
 =?iso-8859-1?Q?Qb/IGFyljJqNk8LdKKgCzGeAy+XC/H1BpBsuTbxwEX7XGrh5faaqH15+dO?=
 =?iso-8859-1?Q?KIQLjnrQeQ6FiDKJ+FJXoCpi7HqpwNQwXn8m0nhwq2PFgxVpC+EHvsCmj7?=
 =?iso-8859-1?Q?KTdeNBPthv9OAzWRExQU/gpaBtFAWICC9/UjxEl6vNU8l48IbKo+8gY1gZ?=
 =?iso-8859-1?Q?ev6S3Mfgdnre20tY3lamTV73hU9gZm6iVVze8zYXkJpy9sN1EPSR0PsA8n?=
 =?iso-8859-1?Q?xFquzoM9tVl5MIStWHlGXGcWNy8m9HLRfa4THj5v0PCU/QOg/zSeqJhhgt?=
 =?iso-8859-1?Q?5IXsGC7w3E0RY5YyOdfqzpadhJ8mNhzDVX6znwykKAmNH4HzcuA+e+fyK1?=
 =?iso-8859-1?Q?SxEjQ1mZeMcB7rrZTWEL17UM3DEkEYK4Qq997aTtdlyJaEc20U16cVckoM?=
 =?iso-8859-1?Q?qzIFTD8cm4WcmqTxpg6pLdDm0gZHOF1owxYHmFc+dQ/ab1yJ/xlnGJw/5t?=
 =?iso-8859-1?Q?ENQlXvlFhv7Z/DV47RnMTWpR0RIUNXVV1RQU0cT8s8W/KNbbDIRiMFngXK?=
 =?iso-8859-1?Q?kCC9XvOuvxQ2+3D5o/lH+KVZLYCBj7NgrMWh73jXfoMqK6aAcPYezs+y75?=
 =?iso-8859-1?Q?uo2zKxJgIodsVs+ctmLj8TX+Odj1SjrKQrq3h8wiYtNzoZKBrNUxKYoBqR?=
 =?iso-8859-1?Q?tRtzZkUg6GF0YG1hUia3Sq5UPXYptyGc3b4YJuVTwLxfEsxuvJ0OzHFiWv?=
 =?iso-8859-1?Q?SrAeBwBfIv24tjXFL2V+H0NoWZNYZG067xASPrf3ECZ86TsGpuqOHONxV0?=
 =?iso-8859-1?Q?jmIzfWvX/mf0qwedgWsWeEIW4Lv6ZqEEpYzm7AuS3fgjabnS+anC0xvg?=
 =?iso-8859-1?Q?=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cd6a227-2f59-451d-8431-08da8b4b426d
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2022 12:20:58.2909 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Anxfd13tTTz36cb40ElCysIBFrxD6pVF31v/xtxjJgCWIXNhn73i8tA2pfvy+qU3QCtzylWVnNYWp20u9TXe22I1r7CaCXCwzWmsCs6v0sE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR10MB5606
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-31_07,2022-08-31_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxscore=0 spamscore=0 phishscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208310062
X-Proofpoint-GUID: -g8g-I-bg2tgI_-pXueZIQw1j2cjyVkK
X-Proofpoint-ORIG-GUID: -g8g-I-bg2tgI_-pXueZIQw1j2cjyVkK
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 31, 2022 at 08:03:25PM +0800,
 Hawkins Jiawei wrote:
 > On Wed, 31 Aug 2022 at 19:08, Dan Carpenter <dan.carpenter@oracle.com>
 wrote: > > > > On Wed, Aug 31, 2022 at 10:43:36AM +0800, Hawkin [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1oTMjf-008leS-0l
Subject: Re: [Linux-NTFS-Dev] [PATCH 2/3] ntfs: fix out-of-bounds read in
 ntfs_attr_find()
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
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, 18801353760@163.com,
 akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Aug 31, 2022 at 08:03:25PM +0800, Hawkins Jiawei wrote:
> On Wed, 31 Aug 2022 at 19:08, Dan Carpenter <dan.carpenter@oracle.com> wr=
ote:
> >
> > On Wed, Aug 31, 2022 at 10:43:36AM +0800, Hawkins Jiawei wrote:
> > > Kernel will iterates over ATTR_RECORDs in mft record in ntfs_attr_fin=
d().
> > > To ensure access on these ATTR_RECORDs are within bounds, kernel will
> > > do some checking during iteration.
> > >
> > > The problem is that during checking whether ATTR_RECORD's name is wit=
hin
> > > bounds, kernel will dereferences the ATTR_RECORD name_offset field,
> > > before checking this ATTR_RECORD strcture is within bounds. This prob=
lem
> > > may result out-of-bounds read in ntfs_attr_find(), reported by
> > > Syzkaller:
> > >
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > BUG: KASAN: use-after-free in ntfs_attr_find+0xc02/0xce0 fs/ntfs/attr=
ib.c:597
> > > Read of size 2 at addr ffff88807e352009 by task syz-executor153/3607
> > >
> > > [...]
> > > Call Trace:
> > > =A0<TASK>
> > > =A0__dump_stack lib/dump_stack.c:88 [inline]
> > > =A0dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
> > > =A0print_address_description mm/kasan/report.c:317 [inline]
> > > =A0print_report.cold+0x2ba/0x719 mm/kasan/report.c:433
> > > =A0kasan_report+0xb1/0x1e0 mm/kasan/report.c:495
> > > =A0ntfs_attr_find+0xc02/0xce0 fs/ntfs/attrib.c:597
> > > =A0ntfs_attr_lookup+0x1056/0x2070 fs/ntfs/attrib.c:1193
> > > =A0ntfs_read_inode_mount+0x89a/0x2580 fs/ntfs/inode.c:1845
> > > =A0ntfs_fill_super+0x1799/0x9320 fs/ntfs/super.c:2854
> > > =A0mount_bdev+0x34d/0x410 fs/super.c:1400
> > > =A0legacy_get_tree+0x105/0x220 fs/fs_context.c:610
> > > =A0vfs_get_tree+0x89/0x2f0 fs/super.c:1530
> > > =A0do_new_mount fs/namespace.c:3040 [inline]
> > > =A0path_mount+0x1326/0x1e20 fs/namespace.c:3370
> > > =A0do_mount fs/namespace.c:3383 [inline]
> > > =A0__do_sys_mount fs/namespace.c:3591 [inline]
> > > =A0__se_sys_mount fs/namespace.c:3568 [inline]
> > > =A0__x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
> > > =A0do_syscall_x64 arch/x86/entry/common.c:50 [inline]
> > > =A0do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
> > > =A0entry_SYSCALL_64_after_hwframe+0x63/0xcd
> > > =A0[...]
> > > =A0</TASK>
> > >
> > > The buggy address belongs to the physical page:
> > > page:ffffea0001f8d400 refcount:1 mapcount:0 mapping:0000000000000000 =
index:0x0 pfn:0x7e350
> > > head:ffffea0001f8d400 order:3 compound_mapcount:0 compound_pincount:0
> > > flags: 0xfff00000010200(slab|head|node=3D0|zone=3D1|lastcpupid=3D0x7f=
f)
> > > raw: 00fff00000010200 0000000000000000 dead000000000122 ffff888011842=
140
> > > raw: 0000000000000000 0000000000040004 00000001ffffffff 0000000000000=
000
> > > page dumped because: kasan: bad access detected
> > > Memory state around the buggy address:
> > > =A0ffff88807e351f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> > > =A0ffff88807e351f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> > > >ffff88807e352000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> > > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^
> > > =A0ffff88807e352080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> > > =A0ffff88807e352100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >
> > > This patch solves it by moving the ATTR_RECORD strcture's bounds
> > > checking earlier, then checking whether ATTR_RECORD's name
> > > is within bounds. What's more, this patch also add some comments
> > > to improve its maintainability.
> > >
> > > Reported-and-tested-by: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspot=
mail.com
> > > Signed-off-by: chenxiaosong (A) <chenxiaosong2@huawei.com>
> > > Link: https://lore.kernel.org/all/1636796c-c85e-7f47-e96f-e074fee3c7d=
3@huawei.com/  =

> > > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Link: https://groups.google.com/g/syzkaller-bugs/c/t_XdeKPGTR4/m/LECA=
uIGcBgAJ  =

> > > Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
> > > ---
> > > =A0fs/ntfs/attrib.c | 20 ++++++++++++++++----
> > > =A01 file changed, 16 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
> > > index 52615e6090e1..904734e34507 100644
> > > --- a/fs/ntfs/attrib.c
> > > +++ b/fs/ntfs/attrib.c
> > > @@ -594,11 +594,23 @@ static int ntfs_attr_find(const ATTR_TYPE type,=
 const ntfschar *name,
> > > =A0 =A0 =A0 for (;; a =3D (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->leng=
th))) {
> > > =A0 =A0 =A0 =A0 =A0 =A0 =A0 u8 *mrec_end =3D (u8 *)ctx->mrec +
> > > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0le32_to_cp=
u(ctx->mrec->bytes_allocated);
> > > - =A0 =A0 =A0 =A0 =A0 =A0 u8 *name_end =3D (u8 *)a + le16_to_cpu(a->n=
ame_offset) +
> > > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0a->name_leng=
th * sizeof(ntfschar);
> > > - =A0 =A0 =A0 =A0 =A0 =A0 if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mre=
c_end ||
> > > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 name_end > mrec_end)
> > > + =A0 =A0 =A0 =A0 =A0 =A0 u8 *name_end, *arec_head_end;
> > > +
> > > + =A0 =A0 =A0 =A0 =A0 =A0 /* check for wrap around */
> > > + =A0 =A0 =A0 =A0 =A0 =A0 if ((u8 *)a < (u8 *)ctx->mrec)
> > > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> > > +
> > > + =A0 =A0 =A0 =A0 =A0 =A0 /* check whether Attribute Record Header is=
 within bounds */
> > > + =A0 =A0 =A0 =A0 =A0 =A0 arec_head_end =3D (u8 *)a + sizeof(ATTR_REC=
ORD);
> > > + =A0 =A0 =A0 =A0 =A0 =A0 if (arec_head_end < (u8 *)a || arec_head_en=
d > mrec_end)
> >
> > This works but I feel like it would be more natural to just check if
> > a was valid and if a + =A0sizeof(ATTR_RECORD) was also valid.
> >
> > =A0 =A0 =A0 =A0 if (a > mrec_end || (u8 *)a + sizeof(ATTR_RECORD) > mre=
c_end)
> Hi Dan,
> Thanks for your suggestion.
> This looks more natural than original patch, yet I wonder if there may
> be an overflow?
> =

> To be more specific, if "a" and "mrec_end" is large enough, it seems that
> some fields of "a" may be out-of-bounds and also bypass this check because
> of the overflow.(Please correct me if I am wrong)

Are we talking buffer overflows or integer overflows?  There is no
buffer overflow until we dereference "a".  The checks are just pointer
math and not dereferences.

For integer overflows if "a" is valid then "a + sizeof(ATTR_RECORD)"
will not have an integer.  I do not know exactly how memory is laid out
in the kernel and it also depends on the arch. But the last page is
always error pointer values so you can always add a page to any valid
pointer without an integer overflow.

regards,
dan carpenter



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
