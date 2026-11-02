.class Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;
.super Ljava/lang/Object;
.source "SimpleFileDownloadThread.java"


# instance fields
.field private md5Digest:Ljava/lang/String;

.field private observer:Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadObserver;

.field private stopThreadWhenFinished:Z

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->stopThreadWhenFinished:Z

    return-void
.end method


# virtual methods
.method public getMd5Digest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getObserver()Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadObserver;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->observer:Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadObserver;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isStopThreadWhenFinished()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->stopThreadWhenFinished:Z

    return v0
.end method

.method public setMd5Digest(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->md5Digest:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setObserver(Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadObserver;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->observer:Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadObserver;

    .line 43
    return-void
.end method

.method public setStopThreadWhenFinished(Z)V
    .locals 0
    .param p1, "stopThreadWhenFinished"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->stopThreadWhenFinished:Z

    .line 51
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/droidhang/crosspromotion/util/net/FileDownloadTask;->url:Ljava/lang/String;

    .line 30
    return-void
.end method
