.class public Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;
.super Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a",
        "<",
        "Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/protocol/message/RequestConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/net/http/HttpRequest;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;->g:Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;

    return-object v0
.end method

.method public final synthetic b()Lcom/vungle/publisher/net/http/HttpRequest;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;->d()Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/vungle/publisher/protocol/ProtocolHttpRequest;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;->d()Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/bt;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;->g:Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;

    iget-boolean v0, v0, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;->e:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;->g:Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;

    .line 53
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-super {p0}, Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a;->c()Lcom/vungle/publisher/protocol/ProtocolHttpRequest;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->b:Ljava/lang/String;

    .line 50
    iget-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->c:Landroid/os/Bundle;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;->h:Lcom/vungle/publisher/protocol/message/RequestConfig;

    invoke-virtual {v1}, Lcom/vungle/publisher/protocol/message/RequestConfig;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Lcom/vungle/publisher/bt;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/bt;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
