Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9AD42C394
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 16:39:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mafPt-0006sA-8K; Wed, 13 Oct 2021 14:39:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dave.kleikamp@oracle.com>)
 id 1maf1Y-0001kh-D1; Wed, 13 Oct 2021 14:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PH7q9sawEABNgdVYbDwjq/7q/2jR9ANS90FeZ6DyQ0U=; b=k4MYdJgXNqV87/RnXWqYTfDt5v
 PQTWoOK45wg2q9Px25jRSfe2e01Zs6gSDswKzilWvtpr85HiuNCPdTviQlMrWFguKQnJNJ/P4pXFj
 96myAoQpeDRvkH9krwSHbBl6Ienf6OBC5fS2iR85SC/wlexK5CxkQV2GoYUQYnbRQE44=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PH7q9sawEABNgdVYbDwjq/7q/2jR9ANS90FeZ6DyQ0U=; b=LDP9NDMApT6t/tiAVs7YC/nzao
 7s2aGkpuDi1joFL9BzzDyK1LoLnqBMzjDD3vgn/LO72kSqcZJTuuhkQ+RsvqrzQ68E2+n/1ngUkSH
 bU0OwF6Anl43wJxpGGVju2DWS1gK+gz9bqM37ujGIOUW8PDoZbjoy/7wKm6TdgRwhWZ8=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maf1S-0002ka-Br; Wed, 13 Oct 2021 14:14:28 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19DE4vsc030833; 
 Wed, 13 Oct 2021 14:14:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=PH7q9sawEABNgdVYbDwjq/7q/2jR9ANS90FeZ6DyQ0U=;
 b=YacAys6/08Sm/C1atr5EYZvm+FyjC9GNkvsCF1CTmhyzLCE2zs1o72HGKBAuqS15J2Ok
 He/dkCz1K6coLyLaahtWykGTN/UFwZruUoROox/zCGVb5WjkBiSQtKD5XDZPi8rQNXTR
 DUSxwLglXd5jhso61yEgiCljsTrcz1sqC+XV8vIWf9Sz2Q7FLWwyAi2bNWYLKiX63Eco
 kDC81TS4zj74+v2bYfQD196AIqUvdpUp5Nk+5Z525Zxz3DDyTt2N9Ft6FKkQ+WLJS5Ci
 hWUJ8iTuVpBcCPDXJlfCwKDDJQBWozfBmPhNDxpZ38Xo5EcpP+6hdLgvxYrD8T7DNT7L sQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3bnkbucb63-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Oct 2021 14:14:05 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 19DEBAjf123132;
 Wed, 13 Oct 2021 14:14:04 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
 by userp3030.oracle.com with ESMTP id 3bkyvaum8q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Oct 2021 14:14:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihF8+suDWD6zS6ytg1fKGYVS+WVb9sJDA6aEttbu1t4vSBJyGl9QKsqLFQjCktJas5a6wYrYzS7Yzfl17YTb4nBRMpXluQNjdnPQvydIMhFY7ERaGFFbR3dgabxW6qwUqCVvzRwlP3+8EwCxcSNtUXCxgOpLyzQEspPSKZIwqw9s6bvmCMXlEA2Ou8659PBUMZmBAcm66OsJap/mb77ynqdbeCs8ljZgctcLCe1Dsncu7+OQmv/GGfKpGE3+d8CiFMKXUeQBTJaGjLJS5dkpO1YRxUrz93ASkSHAuAc4hr05ceY3JeWyZhZ3WzAlTgsnieQWxJOeCG7kg+TA6cUaLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PH7q9sawEABNgdVYbDwjq/7q/2jR9ANS90FeZ6DyQ0U=;
 b=ZxOjeyQbAyatlLtg+9GDNZzTkdVPvnMDjEhR7IyUWXs5QBvW/vTMuPd+h9PQ4BmnlX6um8UFb754d3UBktU16OGEMQ8L1mUZ55Jp1ZyLU4VoMGFt84HOWJnx09DDO0JA7a4TjMRam5NPD+c+vYJVFRTuXzyoW/7ABYiFWYMq6LopEZ5lagUNm0VRxlNx3cyCLOU/ji9f7Id8AJKVqQLVJaDF4WyJV52rk7ZuE1OZixjSWGqCI9BeaBPivEUgAF7isP0uMOjxt6a0MMYP0Nf5hheNWAQ5w8atje5LyslniGcptmTmoqH5j3+NB0w28ntyxzeRKKKsAFQY0OiSrmOaRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PH7q9sawEABNgdVYbDwjq/7q/2jR9ANS90FeZ6DyQ0U=;
 b=aNNc1wp5Q2xDCjFLXwB8TPyMHJD4jMCCjBknIjg9zdW11OkjYreEXy2cV2Gjq639R4K9Jp82uI9Xc5HKfXRWK7wWIfIM0fdtnnhfjE/5fSfFjDllJ4588EQCtYbE8Y7D3h3hFek9rwWtVI/gFg+cPXTeKkYwkbnlNTcUEe1Gtoo=
Authentication-Results: lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=none action=none header.from=oracle.com;
Received: from SA2PR10MB4665.namprd10.prod.outlook.com (2603:10b6:806:fb::17)
 by SA2PR10MB4425.namprd10.prod.outlook.com (2603:10b6:806:11b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.20; Wed, 13 Oct
 2021 14:14:00 +0000
Received: from SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::c12a:cfad:520a:2c94]) by SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::c12a:cfad:520a:2c94%3]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 14:14:00 +0000
Message-ID: <b9fdcc41-2ec5-d628-968b-0aea1091cf9a@oracle.com>
Date: Wed, 13 Oct 2021 09:13:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-17-hch@lst.de>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <20211013051042.1065752-17-hch@lst.de>
X-ClientProxiedBy: SA9PR13CA0100.namprd13.prod.outlook.com
 (2603:10b6:806:24::15) To SA2PR10MB4665.namprd10.prod.outlook.com
 (2603:10b6:806:fb::17)
MIME-Version: 1.0
Received: from [192.168.0.162] (68.201.65.98) by
 SA9PR13CA0100.namprd13.prod.outlook.com (2603:10b6:806:24::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.4 via Frontend Transport; Wed, 13 Oct 2021 14:13:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c789bfcb-a9be-437a-6e35-08d98e53b3f6
X-MS-TrafficTypeDiagnostic: SA2PR10MB4425:
X-Microsoft-Antispam-PRVS: <SA2PR10MB44258ADAB49BE6B7C1C2B81587B79@SA2PR10MB4425.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:56;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GSFKs9mAIZOjozFTzNqn2LYSdfRXcOtW6xP06hxFZ+OLz44tu5eGd56IOMqImxAE35p8Neg8AA3VpdTtOmqgRRoEWBUjzOI1GzCIJpSVbhJN94Delybrca5Tj9Vkj/a1vpJCfQZTx9ONx+SSi0wU6LnH45D/t/SBC19QMfd2U6hNSBNxBrYn3GKBCIJSmEttyhVIWKT0zkkCd7ibjUPSH5HFUtP8mtvu5nG9zNU9/IpqEWvE8NiA6Yg7xr9lb1ccXnRpDNvq/9h/ltDFENPKj/3YMGfzksIx8Tp5tFEDUKx75SOBSD34oGDpatIWciCPxVPKqh5uxXt2BKmLk9iD5xabHITJqippc32HYmA6FKphCbDHot4zBYUegeFQYZ7+1s/sMF52HX5SbVdU8GnVmthjzqSCOmt3IQHDIwXcrciowT6b1j/zPsX2YMBHOhj7yr0bWHqBgoWdwB2he/b5Ro1cXAtDyo5B29K+lp0QwDqFcJ8bDB6VEAVObV1OouD9Q4KTk1yK15E5E0c2/532svQxNP0sOMPQoWEHy0yDDnnW/qCKZ3O5wR4I3hgKqE3m1TOs8pOOeIPng8gz3X9I5/H/zEjaXHJcmKapvAd26DYy5MrpSvXb1KBwDrPGLGrhTI6orLgWJWuGTz1pxqVjr771mcCYLwOWe5ZaK++Tiw14Inv/G8vDhEhEMzYKy+up/iApY8iCFuqejrgEkSLkzrJKH9Eo47OeP+l97eQBy+s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR10MB4665.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(8936002)(956004)(38100700002)(5660300002)(2616005)(2906002)(66946007)(508600001)(66556008)(66476007)(31696002)(110136005)(31686004)(26005)(36756003)(54906003)(6486002)(86362001)(16576012)(7406005)(8676002)(316002)(7416002)(44832011)(83380400001)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVEzdEVTUXJEV2hEVDZYNjQ0YXBVSEJiQ1pYZDNGVnR0cnk4NmtaODAzOXgw?=
 =?utf-8?B?Vmx0Y0ZKV2xJbHllOHFYdzZSM2Q0akc4ZmZxa25mc09URWtrKzRyeEROSEpa?=
 =?utf-8?B?TFNZTnU1VEhyTlNNUEUreDhQZ1g1UHl3N1UrMlBvTitkNEhPMlRZbFRJek9i?=
 =?utf-8?B?SHFMT3o3T0RrSWM3MUVLSWRleEF2RGpsWlhEbUVldi90RTlONzVRdlJYK2hr?=
 =?utf-8?B?L3hiYjlLUzQ3OHNwVnZLTjNLdXUxR3I1Q1ZQRlJHeWJUMUdybytEWGRuU3Zx?=
 =?utf-8?B?bWxOdFFIN3M2K1QrYkFzdk5PbGRadDQxRE5JTy81RTVpaEY2OE4wVjFIMjJM?=
 =?utf-8?B?dG1Jb0xNOGRMcFIrNUVMaW4zREMwOTRPWU56YjNGY2NvM3FrS2JzbTZwYk4w?=
 =?utf-8?B?ZlFCSTZ4Z043TG8yNGE3WGhqanhmZ3Rqb2hYbk9rUk1Dd2hWMmhic2owbVdk?=
 =?utf-8?B?UCtFUENxbWdYS3hPY01rOXhHamZ5b0Q3Nm93NkRDUDZyOXF6VFJhVkxFNHZX?=
 =?utf-8?B?c1hZM2VSbm9DNmY4NUlRc1hiWGFrUkF3OXVWNmhmRy9ZNGpoQkM2THhOeXNS?=
 =?utf-8?B?M3phcmUwQ1A0cWNnUzBzcXhNd1RFaFl1aWo1THZVTDdEK3ZhTDR3b1dOSDlD?=
 =?utf-8?B?cnJpTDZseHJIbDlXdVE3QllnQzdBdzF3N1REcWZTL0ZrcktKUnZsVzBuSmxv?=
 =?utf-8?B?V1g1emdwZXd0WUZGWXdZS25HTjdoamMxYUFMWWNBQmtTRGQrSmU1UCtnTWNB?=
 =?utf-8?B?TUNGWk9STjVBVk1yemRsS2YwMzMwOVlqOVMzSmNzSVhhcmlsa1pLQ1RjcDA2?=
 =?utf-8?B?OTNRb3JybVpWOVl3NThnSC8xQnNjRXc4cFptWDVGUDFDc0pTcHZNYlVjOGxU?=
 =?utf-8?B?ck11YWk4YU1uaEtuYzhhWU9uTWlGNHNJK2NCbUdRNHRkekwxek9RQ2pzTXZk?=
 =?utf-8?B?ZVZVbzh1eXJPQUhBNno5Y3daaTRtdVYvTFNaUklTU1ZtOEFNMXM5Ty80UkFM?=
 =?utf-8?B?b3ZVZmhLbk5vSlV1Uy84Y1lZdGlnL2hDRGhpRFJmbitrRzduWjJUZXhsVWx2?=
 =?utf-8?B?WXVZYnN6UUFvSk9DemtjM0w2Vk9WdUZUVDlxRktjNkQ3cnVTekFoMExZRFJR?=
 =?utf-8?B?VmhwbkYrUXZqNGI0MDE1Mm9COGtmZ1FHNnJxU0lLbkZ4MzljNklDK0FUaEk3?=
 =?utf-8?B?TWpTdWE5dHRtOWNNNy9yMjZ6cVVDbnpSb0JlY3M4Y1RkWW42NlRWR0E1SjFa?=
 =?utf-8?B?RVZ4cFRVWTl6cWZpb0tYVjJ4eE5nbjB6cFVVYlpacy9saVFQbWx3YzlqRzc2?=
 =?utf-8?B?OE5lQ292eGw0dVJYd0lnVFU0dXdiUDJLc1ptd05ESmZMT2trYWxFM1BEREdE?=
 =?utf-8?B?Y2htQTZTeUs1cG9LZVBIdEVkSDdFZE1BNTVkSW1IV01lQU5GRGNBenlwU2Zk?=
 =?utf-8?B?ZWdVTHVyeitybVU2QlhFVC83SVZLMEZmampOclNtSlYwYmlGYkNuY2dXMWZZ?=
 =?utf-8?B?YTZtRVlJK2JIOVVzK2VVRkd2Qll4U0NjNW1LTnYzNlc2UEVKb0R4dmlSRE4w?=
 =?utf-8?B?OW50dGpQRkFSblJ4eHlhdGNnOW9uUUx4UnZwb2VKdGRHelJ5T2NUbU5XWXU1?=
 =?utf-8?B?enU3WVR5dEl3SnpNSE0yZUxHQ200MmMzdCtaQU9Da1A1SHpad09zWHV5a2Vm?=
 =?utf-8?B?L2lDdlpiZEl5dFo0QkgzUEs1OUxib0pvME1HZDNtVDFkbTBOb1BqTHhxZW1K?=
 =?utf-8?Q?VI18e6RseJEkIpxqv3v/kKFWYkcbHH6XLkDS6+k?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c789bfcb-a9be-437a-6e35-08d98e53b3f6
X-MS-Exchange-CrossTenant-AuthSource: SA2PR10MB4665.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 14:14:00.4497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oemYySOM6+n6GAH7CbntjzwlNKDkc12H/mzkMjBkvra40/0815D1QHXR/U9EynaUM+/M9IZZ45v4wMQn/VgiOjVw6FnCGu0r2AZR6uDQweo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4425
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10135
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110130097
X-Proofpoint-ORIG-GUID: Cxu06FmlAK2C1-boAQ76mTgZwMKZZ5Ud
X-Proofpoint-GUID: Cxu06FmlAK2C1-boAQ76mTgZwMKZZ5Ud
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/13/21 12:10AM,
 Christoph Hellwig wrote: > Use the proper
 helper to read the block device size. > > Signed-off-by: Christoph Hellwig
 <hch@lst.de> Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com> 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.220.177.32 listed in bl.mailspike.net]
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
X-Headers-End: 1maf1S-0002ka-Br
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:39:35 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 16/29] jfs: use bdev_nr_sectors instead
 of open coding it
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
Cc: jfs-discussion@lists.sourceforge.net, Mike Snitzer <snitzer@redhat.com>,
 linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-raid@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 10/13/21 12:10AM, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com>

> ---
>   fs/jfs/resize.c | 2 +-
>   fs/jfs/super.c  | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/jfs/resize.c b/fs/jfs/resize.c
> index bde787c354fcc..51a8b22e71030 100644
> --- a/fs/jfs/resize.c
> +++ b/fs/jfs/resize.c
> @@ -199,7 +199,7 @@ int jfs_extendfs(struct super_block *sb, s64 newLVSize, int newLogSize)
>   	txQuiesce(sb);
>   
>   	/* Reset size of direct inode */
> -	sbi->direct_inode->i_size =  i_size_read(sb->s_bdev->bd_inode);
> +	sbi->direct_inode->i_size = bdev_nr_sectors(sb->s_bdev) << SECTOR_SHIFT;
>   
>   	if (sbi->mntflag & JFS_INLINELOG) {
>   		/*
> diff --git a/fs/jfs/super.c b/fs/jfs/super.c
> index 9030aeaf0f886..992870160903d 100644
> --- a/fs/jfs/super.c
> +++ b/fs/jfs/super.c
> @@ -551,7 +551,7 @@ static int jfs_fill_super(struct super_block *sb, void *data, int silent)
>   		ret = -ENOMEM;
>   		goto out_unload;
>   	}
> -	inode->i_size = i_size_read(sb->s_bdev->bd_inode);
> +	inode->i_size = bdev_nr_sectors(sb->s_bdev) << SECTOR_SHIFT;
>   	inode->i_mapping->a_ops = &jfs_metapage_aops;
>   	inode_fake_hash(inode);
>   	mapping_set_gfp_mask(inode->i_mapping, GFP_NOFS);
> 


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
