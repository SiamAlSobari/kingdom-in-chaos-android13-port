.class public Lcom/vungle/publisher/ad/AdManager;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ad/AdManager$3;,
        Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;,
        Lcom/vungle/publisher/ad/AdManager$AdAvailabilityEventListener;,
        Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/ad/AdPreparer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/bf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Ljava/lang/Class;
    .annotation runtime Lcom/vungle/publisher/inject/annotations/FullScreenAdActivityClass;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lcom/vungle/publisher/db/model/LocalAd$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/cb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/ad/AdManager$AdAvailabilityEventListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/env/SdkConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Lcom/vungle/publisher/db/model/StreamingAd$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Lcom/vungle/publisher/db/model/Viewable$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field p:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/env/SdkState;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    return-void
.end method


# virtual methods
.method final a(Z)Lcom/vungle/publisher/db/model/LocalAd;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 136
    .line 138
    iget-object v1, p0, Lcom/vungle/publisher/ad/AdManager;->c:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/ad/AdManager;->g:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/vungle/publisher/db/model/Ad$a;

    const/4 v3, 0x0

    sget-object v4, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/vungle/publisher/db/model/Ad$a;->d:Lcom/vungle/publisher/db/model/Ad$a;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a([Lcom/vungle/publisher/db/model/Ad$a;)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v1

    .line 141
    :goto_0
    if-nez v1, :cond_1

    .line 142
    const-string v1, "VunglePrepare"

    const-string v2, "no local ad available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/vungle/publisher/ad/AdManager;->l:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    new-instance v2, Lcom/vungle/publisher/ci;

    invoke-direct {v2}, Lcom/vungle/publisher/ci;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->a(Lcom/vungle/publisher/ci;)V

    .line 163
    :goto_1
    return-object v0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/ad/AdManager;->g:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->e()Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalAd;->i()Lcom/vungle/publisher/db/model/Ad$a;

    move-result-object v2

    .line 147
    sget-object v3, Lcom/vungle/publisher/db/model/Ad$a;->d:Lcom/vungle/publisher/db/model/Ad$a;

    if-ne v2, v3, :cond_3

    .line 148
    if-eqz p1, :cond_2

    .line 149
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local ad partially prepared, restarting preparation for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/vungle/publisher/ad/AdManager;->a:Lcom/vungle/publisher/ad/AdPreparer;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/ad/AdPreparer;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_2
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local ad partially prepared, but not restarting preparation for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_3
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    if-ne v2, v0, :cond_4

    .line 156
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local ad already available for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    .line 158
    goto :goto_1

    .line 161
    :cond_5
    const-string v1, "VunglePrepare"

    const-string v2, "unable to fetch local ad -  no external storage available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Lcom/vungle/publisher/c;)Lcom/vungle/publisher/db/model/StreamingAd;
    .locals 11

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 232
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/vungle/publisher/ad/AdManager;->m:Lcom/vungle/publisher/env/SdkConfig;

    iget-boolean v2, v2, Lcom/vungle/publisher/env/SdkConfig;->b:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager;->h:Lcom/vungle/publisher/cb;

    invoke-interface {v0}, Lcom/vungle/publisher/cb;->a()Lcom/vungle/publisher/ca;

    move-result-object v3

    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager;->m:Lcom/vungle/publisher/env/SdkConfig;

    iget-object v0, v0, Lcom/vungle/publisher/env/SdkConfig;->c:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "ad streaming "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, "enabled"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connectivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_4

    .line 233
    const-string v0, "VunglePrepare"

    const-string v2, "requesting streaming ad"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;

    .line 235
    invoke-virtual {v0}, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->b()V

    .line 236
    iget-object v2, p0, Lcom/vungle/publisher/ad/AdManager;->l:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iget-object v3, v2, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v4, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;

    invoke-direct {v4, v2, p1, p2}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$4;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;Ljava/lang/String;Lcom/vungle/publisher/c;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->c:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v3, v4, v2}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 237
    iget-wide v2, v0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->d:J

    .line 238
    iget-object v4, p0, Lcom/vungle/publisher/ad/AdManager;->m:Lcom/vungle/publisher/env/SdkConfig;

    iget v4, v4, Lcom/vungle/publisher/env/SdkConfig;->d:I

    const-string v5, "VungleConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "streaming response timeout config "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 239
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :goto_2
    :try_start_1
    iget-boolean v6, v0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->b:Z

    if-nez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 245
    :try_start_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 248
    :catch_0
    move-exception v6

    goto :goto_2

    .line 232
    :cond_0
    :try_start_3
    const-string v2, "disabled"

    goto :goto_0

    :cond_1
    const-string v2, "VunglePrepare"

    const-string v3, "ad streaming disabled"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 264
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 265
    :goto_3
    const-string v2, "VunglePrepare"

    const-string v3, "error getting streaming ad"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :goto_4
    return-object v0

    .line 250
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v3, v4, v2

    .line 251
    iget-boolean v2, v0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->b:Z

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, v0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->c:Lcom/vungle/publisher/db/model/StreamingAd;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    if-eqz v2, :cond_5

    .line 254
    :try_start_5
    const-string v1, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request streaming ad success after "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/StreamingAd;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v2

    .line 261
    :goto_5
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v0, v1

    goto :goto_4

    .line 258
    :cond_3
    :try_start_7
    const-string v2, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request streaming ad timeout after "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 261
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_6
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 264
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 266
    goto :goto_4

    .line 261
    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_6

    :cond_5
    move-object v1, v2

    goto :goto_5
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager;->p:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/SdkState;

    .line 109
    iget-object v3, v0, Lcom/vungle/publisher/env/SdkState;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkState;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager;->g:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->e()Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 8

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ad/AdManager;->a(Z)Lcom/vungle/publisher/db/model/LocalAd;

    .line 331
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager;->f:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    sget-object v1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->n:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager;->g:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->f()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/ad/AdManager;->f:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v2, Lcom/vungle/publisher/ad/AdManager$2;

    invoke-direct {v2, p0}, Lcom/vungle/publisher/ad/AdManager$2;-><init>(Lcom/vungle/publisher/ad/AdManager;)V

    sget-object v3, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->n:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;J)V

    .line 332
    :cond_0
    return-void
.end method
