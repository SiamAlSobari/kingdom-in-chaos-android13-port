.class public final Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;,
        Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter;->a:[Ljava/lang/String;

    .line 18
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter;->b:[Ljava/lang/Class;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    aput-object v1, v0, v2

    sput-object v0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 22
    const-class v1, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    sget-object v2, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter;->a:[Ljava/lang/String;

    sget-object v3, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter;->b:[Ljava/lang/Class;

    sget-object v5, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter;->c:[Ljava/lang/Class;

    const/4 v7, 0x0

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Ldagger/internal/BindingsGroup;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p2, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    .end local p2    # "x1":Ljava/lang/Object;
    const-string v0, "com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy"

    new-instance v1, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.net.wifi.WifiManager"

    new-instance v1, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule$$ModuleAdapter$ProvideWifiManagerProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    return-void
.end method

.method public final synthetic newModule()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    invoke-direct {v0}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;-><init>()V

    return-object v0
.end method
