.class final Lcom/vungle/publisher/protocol/ProtocolHttpGateway$8;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$8;->a:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$8;->a:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iget-object v0, v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->m:Lcom/vungle/publisher/protocol/UnfilledAdHttpTransactionFactory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/protocol/UnfilledAdHttpTransactionFactory;->a(J)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string v1, "VungleProtocol"

    const-string v2, "error sending unfilled ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
