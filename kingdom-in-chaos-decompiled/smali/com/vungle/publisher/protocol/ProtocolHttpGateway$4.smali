.class public final Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/c;

.field final synthetic c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;Ljava/lang/String;Lcom/vungle/publisher/c;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;->c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iput-object p2, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;->b:Lcom/vungle/publisher/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;->c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iget-object v0, v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->h:Lcom/vungle/publisher/protocol/RequestStreamingAdHttpTransactionFactory;

    iget-object v1, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;->b:Lcom/vungle/publisher/c;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/protocol/RequestStreamingAdHttpTransactionFactory;->a(Ljava/lang/String;Lcom/vungle/publisher/c;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v1, "VungleProtocol"

    const-string v2, "error creating request streaming ad message"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;->c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->b()V

    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    const-string v1, "VungleProtocol"

    const-string v2, "error requesting streaming ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;->c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->b()V

    goto :goto_0
.end method
