Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 994CA739233
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 22 Jun 2023 00:03:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qC5vV-0008Of-4X;
	Wed, 21 Jun 2023 22:03:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1qC3st-0004vF-Ag;
 Wed, 21 Jun 2023 19:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vTL4Y8a8sFEsX3Xqt4OIZCRU2/7UfNvPDdjp0N/3dJE=; b=Qv7N8ohYZEKayzuz+tbSgJx5m1
 /az6xyi2kjYUmcXfdDna+II3ZP/anPDPF4FnKzSylK9Va1+gtEOiwDL9cWkfwyLYw53k0+uPrCldY
 4UUnHDsaPjcLFdIZfvKCOTYh4erzgGmjFzyrv/bHfCffLRRfnQO4ZgDsKi1oZIPXiGGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vTL4Y8a8sFEsX3Xqt4OIZCRU2/7UfNvPDdjp0N/3dJE=; b=Ow7j/dYddZMiUCMz5rY/RONTRE
 eIA+5HqJDUQ6mALg11iuMMsr5IjGpMaT69Qq5EgDi++mtTVVVBQJth8vj2RNU+pIMEIkYLUmA48YV
 kg0rovCLy0D+7Yie7DdVJSgMYB3hqOZzXZikF6ZJwQrwkuYmejSXYv0MWiGcQvDqdEb4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qC3sp-00Au5J-HA; Wed, 21 Jun 2023 19:52:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F2B69616B0;
 Wed, 21 Jun 2023 19:52:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89C99C433C8;
 Wed, 21 Jun 2023 19:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1687377165;
 bh=vTL4Y8a8sFEsX3Xqt4OIZCRU2/7UfNvPDdjp0N/3dJE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=tBqvzi0BueVyLSEbesqZv6Z2lEPP3VHDK/0ro+NhJgrWCN7POU/GnsfWmg+au/I1/
 qhi//1NZGnRyBWC+DfSRBIODYBQomanDaEsbNql7Uti143OqrGRxW4LYitKm3HOUFm
 3AFCsCq6C4olFaFCKGiCtIGy0tLgZnX0NusQlw4HgjVra9Ac5A8Ylg7+9/P0lUpR5a
 +VLBtjm16h891O76lVM1Ta8bhTOaRz+hamckCGdfcbzLfSMEYWZEagHpIq+7Dm+VlU
 f0RFgH+s7zmUzeMyOo6a8vBaboDD6pPbvwZcf5WIVyOhAezSg+L8WY3I+kat7Le9is
 Pb20wj8vyk/yg==
Message-ID: <2a5a069572b46b59dd16fe8d54e549a9b5bbb6eb.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Wed, 21 Jun 2023 15:52:27 -0400
In-Reply-To: <20230621152141.5961cf5f@gandalf.local.home>
References: <20230621144507.55591-1-jlayton@kernel.org>
 <20230621152141.5961cf5f@gandalf.local.home>
User-Agent: Evolution 3.48.3 (3.48.3-1.fc38) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2023-06-21 at 15:21 -0400, Steven Rostedt wrote: >
 On Wed, 21 Jun 2023 10:45:05 -0400 > Jeff Layton <jlayton@kernel.org> wrote:
 > > > Most of this conversion was done via coccinelle, with a fe [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qC3sp-00Au5J-HA
X-Mailman-Approved-At: Wed, 21 Jun 2023 22:03:44 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 00/79] fs: new accessors for
 inode->i_ctime
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, "Rafael
 J. Wysocki" <rafael@kernel.org>, "Darrick J. Wong" <djwong@kernel.org>,
 Anders Larsen <al@alarsen.net>, Carlos Llamas <cmllamas@google.com>,
 Andrii Nakryiko <andrii@kernel.org>, Hugh Dickins <hughd@google.com>,
 John Johansen <john.johansen@canonical.com>,
 Seth Forshee <sforshee@digitalocean.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 Mike Marshall <hubcap@omnibond.com>, Paulo Alcantara <pc@manguebit.com>,
 linux-xfs@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
 Michael Ellerman <mpe@ellerman.id.au>, John Keeping <john@keeping.me.uk>,
 Zhang Yi <yi.zhang@huawei.com>, James Morris <jmorris@namei.org>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, Tyler Hicks <code@tyhicks.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Jan Harkes <jaharkes@cs.cmu.edu>,
 linux-um@lists.infradead.org, Nicholas Piggin <npiggin@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, Christian Brauner <brauner@kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Smalley <stephen.smalley.work@gmail.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Chuck Lever <chuck.lever@oracle.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jiri Olsa <jolsa@kernel.org>,
 Jan Kara <jack@suse.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-trace-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Dave Kleikamp <shaggy@kernel.org>,
 Sandeep Dhavale <dhavale@google.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Mimi Zohar <zohar@linux.ibm.com>, linux-mm@kvack.org,
 Joel Fernandes <joel@joelfernandes.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, Hangyu Hua <hbh25y@gmail.com>,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 Paul Moore <paul@paul-moore.com>, Leon Romanovsky <leon@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Arve =?ISO-8859-1?Q?Hj=F8nnev=E5g?= <arve@android.com>,
 Minghao Chi <chi.minghao@zte.com.cn>, codalist@coda.cs.cmu.edu,
 selinux@vger.kernel.org, ZhangPeng <zhangpeng362@huawei.com>,
 Udipto Goswami <quic_ugoswami@quicinc.com>, Yonghong Song <yhs@fb.com>,
 Iurii Zaikin <yzaikin@google.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 ecryptfs@vger.kernel.org, Todd Kjos <tkjos@android.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Yu Zhe <yuzhe@nfschina.com>,
 linuxppc-dev@lists.ozlabs.org, reiserfs-devel@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, Yue Hu <huyue2@coolpad.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Aditya Garg <gargaditya08@live.com>,
 Martijn Coenen <maco@android.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, Hao Luo <haoluo@google.com>,
 Tony Luck <tony.luck@intel.com>, Theodore Ts'o <tytso@mit.edu>,
 Nicolas Pitre <nico@fluxnic.net>, linux-ntfs-dev@lists.sourceforge.net,
 Muchun Song <muchun.song@linux.dev>, Roberto Sassu <roberto.sassu@huawei.com>,
 linux-f2fs-devel@lists.sourceforge.net, "Guilherme G.
 Piccoli" <gpiccoli@igalia.com>, Jozef Martiniak <jomajm@gmail.com>,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 xu xin <cgel.zte@gmail.com>, Brad Warrum <bwarrum@linux.ibm.com>,
 Mike Kravetz <mike.kravetz@oracle.com>, Jingyu Wang <jingyuwang_vip@163.com>,
 linux-efi@vger.kernel.org, Dan Carpenter <error27@gmail.com>,
 Martin Brandenburg <martin@omnibond.com>, Tom Rix <trix@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Ian Kent <raven@themaw.net>, Naohiro Aota <naohiro.aota@wdc.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 linux-rdma@vger.kernel.org, Linyu Yuan <quic_linyyuan@quicinc.com>,
 coda@cs.cmu.edu, Viacheslav Dubeyko <slava@dubeyko.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, "Serge E. Hallyn" <serge@hallyn.com>,
 Zhihao Cheng <chengzhihao1@huawei.com>, Jens Axboe <axboe@kernel.dk>,
 Zeng Jingxiang <linuszeng@tencent.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, autofs@vger.kernel.org,
 Yifei Liu <yifeliu@cs.stonybrook.edu>, Damien Le Moal <dlemoal@kernel.org>,
 Eric Paris <eparis@parisplace.org>, ceph-devel@vger.kernel.org,
 Gao Xiang <xiang@kernel.org>, Jiangshan Yi <yijiangshan@kylinos.cn>,
 David Howells <dhowells@redhat.com>, linux-nfs@vger.kernel.org,
 linux-ext4@vger.kernel.org, Song Liu <song@kernel.org>,
 samba-technical@lists.samba.org, Steve French <sfrench@samba.org>,
 Jeremy Kerr <jk@ozlabs.org>, netdev@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, ntfs3@lists.linux.dev, linux-erofs@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>, ocfs2-devel@oss.oracle.com,
 jfs-discussion@lists.sourceforge.net,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Bob Copeland <me@bobcopeland.com>, KP Singh <kpsingh@kernel.org>,
 Oleg Kanatov <okanatov@gmail.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Yuta Hayama <hayama@lineo.co.jp>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Zhengchao Shao <shaozhengchao@huawei.com>,
 Chen Zhongjin <chenzhongjin@huawei.com>, Ard Biesheuvel <ardb@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Stefan Roesch <shr@devkernel.io>,
 cluster-devel@redhat.com, Jason Gunthorpe <jgg@ziepe.ca>,
 Jakub Kicinski <kuba@kernel.org>, Rik van Riel <riel@surriel.com>,
 Salah Triki <salah.triki@gmail.com>, Evgeniy Dushistov <dushistov@mail.ru>,
 linux-cifs@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Chao Yu <chao@kernel.org>, apparmor@lists.ubuntu.com,
 Josef Bacik <josef@toxicpanda.com>,
 "Liam R. Howlett" <Liam.Howlett@Oracle.com>, Tom Talpey <tom@talpey.com>,
 Hans de Goede <hdegoede@redhat.com>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Dave Chinner <dchinner@redhat.com>, David Sterba <dsterba@suse.com>,
 Xiubo Li <xiubli@redhat.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Juergen Gross <jgross@suse.com>, Johannes Thumshirn <jth@kernel.org>,
 Ritu Agarwal <rituagar@linux.ibm.com>, Luis de Bethencourt <luisbg@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, v9fs@lists.linux.dev, "Fabio M. De
 Francesco" <fmdefrancesco@gmail.com>, linux-unionfs@vger.kernel.org,
 Ruihan Li <lrh2000@pku.edu.cn>, linux-security-module@vger.kernel.org,
 Erez Zadok <ezk@cs.stonybrook.edu>, Jeffle Xu <jefflexu@linux.alibaba.com>,
 "Dr. David Alan
 Gilbert" <linux@treblig.org>, Johannes Weiner <hannes@cmpxchg.org>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Johannes Berg <johannes@sipsolutions.net>,
 Sungjong Seo <sj1557.seo@samsung.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-karma-devel@lists.sourceforge.net, linux-btrfs@vger.kernel.org,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, 2023-06-21 at 15:21 -0400, Steven Rostedt wrote:
> On Wed, 21 Jun 2023 10:45:05 -0400
> Jeff Layton <jlayton@kernel.org> wrote:
> =

> > Most of this conversion was done via coccinelle, with a few of the more
> > non-standard accesses done by hand. There should be no behavioral
> > changes with this set. That will come later, as we convert individual
> > filesystems to use multigrain timestamps.
> =

> BTW, Linus has suggested to me that whenever a conccinelle script is used,
> it should be included in the change log.
> =


Ok, here's what I have. I note again that my usage of coccinelle is
pretty primitive, so I ended up doing a fair bit of by-hand fixing after
applying these.

Given the way that this change is broken up into 77 patches by
subsystem, to which changelogs should I add it? I could add it to the
"infrastructure" patch, but that's the one where I _didn't_ use it.=A0

Maybe to patch #79 (the one that renames i_ctime)?


------------------------8<------------------------------
@@
expression inode;
@@

- inode->i_ctime =3D current_time(inode)
+ inode_set_current_ctime(inode)

@@
expression inode;
@@

- inode->i_ctime =3D inode->i_mtime =3D current_time(inode)
+ inode->i_mtime =3D inode_set_current_ctime(inode)

@@
struct inode *inode;
expression value;
@@

- inode->i_ctime =3D value;
+ inode_set_ctime(inode, value);

@@
struct inode *inode;
expression val;
@@
- inode->i_ctime.tv_sec =3D val
+ inode_set_ctime_sec(inode, val)

@@
struct inode *inode;
expression val;
@@
- inode->i_ctime.tv_nsec =3D val
+ inode_set_ctime_nsec(inode, val)

@@
struct inode *inode;
@@
- inode->i_ctime
+ inode_ctime_peek(inode)



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
