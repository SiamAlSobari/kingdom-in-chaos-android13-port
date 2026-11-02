.class public final Lcom/vungle/publisher/protocol/ProtocolHttpGateway$6;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;J)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$6;->b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iput-wide p2, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$6;->b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iget-object v0, v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->k:Lcom/vungle/publisher/protocol/SessionStartHttpTransactionFactory;

    iget-wide v1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$6;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/protocol/SessionStartHttpTransactionFactory;->a(J)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string v1, "VungleProtocol"

    const-string v2, "error sending session start"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
