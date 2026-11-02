.class public final Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "vungle"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideDeviceIdStrategyProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/env/AdaptiveDeviceIdStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;)V
    .locals 4
    .param p1, "module"    # Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    .prologue
    .line 56
    const-string v0, "com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy"

    const/4 v1, 0x1

    const-string v2, "com.vungle.publisher.inject.AdaptiveIdOverrideModule"

    const-string v3, "provideDeviceIdStrategy"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;->a:Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;->setLibrary(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 68
    const-string v0, "com.vungle.publisher.env.AdaptiveDeviceIdStrategy"

    const-class v1, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;->b:Ldagger/internal/Binding;

    .line 69
    return-void
.end method

.method public final get()Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;->a:Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    iget-object v0, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/AdaptiveDeviceIdStrategy;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;->provideDeviceIdStrategy(Lcom/vungle/publisher/env/AdaptiveDeviceIdStrategy;)Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;->get()Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;

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
    .line 77
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method
