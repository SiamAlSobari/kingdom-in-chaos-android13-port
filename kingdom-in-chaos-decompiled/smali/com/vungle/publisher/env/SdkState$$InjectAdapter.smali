.class public final Lcom/vungle/publisher/env/SdkState$$InjectAdapter;
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
        "Lcom/vungle/publisher/env/SdkState;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/env/SdkState;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/env/SdkState;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/ad/AdManager;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/DatabaseBroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/bf;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/net/NetworkBroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/async/ScheduledPriorityExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/env/SdkState$AdThrottleEndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/ProtocolHttpGateway;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/env/SdkState$EndAdEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "com.vungle.publisher.env.SdkState"

    const-string v1, "members/com.vungle.publisher.env.SdkState"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/env/SdkState;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 49
    const-string v0, "com.vungle.publisher.ad.AdManager"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 50
    const-string v0, "android.content.Context"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.vungle.publisher.db.DatabaseBroadcastReceiver"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.vungle.publisher.bf"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.vungle.publisher.net.NetworkBroadcastReceiver"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 56
    const-string v0, "com.vungle.publisher.async.ScheduledPriorityExecutor"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->h:Ldagger/internal/Binding;

    .line 57
    const-string v0, "com.vungle.publisher.env.SdkState$AdThrottleEndRunnable"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->i:Ldagger/internal/Binding;

    .line 58
    const-string v0, "com.vungle.publisher.protocol.ProtocolHttpGateway"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->j:Ldagger/internal/Binding;

    .line 59
    const-string v0, "dagger.Lazy<com.vungle.publisher.env.SdkState$EndAdEventListener>"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->k:Ldagger/internal/Binding;

    .line 60
    const-string v0, "@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences"

    const-class v1, Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->l:Ldagger/internal/Binding;

    .line 61
    return-void
.end method

.method public final get()Lcom/vungle/publisher/env/SdkState;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/vungle/publisher/env/SdkState;

    invoke-direct {v0}, Lcom/vungle/publisher/env/SdkState;-><init>()V

    .line 90
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/env/SdkState;)V

    .line 91
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->get()Lcom/vungle/publisher/env/SdkState;

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
    .line 69
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->k:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->l:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/env/SdkState;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/env/SdkState;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/AdManager;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->a:Lcom/vungle/publisher/ad/AdManager;

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->b:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/DatabaseBroadcastReceiver;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->c:Lcom/vungle/publisher/db/DatabaseBroadcastReceiver;

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bf;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->d:Lcom/vungle/publisher/bf;

    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->e:Lcom/vungle/publisher/event/EventBus;

    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->f:Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/net/NetworkBroadcastReceiver;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->g:Lcom/vungle/publisher/net/NetworkBroadcastReceiver;

    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->h:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/SdkState$AdThrottleEndRunnable;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->i:Lcom/vungle/publisher/env/SdkState$AdThrottleEndRunnable;

    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->j:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->k:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/Lazy;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->k:Ldagger/Lazy;

    .line 111
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->l:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p1, Lcom/vungle/publisher/env/SdkState;->o:Landroid/content/SharedPreferences;

    .line 112
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/env/SdkState;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/env/SdkState$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/env/SdkState;)V

    return-void
.end method
