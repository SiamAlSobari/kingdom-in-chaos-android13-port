.class public final Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;
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
        "Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;",
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
            "Lcom/vungle/publisher/db/model/LocalAdReportEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/AdReportEvent$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "com.vungle.publisher.db.model.LocalAdReportEvent$Factory"

    const-string v1, "members/com.vungle.publisher.db.model.LocalAdReportEvent$Factory"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 39
    const-string v0, "javax.inject.Provider<com.vungle.publisher.db.model.LocalAdReportEvent>"

    const-class v1, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 40
    const-string v1, "members/com.vungle.publisher.db.model.AdReportEvent$Factory"

    const-class v2, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public final get()Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;

    invoke-direct {v0}, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;)V

    .line 61
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->get()Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;

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
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;->a:Ljavax/inject/Provider;

    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;)V

    return-void
.end method
