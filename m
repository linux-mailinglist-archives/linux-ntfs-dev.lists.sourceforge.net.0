Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6452742BD28
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabdf-0001FV-Cl; Wed, 13 Oct 2021 10:37:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <anand.jain@oracle.com>)
 id 1maYOO-0000D2-Pr; Wed, 13 Oct 2021 07:09:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4vPw9esYsMhmGTAnbV2TWoXhae2EVnyJ3dvHTRJV4T4=; b=Py6sw7rn60nURQYRTSoEgc0k3z
 hEMHkxS/faEVJM7VD8WVY2RKk9WoDiAOfqY1/J/Dmf9G2cGYUQVr3+tymfcWayXekMwxVgFG7Pe9o
 GU4XZyWfI/WR4oQeNOhLgG472LODZpEc2kcwy8TaUql4J6R84eV+kfH3eGVRhjsN/57k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4vPw9esYsMhmGTAnbV2TWoXhae2EVnyJ3dvHTRJV4T4=; b=SdC2ylWK/EBwRRcEs4ZMv/Homh
 FxdedJR+hGcE920xeLLnPKRrj+F2MqnLV/r3s+1OmRLWSykKLvh7eMgwMUpojBA2Ajd8VNGRRtnPW
 7vJWJBpKpY6x9rsSX43uaRKfRanPZiZG9aQE5HHGEs5sr3XOtIDVO1o+XmQniTE4fopk=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maYOH-0006lv-2A; Wed, 13 Oct 2021 07:09:36 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19D6vs4j004215; 
 Wed, 13 Oct 2021 07:09:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=4vPw9esYsMhmGTAnbV2TWoXhae2EVnyJ3dvHTRJV4T4=;
 b=FLTau0vjP0PBTD6CJAHg93E9eAPYfUL4uFbAR2ILfaHvxLr7wJ+k1gNNR7/Ys+tGump2
 T4uAV5ngGYZ2viQgZ06YP12iQ9Hp2349AZxvBAq4dgE/fltGhQDq6A51Jvf+j+EStEU4
 zGKKDeiOJaoPB+/rQDStYpcAM2fcku1WwwpsuxKambV2VFojtxZcvLtiE0ZpBw6v/CBs
 6PU2GwfGZ/31Nd10/bWcIveCZWTfsE3o6NRHgcGfem1LwWLFrn3uhr1yPEBX5EKWECZH
 D6YkK5TH6q4FjhUbRw1WGINqAV6S5J9WZEpLvRrj4OT0tZ6nXxqWzPI0DiPRDe/tlihl ug== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3bnkbu9w2s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Oct 2021 07:09:07 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 19D70pqH004137;
 Wed, 13 Oct 2021 07:09:06 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2106.outbound.protection.outlook.com [104.47.58.106])
 by aserp3020.oracle.com with ESMTP id 3bmae0a78c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Oct 2021 07:09:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KsPZd93iAE1cwyKE4FwwtfvG7puZ5VCiZ4wmkOKZI/bPk9xZOo4iLzRftVjh7aDSe4rM3COdX1yU4I6ffp+wcEVxyb4I36QAsnwCBxYKpbKf2tUsgm0p4OoonZF8bXXZxbA5M1QGpu2AZn38NQJx9DeVIokE651cDZFojMqwafEZ1MCioOX/niLTio7TdQq/yaUeq7GT1Qgjb76seZ5C2Ljy6sNMCVTcoHUXjUj8gjlwbYBqBNJSh/0kmeuUurvrfri86osLVkxgdcRwZep95PHuAkSpcltjmzKBi9qepGiQuGOYZER6C+W6CckVxtuoLk/WVb+ajIQ/gtWOeAWLpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vPw9esYsMhmGTAnbV2TWoXhae2EVnyJ3dvHTRJV4T4=;
 b=SPgivL+Fi3TiJS7p6EuaD7b9BDE4DGjy36jQNcIUMq5YJO72BvIUBo3iV6o79zdfVR4z9nMSKSkvXw7wB/QQ9mUAG14OjRF2sjVTOgRwSkeAr2ur9S3sDAuIJ1N+i4cz3/yECVtRj7FnY4Djm1ETTEUBcdyJL1b1ZWco6ZH1Os0CLFtrixsllCaY/y0JuE0NzLVZiUAPs38TdRX0THExtIVlVppkmFGsFohdlLNRqJxEKHul+1ulokR3iXx03UTLVPJASYR+BHQFduAh4pkOatZPkdYwmDKu2fb54g8xEE76Z3spP2kLIf+tzh3dmL/Gg10t64rdBcu/M/3vrY37wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4vPw9esYsMhmGTAnbV2TWoXhae2EVnyJ3dvHTRJV4T4=;
 b=lMz37S6BAZY0rBWKSibK/2RyTBHIR+FAP970lzK6zr+GzVtcaRxekXKuulUzRMWH93XyoE2Up/V4yQYNkQJq8tm7jRrNESoVxR3w8L9v1kaT8k8TzglCGEJpgpecPHieKdQDeEly5IkuNlwmUSjhVs1ARTAnV4ESZkyr/0YCgWs=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=oracle.com; 
Received: from MN2PR10MB4128.namprd10.prod.outlook.com (2603:10b6:208:1d2::24)
 by MN2PR10MB3789.namprd10.prod.outlook.com (2603:10b6:208:181::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25; Wed, 13 Oct
 2021 07:09:03 +0000
Received: from MN2PR10MB4128.namprd10.prod.outlook.com
 ([fe80::49a5:5188:b83d:b6c9]) by MN2PR10MB4128.namprd10.prod.outlook.com
 ([fe80::49a5:5188:b83d:b6c9%8]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 07:09:03 +0000
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-12-hch@lst.de>
From: Anand Jain <anand.jain@oracle.com>
Message-ID: <91d3eb0f-95a6-a528-9445-da5b32b69cba@oracle.com>
Date: Wed, 13 Oct 2021 15:08:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211013051042.1065752-12-hch@lst.de>
Content-Language: en-US
X-ClientProxiedBy: SG2PR06CA0251.apcprd06.prod.outlook.com
 (2603:1096:4:ac::35) To MN2PR10MB4128.namprd10.prod.outlook.com
 (2603:10b6:208:1d2::24)
MIME-Version: 1.0
Received: from [192.168.10.100] (39.109.140.76) by
 SG2PR06CA0251.apcprd06.prod.outlook.com (2603:1096:4:ac::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.15 via Frontend Transport; Wed, 13 Oct 2021 07:08:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 45d86e71-5291-4107-4b44-08d98e185671
X-MS-TrafficTypeDiagnostic: MN2PR10MB3789:
X-Microsoft-Antispam-PRVS: <MN2PR10MB37895D95B63A476486572068E5B79@MN2PR10MB3789.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:883;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0Trb+NRjs/D0qyKzzv/uIXYgF3w7kigFeXnDi+Js74czxJhJYLHXYGWYQ3jnVp7bXqXfIgoP2Vohy0trgB7n2dQcNJ6/Gp+DurAvFehcRzQktmw+HHE9ave/dnKDUr16sR1Nb0N0/HRka0aPRua6wZrHHD9M2HfjHhsqM77eMs0hqoag4VAr3TfkDckTkCosd2pTg+8phQY9gcUp5ACiElfrGI32FX74k/w+fsxHY7f5Yb+tht2POTRts20BmHkhitkT7Ky0xWkVnxbqa1hSvSAk2tLxr7fP8KeSSZP90iDm87eUlVFWiLkTKdhyHJakNTqt3kwQcUgdUKwbfwBAn48CLf57acz+Lbed3Ikcm9Zt3WEWKCybUv7MfLd8KdGY+R4ZcXn1lzRfvmRYdag/t1oi4hcU21N1AHp8dn1iHT2D7D4Xzgbk8WdFY/7Jc6n5G59f1eZk9YtY2NKp8pPYcUy/0kKi8Fcd7LMd/xySrqQW+ukKB9FWe4vOR+qdMucpZc60QshczZ8LxuolresC5pgbIyq8GHERdiiy0pZaEt3FnC3lf1eLlvqYu5u+IhrH/0GHJ6zT7jLxBqQW3mR0Yh/ZR0Q2leg1UwArVApXQH8vIpmgz99G0pwhPb8NKCI1Xcd2VhzsYkkXekmSUtcnU3p0I/DXW4MaWmIBjOX5fueDhRp2sZ+smciETjQGnCQLCiqCze5qjieSDPtvMZDg6oECPLhH2aZjcPeLlENgtaU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR10MB4128.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(53546011)(26005)(8676002)(7406005)(31686004)(186003)(508600001)(7416002)(6486002)(66946007)(66556008)(558084003)(44832011)(38100700002)(83380400001)(66476007)(31696002)(8936002)(2906002)(54906003)(36756003)(110136005)(956004)(2616005)(6666004)(86362001)(4326008)(16576012)(316002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SS9nVGh1TGRMT3NPQTduWDNVeGg4WmNTeTVZekhRdFdRU1pzZ2RpTE1jWFpD?=
 =?utf-8?B?WXZleGx2OHJseldraEpzWEVVWlRkWEZMY0J3N3JFcDJWWHozZzVQRVpValM0?=
 =?utf-8?B?TmhGTWEvOEZlTHFwMExCVzBVb2swQnY1aGo5TFd2WkpCSzhCUjV6b0U3d3Vh?=
 =?utf-8?B?dFFSM3VvdVRHc3ZpSjVpVFZuRnJTRWg2aE5zMEx2dFU1K0JucEtBQjFzM3Vr?=
 =?utf-8?B?RjVKdUYwYUFZT1N2bEdrVFNxNHJQMEZPSXJVR1EzQ05uWUlPSWtPNFk1dmI3?=
 =?utf-8?B?QmovbVExdmc0VTRhSzlwUVNaUm0xM3k0WkoyS28vNGloUXA4SDM1MWJESEJ3?=
 =?utf-8?B?Tnl6M0lrbnhLRG03SjRDWmdackJOZ010dkU1a29pUjNVR0grSlMxeEJSQmh6?=
 =?utf-8?B?T2ZmcytML1JHQjhWSkR5QTJZNVQxdzAxejZUQnJkcVpXWkpNU2h4VDZTNkUz?=
 =?utf-8?B?NWNPSEVvemVhMWttaStjQms2VFFOalFEV0x5dXY2R05OSGtobm9PMVVzZmM5?=
 =?utf-8?B?cHRqa21ZN1RzOXJwemtaRFpLZkh6dHZyTmZDVDgrMXJNSDZIZllkY1NQd0Uw?=
 =?utf-8?B?MXlkQ3FGUjg5YmZLMERTckcvVFBETE5mNmc0OFZkMWt6SWE2cG5KM0Y5RVk4?=
 =?utf-8?B?MVZLSzNPbGtDZ2xNR3lhZ0tOUUphbWZGaEwzOFdEeDZPVmc0alF6SGFzZUV0?=
 =?utf-8?B?Rm8xNGZMUXdpTU9WVno4L2pzb3BHUWovaTNvMnhRMmdsUFhhTnY4b05mMVpZ?=
 =?utf-8?B?YlNmSGEvZXlsYWM5YkYzQnQ2QXlPbGwvZ3pTcnEvWHVEWWZGeDFacEdGbitB?=
 =?utf-8?B?NTlTOVo4cXFYa25SS0pVbFZpdU83Ny9ldGYrWUMwRms3eEZra3pYTW9ZSGM2?=
 =?utf-8?B?bGhLUWZxM3RKdExIckRtcXh3dnZqSm5jTmVuRmlhUXY1S3FGVTVWbEpyYk9i?=
 =?utf-8?B?WXArN3YvcUZvVXFzWDJaeHBSZnRHbzlLQnlneGtXb3ZPTURoSTVGU3N0SHcy?=
 =?utf-8?B?UFlOb2FvWlkwQ1VTZzA5RjFua05USWNxdnk0cHNzU1JzODcvSS8wdndBSGpQ?=
 =?utf-8?B?a0l5aFlSeG8vMkd0RzhDYmJ2Vk0xTnFXcnZkNmtyTDZSMzVNdThqNW1Ha1dC?=
 =?utf-8?B?cHRPcHlLQ0V3Snk4Qk5tYnMxWEhMclI3YzZMRktqWDUvcTZSVG1tOWszM2Yy?=
 =?utf-8?B?Um5raVREY0Z5dnpFaW13UEVNMXhCVjZzeS83N0kyV3BzMU1Xc2x1MzIvL3dl?=
 =?utf-8?B?dXpXQmRUK1dFMGhFVVBzWVlHeFdTaUpMWjJ4M0hxV1BMVHZ1b0lLUFVKYlYx?=
 =?utf-8?B?REZPVmtWYnh6dkdvRUNXWEx0a05uQk54QWFHMy8xcmlVekRORUdnRFdHdkpI?=
 =?utf-8?B?SjZmVC92Z2NxMko0d04ybDM4VnFTOGh0Z0ROc1dXSlArOFJ3YjFEeVV1eTh5?=
 =?utf-8?B?Y3kxRVFGaDQ5cEJsc2xDeHA0NmNhOW1QRitLOE1HeHdOSFJ0eVhBVnVrSW96?=
 =?utf-8?B?ci9IOXBiWXRHeGVaR3JNb2swVVlEbkdodjFjZVdzTkl3c294QUtzL3BIaWhK?=
 =?utf-8?B?eHkzQjB0Nmp5NFdKck52bUNDWUtUWGE0YVNQNW1BLzJNV01HR29DaEd1UnU0?=
 =?utf-8?B?SnlTYkpNa2N2QndMbTNHeFpUK1dKZUc0ZDQxWUt5K0FvRXl4aXIvSzduWmc1?=
 =?utf-8?B?SDhnZVFvaTRzeUhXbFE2aGN3ejYvRkczK3lWbUcyUUVLZVZma09UZ2hxMFdS?=
 =?utf-8?Q?NP0SYwk4eCDxVsDv6c+e4glOqQEqJKurdkoP5G7?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45d86e71-5291-4107-4b44-08d98e185671
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4128.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 07:09:03.1495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GKgAprYL+E++mfjsCH0mz8gQNRJLzjWcYVa86B+8Rg55UpmCyDF8UUJHzNyZ92Ra+o2LwRbSN5mJnOCh0xNxbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB3789
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10135
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110130047
X-Proofpoint-ORIG-GUID: NlBrr-oEiOEEhnucGVA6sN4W_UqnzqbP
X-Proofpoint-GUID: NlBrr-oEiOEEhnucGVA6sN4W_UqnzqbP
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13/10/2021 13:10,
 Christoph Hellwig wrote: > Use the proper
 helper to read the block device size. > > Signed-off-by: Christoph Hellwig
 <hch@lst.de> Looks good. Reviewed-by: Anand Jain <anand.jain@oracle.com> 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.220.177.32 listed in bl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1maYOH-0006lv-2A
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:20 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 11/29] btrfs: use bdev_nr_sectors
 instead of open coding it
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 13/10/2021 13:10, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good.

Reviewed-by: Anand Jain <anand.jain@oracle.com>



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
