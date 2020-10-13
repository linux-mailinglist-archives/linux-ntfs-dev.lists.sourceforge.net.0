Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D56B928D575
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 13 Oct 2020 22:39:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kSR4v-0006Qu-U8; Tue, 13 Oct 2020 20:39:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viro@ftp.linux.org.uk>)
 id 1kSQyg-000882-B7; Tue, 13 Oct 2020 20:32:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fNsS7CJvIevbWP+ivowFNPz2xOaF1vMKMPmQVYTCd0Q=; b=hEiHr3JVyT2cVNLQ3u2HHf9Wy
 a7uDdsvuYomCxFZZB5miMQvmkijw7l0++6wMlBtFIAXuPXSueHYNGn4A6UXcleKY93Gwc8xo5vgig
 cAcAtf119491iVShhLNA7WKcvHhE8OuQ64D/d3kUmYNZJAuEngKezyy620/arNqHK+0w4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fNsS7CJvIevbWP+ivowFNPz2xOaF1vMKMPmQVYTCd0Q=; b=UNNMMGU4PNn5/JSznvH70te+0k
 2kgu6klGFnL+wCi1dL73ZObJhLrviClSAmRWSuMzii/+CxpP2Ii5qEHWeu3bvg9l2IH5WOqXLMKZ+
 vymhOP+E7wz5ywjEKtbo6/1TT0IN/9CNH5jz+0c4G6ClQHrLFm1pV9IVsfoRLMkEfOjY=;
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSQyb-00DxKf-El; Tue, 13 Oct 2020 20:32:58 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kSQUX-00H96b-NT; Tue, 13 Oct 2020 20:01:49 +0000
Date: Tue, 13 Oct 2020 21:01:49 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20201013200149.GI3576660@ZenIV.linux.org.uk>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
 <20201009195033.3208459-34-ira.weiny@intel.com>
 <CAPcyv4gL3jfw4d+SJGPqAD3Dp4F_K=X3domuN4ndAA1FQDGcPg@mail.gmail.com>
 <20201013193643.GK20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201013193643.GK20115@casper.infradead.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kSQyb-00DxKf-El
X-Mailman-Approved-At: Tue, 13 Oct 2020 20:39:24 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH RFC PKS/PMEM 33/58] fs/cramfs: Utilize
 new kmap_thread()
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
Cc: linux-aio@kvack.org, linux-efi <linux-efi@vger.kernel.org>,
 KVM list <kvm@vger.kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-mmc@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-kselftest@vger.kernel.org,
 samba-technical@lists.samba.org, "Weiny, Ira" <ira.weiny@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, X86 ML <x86@kernel.org>,
 ceph-devel@vger.kernel.org, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 io-uring@vger.kernel.org, cluster-devel@redhat.com,
 Ingo Molnar <mingo@redhat.com>, intel-wired-lan@lists.osuosl.org,
 xen-devel <xen-devel@lists.xenproject.org>,
 linux-ext4 <linux-ext4@vger.kernel.org>, Fenghua Yu <fenghua.yu@intel.com>,
 linux-afs@lists.infradead.org, linux-um@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, linux-cachefs@redhat.com,
 linux-nfs@vger.kernel.org, Nicolas Pitre <nico@fluxnic.net>,
 linux-ntfs-dev@lists.sourceforge.net, Netdev <netdev@vger.kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, bpf@vger.kernel.org,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Oct 13, 2020 at 08:36:43PM +0100, Matthew Wilcox wrote:

> static inline void copy_to_highpage(struct page *to, void *vfrom, unsigned int size)
> {
> 	char *vto = kmap_atomic(to);
> 
> 	memcpy(vto, vfrom, size);
> 	kunmap_atomic(vto);
> }
> 
> in linux/highmem.h ?

You mean, like
static void memcpy_from_page(char *to, struct page *page, size_t offset, size_t len)
{
        char *from = kmap_atomic(page);
        memcpy(to, from + offset, len);
        kunmap_atomic(from);
}

static void memcpy_to_page(struct page *page, size_t offset, const char *from, size_t len)
{
        char *to = kmap_atomic(page);
        memcpy(to + offset, from, len);
        kunmap_atomic(to);
}

static void memzero_page(struct page *page, size_t offset, size_t len)
{
        char *addr = kmap_atomic(page);
        memset(addr + offset, 0, len);
        kunmap_atomic(addr);
}

in lib/iov_iter.c?  FWIW, I don't like that "highpage" in the name and
highmem.h as location - these make perfect sense regardless of highmem;
they are normal memory operations with page + offset used instead of
a pointer...


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
