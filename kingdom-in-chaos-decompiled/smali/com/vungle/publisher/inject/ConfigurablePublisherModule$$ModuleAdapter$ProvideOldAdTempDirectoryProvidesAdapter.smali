.class public final Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;
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
    name = "ProvideOldAdTempDirectoryProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/lang/String;",
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
            "Landroid/content/Context;",
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

    .line 154
    const-string v0, "@com.vungle.publisher.inject.annotations.OldAdTempDirectory()/java.lang.String"

    const-string v1, "com.vungle.publisher.inject.ConfigurablePublisherModule"

    const-string v2, "provideOldAdTempDirectory"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .line 156
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;->setLibrary(Z)V

    .line 157
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 166
    const-string v0, "android.content.Context"

    const-class v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;->b:Ldagger/internal/Binding;

    .line 167
    return-void
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->b(Landroid/content/Context;)Ljava/lang/String;

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
    .line 175
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method
