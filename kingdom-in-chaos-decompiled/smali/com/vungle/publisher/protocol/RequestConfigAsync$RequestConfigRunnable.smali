.class Lcom/vungle/publisher/protocol/RequestConfigAsync$RequestConfigRunnable;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/RequestConfigAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestConfigRunnable"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestConfigAsync$RequestConfigRunnable;->a:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->a()V

    .line 33
    return-void
.end method
