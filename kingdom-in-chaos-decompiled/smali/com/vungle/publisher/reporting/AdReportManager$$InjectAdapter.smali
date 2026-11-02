.class public final Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;
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
        "Lcom/vungle/publisher/reporting/AdReportManager;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/reporting/AdReportManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/reporting/AdReportManager;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
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
            "Lcom/vungle/publisher/db/model/LocalAdReport$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/ProtocolHttpGateway;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/env/SdkState;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/StreamingAdReport$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    const-string v0, "com.vungle.publisher.reporting.AdReportManager"

    const-string v1, "members/com.vungle.publisher.reporting.AdReportManager"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 43
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.vungle.publisher.db.model.AdReport$Factory"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.vungle.publisher.db.model.LocalAdReport$Factory"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.vungle.publisher.protocol.ProtocolHttpGateway"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.vungle.publisher.env.SdkState"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.vungle.publisher.db.model.StreamingAdReport$Factory"

    const-class v1, Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 49
    return-void
.end method

.method public final get()Lcom/vungle/publisher/reporting/AdReportManager;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-direct {v0}, Lcom/vungle/publisher/reporting/AdReportManager;-><init>()V

    .line 72
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/reporting/AdReportManager;)V

    .line 73
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->get()Lcom/vungle/publisher/reporting/AdReportManager;

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
    .line 57
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/reporting/AdReportManager;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/reporting/AdReportManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportManager;->a:Lcom/vungle/publisher/event/EventBus;

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/AdReport$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportManager;->b:Lcom/vungle/publisher/db/model/AdReport$Factory;

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportManager;->c:Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportManager;->d:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/SdkState;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportManager;->e:Lcom/vungle/publisher/env/SdkState;

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/StreamingAdReport$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/reporting/AdReportManager;->f:Lcom/vungle/publisher/db/model/StreamingAdReport$Factory;

    .line 88
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/reporting/AdReportManager;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/reporting/AdReportManager$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/reporting/AdReportManager;)V

    return-void
.end method
