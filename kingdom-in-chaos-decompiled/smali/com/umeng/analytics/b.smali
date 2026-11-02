.class public Lcom/umeng/analytics/b;
.super Lcom/umeng/analytics/d;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private m:Lcom/umeng/analytics/k;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:I

.field private final q:I

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:J

.field private final v:I

.field private final w:I

.field private final x:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/umeng/analytics/f;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/umeng/analytics/d;-><init>()V

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/b;->p:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/b;->q:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/b;->b:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/b;->c:Ljava/lang/String;

    .line 43
    const-string v0, "start_millis"

    iput-object v0, p0, Lcom/umeng/analytics/b;->r:Ljava/lang/String;

    .line 44
    const-string v0, "end_millis"

    iput-object v0, p0, Lcom/umeng/analytics/b;->s:Ljava/lang/String;

    .line 46
    const-string v0, "last_fetch_location_time"

    iput-object v0, p0, Lcom/umeng/analytics/b;->t:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/umeng/analytics/b;->u:J

    .line 49
    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/analytics/b;->v:I

    .line 50
    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/analytics/b;->w:I

    .line 52
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->y:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method private a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/common/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6

    .prologue
    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 344
    sget-boolean v2, Lcom/umeng/analytics/g;->i:Z

    if-eqz v2, :cond_0

    const-string v2, "last_fetch_location_time"

    const-wide/16 v3, 0x0

    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-static {p1, p2}, Lcom/umeng/analytics/a/p;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 350
    if-eqz v2, :cond_0

    .line 352
    const-string v3, "last_fetch_location_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Z
    .locals 4

    .prologue
    .line 358
    const-string v0, "end_millis"

    const-wide/16 v1, -0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 360
    sub-long v0, v2, v0

    sget-wide v2, Lcom/umeng/analytics/g;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 371
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 373
    new-instance v3, Lcom/umeng/analytics/a/i;

    invoke-direct {v3, p1, v2}, Lcom/umeng/analytics/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    invoke-static {p1}, Lcom/umeng/analytics/a/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/n;

    move-result-object v4

    .line 376
    iget-object v5, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    invoke-virtual {v5, v3}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/i;)V

    .line 377
    iget-object v3, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    invoke-virtual {v3, v4}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/n;)V

    .line 379
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 381
    const-string v4, "session_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v4, "start_millis"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v0, "end_millis"

    const-wide/16 v4, -0x1

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 389
    return-object v2
.end method

.method static synthetic b(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 406
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 407
    const-string v2, "start_millis"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 408
    const-string v0, "end_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 418
    :try_start_0
    sget-boolean v0, Lcom/umeng/analytics/g;->m:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-static {p1, p2}, Lcom/umeng/analytics/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/l;

    move-result-object v0

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/l;->a(Ljava/lang/Long;)V

    .line 423
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/l;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    const-string v0, "MobclickAgent"

    const-string v1, "exception in save event begin info"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 431
    const/4 v0, -0x1

    .line 435
    :try_start_0
    sget-boolean v1, Lcom/umeng/analytics/g;->m:Z

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    invoke-virtual {v1, p2}, Lcom/umeng/analytics/c;->b(Ljava/lang/String;)J

    move-result-wide v1

    .line 442
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    long-to-int v0, v0

    .line 449
    :cond_0
    :goto_1
    return v0

    .line 438
    :cond_1
    invoke-static {p1, p2}, Lcom/umeng/analytics/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/l;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/umeng/analytics/l;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 445
    :catch_0
    move-exception v1

    .line 446
    const-string v2, "MobclickAgent"

    const-string v3, "exception in get event duration"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private h(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized i(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/j;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 287
    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    .line 293
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Lcom/umeng/analytics/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Lcom/umeng/analytics/k;

    invoke-interface {v0}, Lcom/umeng/analytics/k;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    .line 296
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extend current session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized j(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 304
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/j;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 305
    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_1
    :try_start_1
    const-string v1, "start_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 311
    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 312
    const-string v1, "MobclickAgent"

    const-string v2, "onEndSession called before onStartSession"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 334
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 336
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Lcom/umeng/analytics/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Lcom/umeng/analytics/k;

    invoke-interface {v0}, Lcom/umeng/analytics/k;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 315
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 319
    sget-boolean v1, Lcom/umeng/analytics/g;->j:Z

    if-eqz v1, :cond_3

    .line 320
    iget-object v1, p0, Lcom/umeng/analytics/b;->n:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/umeng/analytics/a/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;JJ)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 326
    :goto_2
    const-string v2, "start_millis"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 327
    const-string v2, "end_millis"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/b;->y:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lcom/umeng/analytics/a/n;->a(Landroid/content/SharedPreferences;Ljava/util/ArrayList;JJ)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/umeng/analytics/b;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/a/f;

    iput p1, v0, Lcom/umeng/analytics/a/f;->E:I

    .line 90
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    :try_start_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const-string v0, "MobclickAgent"

    const-string v1, "onPause() called without context from corresponding onResume()"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 113
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/umeng/analytics/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/umeng/analytics/b$a;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    if-nez p1, :cond_1

    .line 126
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in reportError"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 476
    if-eqz p1, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, p3, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :goto_0
    return-void

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_tl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    .prologue
    .line 213
    if-eqz p1, :cond_0

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p6, :cond_1

    .line 214
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 219
    const-string v0, "MobclickAgent"

    const-string v1, "can\'t call onEvent before session is initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 223
    :cond_2
    if-eqz p3, :cond_3

    const/16 v0, 0x100

    :try_start_1
    invoke-virtual {p0, p3, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 224
    const-string v0, "MobclickAgent"

    const-string v1, "invalid label in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    iget-object v1, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onKVEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 248
    const-string v0, "MobclickAgent"

    const-string v1, "can\'t call onEvent before session is initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 252
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    iget-object v1, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onKVEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 508
    :cond_2
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    invoke-virtual {v1, v0, p3}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 517
    iget-object v1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    const-string v1, "MobclickAgent"

    const-string v2, "exception in save k-v event begin inof"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 136
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/analytics/k;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lcom/umeng/analytics/k;

    .line 86
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    new-instance v1, Lcom/umeng/analytics/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/umeng/analytics/f;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILcom/umeng/analytics/Gender;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/a/f;

    new-instance v1, Lcom/umeng/analytics/a/r;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/umeng/analytics/a/r;-><init>(Ljava/lang/String;ILcom/umeng/analytics/Gender;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/f;->a(Lcom/umeng/analytics/a/r;)V

    .line 99
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/a/f;

    iput-object p1, v0, Lcom/umeng/analytics/a/f;->F:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/a/f;

    iput-object p2, v0, Lcom/umeng/analytics/a/f;->G:Ljava/lang/String;

    .line 95
    return-void
.end method

.method a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 550
    if-nez p1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 556
    if-eqz v1, :cond_0

    if-gt v1, p2, :cond_0

    .line 560
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 564
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "map is null or empty in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 576
    :goto_0
    return v0

    .line 569
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 570
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {p0, v1, v5}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x100

    invoke-virtual {p0, v1, v5}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 571
    :cond_3
    const-string v1, "MobclickAgent"

    const-string v4, "invalid key-<%s> or value-<%s> "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 572
    goto :goto_0

    :cond_4
    move v0, v3

    .line 576
    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 193
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/umeng/analytics/b$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/umeng/analytics/b$a;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 453
    if-eqz p1, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 484
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_tl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 489
    if-gez v0, :cond_2

    .line 490
    const-string v0, "MobclickAgent"

    const-string v1, "event duration less than 0 in onEvnetEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_2
    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 264
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onKVEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 270
    const-string v0, "MobclickAgent"

    const-string v1, "can\'t call onEvent before session is initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 274
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    iget-object v1, p0, Lcom/umeng/analytics/b;->o:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    .line 593
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f;

    iget-object v0, v0, Lcom/umeng/analytics/f;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->b(Ljava/lang/String;)V

    .line 596
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f;

    iget-object v0, v0, Lcom/umeng/analytics/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/umeng/analytics/f;->b:J

    sub-long/2addr v1, v3

    .line 74
    iput-wide v1, v0, Lcom/umeng/analytics/f;->b:J

    .line 75
    iget-object v1, p0, Lcom/umeng/analytics/b;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "onPageEnd called without \'PageName\' from corresponding onPageStart"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.flush(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 462
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "input Context is null or event_id is empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :goto_0
    return-void

    .line 466
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 468
    if-gez v0, :cond_2

    .line 469
    const-string v0, "MobclickAgent"

    const-string v1, "event duration less than 0 in onEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_2
    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 525
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onKVEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_0
    return-void

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 534
    if-gez v1, :cond_2

    .line 535
    const-string v0, "MobclickAgent"

    const-string v1, "event duration less than 0 in onEvnetEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_2
    iget-object v2, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/c;

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/c;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    int-to-long v4, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0
.end method

.method d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f;

    iget-object v0, v0, Lcom/umeng/analytics/f;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->b(Ljava/lang/String;)V

    .line 584
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
