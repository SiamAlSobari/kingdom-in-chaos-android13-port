.class public final Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;
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
        "Lcom/vungle/publisher/protocol/ProtocolHttpGateway;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/protocol/ProtocolHttpGateway;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/protocol/ProtocolHttpGateway;",
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
            "Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/net/http/HttpTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/RequestLocalAdHttpTransactionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/RequestStreamingAdHttpTransactionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/SafeBundleAdConfigFactory;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/SessionStartHttpTransactionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/net/http/HttpTransaction;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/UnfilledAdHttpTransactionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/reporting/AdServiceReportingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/cd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    const-string v0, "com.vungle.publisher.protocol.ProtocolHttpGateway"

    const-string v1, "members/com.vungle.publisher.protocol.ProtocolHttpGateway"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 50
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.vungle.publisher.protocol.ProtocolHttpGateway$PrepareLocalAdEventListener"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.vungle.publisher.protocol.ReportAdHttpTransactionFactory"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 53
    const-string v0, "@com.vungle.publisher.inject.annotations.RequestConfigHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.vungle.publisher.protocol.RequestLocalAdHttpTransactionFactory"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.vungle.publisher.protocol.RequestStreamingAdHttpTransactionFactory"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 56
    const-string v0, "com.vungle.publisher.SafeBundleAdConfigFactory"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 57
    const-string v0, "com.vungle.publisher.protocol.SessionEndHttpTransactionFactory"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->h:Ldagger/internal/Binding;

    .line 58
    const-string v0, "com.vungle.publisher.protocol.SessionStartHttpTransactionFactory"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->i:Ldagger/internal/Binding;

    .line 59
    const-string v0, "@com.vungle.publisher.inject.annotations.TrackInstallHttpTransaction()/javax.inject.Provider<com.vungle.publisher.net.http.HttpTransaction>"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->j:Ldagger/internal/Binding;

    .line 60
    const-string v0, "com.vungle.publisher.protocol.UnfilledAdHttpTransactionFactory"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->k:Ldagger/internal/Binding;

    .line 61
    const-string v0, "com.vungle.publisher.reporting.AdServiceReportingHandler"

    const-class v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->l:Ldagger/internal/Binding;

    .line 62
    const-string v1, "members/com.vungle.publisher.net.http.HttpGateway"

    const-class v2, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->m:Ldagger/internal/Binding;

    .line 63
    return-void
.end method

.method public final get()Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;-><init>()V

    .line 93
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)V

    .line 94
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->get()Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

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
    .line 71
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->k:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->l:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->m:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->a:Lcom/vungle/publisher/event/EventBus;

    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;

    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->e:Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/net/http/HttpTransaction;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->f:Lcom/vungle/publisher/net/http/HttpTransaction;

    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/RequestLocalAdHttpTransactionFactory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->g:Lcom/vungle/publisher/protocol/RequestLocalAdHttpTransactionFactory;

    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/RequestStreamingAdHttpTransactionFactory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->h:Lcom/vungle/publisher/protocol/RequestStreamingAdHttpTransactionFactory;

    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/SafeBundleAdConfigFactory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->i:Lcom/vungle/publisher/SafeBundleAdConfigFactory;

    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->j:Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;

    .line 111
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/SessionStartHttpTransactionFactory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->k:Lcom/vungle/publisher/protocol/SessionStartHttpTransactionFactory;

    .line 112
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->l:Ljavax/inject/Provider;

    .line 113
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->k:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/UnfilledAdHttpTransactionFactory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->m:Lcom/vungle/publisher/protocol/UnfilledAdHttpTransactionFactory;

    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->l:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/reporting/AdServiceReportingHandler;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->n:Lcom/vungle/publisher/reporting/AdServiceReportingHandler;

    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->m:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)V

    return-void
.end method
