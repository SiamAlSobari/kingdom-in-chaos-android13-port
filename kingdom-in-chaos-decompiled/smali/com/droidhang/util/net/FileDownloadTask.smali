.class Lcom/droidhang/util/net/FileDownloadTask;
.super Ljava/lang/Object;
.source "SimpleFileDownloadThread.java"


# instance fields
.field private md5Digest:Ljava/lang/String;

.field private observer:Lcom/droidhang/util/net/SimpleFileDownloadObserver;

.field private stopThreadWhenFinished:Z

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhang/util/net/FileDownloadTask;->stopThreadWhenFinished:Z

    return-void
.end method


# virtual methods
.method public getMd5Digest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/droidhang/util/net/FileDownloadTask;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getObserver()Lcom/droidhang/util/net/SimpleFileDownloadObserver;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/droidhang/util/net/FileDownloadTask;->observer:Lcom/droidhang/util/net/SimpleFileDownloadObserver;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/droidhang/util/net/FileDownloadTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isStopThreadWhenFinished()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/droidhang/util/net/FileDownloadTask;->stopThreadWhenFinished:Z

    return v0
.end method

.method public setMd5Digest(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/droidhang/util/net/FileDownloadTask;->md5Digest:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setObserver(Lcom/droidhang/util/net/SimpleFileDownloadObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/droidhang/util/net/SimpleFileDownloadObserver;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/droidhang/util/net/FileDownloadTask;->observer:Lcom/droidhang/util/net/SimpleFileDownloadObserver;

    .line 44
    return-void
.end method

.method public setStopThreadWhenFinished(Z)V
    .locals 0
    .param p1, "stopThreadWhenFinished"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/droidhang/util/net/FileDownloadTask;->stopThreadWhenFinished:Z

    .line 52
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/droidhang/util/net/FileDownloadTask;->url:Ljava/lang/String;

    .line 31
    return-void
.end method
