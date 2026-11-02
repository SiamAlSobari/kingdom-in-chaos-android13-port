.class public final Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;
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
        "Lcom/vungle/publisher/ad/AdManager;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/ad/AdManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/ad/AdManager;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/ad/AdPreparer;",
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
            "Lcom/vungle/publisher/bf;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/async/ScheduledPriorityExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAd$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/cb;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/ad/AdManager$AdAvailabilityEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/ProtocolHttpGateway;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/env/SdkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/StreamingAd$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/Viewable$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/env/SdkState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 43
    const-string v0, "com.vungle.publisher.ad.AdManager"

    const-string v1, "members/com.vungle.publisher.ad.AdManager"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/ad/AdManager;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 53
    const-string v0, "com.vungle.publisher.ad.AdPreparer"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 54
    const-string v0, "android.content.Context"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.vungle.publisher.bf"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 56
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 57
    const-string v0, "@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 58
    const-string v0, "com.vungle.publisher.async.ScheduledPriorityExecutor"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 59
    const-string v0, "com.vungle.publisher.db.model.LocalAd$Factory"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 60
    const-string v0, "com.vungle.publisher.cb"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->h:Ldagger/internal/Binding;

    .line 61
    const-string v0, "dagger.Lazy<com.vungle.publisher.ad.AdManager$PlayAdEventListener>"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->i:Ldagger/internal/Binding;

    .line 62
    const-string v0, "dagger.Lazy<com.vungle.publisher.ad.AdManager$AdAvailabilityEventListener>"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->j:Ldagger/internal/Binding;

    .line 63
    const-string v0, "javax.inject.Provider<com.vungle.publisher.ad.AdManager$PrepareStreamingAdEventListener>"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->k:Ldagger/internal/Binding;

    .line 64
    const-string v0, "com.vungle.publisher.protocol.ProtocolHttpGateway"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->l:Ldagger/internal/Binding;

    .line 65
    const-string v0, "com.vungle.publisher.env.SdkConfig"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->m:Ldagger/internal/Binding;

    .line 66
    const-string v0, "com.vungle.publisher.db.model.StreamingAd$Factory"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->n:Ldagger/internal/Binding;

    .line 67
    const-string v0, "com.vungle.publisher.db.model.Viewable$Factory"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->o:Ldagger/internal/Binding;

    .line 68
    const-string v0, "dagger.Lazy<com.vungle.publisher.env.SdkState>"

    const-class v1, Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->p:Ldagger/internal/Binding;

    .line 69
    return-void
.end method

.method public final get()Lcom/vungle/publisher/ad/AdManager;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/vungle/publisher/ad/AdManager;

    invoke-direct {v0}, Lcom/vungle/publisher/ad/AdManager;-><init>()V

    .line 102
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/ad/AdManager;)V

    .line 103
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->get()Lcom/vungle/publisher/ad/AdManager;

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
    .line 77
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->k:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->l:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->m:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->n:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->o:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->p:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/ad/AdManager;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/ad/AdManager;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/AdPreparer;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->a:Lcom/vungle/publisher/ad/AdPreparer;

    .line 113
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->b:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bf;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->c:Lcom/vungle/publisher/bf;

    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->d:Lcom/vungle/publisher/event/EventBus;

    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->e:Ljava/lang/Class;

    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->f:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    .line 118
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->g:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cb;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->h:Lcom/vungle/publisher/cb;

    .line 120
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/Lazy;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->i:Ldagger/Lazy;

    .line 121
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/Lazy;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->j:Ldagger/Lazy;

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->k:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->k:Ljavax/inject/Provider;

    .line 123
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->l:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->l:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    .line 124
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->m:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/SdkConfig;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->m:Lcom/vungle/publisher/env/SdkConfig;

    .line 125
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->n:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/StreamingAd$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->n:Lcom/vungle/publisher/db/model/StreamingAd$Factory;

    .line 126
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->o:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/Viewable$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->o:Lcom/vungle/publisher/db/model/Viewable$Factory;

    .line 127
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->p:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/Lazy;

    iput-object v0, p1, Lcom/vungle/publisher/ad/AdManager;->p:Ldagger/Lazy;

    .line 128
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/ad/AdManager;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ad/AdManager$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/ad/AdManager;)V

    return-void
.end method
