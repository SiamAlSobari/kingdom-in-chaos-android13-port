.class public Lcom/vungle/publisher/protocol/SessionStartHttpRequest$Factory;
.super Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/SessionStartHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a",
        "<",
        "Lcom/vungle/publisher/protocol/SessionStartHttpRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/protocol/message/SessionStart$Factory;
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
.method protected final synthetic a()Lcom/vungle/publisher/net/http/HttpRequest;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/vungle/publisher/protocol/SessionStartHttpRequest;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/SessionStartHttpRequest;-><init>()V

    return-object v0
.end method

.method protected final a(J)Lcom/vungle/publisher/protocol/SessionStartHttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/SessionStartHttpRequest$Factory;->c()Lcom/vungle/publisher/protocol/ProtocolHttpRequest;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/SessionStartHttpRequest;

    .line 46
    iget-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->c:Landroid/os/Bundle;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/protocol/SessionStartHttpRequest$Factory;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sessionStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->b:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/vungle/publisher/protocol/SessionStartHttpRequest$Factory;->g:Lcom/vungle/publisher/protocol/message/SessionStart$Factory;

    invoke-virtual {v1, p1, p2}, Lcom/vungle/publisher/protocol/message/SessionStart$Factory;->a(J)Lcom/vungle/publisher/protocol/message/SessionStart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/publisher/protocol/message/SessionStart;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->d:Ljava/lang/String;

    .line 49
    return-object v0
.end method
