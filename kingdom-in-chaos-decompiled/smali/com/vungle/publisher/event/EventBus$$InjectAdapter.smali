.class public final Lcom/vungle/publisher/event/EventBus$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "vungle"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/vungle/publisher/event/EventBus;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/event/EventBus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-string v1, "members/com.vungle.publisher.event.EventBus"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/event/EventBus;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final get()Lcom/vungle/publisher/event/EventBus;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/vungle/publisher/event/EventBus;

    invoke-direct {v0}, Lcom/vungle/publisher/event/EventBus;-><init>()V

    .line 28
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/vungle/publisher/event/EventBus$$InjectAdapter;->get()Lcom/vungle/publisher/event/EventBus;

    move-result-object v0

    return-object v0
.end method
