.class public final Lcom/vungle/publisher/protocol/ProtocolHttpGateway$5;
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

.field final synthetic b:J

.field final synthetic c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;JJ)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$5;->c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iput-wide p2, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$5;->a:J

    iput-wide p4, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$5;->c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iget-object v0, v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->j:Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;

    iget-wide v1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$5;->a:J

    iget-wide v3, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$5;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;->a(JJ)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "VungleProtocol"

    const-string v2, "error sending session end"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
