.class Lcom/vungle/publisher/inject/ConfigurablePublisherModule;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/bs;


# annotations
.annotation runtime Ldagger/Module;
    injects = {
        Lcom/vungle/publisher/ad/AdManager;,
        Lcom/vungle/publisher/env/AndroidDevice;,
        Lcom/vungle/publisher/location/AndroidLocation;,
        Lcom/vungle/publisher/net/AndroidNetwork;,
        Lcom/vungle/publisher/FullScreenAdActivity;,
        Lcom/vungle/publisher/location/GoogleLocationClientDetailedLocationProvider;,
        Lcom/vungle/publisher/location/GoogleLocationServicesDetailedLocationProvider;,
        Lcom/vungle/publisher/display/view/PostRollFragment;,
        Lcom/vungle/publisher/display/view/VideoFragment;,
        Lcom/vungle/sdk/VungleAdvert;,
        Lcom/vungle/publisher/VunglePub;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Lcom/vungle/publisher/image/BitmapFactory;

.field d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/vungle/publisher/env/WrapperFramework;

.field f:Ljava/lang/String;

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/vungle/publisher/env/AndroidDevice;)Lcom/vungle/publisher/bf;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 247
    return-object p0
.end method

.method static a(Lcom/vungle/publisher/bw;)Lcom/vungle/publisher/bv;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 209
    return-object p0
.end method

.method static a()Lcom/vungle/publisher/bx;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    :try_start_0
    new-instance v0, Lcom/vungle/publisher/location/GoogleLocationClientDetailedLocationProvider;

    invoke-direct {v0}, Lcom/vungle/publisher/location/GoogleLocationClientDetailedLocationProvider;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :try_start_1
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    invoke-virtual {v1, v0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 223
    :goto_1
    const-string v2, "error creating GoogleLocationClientDetailedLocationProvider"

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static a(Lcom/vungle/publisher/location/AndroidLocation;)Lcom/vungle/publisher/bz;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 272
    return-object p0
.end method

.method static a(Lcom/vungle/publisher/net/AndroidNetwork;)Lcom/vungle/publisher/cb;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 278
    return-object p0
.end method

.method static a(Lcom/vungle/publisher/env/AdvertisingDeviceIdStrategy;)Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 253
    return-object p0
.end method

.method static a(Lcom/vungle/publisher/net/http/HttpTransaction$Factory;Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;Lcom/vungle/publisher/ck;)Lcom/vungle/publisher/net/http/HttpTransaction;
    .locals 1
    .annotation runtime Lcom/vungle/publisher/inject/annotations/RequestConfigHttpTransaction;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/vungle/publisher/protocol/RequestConfigHttpRequest$Factory;->d()Lcom/vungle/publisher/protocol/RequestConfigHttpRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;->a(Lcom/vungle/publisher/net/http/HttpRequest;Lcom/vungle/publisher/cg;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/vungle/publisher/net/http/HttpTransaction$Factory;Lcom/vungle/publisher/protocol/TrackInstallHttpRequest$Factory;Lcom/vungle/publisher/protocol/TrackInstallHttpResponseHandler;)Lcom/vungle/publisher/net/http/HttpTransaction;
    .locals 1
    .annotation runtime Lcom/vungle/publisher/inject/annotations/TrackInstallHttpTransaction;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/vungle/publisher/protocol/TrackInstallHttpRequest$Factory;->d()Lcom/vungle/publisher/protocol/TrackInstallHttpRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;->a(Lcom/vungle/publisher/net/http/HttpRequest;Lcom/vungle/publisher/cg;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/vungle/publisher/inject/annotations/AdTempDirectory;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/vungle/publisher/bn;

    invoke-direct {v0}, Lcom/vungle/publisher/bn;-><init>()V

    throw v0

    .line 168
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, ".vungle"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/vungle/publisher/bo;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b()Lcom/vungle/publisher/by;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 233
    :try_start_0
    new-instance v0, Lcom/vungle/publisher/location/GoogleLocationServicesDetailedLocationProvider;

    invoke-direct {v0}, Lcom/vungle/publisher/location/GoogleLocationServicesDetailedLocationProvider;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    invoke-virtual {v1, v0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    :goto_0
    return-object v0

    .line 238
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 239
    :goto_1
    const-string v2, "error creating GoogleLocationServicesDetailedLocationProvider"

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 238
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/vungle/publisher/inject/annotations/OldAdTempDirectory;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/vungle/publisher/bn;

    invoke-direct {v0}, Lcom/vungle/publisher/bn;-><init>()V

    throw v0

    .line 178
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, ".VungleCacheDir"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/vungle/publisher/bo;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 185
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 186
    if-nez v0, :cond_0

    .line 187
    const-string v1, "VungleDevice"

    const-string v2, "AudioManager not avaialble"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/vungle/publisher/inject/annotations/VungleBaseUrl;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 311
    const-string v0, "http://api.vungle.com/api/v1/"

    return-object v0
.end method

.method static d(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 200
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    if-nez v0, :cond_0

    .line 202
    const-string v1, "VungleDevice"

    const-string v2, "ConnectivityManager not available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-object v0
.end method

.method static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .annotation runtime Lcom/vungle/publisher/inject/annotations/EnvSharedPreferences;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 259
    const-string v0, "VUNGLE_PUB_APP_INFO"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static f(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 295
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 296
    if-nez v0, :cond_0

    .line 297
    const-string v1, "VungleDevice"

    const-string v2, "TelephonyManager not avaialble"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    return-object v0
.end method

.method static g(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 316
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 317
    if-nez v0, :cond_0

    .line 318
    const-string v1, "VungleDevice"

    const-string v2, "WindowManager not available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "VungleInject"

    const-string v1, "publisher module already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "VungleInject"

    const-string v1, "initializing publisher module"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->a:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->b:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "VungleInject"

    const-string v1, "full screen ad activity class in publisher module NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting full screen ad activity class in publisher module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->d:Ljava/lang/Class;

    goto :goto_0
.end method

.method public setBitmapFactory(Lcom/vungle/publisher/image/BitmapFactory;)V
    .locals 3
    .param p1, "bitmapFactory"    # Lcom/vungle/publisher/image/BitmapFactory;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "VungleInject"

    const-string v1, "BitmapFactory in publisher module NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting BitmapFactory in publisher module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->c:Lcom/vungle/publisher/image/BitmapFactory;

    goto :goto_0
.end method

.method public setWrapperFramework(Lcom/vungle/publisher/env/WrapperFramework;)V
    .locals 3
    .param p1, "framework"    # Lcom/vungle/publisher/env/WrapperFramework;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "VungleInject"

    const-string v1, "wrapper framework in publisher module NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting framework in publisher module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->e:Lcom/vungle/publisher/env/WrapperFramework;

    goto :goto_0
.end method

.method public setWrapperFrameworkVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "wrapperFrameworkVersion"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "VungleInject"

    const-string v1, "wrapper framework version in publisher module NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting framework in publisher module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->f:Ljava/lang/String;

    goto :goto_0
.end method
