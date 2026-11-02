.class public final Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory$$InjectAdapter;
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
        "Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "com.vungle.publisher.protocol.message.RequestStreamingAdResponse$Factory"

    const-string v1, "members/com.vungle.publisher.protocol.message.RequestStreamingAdResponse$Factory"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 38
    const-string v1, "members/com.vungle.publisher.protocol.message.RequestAdResponse$Factory"

    const-class v2, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 39
    return-void
.end method

.method public final get()Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;)V

    .line 58
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory$$InjectAdapter;->get()Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;

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
    .line 47
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse$Factory;)V

    return-void
.end method
