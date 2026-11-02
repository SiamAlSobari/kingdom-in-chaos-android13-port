.class public Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$1;,
        Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;,
        Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$b;,
        Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$Factory;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field a:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/reporting/AdReportManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/vungle/publisher/at$b;

.field private g:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/at$b;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->f:Lcom/vungle/publisher/at$b;

    return-object p1
.end method

.method private a()Lcom/vungle/publisher/db/model/LocalAd;
    .locals 6

    .prologue
    .line 68
    iget-object v1, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->b:Lcom/vungle/publisher/ad/AdManager;

    iget-object v0, v0, Lcom/vungle/publisher/ad/AdManager;->g:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Ljava/lang/String;)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no ad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->i()Lcom/vungle/publisher/db/model/Ad$a;

    move-result-object v2

    .line 75
    const/4 v3, 0x0

    .line 76
    sget-object v4, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$1;->a:[I

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/Ad$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 86
    :try_start_0
    invoke-direct {p0, v0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a(Lcom/vungle/publisher/db/model/LocalAd;)Lcom/vungle/publisher/db/model/LocalAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 91
    :try_start_1
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->m()I

    .line 92
    if-eqz v1, :cond_1

    .line 93
    iget-object v2, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a:Lcom/vungle/publisher/event/EventBus;

    new-instance v3, Lcom/vungle/publisher/q;

    invoke-direct {v3}, Lcom/vungle/publisher/q;-><init>()V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .line 98
    :goto_1
    return-object v0

    .line 79
    :pswitch_0
    new-instance v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ad status: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_1
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad already "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :catch_0
    move-exception v2

    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error saving ad "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to database"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    :try_start_2
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->m()I

    .line 92
    if-eqz v3, :cond_2

    .line 93
    iget-object v2, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a:Lcom/vungle/publisher/event/EventBus;

    new-instance v3, Lcom/vungle/publisher/q;

    invoke-direct {v3}, Lcom/vungle/publisher/q;-><init>()V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    :cond_2
    :goto_2
    throw v1

    .line 97
    :catch_1
    move-exception v2

    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error saving ad "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to database"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/vungle/publisher/db/model/LocalAd;)Lcom/vungle/publisher/db/model/LocalAd;
    .locals 9

    .prologue
    .line 105
    iget-object v1, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->f:Lcom/vungle/publisher/at$b;

    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->f:Lcom/vungle/publisher/at$b;

    iget-object v2, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/db/model/LocalAd;->b(Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/au;

    move-result-object v3

    sget-object v4, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$1;->b:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/at$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    const-string v2, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " downloaded for ad "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/publisher/at$a;->c:Lcom/vungle/publisher/at$a;

    invoke-interface {v3, v0}, Lcom/vungle/publisher/au;->a(Lcom/vungle/publisher/at$a;)V

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->i()Lcom/vungle/publisher/db/model/Ad$a;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/db/model/Ad$a;->b:Lcom/vungle/publisher/db/model/Ad$a;

    if-ne v2, v3, :cond_1

    sget-object v3, Lcom/vungle/publisher/db/model/Ad$a;->d:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->j()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clock change detected; updating ad.id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " status from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    :cond_1
    :goto_1
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->b:Lcom/vungle/publisher/db/model/Ad$a;

    .line 109
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->i()Lcom/vungle/publisher/db/model/Ad$a;

    move-result-object v2

    .line 110
    :goto_2
    iget v3, p1, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    const/4 v0, 0x3

    if-ge v3, v0, :cond_5

    .line 112
    :try_start_0
    sget-object v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$1;->a:[I

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/Ad$a;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected ad.status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for ad.id: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    goto :goto_2

    .line 106
    :pswitch_0
    invoke-interface {v3, v2}, Lcom/vungle/publisher/au;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 107
    :cond_2
    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    const-wide/16 v6, 0x5a0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    const-string v6, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "retrying "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/vungle/publisher/db/model/Ad$a;->b:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ad.id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " after "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/1440 minutes; updating status from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    goto/16 :goto_1

    :cond_3
    new-instance v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad marked failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes ago"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->c:Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/reporting/AdReportManager;->a(Lcom/vungle/publisher/db/model/LocalAd;)Lcom/vungle/publisher/db/model/LocalAdReport;

    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->d:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    .line 117
    :pswitch_2
    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_4

    const-string v0, "download "

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "prepare_retry_count "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for ad "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->b(Lcom/vungle/publisher/db/model/LocalAd;)V

    .line 126
    :goto_4
    return-object p1

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "prepare "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 125
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->c(Lcom/vungle/publisher/db/model/LocalAd;)V
    :try_end_1
    .catch Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 136
    :cond_5
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->b:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    .line 137
    new-instance v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to prepare ad after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->g:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/vungle/publisher/au;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-interface {p1}, Lcom/vungle/publisher/au;->f()Lcom/vungle/publisher/at$b;

    move-result-object v2

    .line 241
    invoke-interface {p1}, Lcom/vungle/publisher/au;->e()Lcom/vungle/publisher/at$a;

    move-result-object v3

    .line 242
    sget-object v4, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$1;->c:[I

    invoke-virtual {v3}, Lcom/vungle/publisher/at$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "unexpected "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_0
    :try_start_0
    invoke-interface {p1}, Lcom/vungle/publisher/au;->l()V
    :try_end_0
    .catch Lcom/vungle/publisher/bn; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;

    const-string v2, "external storage not available, could not download ad"

    invoke-direct {v1, v2, v0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 252
    :pswitch_1
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still downloading for ad_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :pswitch_2
    :try_start_1
    invoke-interface {p1}, Lcom/vungle/publisher/au;->q()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/vungle/publisher/au;->f()Lcom/vungle/publisher/at$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post processing failed for ad_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/vungle/publisher/au;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/vungle/publisher/bn; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    :catch_1
    move-exception v0

    .line 260
    new-instance v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;

    const-string v2, "external storage not available, could not post process ad"

    invoke-direct {v1, v2, v0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v0, v1

    .line 261
    goto :goto_0

    .line 264
    :pswitch_3
    const-string v0, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " already "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for ad_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 266
    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Lcom/vungle/publisher/db/model/LocalAd;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x1

    .line 196
    invoke-static {p1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->d(Lcom/vungle/publisher/db/model/LocalAd;)V

    .line 197
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->B()[Lcom/vungle/publisher/au;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 198
    invoke-direct {p0, v5}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a(Lcom/vungle/publisher/au;)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v1

    .line 197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    if-eqz v0, :cond_2

    .line 203
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad ready "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    .line 205
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->c:Lcom/vungle/publisher/reporting/AdReportManager;

    iget-object v0, v0, Lcom/vungle/publisher/reporting/AdReportManager;->c:Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/db/model/AdReport$BaseFactory;->b(Lcom/vungle/publisher/db/model/Ad;)Lcom/vungle/publisher/db/model/AdReport;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAdReport;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/LocalAdReport;->d(Ljava/lang/Long;)V

    .line 211
    :goto_1
    return-void

    .line 209
    :cond_2
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad not ready "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c(Lcom/vungle/publisher/db/model/LocalAd;)V
    .locals 6

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->d()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "re-verify prepare_retry_count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->d(Lcom/vungle/publisher/db/model/LocalAd;)V

    .line 217
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalAd;->B()[Lcom/vungle/publisher/au;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 218
    invoke-interface {v4}, Lcom/vungle/publisher/au;->u()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/vungle/publisher/au;->f()Lcom/vungle/publisher/at$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " re-verification failed for ad_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lcom/vungle/publisher/au;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    .line 221
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "re-verified ad and set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->c:Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/reporting/AdReportManager;->a(Lcom/vungle/publisher/db/model/LocalAd;)Lcom/vungle/publisher/db/model/LocalAdReport;

    move-result-object v1

    .line 223
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/db/model/LocalAdReport;->d(Ljava/lang/Long;)V

    .line 224
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    .line 225
    return-void
.end method

.method private static d(Lcom/vungle/publisher/db/model/LocalAd;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->A()Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->k()Lcom/vungle/publisher/db/model/Video;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalVideo;

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->u()Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v7

    if-eqz v6, :cond_5

    move v5, v2

    :goto_0
    if-eqz v0, :cond_6

    move v4, v2

    :goto_1
    if-eqz v7, :cond_7

    move v3, v2

    :goto_2
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->y()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_8

    if-eqz v5, :cond_2

    const-string v5, "VunglePrepare"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/vungle/publisher/at$b;->c:Lcom/vungle/publisher/at$b;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v6, Lcom/vungle/publisher/db/model/LocalArchive;->h:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    iget-object v6, v6, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v4, :cond_3

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vungle/publisher/at$b;->a:Lcom/vungle/publisher/at$b;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/at$b;->b:Lcom/vungle/publisher/at$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/vungle/publisher/db/model/LocalArchive;->h:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    iget-object v3, v3, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    if-nez v1, :cond_9

    .line 234
    new-instance v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;

    const-string v1, "invalid ad - no viewables"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v5, v1

    .line 233
    goto/16 :goto_0

    :cond_6
    move v4, v1

    goto/16 :goto_1

    :cond_7
    move v3, v1

    goto/16 :goto_2

    :cond_8
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->c:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    goto :goto_3

    .line 236
    :cond_9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    sget-object v1, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a()Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->i()Lcom/vungle/publisher/db/model/Ad$a;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    if-ne v0, v2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a:Lcom/vungle/publisher/event/EventBus;

    new-instance v2, Lcom/vungle/publisher/z;

    invoke-direct {v2}, Lcom/vungle/publisher/z;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 55
    :cond_0
    monitor-exit v1

    .line 65
    :goto_0
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for ad.id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/s;

    invoke-direct {v1}, Lcom/vungle/publisher/s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error processing ad.id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/s;

    invoke-direct {v1}, Lcom/vungle/publisher/s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
