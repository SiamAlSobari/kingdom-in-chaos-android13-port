.class Lcom/droidhang/util/net/DHHttpTask;
.super Ljava/lang/Object;
.source "DHSimpleHttpThread.java"


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private observer:Lcom/droidhang/util/net/DHSimpleHttpObserver;

.field private purchase:Lcom/droidhang/pay/util/Purchase;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/droidhang/util/net/DHHttpTask;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getObserver()Lcom/droidhang/util/net/DHSimpleHttpObserver;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/droidhang/util/net/DHHttpTask;->observer:Lcom/droidhang/util/net/DHSimpleHttpObserver;

    return-object v0
.end method

.method public getPurchase()Lcom/droidhang/pay/util/Purchase;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/droidhang/util/net/DHHttpTask;->purchase:Lcom/droidhang/pay/util/Purchase;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/droidhang/util/net/DHHttpTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/droidhang/util/net/DHHttpTask;->entity:Lorg/apache/http/HttpEntity;

    .line 49
    return-void
.end method

.method public setObserver(Lcom/droidhang/util/net/DHSimpleHttpObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/droidhang/util/net/DHSimpleHttpObserver;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/droidhang/util/net/DHHttpTask;->observer:Lcom/droidhang/util/net/DHSimpleHttpObserver;

    .line 57
    return-void
.end method

.method public setPurchase(Lcom/droidhang/pay/util/Purchase;)V
    .locals 0
    .param p1, "purchase"    # Lcom/droidhang/pay/util/Purchase;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/droidhang/util/net/DHHttpTask;->purchase:Lcom/droidhang/pay/util/Purchase;

    .line 45
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/droidhang/util/net/DHHttpTask;->url:Ljava/lang/String;

    .line 33
    return-void
.end method
