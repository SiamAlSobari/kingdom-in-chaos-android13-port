.class public Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/inject/OverrideModule;


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule;
    }
    overrides = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideDeviceIdStrategy(Lcom/vungle/publisher/env/AdaptiveDeviceIdStrategy;)Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .locals 0
    .param p1, "deviceIdStrategy"    # Lcom/vungle/publisher/env/AdaptiveDeviceIdStrategy;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 25
    return-object p1
.end method

.method provideWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 30
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method
