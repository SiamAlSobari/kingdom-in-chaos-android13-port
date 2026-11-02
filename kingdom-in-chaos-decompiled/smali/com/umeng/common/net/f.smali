.class Lcom/umeng/common/net/f;
.super Landroid/os/Handler;
.source "DownloadingService.java"


# instance fields
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/high16 v12, 0x8000000

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 458
    :goto_0
    return-void

    .line 348
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/common/net/a$a;

    .line 349
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 351
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancel old notification...."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    const/high16 v1, 0x10000000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 358
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v1, v2, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 365
    iget-boolean v1, v0, Lcom/umeng/common/net/a$a;->h:Z

    if-eqz v1, :cond_1

    .line 366
    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080082

    iget-object v7, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v7}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v8}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/umeng/common/a/c;->m(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 371
    iget-object v6, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v6}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v8}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v9}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/umeng/common/a/c;->m(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v2, v1

    .line 393
    :goto_1
    const/16 v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 395
    iget-object v6, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    const-string v7, "notification"

    invoke-virtual {v1, v7}, Lcom/umeng/common/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v6, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 397
    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 400
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Show new  notification...."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;)Z

    move-result v1

    .line 403
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v2

    const-string v6, "isAppOnForeground = %1$B"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/umeng/common/net/a$a;->h:Z

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 412
    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 415
    :cond_0
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$10s downloaded. Saved to: %2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v4, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not install. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 379
    :cond_1
    :try_start_1
    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080082

    iget-object v7, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v7}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v8}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/umeng/common/a/c;->k(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 384
    iget-object v6, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v6}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v8}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v9}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/umeng/common/a/c;->k(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto/16 :goto_1

    .line 427
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/umeng/common/net/a$a;

    .line 428
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 429
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 431
    iget-object v0, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 432
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080081

    iget-object v2, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v5}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/common/a/c;->n(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v0, v1, v2, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 437
    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v9, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v5}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v7}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v8}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/umeng/common/a/c;->n(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v5, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 447
    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 449
    const-string v0, ".patch"

    const-string v1, ".apk"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 450
    iget-object v0, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/util/DeltaUpdate;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 452
    new-instance v0, Lcom/umeng/common/net/d$c;

    iget-object v1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/d$c;-><init>(Lcom/umeng/common/net/d;Landroid/content/Context;ILcom/umeng/common/net/a$a;Ljava/lang/String;)V

    .line 454
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v7, v1, v9

    aput-object v5, v1, v10

    aput-object v6, v1, v11

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/d$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
