.class Lcom/umeng/common/net/g;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Lcom/umeng/common/net/DownloadingService$a;


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/umeng/common/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;)V
    .locals 1

    .prologue
    .line 461
    iput-object p1, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/common/net/g;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 468
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    .line 469
    iget-object v2, v0, Lcom/umeng/common/net/d$b;->f:[J

    .line 471
    if-eqz v2, :cond_0

    aget-wide v3, v2, v7

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 472
    aget-wide v3, v2, v1

    long-to-float v1, v3

    aget-wide v2, v2, v7

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 473
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 475
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 476
    const/16 v1, 0x63

    .line 479
    :cond_0
    iget-object v2, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    iget-boolean v2, v2, Lcom/umeng/common/net/a$a;->h:Z

    if-nez v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/umeng/common/net/g;->a:Landroid/util/SparseArray;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    iget-object v2, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    iget-object v4, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Lcom/umeng/common/net/a$a;II)Lcom/umeng/common/net/d$a;

    move-result-object v1

    .line 484
    iput-object v1, v0, Lcom/umeng/common/net/d$b;->b:Lcom/umeng/common/net/d$a;

    .line 485
    iget-object v0, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/common/net/d$a;->d()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 488
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 492
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 493
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    .line 494
    iget-object v2, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 497
    iget-boolean v1, v2, Lcom/umeng/common/net/a$a;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/umeng/common/net/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v1, v5, v7

    if-lez v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/umeng/common/net/g;->a:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v0, v0, Lcom/umeng/common/net/d$b;->b:Lcom/umeng/common/net/d$a;

    .line 501
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p2, v9}, Lcom/umeng/common/net/d$a;->a(IIZ)Lcom/umeng/common/net/d$a;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/umeng/common/net/d$a;->a(Ljava/lang/CharSequence;)Lcom/umeng/common/net/d$a;

    .line 503
    iget-object v1, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/common/net/d$a;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 505
    :cond_0
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v2, v2, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_1
    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 2

    .prologue
    .line 570
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;I)V

    .line 573
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 514
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 515
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    .line 516
    if-eqz v0, :cond_0

    .line 517
    iget-object v0, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    .line 519
    iget-object v1, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v1

    iget-object v2, v0, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 523
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 524
    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v2, v0, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    const-string v3, "delta_update"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 531
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 532
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 533
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 534
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 535
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 536
    iget-object v0, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->d(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 540
    iput v6, v2, Landroid/os/Message;->what:I

    .line 541
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 542
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 543
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 544
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 545
    iget-object v3, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->d(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 550
    iput v6, v2, Landroid/os/Message;->what:I

    .line 551
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 552
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 553
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 556
    :try_start_0
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 557
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    iget-object v0, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/g;->b:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method
