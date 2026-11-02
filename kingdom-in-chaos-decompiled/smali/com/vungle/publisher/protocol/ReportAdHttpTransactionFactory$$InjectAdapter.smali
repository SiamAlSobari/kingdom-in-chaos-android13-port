.class public final Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;
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
        "Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/ReportLocalAdHttpRequest$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/ReportLocalAdHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/ReportStreamingAdHttpRequest$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/ReportStreamingAdHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/net/http/HttpTransaction$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "com.vungle.publisher.protocol.ReportAdHttpTransactionFactory"

    const-string v1, "members/com.vungle.publisher.protocol.ReportAdHttpTransactionFactory"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

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
    const-string v0, "com.vungle.publisher.protocol.ReportLocalAdHttpRequest$Factory"

    const-class v1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.vungle.publisher.protocol.ReportLocalAdHttpResponseHandler"

    const-class v1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.vungle.publisher.protocol.ReportStreamingAdHttpRequest$Factory"

    const-class v1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.vungle.publisher.protocol.ReportStreamingAdHttpResponseHandler"

    const-class v1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 46
    const-string v1, "members/com.vungle.publisher.net.http.HttpTransaction$Factory"

    const-class v2, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 47
    return-void
.end method

.method public final get()Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;-><init>()V

    .line 69
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;)V

    .line 70
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->get()Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

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
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ReportLocalAdHttpRequest$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;->a:Lcom/vungle/publisher/protocol/ReportLocalAdHttpRequest$Factory;

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ReportLocalAdHttpResponseHandler;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;->b:Lcom/vungle/publisher/protocol/ReportLocalAdHttpResponseHandler;

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ReportStreamingAdHttpRequest$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;->d:Lcom/vungle/publisher/protocol/ReportStreamingAdHttpRequest$Factory;

    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/ReportStreamingAdHttpResponseHandler;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;->e:Lcom/vungle/publisher/protocol/ReportStreamingAdHttpResponseHandler;

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;)V

    return-void
.end method
