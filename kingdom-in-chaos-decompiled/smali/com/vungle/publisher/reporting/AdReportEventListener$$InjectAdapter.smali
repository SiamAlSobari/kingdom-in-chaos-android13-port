.class public final Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;
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
        "Lcom/vungle/publisher/reporting/AdReportEventListener;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/reporting/AdReportEventListener;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/reporting/AdReportEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/reporting/AdServiceReportingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/AdReport$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/reporting/AdReportManager;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/cc;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/bk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "com.vungle.publisher.reporting.AdReportEventListener"

    const-string v1, "members/com.vungle.publisher.reporting.AdReportEventListener"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 42
    const-string v0, "com.vungle.publisher.reporting.AdServiceReportingHandler"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.vungle.publisher.db.model.AdReport$Factory"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.vungle.publisher.reporting.AdReportManager"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.vungle.publisher.cc"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 46
    const-string v1, "members/com.vungle.publisher.event.BaseEventListener"

    const-class v2, Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 47
    return-void
.end method

.method public final get()Lcom/vungle/publisher/reporting/AdReportEventListener;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-direct {v0}, Lcom/vungle/publisher/reporting/AdReportEventListener;-><init>()V

    .line 69
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/reporting/AdReportEventListener;)V

    .line 70
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->get()Lcom/vungle/publisher/reporting/AdReportEventListener;

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
    .line 55
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/reporting/AdReportEventListener;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/reporting/AdReportEventListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/reporting/AdServiceReportingHandler;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportEventListener;->c:Lcom/vungle/publisher/reporting/AdServiceReportingHandler;

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/AdReport$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportEventListener;->d:Lcom/vungle/publisher/db/model/AdReport$Factory;

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/reporting/AdReportManager;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportEventListener;->e:Lcom/vungle/publisher/reporting/AdReportManager;

    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cc;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportEventListener;->g:Lcom/vungle/publisher/cc;

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/reporting/AdReportEventListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/reporting/AdReportEventListener$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/reporting/AdReportEventListener;)V

    return-void
.end method
