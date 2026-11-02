.class public final Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;
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
        "Lcom/vungle/publisher/db/model/LocalAdReport$Factory;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAdReport$Factory;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAdReport$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAd$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAdPlay$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAdReport;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/AdReport$BaseFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    const-string v0, "com.vungle.publisher.db.model.LocalAdReport$Factory"

    const-string v1, "members/com.vungle.publisher.db.model.LocalAdReport$Factory"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 41
    const-string v0, "com.vungle.publisher.db.model.LocalAd$Factory"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.vungle.publisher.db.model.LocalAdPlay$Factory"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 43
    const-string v0, "javax.inject.Provider<com.vungle.publisher.db.model.LocalAdReport>"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 44
    const-string v1, "members/com.vungle.publisher.db.model.AdReport$BaseFactory"

    const-class v2, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public final get()Lcom/vungle/publisher/db/model/LocalAdReport$Factory;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    invoke-direct {v0}, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/db/model/LocalAdReport$Factory;)V

    .line 67
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->get()Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

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
    .line 53
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/db/model/LocalAdReport$Factory;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;->b:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAdPlay$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;->d:Lcom/vungle/publisher/db/model/LocalAdPlay$Factory;

    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;->e:Ljavax/inject/Provider;

    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/db/model/LocalAdReport$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/db/model/LocalAdReport$Factory;)V

    return-void
.end method
