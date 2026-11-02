.class Lcom/droidhang/crosspromotion/util/net/HttpTask;
.super Ljava/lang/Object;
.source "SimpleHttpThread.java"


# instance fields
.field private observer:Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;

.field private param:Ljava/lang/String;

.field private stopThreadWhenFinished:Z

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObserver()Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/droidhang/crosspromotion/util/net/HttpTask;->observer:Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/droidhang/crosspromotion/util/net/HttpTask;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/droidhang/crosspromotion/util/net/HttpTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isStopThreadWhenFinished()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/droidhang/crosspromotion/util/net/HttpTask;->stopThreadWhenFinished:Z

    return v0
.end method

.method public setObserver(Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/droidhang/crosspromotion/util/net/HttpTask;->observer:Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;

    .line 47
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/droidhang/crosspromotion/util/net/HttpTask;->param:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStopThreadWhenFinished(Z)V
    .locals 0
    .param p1, "stopThreadWhenFinished"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/droidhang/crosspromotion/util/net/HttpTask;->stopThreadWhenFinished:Z

    .line 55
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/droidhang/crosspromotion/util/net/HttpTask;->url:Ljava/lang/String;

    .line 31
    return-void
.end method
