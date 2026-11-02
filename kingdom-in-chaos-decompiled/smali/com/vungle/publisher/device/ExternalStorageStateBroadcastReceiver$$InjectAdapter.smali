.class public final Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver"

    const-string v1, "members/com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 39
    const-string v0, "android.content.Context"

    const-class v1, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public final get()Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    invoke-direct {v0}, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;)V

    .line 61
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->get()Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    move-result-object v0

    return-object v0
.end method

.method public final getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p1, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;->a:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;->b:Lcom/vungle/publisher/event/EventBus;

    .line 72
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;)V

    return-void
.end method
