.class public final Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;
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
        "Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;",
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
            "Lcom/vungle/publisher/reporting/AdServiceReportingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/EventTrackingHttpLogEntryDeleteDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/ad/AdManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
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

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse$Factory;",
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
            "Lcom/vungle/publisher/protocol/ProtocolHttpGateway;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/net/http/InfiniteRetryHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    const-string v0, "com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler"

    const-string v1, "members/com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 47
    const-string v0, "com.vungle.publisher.ad.AdPreparer"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.vungle.publisher.reporting.AdServiceReportingHandler"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.vungle.publisher.protocol.EventTrackingHttpLogEntryDeleteDelegate"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 51
    const-string v0, "dagger.Lazy<com.vungle.publisher.ad.AdManager>"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 52
    const-string v0, "dagger.Lazy<com.vungle.publisher.env.SdkState>"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.vungle.publisher.protocol.message.RequestLocalAdResponse$Factory"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.vungle.publisher.async.ScheduledPriorityExecutor"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->h:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.vungle.publisher.protocol.ProtocolHttpGateway"

    const-class v1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->i:Ldagger/internal/Binding;

    .line 56
    const-string v1, "members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler"

    const-class v2, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->j:Ldagger/internal/Binding;

    .line 57
    return-void
.end method

.method public final get()Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;-><init>()V

    .line 84
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;)V

    .line 85
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->get()Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

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
    .line 65
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/AdPreparer;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->a:Lcom/vungle/publisher/ad/AdPreparer;

    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/reporting/AdServiceReportingHandler;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->b:Lcom/vungle/publisher/reporting/AdServiceReportingHandler;

    .line 96
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->c:Lcom/vungle/publisher/event/EventBus;

    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/EventTrackingHttpLogEntryDeleteDelegate;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->d:Lcom/vungle/publisher/protocol/EventTrackingHttpLogEntryDeleteDelegate;

    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/Lazy;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->e:Ldagger/Lazy;

    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/Lazy;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->j:Ldagger/Lazy;

    .line 100
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->k:Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse$Factory;

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->l:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;->m:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/RequestLocalAdHttpResponseHandler;)V

    return-void
.end method
