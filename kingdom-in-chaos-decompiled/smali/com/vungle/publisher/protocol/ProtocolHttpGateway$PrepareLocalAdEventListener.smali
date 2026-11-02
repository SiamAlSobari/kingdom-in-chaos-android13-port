.class Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;
.super Lcom/vungle/publisher/bk;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrepareLocalAdEventListener"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/protocol/ProtocolHttpGateway;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/vungle/publisher/bk;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/ci;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->b(Lcom/vungle/publisher/ci;)V

    .line 307
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/p;)V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;->a(Lcom/vungle/publisher/ci;)V

    .line 303
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/v;)V
    .locals 1
    .param p1, "prepareAdRecoverableFailureEvent"    # Lcom/vungle/publisher/v;

    .prologue
    .line 298
    iget-object v0, p1, Lcom/vungle/publisher/v;->a:Lcom/vungle/publisher/ci;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;->a(Lcom/vungle/publisher/ci;)V

    .line 299
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/z;)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;->a(Lcom/vungle/publisher/ci;)V

    .line 295
    return-void
.end method
