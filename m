Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE17311809
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  6 Feb 2021 02:10:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l8C7R-0005Dv-6S; Sat, 06 Feb 2021 01:10:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <irecca.kun@gmail.com>) id 1l87sO-0005Vn-S3
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 05 Feb 2021 20:38:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ADur2DizcZ7cnpg4yiK96kth3XIMA02sd5qY3dPyKAQ=; b=fqyhfTHbbXBeVT2oPv2A3Vl6zg
 vCfpPwp8mcLypX9ZFL4EN09D95zf6mJuKCRhCRb2lqoUNJBzDR+EcazIvyJ8ianO54ACLSR/59MX8
 XWfcKvhG88X4hbmyMJR5rlWcjZqlBdkXUf4ghar865S9GmdYZGo1JEQDVzGhmAxcMZ7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ADur2DizcZ7cnpg4yiK96kth3XIMA02sd5qY3dPyKAQ=; b=f
 Kw4CM8oj5lpiWjvx3UWVSDX0lh+pJpsISh15xoEANCCdKjzo5t7XoqOa6UPPiXm5bDgA3YMwjJ/D1
 AiIPYB5Y5kE8Dz7v7Gbfs4FK9AHlnhcv33mpkVbzQ/ilDhYK88DXcvcXIt5VstFmwZ+uKM8AKu6Uk
 0ir2uLBaqZp31KTg=;
Received: from mail-ua1-f41.google.com ([209.85.222.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l87sH-008p5C-Th
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 05 Feb 2021 20:38:48 +0000
Received: by mail-ua1-f41.google.com with SMTP id 67so2569817uao.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 05 Feb 2021 12:38:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ADur2DizcZ7cnpg4yiK96kth3XIMA02sd5qY3dPyKAQ=;
 b=Ldwqns6CPowiE5AU60IDbru+J76BtK5VnOECiiKP1oNr9AhkEYZG2VyHIWcYiJTn6v
 pDog9LNyCK8SsnZs+hJQS8z0H56cPTSrG1viWadL+X11djWyf7FFSFYSDHu2ldtnwtad
 Cz4Q5TeCd+v5OxssPxDfKcwnelpm9qqjADGw+0IAW8l5iHs3ZxQ4EZ5gp9Wi0+4eDLNT
 Vx3RtJGg0KbPNA6maSwZ/QuwLP8xzlYEvI000qjvu9eTqeGpg2S/aVBJ/vD78oarn8QF
 2vEOQm5e8utyAZIbnQRhLMPaz6bRx8MdnAnUvG/ouL+ipg9JUxgujoujePIByV83MOAh
 PfYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ADur2DizcZ7cnpg4yiK96kth3XIMA02sd5qY3dPyKAQ=;
 b=SP749skBfKG5cX3HuoJjTk2LAYpyXXpze9sCsTsj0abAfniRpNso3hupudB4lz8LO0
 vmVCIiC2Lo9n5r5gHou0/c+iGEzg/O2V74za1Rlv9HhQd5Y5xWRTMfXr7sx/63GRN9JK
 6u+0vb5/xAxP66ZiJTyNA9IEk9KyKV9Mx1MNtMZe27g9iTZuTv77Oo92TKwxevoVzv+n
 2A/1dmraNFNWYbGESKveLdTxxLaXQejKThgK8EWUZ0CEscIEp61Hgban3Rkd4R+nVuLw
 mPat1SHX5SiNYNjbzWAldAWJgi3M2TPJo1kqzJoiFIkizym6mMQVBrqgkhNnD3s4ThAr
 nyNw==
X-Gm-Message-State: AOAM530+MDk7gLbTj8Sa5r7ikkfaokzTlP57BB+ZIS0TBgauKxBlsLpd
 Ep30foSfjOyJVN+PuFPBDukpb9/2r5BQVeflEfA=
X-Google-Smtp-Source: ABdhPJz4NPWQIoOmEAQ++dV4Z0bcjU1HRP5mjTswwP1Ecam0DszQiY00vZrJ6fWj6fFsm0kfS4U9teWDD1m5+Y/ylJ4=
X-Received: by 2002:ab0:7250:: with SMTP id d16mr4617643uap.115.1612557515945; 
 Fri, 05 Feb 2021 12:38:35 -0800 (PST)
MIME-Version: 1.0
From: Hanabishi Recca <irecca.kun@gmail.com>
Date: Sat, 6 Feb 2021 01:38:25 +0500
Message-ID: <CAOehnrOwLpk3WkS60uBJf6Qqnz-C0ziHT_4A-Mti5hChW9Cm+g@mail.gmail.com>
To: almaz.alexandrovich@paragon-software.com
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (irecca.kun[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l87sH-008p5C-Th
X-Mailman-Approved-At: Sat, 06 Feb 2021 01:10:34 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v20 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: nborisov@suse.com, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, rdunlap@infradead.org, aaptel@suse.com,
 willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 linux-fsdevel@vger.kernel.org, anton@tuxera.com, joe@perches.com,
 mark@harmstone.com, andy.lavr@gmail.com, pali@kernel.org, hch@lst.de,
 dan.carpenter@oracle.com, viro@zeniv.linux.org.uk
Content-Type: multipart/mixed; boundary="===============0260718699948052068=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============0260718699948052068==
Content-Type: multipart/alternative; boundary="000000000000eaf92c05ba9ccdf9"

--000000000000eaf92c05ba9ccdf9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can't even build v20 due to compilation errors.

DKMS make.log for ntfs3-20.0.0 for kernel 5.10.13-arch1-1 (x86_64)
Sat Feb  6 01:20:00 +05 2021
make -C /lib/modules/5.10.13-arch1-1/build
M=3D/var/lib/dkms/ntfs3/20.0.0/build modules
make[1]: Entering directory '/usr/lib/modules/5.10.13-arch1-1/build'
  CC [M]  /var/lib/dkms/ntfs3/20.0.0/build/attrib.o
  CC [M]  /var/lib/dkms/ntfs3/20.0.0/build/attrlist.o
  CC [M]  /var/lib/dkms/ntfs3/20.0.0/build/bitfunc.o
  CC [M]  /var/lib/dkms/ntfs3/20.0.0/build/bitmap.o
  CC [M]  /var/lib/dkms/ntfs3/20.0.0/build/dir.o
  CC [M]  /var/lib/dkms/ntfs3/20.0.0/build/fsntfs.o
  CC [M]  /var/lib/dkms/ntfs3/20.0.0/build/frecord.o
  CC [M]  /var/lib/dkms/ntfs3/20.0.0/build/file.o
/var/lib/dkms/ntfs3/20.0.0/build/file.c: In function =E2=80=98ntfs_getattr=
=E2=80=99:
/var/lib/dkms/ntfs3/20.0.0/build/file.c:93:19: error: passing argument 1 of
=E2=80=98generic_fillattr=E2=80=99 from incompatible pointer type
[-Werror=3Dincompatible-pointer-types]
   93 |  generic_fillattr(mnt_userns, inode, stat);
      |                   ^~~~~~~~~~
      |                   |
      |                   struct user_namespace *
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3095:30: note: expected =E2=80=98struct inode *=E2=80=
=99 but argument
is of type =E2=80=98struct user_namespace *=E2=80=99
 3095 | extern void generic_fillattr(struct inode *, struct kstat *);
      |                              ^~~~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:93:31: error: passing argument 2 of
=E2=80=98generic_fillattr=E2=80=99 from incompatible pointer type
[-Werror=3Dincompatible-pointer-types]
   93 |  generic_fillattr(mnt_userns, inode, stat);
      |                               ^~~~~
      |                               |
      |                               struct inode *
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3095:46: note: expected =E2=80=98struct kstat *=E2=80=
=99 but argument
is of type =E2=80=98struct inode *=E2=80=99
 3095 | extern void generic_fillattr(struct inode *, struct kstat *);
      |                                              ^~~~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:93:2: error: too many arguments to
function =E2=80=98generic_fillattr=E2=80=99
   93 |  generic_fillattr(mnt_userns, inode, stat);
      |  ^~~~~~~~~~~~~~~~
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3095:13: note: declared here
 3095 | extern void generic_fillattr(struct inode *, struct kstat *);
      |             ^~~~~~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c: In function =E2=80=98ntfs3_setattr=
=E2=80=99:
/var/lib/dkms/ntfs3/20.0.0/build/file.c:639:24: error: passing argument 1
of =E2=80=98setattr_prepare=E2=80=99 from incompatible pointer type
[-Werror=3Dincompatible-pointer-types]
  639 |  err =3D setattr_prepare(mnt_userns, dentry, attr);
      |                        ^~~~~~~~~~
      |                        |
      |                        struct user_namespace *
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3217:28: note: expected =E2=80=98struct dentry *=E2=80=
=99 but argument
is of type =E2=80=98struct user_namespace *=E2=80=99
 3217 | extern int setattr_prepare(struct dentry *, struct iattr *);
      |                            ^~~~~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:639:36: error: passing argument 2
of =E2=80=98setattr_prepare=E2=80=99 from incompatible pointer type
[-Werror=3Dincompatible-pointer-types]
  639 |  err =3D setattr_prepare(mnt_userns, dentry, attr);
      |                                    ^~~~~~
      |                                    |
      |                                    struct dentry *
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3217:45: note: expected =E2=80=98struct iattr *=E2=80=
=99 but argument
is of type =E2=80=98struct dentry *=E2=80=99
 3217 | extern int setattr_prepare(struct dentry *, struct iattr *);
      |                                             ^~~~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:639:8: error: too many arguments to
function =E2=80=98setattr_prepare=E2=80=99
  639 |  err =3D setattr_prepare(mnt_userns, dentry, attr);
      |        ^~~~~~~~~~~~~~~
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3217:12: note: declared here
 3217 | extern int setattr_prepare(struct dentry *, struct iattr *);
      |            ^~~~~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:664:15: error: passing argument 1
of =E2=80=98setattr_copy=E2=80=99 from incompatible pointer type
[-Werror=3Dincompatible-pointer-types]
  664 |  setattr_copy(mnt_userns, inode, attr);
      |               ^~~~~~~~~~
      |               |
      |               struct user_namespace *
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3219:40: note: expected =E2=80=98struct inode *=E2=80=
=99 but argument
is of type =E2=80=98struct user_namespace *=E2=80=99
 3219 | extern void setattr_copy(struct inode *inode, const struct iattr
*attr);
      |                          ~~~~~~~~~~~~~~^~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:664:27: error: passing argument 2
of =E2=80=98setattr_copy=E2=80=99 from incompatible pointer type
[-Werror=3Dincompatible-pointer-types]
  664 |  setattr_copy(mnt_userns, inode, attr);
      |                           ^~~~~
      |                           |
      |                           struct inode *
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3219:67: note: expected =E2=80=98const struct iattr *=
=E2=80=99 but
argument is of type =E2=80=98struct inode *=E2=80=99
 3219 | extern void setattr_copy(struct inode *inode, const struct iattr
*attr);
      |
~~~~~~~~~~~~~~~~~~~~^~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:664:2: error: too many arguments to
function =E2=80=98setattr_copy=E2=80=99
  664 |  setattr_copy(mnt_userns, inode, attr);
      |  ^~~~~~~~~~~~
In file included from ./include/linux/backing-dev.h:13,
                 from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:
./include/linux/fs.h:3219:13: note: declared here
 3219 | extern void setattr_copy(struct inode *inode, const struct iattr
*attr);
      |             ^~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c: At top level:
/var/lib/dkms/ntfs3/20.0.0/build/file.c:1109:13: error: initialization of
=E2=80=98int (*)(const struct path *, struct kstat *, u32,  unsigned int)=
=E2=80=99 {aka
=E2=80=98int (*)(const struct path *, struct kstat *, unsigned int,  unsign=
ed
int)=E2=80=99} from incompatible pointer type =E2=80=98int (*)(struct user_=
namespace *,
const struct path *, struct kstat *, u32,  u32)=E2=80=99 {aka =E2=80=98int =
(*)(struct
user_namespace *, const struct path *, struct kstat *, unsigned int,
 unsigned int)=E2=80=99} [-Werror=3Dincompatible-pointer-types]
 1109 |  .getattr =3D ntfs_getattr,
      |             ^~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:1109:13: note: (near initialization
for =E2=80=98ntfs_file_inode_operations.getattr=E2=80=99)
/var/lib/dkms/ntfs3/20.0.0/build/file.c:1110:13: error: initialization of
=E2=80=98int (*)(struct dentry *, struct iattr *)=E2=80=99 from incompatibl=
e pointer type
=E2=80=98int (*)(struct user_namespace *, struct dentry *, struct iattr *)=
=E2=80=99
[-Werror=3Dincompatible-pointer-types]
 1110 |  .setattr =3D ntfs3_setattr,
      |             ^~~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:1110:13: note: (near initialization
for =E2=80=98ntfs_file_inode_operations.setattr=E2=80=99)
/var/lib/dkms/ntfs3/20.0.0/build/file.c:1112:16: error: initialization of
=E2=80=98int (*)(struct inode *, int)=E2=80=99 from incompatible pointer ty=
pe =E2=80=98int
(*)(struct user_namespace *, struct inode *, int)=E2=80=99
[-Werror=3Dincompatible-pointer-types]
 1112 |  .permission =3D ntfs_permission,
      |                ^~~~~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:1112:16: note: (near initialization
for =E2=80=98ntfs_file_inode_operations.permission=E2=80=99)
/var/lib/dkms/ntfs3/20.0.0/build/file.c:1114:13: error: initialization of
=E2=80=98int (*)(struct inode *, struct posix_acl *, int)=E2=80=99 from inc=
ompatible
pointer type =E2=80=98int (*)(struct user_namespace *, struct inode *, stru=
ct
posix_acl *, int)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
 1114 |  .set_acl =3D ntfs_set_acl,
      |             ^~~~~~~~~~~~
/var/lib/dkms/ntfs3/20.0.0/build/file.c:1114:13: note: (near initialization
for =E2=80=98ntfs_file_inode_operations.set_acl=E2=80=99)
cc1: some warnings being treated as errors
make[2]: *** [scripts/Makefile.build:279:
/var/lib/dkms/ntfs3/20.0.0/build/file.o] Error 1
make[1]: *** [Makefile:1805: /var/lib/dkms/ntfs3/20.0.0/build] Error 2
make[1]: Leaving directory '/usr/lib/modules/5.10.13-arch1-1/build'
make: *** [Makefile:37: all] Error 2

--000000000000eaf92c05ba9ccdf9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can&#39;t even build v20 due to compilation errors.<br><br=
>DKMS make.log for ntfs3-20.0.0 for kernel 5.10.13-arch1-1 (x86_64)<br>Sat =
Feb =C2=A06 01:20:00 +05 2021<br>make -C /lib/modules/5.10.13-arch1-1/build=
 M=3D/var/lib/dkms/ntfs3/20.0.0/build modules<br>make[1]: Entering director=
y &#39;/usr/lib/modules/5.10.13-arch1-1/build&#39;<br>=C2=A0 CC [M] =C2=A0/=
var/lib/dkms/ntfs3/20.0.0/build/attrib.o<br>=C2=A0 CC [M] =C2=A0/var/lib/dk=
ms/ntfs3/20.0.0/build/attrlist.o<br>=C2=A0 CC [M] =C2=A0/var/lib/dkms/ntfs3=
/20.0.0/build/bitfunc.o<br>=C2=A0 CC [M] =C2=A0/var/lib/dkms/ntfs3/20.0.0/b=
uild/bitmap.o<br>=C2=A0 CC [M] =C2=A0/var/lib/dkms/ntfs3/20.0.0/build/dir.o=
<br>=C2=A0 CC [M] =C2=A0/var/lib/dkms/ntfs3/20.0.0/build/fsntfs.o<br>=C2=A0=
 CC [M] =C2=A0/var/lib/dkms/ntfs3/20.0.0/build/frecord.o<br>=C2=A0 CC [M] =
=C2=A0/var/lib/dkms/ntfs3/20.0.0/build/file.o<br>/var/lib/dkms/ntfs3/20.0.0=
/build/file.c: In function =E2=80=98ntfs_getattr=E2=80=99:<br>/var/lib/dkms=
/ntfs3/20.0.0/build/file.c:93:19: error: passing argument 1 of =E2=80=98gen=
eric_fillattr=E2=80=99 from incompatible pointer type [-Werror=3Dincompatib=
le-pointer-types]<br>=C2=A0 =C2=A093 | =C2=A0generic_fillattr(mnt_userns, i=
node, stat);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>=C2=A0 =C2=A0 =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct=
 user_namespace *<br>In file included from ./include/linux/backing-dev.h:13=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /va=
r/lib/dkms/ntfs3/20.0.0/build/file.c:8:<br>./include/linux/fs.h:3095:30: no=
te: expected =E2=80=98struct inode *=E2=80=99 but argument is of type =E2=
=80=98struct user_namespace *=E2=80=99<br>=C2=A03095 | extern void generic_=
fillattr(struct inode *, struct kstat *);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~<br>/var/lib/dkms/ntfs3/20.0.0/build/=
file.c:93:31: error: passing argument 2 of =E2=80=98generic_fillattr=E2=80=
=99 from incompatible pointer type [-Werror=3Dincompatible-pointer-types]<b=
r>=C2=A0 =C2=A093 | =C2=A0generic_fillattr(mnt_userns, inode, stat);<br>=C2=
=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~<br>=C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 struct inode *<br>In file included from ./include/=
linux/backing-dev.h:13,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:<br>./include/=
linux/fs.h:3095:46: note: expected =E2=80=98struct kstat *=E2=80=99 but arg=
ument is of type =E2=80=98struct inode *=E2=80=99<br>=C2=A03095 | extern vo=
id generic_fillattr(struct inode *, struct kstat *);<br>=C2=A0 =C2=A0 =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~<br>/var/lib/dkms/ntfs3/20.0.0/build/file.c:=
93:2: error: too many arguments to function =E2=80=98generic_fillattr=E2=80=
=99<br>=C2=A0 =C2=A093 | =C2=A0generic_fillattr(mnt_userns, inode, stat);<b=
r>=C2=A0 =C2=A0 =C2=A0 | =C2=A0^~~~~~~~~~~~~~~~<br>In file included from ./=
include/linux/backing-dev.h:13,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:<br>=
./include/linux/fs.h:3095:13: note: declared here<br>=C2=A03095 | extern vo=
id generic_fillattr(struct inode *, struct kstat *);<br>=C2=A0 =C2=A0 =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~<br>/var/li=
b/dkms/ntfs3/20.0.0/build/file.c: In function =E2=80=98ntfs3_setattr=E2=80=
=99:<br>/var/lib/dkms/ntfs3/20.0.0/build/file.c:639:24: error: passing argu=
ment 1 of =E2=80=98setattr_prepare=E2=80=99 from incompatible pointer type =
[-Werror=3Dincompatible-pointer-types]<br>=C2=A0 639 | =C2=A0err =3D setatt=
r_prepare(mnt_userns, dentry, attr);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>=C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0struct user_namespace *<br>In file included from ./include/linux/=
backing-dev.h:13,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:<br>./include/linu=
x/fs.h:3217:28: note: expected =E2=80=98struct dentry *=E2=80=99 but argume=
nt is of type =E2=80=98struct user_namespace *=E2=80=99<br>=C2=A03217 | ext=
ern int setattr_prepare(struct dentry *, struct iattr *);<br>=C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~<br>/var/lib/dkms/ntfs3/20.0.=
0/build/file.c:639:36: error: passing argument 2 of =E2=80=98setattr_prepar=
e=E2=80=99 from incompatible pointer type [-Werror=3Dincompatible-pointer-t=
ypes]<br>=C2=A0 639 | =C2=A0err =3D setattr_prepare(mnt_userns, dentry, att=
r);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0^~~~~~<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0struct dentry *<br>In file included from ./include/=
linux/backing-dev.h:13,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:<br>./include/=
linux/fs.h:3217:45: note: expected =E2=80=98struct iattr *=E2=80=99 but arg=
ument is of type =E2=80=98struct dentry *=E2=80=99<br>=C2=A03217 | extern i=
nt setattr_prepare(struct dentry *, struct iattr *);<br>=C2=A0 =C2=A0 =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ^~~~~~~~~~~~~~<br>/var/lib/dkms/ntfs3/20.0.0/build/file.c:639:8:=
 error: too many arguments to function =E2=80=98setattr_prepare=E2=80=99<br=
>=C2=A0 639 | =C2=A0err =3D setattr_prepare(mnt_userns, dentry, attr);<br>=
=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~<br>In fil=
e included from ./include/linux/backing-dev.h:13,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /var/lib/dkms/ntfs3/20.0.0/bu=
ild/file.c:8:<br>./include/linux/fs.h:3217:12: note: declared here<br>=C2=
=A03217 | extern int setattr_prepare(struct dentry *, struct iattr *);<br>=
=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~=
~~~~<br>/var/lib/dkms/ntfs3/20.0.0/build/file.c:664:15: error: passing argu=
ment 1 of =E2=80=98setattr_copy=E2=80=99 from incompatible pointer type [-W=
error=3Dincompatible-pointer-types]<br>=C2=A0 664 | =C2=A0setattr_copy(mnt_=
userns, inode, attr);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct user_namespace *<br>In file i=
ncluded from ./include/linux/backing-dev.h:13,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /var/lib/dkms/ntfs3/20.0.0/build=
/file.c:8:<br>./include/linux/fs.h:3219:40: note: expected =E2=80=98struct =
inode *=E2=80=99 but argument is of type =E2=80=98struct user_namespace *=
=E2=80=99<br>=C2=A03219 | extern void setattr_copy(struct inode *inode, con=
st struct iattr *attr);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~=
~~~~~^~~~~<br>/var/lib/dkms/ntfs3/20.0.0/build/file.c:664:27: error: passin=
g argument 2 of =E2=80=98setattr_copy=E2=80=99 from incompatible pointer ty=
pe [-Werror=3Dincompatible-pointer-types]<br>=C2=A0 664 | =C2=A0setattr_cop=
y(mnt_userns, inode, attr);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~=
<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>=C2=A0 =C2=A0 =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 struct inode *<br>In file included from ./include/linux/backi=
ng-dev.h:13,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:<br>./include/linux/fs.h:=
3219:67: note: expected =E2=80=98const struct iattr *=E2=80=99 but argument=
 is of type =E2=80=98struct inode *=E2=80=99<br>=C2=A03219 | extern void se=
tattr_copy(struct inode *inode, const struct iattr *attr);<br>=C2=A0 =C2=A0=
 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~~~~~~~~~~~^~~~<br>/var/lib/dkms/ntfs3/20=
.0.0/build/file.c:664:2: error: too many arguments to function =E2=80=98set=
attr_copy=E2=80=99<br>=C2=A0 664 | =C2=A0setattr_copy(mnt_userns, inode, at=
tr);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0^~~~~~~~~~~~<br>In file included from =
./include/linux/backing-dev.h:13,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0from /var/lib/dkms/ntfs3/20.0.0/build/file.c:8:<br>=
./include/linux/fs.h:3219:13: note: declared here<br>=C2=A03219 | extern vo=
id setattr_copy(struct inode *inode, const struct iattr *attr);<br>=C2=A0 =
=C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~<br>/=
var/lib/dkms/ntfs3/20.0.0/build/file.c: At top level:<br>/var/lib/dkms/ntfs=
3/20.0.0/build/file.c:1109:13: error: initialization of =E2=80=98int (*)(co=
nst struct path *, struct kstat *, u32, =C2=A0unsigned int)=E2=80=99 {aka =
=E2=80=98int (*)(const struct path *, struct kstat *, unsigned int, =C2=A0u=
nsigned int)=E2=80=99} from incompatible pointer type =E2=80=98int (*)(stru=
ct user_namespace *, const struct path *, struct kstat *, u32, =C2=A0u32)=
=E2=80=99 {aka =E2=80=98int (*)(struct user_namespace *, const struct path =
*, struct kstat *, unsigned int, =C2=A0unsigned int)=E2=80=99} [-Werror=3Di=
ncompatible-pointer-types]<br>=C2=A01109 | =C2=A0.getattr =3D ntfs_getattr,=
<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~=
~~~~~~<br>/var/lib/dkms/ntfs3/20.0.0/build/file.c:1109:13: note: (near init=
ialization for =E2=80=98ntfs_file_inode_operations.getattr=E2=80=99)<br>/va=
r/lib/dkms/ntfs3/20.0.0/build/file.c:1110:13: error: initialization of =E2=
=80=98int (*)(struct dentry *, struct iattr *)=E2=80=99 from incompatible p=
ointer type =E2=80=98int (*)(struct user_namespace *, struct dentry *, stru=
ct iattr *)=E2=80=99 [-Werror=3Dincompatible-pointer-types]<br>=C2=A01110 |=
 =C2=A0.setattr =3D ntfs3_setattr,<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~<br>/var/lib/dkms/ntfs3/20.0.0/bui=
ld/file.c:1110:13: note: (near initialization for =E2=80=98ntfs_file_inode_=
operations.setattr=E2=80=99)<br>/var/lib/dkms/ntfs3/20.0.0/build/file.c:111=
2:16: error: initialization of =E2=80=98int (*)(struct inode *, int)=E2=80=
=99 from incompatible pointer type =E2=80=98int (*)(struct user_namespace *=
, struct inode *, int)=E2=80=99 [-Werror=3Dincompatible-pointer-types]<br>=
=C2=A01112 | =C2=A0.permission =3D ntfs_permission,<br>=C2=A0 =C2=A0 =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~<b=
r>/var/lib/dkms/ntfs3/20.0.0/build/file.c:1112:16: note: (near initializati=
on for =E2=80=98ntfs_file_inode_operations.permission=E2=80=99)<br>/var/lib=
/dkms/ntfs3/20.0.0/build/file.c:1114:13: error: initialization of =E2=80=98=
int (*)(struct inode *, struct posix_acl *, int)=E2=80=99 from incompatible=
 pointer type =E2=80=98int (*)(struct user_namespace *, struct inode *, str=
uct posix_acl *, int)=E2=80=99 [-Werror=3Dincompatible-pointer-types]<br>=
=C2=A01114 | =C2=A0.set_acl =3D ntfs_set_acl,<br>=C2=A0 =C2=A0 =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~<br>/var/lib/dkms/ntfs3/=
20.0.0/build/file.c:1114:13: note: (near initialization for =E2=80=98ntfs_f=
ile_inode_operations.set_acl=E2=80=99)<br>cc1: some warnings being treated =
as errors<br>make[2]: *** [scripts/Makefile.build:279: /var/lib/dkms/ntfs3/=
20.0.0/build/file.o] Error 1<br>make[1]: *** [Makefile:1805: /var/lib/dkms/=
ntfs3/20.0.0/build] Error 2<br>make[1]: Leaving directory &#39;/usr/lib/mod=
ules/5.10.13-arch1-1/build&#39;<br>make: *** [Makefile:37: all] Error 2</di=
v>

--000000000000eaf92c05ba9ccdf9--


--===============0260718699948052068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0260718699948052068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============0260718699948052068==--

