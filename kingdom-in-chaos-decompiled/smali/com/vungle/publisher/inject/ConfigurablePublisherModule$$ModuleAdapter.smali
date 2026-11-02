.class public final Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkVersionProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWindowManagerProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideVungleBaseUrlProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideTrackInstallHttpTransactionProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvidePublisherAppProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideNetworkProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideLocationProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideFullScreenAdActivityClassProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideEnvSharedPreferencesProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideDeviceProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleAggregateDetailedLocationProviderProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideConnectivityManagerProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideAdTempDirectoryProvidesAdapter;,
        Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lcom/vungle/publisher/inject/ConfigurablePublisherModule;",
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "members/com.vungle.publisher.ad.AdManager"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "members/com.vungle.publisher.env.AndroidDevice"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "members/com.vungle.publisher.location.AndroidLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "members/com.vungle.publisher.net.AndroidNetwork"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "members/com.vungle.publisher.FullScreenAdActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "members/com.vungle.publisher.location.GoogleLocationClientDetailedLocationProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "members/com.vungle.publisher.location.GoogleLocationServicesDetailedLocationProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "members/com.vungle.publisher.display.view.PostRollFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "members/com.vungle.publisher.display.view.VideoFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "members/com.vungle.sdk.VungleAdvert"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "members/com.vungle.publisher.VunglePub"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;->a:[Ljava/lang/String;

    .line 18
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;->b:[Ljava/lang/Class;

    .line 19
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 22
    const-class v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    sget-object v2, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;->a:[Ljava/lang/String;

    sget-object v3, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;->b:[Ljava/lang/Class;

    sget-object v5, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;->c:[Ljava/lang/Class;

    const/4 v6, 0x1

    move-object v0, p0

    move v7, v4

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
    check-cast p2, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .end local p2    # "x1":Ljava/lang/Object;
    const-string v0, "android.content.Context"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@com.vungle.publisher.inject.annotations.AdTempDirectory()/java.lang.String"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideAdTempDirectoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideAdTempDirectoryProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@com.vungle.publisher.inject.annotations.OldAdTempDirectory()/java.lang.String"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideOldAdTempDirectoryProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.media.AudioManager"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.image.BitmapFactory"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.net.ConnectivityManager"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideConnectivityManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideConnectivityManagerProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.bv"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleAggregateDetailedLocationProviderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleAggregateDetailedLocationProviderProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.bx"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.by"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.bf"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideDeviceProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideDeviceProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideDeviceIdStrategyProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideEnvSharedPreferencesProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideEnvSharedPreferencesProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideFullScreenAdActivityClassProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideFullScreenAdActivityClassProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.bz"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideLocationProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideLocationProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.cb"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideNetworkProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideNetworkProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.bh"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvidePublisherAppProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvidePublisherAppProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@com.vungle.publisher.inject.annotations.RequestConfigHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideRequestConfigHttpTransactionProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.telephony.TelephonyManager"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@com.vungle.publisher.inject.annotations.TrackInstallHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideTrackInstallHttpTransactionProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideTrackInstallHttpTransactionProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@com.vungle.publisher.inject.annotations.VungleBaseUrl()/java.lang.String"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideVungleBaseUrlProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideVungleBaseUrlProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.view.WindowManager"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWindowManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWindowManagerProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.vungle.publisher.env.WrapperFramework"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@com.vungle.publisher.inject.annotations.WrapperFrameworkVersion()/java.lang.String"

    new-instance v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkVersionProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkVersionProvidesAdapter;-><init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    return-void
.end method

.method public final synthetic newModule()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    invoke-direct {v0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;-><init>()V

    return-object v0
.end method
