.class public final Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;
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
        "Lcom/vungle/publisher/FullScreenAdActivity;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/FullScreenAdActivity;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/FullScreenAdActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/ad/AdManager;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/reporting/AdReportEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/bf;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/VideoFragment$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/env/SdkState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    const-string v0, "com.vungle.publisher.FullScreenAdActivity"

    const-string v1, "members/com.vungle.publisher.FullScreenAdActivity"

    const/4 v2, 0x0

    const-class v3, Lcom/vungle/publisher/FullScreenAdActivity;

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
    const-string v0, "com.vungle.publisher.ad.AdManager"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.vungle.publisher.reporting.AdReportEventListener"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.vungle.publisher.bf"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.vungle.publisher.display.view.VideoFragment$Factory"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.vungle.publisher.env.SdkState"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 49
    return-void
.end method

.method public final get()Lcom/vungle/publisher/FullScreenAdActivity;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-direct {v0}, Lcom/vungle/publisher/FullScreenAdActivity;-><init>()V

    .line 72
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/FullScreenAdActivity;)V

    .line 73
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->get()Lcom/vungle/publisher/FullScreenAdActivity;

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
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/FullScreenAdActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/AdManager;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ad/AdManager;

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/reporting/AdReportEventListener;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bf;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->c:Lcom/vungle/publisher/bf;

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/event/EventBus;

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/VideoFragment$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->e:Lcom/vungle/publisher/display/view/VideoFragment$Factory;

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/SdkState;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->f:Lcom/vungle/publisher/env/SdkState;

    .line 88
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/FullScreenAdActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/FullScreenAdActivity;)V

    return-void
.end method
