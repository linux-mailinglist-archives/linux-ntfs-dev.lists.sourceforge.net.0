Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 370CB410731
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 18 Sep 2021 16:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Cc:Reply-To:From:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
	MIME-Version:Message-ID:To:Date:Sender:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p9xpUN2X2DgOkosSJA8UKtuSzU/uiZ0j2vQZvfjWY3A=; b=hY6U+3cb9lOhNodUv5gvcqwRAW
	XHMJvbaS+8tKSA2a/0S8OAKNFvkojgJCzGq3XCDLjxJihyXsFhHmM4nE+HMUAQvw8qKFzQWKUvOj+
	pFo3BhtVhW+j4TCQopoTzYO91/tBQVIiqnN9f90G5newv1k8natfF5bikU16o/VyqeFk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mRbll-0005SB-5y; Sat, 18 Sep 2021 14:56:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <vladlich@protonmail.com>) id 1mROAi-0001lo-0J
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 18 Sep 2021 00:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:
 Reply-To:Cc:From:To:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bUrj8ipKarLjtH2LKHNpsvbn5yR6kZu1pLEdLb4a3n0=; b=YaMtzSRuhymMlegVRwQvy/IrlB
 FB2RsGC/omvYKO00zLnK0NHs0L0HmRtOGg4yDDLYVX6mvj/gY1Y0sa6CwciZFcE4fj+v1IMj/Sjbr
 BRi3yeiVMspUQ5bV/LkdpqaeqiORhdLbejSoH6kK2AGPaVLCXqfHwqSpw0RMXuvgcPlA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Reply-To:Cc:From:To:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bUrj8ipKarLjtH2LKHNpsvbn5yR6kZu1pLEdLb4a3n0=; b=H
 yrs19ume78hg64Zy7xZwEP1DpgxprpUCK5JurYXdycdxUGXGwKsEyT48ygfVExSLcEFJb7SmCRw2H
 yVlh0f125e/uLn9e6Fy9TDvBNOayRfbNzn5IXGiET6bwtVvRl3BNpRy7XA0ekwD04igP+wPZGyPYh
 h4wntG3ZDj1uojA8=;
Received: from mail2.protonmail.ch ([185.70.40.22])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mROAg-0003sI-Vw
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 18 Sep 2021 00:25:35 +0000
Date: Sat, 18 Sep 2021 00:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1631924728;
 bh=bUrj8ipKarLjtH2LKHNpsvbn5yR6kZu1pLEdLb4a3n0=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=XZR8KPQ6+sH2Mb7RGDw6IDXcpSaGltX0RLk9B/Attkg3R6gQkZLl79hurSuv1NoW8
 P31d1H606EK177zXLun0tYO1t83x/2hPzqwhMoPIAO0zDiU9ZG9qVuqicdLnnsB+tn
 4ji8a70akErZKROGfMWNH9U6xqlDoIW44ZjpIETw=
To: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>
Message-ID: <p4vwypI8AjpmSt5yma1qabbjnPTSdXvEQm97YhEWcgSvbocS55lroxhvZSFHOkQ8JUNE59j995HkkhRZGAfmKJMmqz4bv7nwOWIm4FR6rPA=@protonmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,HTML_MESSAGE
 shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I've encountered unexpected behavior that I suspect is
 a bug with the fstat system call on Linux on NTFS filesystem. If you create
 a pipe with mkfifo, open this pipe in a process, unlink its filename, and
 then call fstat, it fails with the error ENOENT: No such file or directory.
 This shouldn't be the case, as the f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: protonmail.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.70.40.22 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vladlich[at]protonmail.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mROAg-0003sI-Vw
X-Mailman-Approved-At: Sat, 18 Sep 2021 14:56:34 +0000
Subject: [Linux-NTFS-Dev] Unexpected behavior with fstat on NTFS FIFO pipes
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
From: Vladimir via Linux-NTFS-Dev <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Vladimir <vladlich@protonmail.com>
Cc: "rleanderschroeder@gmail.com" <rleanderschroeder@gmail.com>
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--b1_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M
Content-Type: multipart/alternative;
 boundary="b2_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M"

--b2_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGksCgpJJ3ZlIGVuY291bnRlcmVkIHVuZXhwZWN0ZWQgYmVoYXZpb3IgdGhhdCBJIHN1c3BlY3Qg
aXMgYSBidWcgd2l0aCB0aGUgZnN0YXQgc3lzdGVtIGNhbGwgb24gTGludXggb24gTlRGUyBmaWxl
c3lzdGVtLgoKSWYgeW91IGNyZWF0ZSBhIHBpcGUgd2l0aCBta2ZpZm8sIG9wZW4gdGhpcyBwaXBl
IGluIGEgcHJvY2VzcywgdW5saW5rIGl0cyBmaWxlbmFtZSwgYW5kIHRoZW4gY2FsbCBmc3RhdCwg
aXQgZmFpbHMgd2l0aCB0aGUgZXJyb3IgRU5PRU5UOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
LiBUaGlzIHNob3VsZG4ndCBiZSB0aGUgY2FzZSwgYXMgdGhlIGZpbGUgZGVzY3JpcHRvciBpcyBz
dGlsbCB2YWxpZCBhbmQgeW91IHNob3VsZCBiZSBhYmxlIHRvIHF1ZXJ5IGl0cyBzdGF0dXMuIFRo
aXMgcHJvYmxlbSBkb2Vzbid0IG9jY3VyIG9uIGV4dDQgb3IgbnRmcyByZWd1bGFyIGZpbGVzLgoK
SSd2ZSBhdHRhY2hlZCB0byB0aGlzIGVtYWlsIGEgc2ltcGxlIHByb2dyYW0gdGhhdCByZXByb2R1
Y2VzIHRoZSBpc3N1ZS4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHRoaXMgaXMgYSBidWcgb3IgZXhw
ZWN0ZWQgYmVoYXZpb3IuCgpDaGVlcnMsClZsYWRpbWly

--b2_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdj5IaSw8YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JJ3ZlIGVuY291bnRlcmVkIHVu
ZXhwZWN0ZWQgYmVoYXZpb3IgdGhhdCBJIHN1c3BlY3QgaXMgYSBidWcgd2l0aCB0aGUgPGI+ZnN0
YXQgPC9iPnN5c3RlbSBjYWxsIG9uIExpbnV4IG9uIE5URlMgZmlsZXN5c3RlbS48YnI+PC9kaXY+
PGRpdj48YnI+PC9kaXY+PGRpdj5JZiB5b3UgY3JlYXRlIGEgcGlwZSB3aXRoIDxiPm1rZmlmbzwv
Yj4sIDxiPm9wZW48L2I+IHRoaXMgcGlwZSBpbiBhIHByb2Nlc3MsIDxiPnVubGluazwvYj4gaXRz
IGZpbGVuYW1lLCBhbmQgdGhlbiBjYWxsIDxiPmZzdGF0PC9iPiwgaXQgZmFpbHMgd2l0aCB0aGUg
ZXJyb3IgPGI+RU5PRU5UPC9iPjogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeS4gVGhpcyBzaG91
bGRuJ3QgYmUgdGhlIGNhc2UsIGFzIHRoZSBmaWxlIGRlc2NyaXB0b3IgaXMgc3RpbGwgdmFsaWQg
YW5kIHlvdSBzaG91bGQgYmUgYWJsZSB0byBxdWVyeSBpdHMgc3RhdHVzLiBUaGlzIHByb2JsZW0g
ZG9lc24ndCBvY2N1ciBvbiBleHQ0IG9yIG50ZnMgcmVndWxhciBmaWxlcy48L2Rpdj48ZGl2Pjxi
cj48L2Rpdj48ZGl2PkkndmUgYXR0YWNoZWQgdG8gdGhpcyBlbWFpbCBhIHNpbXBsZSBwcm9ncmFt
IHRoYXQgcmVwcm9kdWNlcyB0aGUgaXNzdWUuIFBsZWFzZSBsZXQgbWUga25vdyBpZiB0aGlzIGlz
IGEgYnVnIG9yIGV4cGVjdGVkIGJlaGF2aW9yLjxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2
PkNoZWVycyw8YnI+PC9kaXY+PGRpdj5WbGFkaW1pcjxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48
ZGl2Pjxicj48L2Rpdj4=


--b2_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M--

--b1_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M
Content-Type: text/x-c++src; name=pipetest.cpp
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=pipetest.cpp

I2luY2x1ZGUgPGlvc3RyZWFtPgoKI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDx1bmlzdGQu
aD4KI2luY2x1ZGUgPHN5cy90eXBlcy5oPgojaW5jbHVkZSA8c3lzL3N0YXQuaD4KI2luY2x1ZGUg
PGZjbnRsLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KCmludCBtYWluKCkgewogIGNvbnN0IGNoYXIq
IGZpbGVuYW1lID0gIm15cGlwZSI7CgogIC8vIFRoZSBwcm9ibGVtIG9ubHkgaGFwcGVucyB3aXRo
IGZpZm8gcGlwZXMsIGlmIHlvdSByZW1vdmUKICAvLyBta2ZpZm8gYW5kIGB0b3VjaCBteXBpcGVg
IGluc3RlYWQgaW4gdGVybWluYWwsIG5vIGVycm9yCiAgLy8gaGFwcGVucy4KICBta2ZpZm8oZmls
ZW5hbWUsIDA2NjYpOwoKICAvLyBPcGVuIGluIG5vbi1ibG9ja2luZyBtb2RlIHNvIHRoYXQgdGhl
IHByb2Nlc3MgY2FuIGNvbnRpbnVlLgogIC8vIFRoZSBzYW1lIGlzc3VlIGhhcHBlbnMgaW4gYmxv
Y2tpbmcgbW9kZSwgaWYgeW91IG9wZW4gdGhlCiAgLy8gcGlwZSBpbiBhbm90aGVyIHByb2Nlc3Mu
CiAgY29uc3QgaW50IGZkID0gb3BlbihmaWxlbmFtZSwgT19SRE9OTFkgfCBPX05PTkJMT0NLKTsK
CiAgY2hhciBidWZbMTAyNF07CiAgc3RydWN0IHN0YXQgc3RhdGJ1ZjsKCiAgc3RkOjpjZXJyIDw8
ICJmc3RhdCAxXG4iOwogIGF1dG8gcmV0ID0gZnN0YXQoZmQsICZzdGF0YnVmKTsKICBpZiAocmV0
ID09IC0xKSB7CiAgICAvLyBQcmludCBFTk9FTlQgY29kZSB0byBjb21wYXJlIHdpdGggZXJybm8u
CiAgICBzdGQ6OmNlcnIgPDwgRU5PRU5UPDwgIiwgIiA8PCBlcnJubyA8PCAnXG4nCiAgICAgICAg
ICAgICAgPDwgc3RyZXJyb3JfcihlcnJubywgYnVmLCAxMDI0KSA8PCAnXG4nOwogIH0KCiAgdW5s
aW5rKGZpbGVuYW1lKTsKCiAgc3RkOjpjZXJyIDw8ICJmc3RhdCAyXG4iOwogIHJldCA9IGZzdGF0
KGZkLCAmc3RhdGJ1Zik7CiAgaWYgKHJldCA9PSAtMSkgewogICAgLy8gUHJpbnQgRU5PRU5UIGNv
ZGUgdG8gY29tcGFyZSB3aXRoIGVycm5vLgogICAgc3RkOjpjZXJyIDw8IEVOT0VOVDw8ICIsICIg
PDwgZXJybm8gPDwgJ1xuJwogICAgICAgICAgICAgIDw8IHN0cmVycm9yX3IoZXJybm8sIGJ1Ziwg
MTAyNCkgPDwgJ1xuJzsKICB9CgogIHJldHVybiAwOwp9Cg==

--b1_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--b1_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--b1_H2khkIbjDp6Qa3H6tgsEYJKfGI4DOHZL0y8HTxY5M--


