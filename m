Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E251B9488
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 27 Apr 2020 00:30:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jSpms-0005JU-KD; Sun, 26 Apr 2020 22:30:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <guoqing.jiang@cloud.ionos.com>) id 1jSpcd-0003CA-B9
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 26 Apr 2020 22:19:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Iy5dbJ5ulEBQZnVYe4LdimJwxmRBu3H1I8kAoywkhO4=; b=TEK31cMhzJsvq0Zd1Nu05xrFs8
 rTp94PiXa1+E9r2+hds89fub5Ig683zISVf4yUKWh8EfrrlWwvwVoOcZ8o3n7ELSYpX8fe3fIJhWO
 IVm4aSvL7k0CdZA4j9jIy//8Hme3XvfgpxwFZT75h6WW6cfFEUU3KDFSfz8numf9fb1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Iy5dbJ5ulEBQZnVYe4LdimJwxmRBu3H1I8kAoywkhO4=; b=VyP86coYYteAWf4vBFwC1O83Yx
 mIa5W664xU4VHO87X1xbYt1NzdvzihlPlnTe6JtCspr5ocEQ0h3J0PcuNfXw5PQ48c5Tj70LUbPjE
 o6bL0LvoEyNlPSPBLI96/zv++bUNzFDcJ1TIc6jmxY7ifOAaBBWjTub8RqiEp6lblxuM=;
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jSpcZ-00Fl0I-LW
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 26 Apr 2020 22:19:35 +0000
Received: by mail-lj1-f193.google.com with SMTP id f11so10978444ljp.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 26 Apr 2020 15:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloud.ionos.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Iy5dbJ5ulEBQZnVYe4LdimJwxmRBu3H1I8kAoywkhO4=;
 b=CNngllvg67ixykLg7cIJmP9idgw85CRV9miXlKw51shYgZp8X7u0kscny53amrBTHc
 911VnBxmwMuOV4SMj0chVxA/OMGNGdYUJIvzcQY/1rcco/Mso860J2eU88rH1GapiEOf
 Lk5647aRv60gkMz62Di52oIsDnE1MnHVDvMWsDKr7xXXLrfk0hSblYlNC7L9OB5nBYTz
 0eY+qIPp8bjWHmcEmAzKTNtLyLaF3FQTM05XLfoOp5jpG4gvO9k5PW0q0qwnt/BOvI6w
 juUApwcHoJ/i5G0Pds+09eEE7A53kzuE0TnqRhvo9v7tEzJM9ViaeYaCS4t/KJ5QCYC6
 kcmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Iy5dbJ5ulEBQZnVYe4LdimJwxmRBu3H1I8kAoywkhO4=;
 b=lIlDJQ4AsyS6H8NNvqn0m2OBjJetgg/Od5NEZtscURm4NMttuc5PC8JTOItZ4/zIth
 2wG+xEJR589PoFRpPOB9gbcLAKYCBYaG47zHVRrYsPq5wFa5ULwepNzZpV9DiBYUshv4
 UfxGyVM1fu7pzjZmDvz4qpnGDDRRxnNqO/TW4DbCYA8vMb71ZujaEigEB5akMhhqFviL
 uLTa2sktdo5zLZWUTBJWeyLybaJ04qxY54ReftJtJTEf/+9SkqN663xB3GGIHcZnQBy3
 9IYAVpco4jw7A4zXVPeQLRjndHL4mkVEIw7VjVkMHAyolOZke/Uthk6HiZqGI2xMvHLK
 TKNw==
X-Gm-Message-State: AGi0PuY7SocTOp8O9HBnGRqUqCLvVamwP9K1LLBddbJEBF0QCoH/1t5q
 a/Q4MFS8HsmI8k8THoLO6y1Plzria0/ZHSJd
X-Google-Smtp-Source: APiQypJatlHYD59JEc271Gli6C08LancT/2sGpWnY7Tf056t/k2L5Citpx+qKcX3OmqZHaINj2ZELA==
X-Received: by 2002:a17:906:6856:: with SMTP id
 a22mr17551863ejs.115.1587937793540; 
 Sun, 26 Apr 2020 14:49:53 -0700 (PDT)
Received: from ls00508.pb.local ([2001:1438:4010:2540:fab1:56ff:feab:56b1])
 by smtp.gmail.com with ESMTPSA id ce18sm2270108ejb.61.2020.04.26.14.49.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 14:49:52 -0700 (PDT)
From: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
To: linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Sun, 26 Apr 2020 23:49:23 +0200
Message-Id: <20200426214925.10970-8-guoqing.jiang@cloud.ionos.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426214925.10970-1-guoqing.jiang@cloud.ionos.com>
References: <20200426214925.10970-1-guoqing.jiang@cloud.ionos.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jSpcZ-00Fl0I-LW
X-Mailman-Approved-At: Sun, 26 Apr 2020 22:30:09 +0000
Subject: [Linux-NTFS-Dev] [RFC PATCH 7/9] ntfs: replace attach_page_buffers
 with set_fs_page_private
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
Cc: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>,
 linux-ntfs-dev@lists.sourceforge.net, david@fromorbit.com, willy@infradead.org,
 hch@infradead.org, Anton Altaparmakov <anton@tuxera.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Call the new function since attach_page_buffers will be removed.

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
---
 fs/ntfs/aops.c | 2 +-
 fs/ntfs/mft.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index 554b744f41bf..d8c60e5793c0 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -1732,7 +1732,7 @@ void mark_ntfs_record_dirty(struct page *page, const unsigned int ofs) {
 				bh = bh->b_this_page;
 			} while (bh);
 			tail->b_this_page = head;
-			attach_page_buffers(page, head);
+			set_fs_page_private(page, head);
 		} else
 			buffers_to_free = bh;
 	}
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 3aac5c917afe..e61cb280aee0 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -504,7 +504,7 @@ int ntfs_sync_mft_mirror(ntfs_volume *vol, const unsigned long mft_no,
 			bh = bh->b_this_page;
 		} while (bh);
 		tail->b_this_page = head;
-		attach_page_buffers(page, head);
+		set_fs_page_private(page, head);
 	}
 	bh = head = page_buffers(page);
 	BUG_ON(!bh);
-- 
2.17.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
