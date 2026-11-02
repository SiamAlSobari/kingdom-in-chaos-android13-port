.class public final Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "vungle"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideRequestConfigHttpTransactionProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/vungle/publisher/net/http/HttpTransaction;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/net/http/HttpTransaction;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/net/http/HttpTransaction$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/ck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V
    .locals 4
    .param p1, "module"    # Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .prologue
    const/4 v3, 0x0

    .line 790
    const-string v0, "@com.vungle.publisher.inject.annotations.RequestConfigHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction"

    const-string v1, "com.vungle.publisher.inject.ConfigurablePublisherModule"

    const-string v2, "provideRequestConfigHttpTransaction"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 791
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .line 792
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->setLibrary(Z)V

    .line 793
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 802
    const-string v0, "com.vungle.publisher.net.http.HttpTransaction$Factory"

    const-class v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->b:Ldagger/internal/Binding;

    .line 803
    const-string v0, "com.vungle.publisher.protocol.RequestConfigHttpRequest$Factory"

    const-class v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->c:Ldagger/internal/Binding;

    .line 804
    const-string v0, "com.vungle.publisher.ck"

    const-class v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->d:Ldagger/internal/Binding;

    .line 805
    return-void
.end method

.method public final get()Lcom/vungle/publisher/net/http/HttpTransaction;
    .locals 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;

    iget-object v1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;

    iget-object v2, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/ck;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->a(Lcom/vungle/publisher/net/http/HttpTransaction$Factory;Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;Lcom/vungle/publisher/ck;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->get()Lcom/vungle/publisher/net/http/HttpTransaction;

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
    .line 813
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 815
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 816
    return-void
.end method
