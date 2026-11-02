.class public Lcom/vungle/publisher/db/model/LocalViewableDelegate;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db/model/LocalViewableDelegate$Factory;,
        Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

.field b:Lcom/vungle/publisher/at$b;

.field public c:Ljava/lang/String;

.field d:Ljava/lang/Integer;

.field e:Lcom/vungle/publisher/net/http/DownloadHttpGateway;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/bf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/env/SdkState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/vungle/publisher/at$b;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->f()Lcom/vungle/publisher/at$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->c()Lcom/vungle/publisher/db/model/Ad;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 209
    const-string v0, "url"

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "size"

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    return-void
.end method

.method final a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 214
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/vungle/publisher/aq;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c:Ljava/lang/String;

    .line 215
    const-string v0, "size"

    invoke-static {p1, v0}, Lcom/vungle/publisher/aq;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d:Ljava/lang/Integer;

    .line 216
    return-void
.end method

.method final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 221
    const-string v0, "url"

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    const-string v0, "size"

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method final b()Ljava/io/File;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c()Ljava/lang/String;

    move-result-object v1

    .line 65
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->k()Lcom/vungle/publisher/at$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v3}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/bo;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->B()Z

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->C()I

    move-result v0

    return v0
.end method

.method final e()V
    .locals 4

    .prologue
    .line 113
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->b:Lcom/vungle/publisher/at$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    sget-object v1, Lcom/vungle/publisher/at$a;->b:Lcom/vungle/publisher/at$a;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->a(Lcom/vungle/publisher/at$a;)V

    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->e:Lcom/vungle/publisher/net/http/DownloadHttpGateway;

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    iget-object v2, v0, Lcom/vungle/publisher/net/http/DownloadHttpGateway;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v3, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;

    invoke-direct {v3, v0, v1}, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;-><init>(Lcom/vungle/publisher/net/http/DownloadHttpGateway;Lcom/vungle/publisher/au;)V

    sget-object v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->h:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v2, v3, v0}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 116
    return-void
.end method

.method final f()Z
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->t()Z

    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    sget-object v1, Lcom/vungle/publisher/at$a;->d:Lcom/vungle/publisher/at$a;

    .line 122
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->k()Lcom/vungle/publisher/at$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for ad_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v2, v1}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->a(Lcom/vungle/publisher/at$a;)V

    .line 135
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-static {}, Lcom/vungle/publisher/env/SdkState;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "debug mode: post-processing failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v3}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - not deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    sget-object v2, Lcom/vungle/publisher/at$a;->a:Lcom/vungle/publisher/at$a;

    invoke-interface {v1, v2}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->a(Lcom/vungle/publisher/at$a;)V

    goto :goto_0

    .line 130
    :cond_1
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post-processing failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v3}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v1}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->B()Z

    goto :goto_1
.end method

.method final g()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/bn;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->A()Z

    move-result v1

    .line 145
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->j()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->k()Lcom/vungle/publisher/at$b;

    move-result-object v2

    .line 148
    if-eqz v1, :cond_0

    .line 149
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " verified for ad_id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/vungle/publisher/at$a;->d:Lcom/vungle/publisher/at$a;

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a:Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;

    invoke-interface {v2, v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;->a(Lcom/vungle/publisher/at$a;)V

    .line 157
    return v1

    .line 153
    :cond_0
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed verification; reprocessing ad_id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/vungle/publisher/at$a;->a:Lcom/vungle/publisher/at$a;

    goto :goto_0
.end method

.method final h()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/bn;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->f:Lcom/vungle/publisher/bf;

    invoke-interface {v0}, Lcom/vungle/publisher/bf;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vungle/publisher/bn;

    invoke-direct {v0}, Lcom/vungle/publisher/bn;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->k()Lcom/vungle/publisher/at$b;

    move-result-object v4

    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d:Ljava/lang/Integer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for ad_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VunglePrepare"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->b()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_4

    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " disk size matched size "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for ad_id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    goto :goto_1

    :cond_4
    const-string v5, "VunglePrepare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " disk size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " failed to match size "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " for ad_id: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->b()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "null "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->b:Lcom/vungle/publisher/at$b;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " file for ad "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    if-eqz v0, :cond_1

    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ignoring "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " size mismatch - file exists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " bytes"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_6
    const-string v3, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " missing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2
.end method

.method final i()Z
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->b()Ljava/io/File;

    move-result-object v0

    .line 202
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
