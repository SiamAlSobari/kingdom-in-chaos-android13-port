.class public Lcom/vungle/publisher/env/AndroidDevice;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/bf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static a:I


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Landroid/media/AudioManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Landroid/view/WindowManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Landroid/content/SharedPreferences;
    .annotation runtime Lcom/vungle/publisher/inject/annotations/EnvSharedPreferences;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x1388

    sput v0, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->l:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 304
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 6

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 134
    iget-object v2, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    const-string v3, "VungleDevice"

    const-string v4, "waiting for device ID"

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    iget-object v3, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gez v3, :cond_1

    .line 138
    :try_start_2
    iget-object v3, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v4, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v3

    :try_start_3
    const-string v3, "VungleDevice"

    const-string v4, "interrupted while awaiting device ID"

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const-string v1, "VungleDevice"

    const-string v2, "no device ID available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    throw v0

    .line 144
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    :try_start_6
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const-string v0, "VungleDevice"

    const-string v1, "obtained device ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    const-string v0, "VungleDevice"

    const-string v1, "no device ID available"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_3
    return-void

    .line 149
    :cond_4
    :try_start_7
    new-instance v0, Lcom/vungle/publisher/bg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeout after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/bg;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vungle/publisher/env/AndroidDevice;->r()V

    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->j:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "defaultUserAgent"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    return-void
.end method

.method public final a(Lcom/vungle/publisher/bd;)Z
    .locals 2

    .prologue
    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p1, Lcom/vungle/publisher/bd;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 275
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 278
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 279
    :goto_0
    if-nez v0, :cond_0

    .line 280
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Google Play Services not available: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    .line 291
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 278
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 285
    :goto_2
    const-string v2, "VungleConfig"

    invoke-static {v1}, Lcom/vungle/publisher/cq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 288
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {p1, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 287
    :catch_2
    move-exception v1

    goto :goto_3

    .line 283
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/vungle/publisher/env/AndroidDevice;->r()V

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    .line 89
    invoke-static {v0}, Lcom/vungle/publisher/env/AndroidDevice;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v0, "VungleDevice"

    const-string v1, "have advertising and Android ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->d()V

    .line 92
    const/4 v0, 0x0

    .line 94
    :cond_0
    return-object v0
.end method

.method final d()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "VungleDevice"

    const-string v1, "clearing Android ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    .line 100
    return-void
.end method

.method final e()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v1

    .line 128
    :cond_0
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/env/AndroidDevice;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroid/util/DisplayMetrics;
    .locals 4

    .prologue
    .line 176
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-object v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v2, "VungleDevice"

    const-string v3, "error getting display metrics"

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->c:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v0, "VungleDevice"

    const-string v1, "have advertising and mac address"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->k()V

    .line 202
    const/4 v0, 0x0

    .line 204
    :cond_0
    return-object v0
.end method

.method final k()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "VungleDevice"

    const-string v1, "clearing MAC address"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    .line 210
    return-void
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_2
    return-object v0

    .line 234
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    :catch_0
    move-exception v1

    .line 240
    const-string v2, "VungleDevice"

    const-string v3, "error getting device model"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final n()Ljava/lang/Float;
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    const-string v2, "VungleDevice"

    const-string v3, "error getting volume info"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final o()Z
    .locals 3

    .prologue
    .line 259
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    const-string v1, "VungleDevice"

    const-string v2, "external storage writable"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    return v0

    .line 264
    :cond_0
    const-string v1, "VungleDevice"

    const-string v2, "external storage not writable"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->k:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;->c(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 297
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->j:Landroid/content/SharedPreferences;

    const-string v1, "defaultUserAgent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
