.class public final Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;
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
        "Lcom/vungle/publisher/db/model/LocalAd$Factory;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAd$Factory;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAd$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/LocalArchive$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/Viewable$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/LocalVideo$Factory;",
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
            "Lcom/vungle/publisher/db/model/Ad$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    const-string v0, "com.vungle.publisher.db.model.LocalAd$Factory"

    const-string v1, "members/com.vungle.publisher.db.model.LocalAd$Factory"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 44
    const-string v0, "@com.vungle.publisher.inject.annotations.AdTempDirectory()/javax.inject.Provider<java.lang.String>"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.vungle.publisher.db.model.LocalArchive$Factory"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.vungle.publisher.db.model.Viewable$Factory"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 47
    const-string v0, "javax.inject.Provider<com.vungle.publisher.db.model.LocalAd>"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.vungle.publisher.db.model.LocalVideo$Factory"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.vungle.publisher.async.ScheduledPriorityExecutor"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 50
    const-string v1, "members/com.vungle.publisher.db.model.Ad$Factory"

    const-class v2, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 51
    return-void
.end method

.method public final get()Lcom/vungle/publisher/db/model/LocalAd$Factory;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-direct {v0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;-><init>()V

    .line 75
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/db/model/LocalAd$Factory;)V

    .line 76
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->get()Lcom/vungle/publisher/db/model/LocalAd$Factory;

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
    .line 59
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/db/model/LocalAd$Factory;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/db/model/LocalAd$Factory;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd$Factory;->d:Ljavax/inject/Provider;

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalArchive$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd$Factory;->e:Lcom/vungle/publisher/db/model/LocalArchive$Factory;

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/Viewable$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd$Factory;->f:Lcom/vungle/publisher/db/model/Viewable$Factory;

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd$Factory;->g:Ljavax/inject/Provider;

    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalVideo$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd$Factory;->h:Lcom/vungle/publisher/db/model/LocalVideo$Factory;

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd$Factory;->i:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    .line 91
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/db/model/LocalAd$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/db/model/LocalAd$Factory;)V

    return-void
.end method
