.class public final Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;
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
    name = "ProvideWifiManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Landroid/net/wifi/WifiManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/net/wifi/WifiManager;",
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
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;)V
    .locals 4
    .param p1, "module"    # Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    .prologue
    const/4 v3, 0x0

    .line 106
    const-string v0, "android.net.wifi.WifiManager"

    const-string v1, "com.vungle.publisher.inject.AdaptiveIdOverrideModule"

    const-string v2, "provideWifiManager"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;->a:Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    .line 108
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;->setLibrary(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 118
    const-string v0, "android.content.Context"

    const-class v1, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;->b:Ldagger/internal/Binding;

    .line 119
    return-void
.end method

.method public final get()Landroid/net/wifi/WifiManager;
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;->a:Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    iget-object v0, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;->provideWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;->get()Landroid/net/wifi/WifiManager;

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
    .line 127
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method
