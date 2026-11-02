.class final Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->c(Lcom/vungle/publisher/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ci;

.field final synthetic b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;Lcom/vungle/publisher/ci;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;->b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iput-object p2, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;->a:Lcom/vungle/publisher/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;->b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iget-object v0, v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/net/http/HttpTransaction;

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v1, "VungleProtocol"

    const-string v2, "error sending track install"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;->b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iget-object v1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;->a:Lcom/vungle/publisher/ci;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->c(Lcom/vungle/publisher/ci;)V

    goto :goto_0
.end method
