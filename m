Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3319858FFD
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 17 Feb 2024 15:13:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rbLRU-0000mh-PU;
	Sat, 17 Feb 2024 14:13:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <keescook@chromium.org>) id 1rb8Va-0005QL-HY
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 17 Feb 2024 00:24:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YuVuB9WNnp6RhLhxcgBuf0qoep6pw4i+nNUSVjYdbec=; b=IA8TKZMRNVnoUAt/GdgztJe6jc
 W//I8n+ipm32TR94bPSTYsKDWAG9Dc31siTYy74347qKBnU2sejudVbgLrxqYpnHu3ZTYWQ63CzVc
 WSaS1q0aO8l8upSGAXY0ZBZ4YYcdFPeWgjWI24usTwlQzRlkgg950XY7MvEKntzb3tCg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YuVuB9WNnp6RhLhxcgBuf0qoep6pw4i+nNUSVjYdbec=; b=S
 9OurcdviMKSlBWBXn3r/tv7WZFfAnKLCZR/z3kCf08fT6gdW1ObiPCsXTRuUd2me6pq4ZDjsHylXy
 CWRs7iH9KjL0kOifuJ/f0Ol10mONS0EdsUFi59TD3iGAEZSGgao+q7N0k//7CX55spOsTM5Yz7IlS
 nQZGmCeil9PO6l6k=;
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rb8VY-0004BT-E5 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 17 Feb 2024 00:24:46 +0000
Received: by mail-oi1-f179.google.com with SMTP id
 5614622812f47-3c0496f494cso2423575b6e.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 16 Feb 2024 16:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1708129475; x=1708734275;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=YuVuB9WNnp6RhLhxcgBuf0qoep6pw4i+nNUSVjYdbec=;
 b=oKRmU66Ox4UExVt/xHpqeYiKRNvT/wH4hKreQ6XdZyAITvyj/PVE76Ea1sukcU055L
 BVX3p3CrybEyBg0lUbW7EYwE8pRlA5DVdQHSUve63wwR7wjn8j6KMoeVGTP2sty25cnB
 9MOcg3UU+Nb4a2kp+oxl+y0buglAYT4o0QbMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708129475; x=1708734275;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YuVuB9WNnp6RhLhxcgBuf0qoep6pw4i+nNUSVjYdbec=;
 b=Y5SPgPff60ED8sZxJ1o219lSpBKxmhO4nbaB/PCan8t4BR/7tjj55d6edrUYyzAccE
 EXUBMH9gUe94CZ5lHfIbV9ACXRLAesWsVkG7V3BiuSScUHoullaCyikop66iKlVnRQjL
 akyqaLykNnuJgGoMSNXYTHDYDJWlR+kaZNOJ/WFbW0kPjpTbjR1P43j6+y2EQWFpZ1wu
 dEwuF1SzWcdxKJEjY5IHTiPbYFRbNxHnJvV32SRVDwflMePBvmeYikUJNqbJJTyBoa1S
 bCxm+vU3nvKckjBxyWZu3y6naooHUw4Rx/TXJqmhkugEKstde507Wt872ZQ64TIlHZUv
 JGJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU120sYSIyaEEb1JOWCrI8fph3W9MZhBZKZnXpsuL2aRnCl2UXAEs2UMIp3GE++1VsTr7lVrppeEnHavd25h38zysSP+PTHtWWtsvkspXn2lfdZ2BI=
X-Gm-Message-State: AOJu0YyEUsyCKDjMxJi8h3Sz5BSrNSTAqfUS8RInta8sqU9yQ8vRlx2i
 Y6ynzWWgaQpJAr66jMfbZu+ftm/vuJrBxHS4xwVxIx1Sx3SFECDQkFNgT3MOWMNTL0doTqwpsi4
 =
X-Google-Smtp-Source: AGHT+IGkx/wYeGB3apgkwZolHTbHJV8+GpGlOZauTNmV+D51H1hWH34YB29ByFJkKMJCQpKS6k+1ng==
X-Received: by 2002:a05:6358:841c:b0:176:5a5e:4d85 with SMTP id
 b28-20020a056358841c00b001765a5e4d85mr7330542rwk.4.1708126145722; 
 Fri, 16 Feb 2024 15:29:05 -0800 (PST)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 d24-20020aa78158000000b006e053e98e1csm473041pfn.136.2024.02.16.15.29.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Feb 2024 15:29:05 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Fri, 16 Feb 2024 15:29:03 -0800
Message-Id: <20240216232903.work.643-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=951; i=keescook@chromium.org; 
 h=from:subject:message-id;
 bh=XoZLsDGAjROcmQDGkI0Vj+qpzKjS9550xNB4tcENbIM=; 
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBlz++/M3Z7FKya3D8spCK/vdNEKLfnB2KXTxTqC
 SK8XCWyI3SJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZc/vvwAKCRCJcvTf3G3A
 JkVID/0VZ3h7rQqA3mm5DgQ6ZDY16VEAqoU7h4tLtJLNTiCbPXGl44TkjjFg4Y0w8FfTfiDJHRR
 UKLFCkHvfM/szUWwDwmTIZb9K6g+4RO2lYvrKn+Sn8+pmOh6x/9WXFyrivXGfil3GMfsXz0nZzi
 QrUx36umTDyUBYU6Wy/UA+TEFYjpexSssGUq1qysuoTXK0KGiSGIwlSh33uHy7kjQ9JfQCjBJa1
 9NOnFz1yvqHyqbyabOaW4ZFMeewmyTetaHnqcnoLdjVKpClzrgLnraxdBpALu+LKkhqTgCIp2UW
 CHlYTZnb/6OBF9vvvVahO5bS9L5SkxSY4bW7PN7RVcajpwvkd0SGbJDETzzyXqNfNNrpCT8LXCM
 3N8kPwfG/mDrcH4Kt6pbAEI5ZJ0OfEhzDxhQ8T8ci0MVRR3dGNHqPDbHot+MhCrN2gNv4IhRMZG
 peqEQ+SZgzkO0gyuECwzZg1RF8SKWX6C/O9FuTMcR1ABEEpjpuryLfgZ/bAvqJM5v1OMZ/YG7SL
 Bunodbfu6AGfumyUSn2/jENcXF+maPiY3k5r3bMQSeKPprtQSdpNeMMK+IUg/60jFbWG70QLlIo
 /8KYW4bkTNM62i/VgBRq8iAvlIpsHUaJDxClhZeLKnbZkQpox8xv4W/fX6wZxHg8JT48dY7oOEv
 iGoVWH8w hEHSQTg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ntfs_name::name is used as a destination in memcpy(), so it
 cannot be a 0-sized array any more. Convert it to a flexible array and
 annotated
 with __counted_by, which matches the allocations. Signed-off-by: Kees Cook
 <keescook@chromium.org> --- Cc: Anton Altaparmakov <anton@tuxera.com> Cc:
 Namjae Jeon <linkinjeon@kernel.org> Cc: "Gustavo A. R. Silva"
 <gustavoars@kernel.org> Cc: linux-ntfs- [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rb8VY-0004BT-E5
X-Mailman-Approved-At: Sat, 17 Feb 2024 14:13:23 +0000
Subject: [Linux-ntfs-dev] [PATCH] ntfs: Replace struct ntfs_name 0-sized
 array with flexible array
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
Cc: Kees Cook <keescook@chromium.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

ntfs_name::name is used as a destination in memcpy(), so it cannot be a
0-sized array any more. Convert it to a flexible array and annotated
with __counted_by, which matches the allocations.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: Namjae Jeon <linkinjeon@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: linux-hardening@vger.kernel.org
---
 fs/ntfs/dir.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/dir.h b/fs/ntfs/dir.h
index 0e326753df40..cafcd339094c 100644
--- a/fs/ntfs/dir.h
+++ b/fs/ntfs/dir.h
@@ -22,7 +22,7 @@ typedef struct {
 	MFT_REF mref;
 	FILE_NAME_TYPE_FLAGS type;
 	u8 len;
-	ntfschar name[0];
+	ntfschar name[] __counted_by(len);
 } __attribute__ ((__packed__)) ntfs_name;
 
 /* The little endian Unicode string $I30 as a global constant. */
-- 
2.34.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
