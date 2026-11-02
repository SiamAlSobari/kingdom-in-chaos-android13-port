.class Lcom/umeng/common/net/d$c;
.super Landroid/os/AsyncTask;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/common/net/d;

.field private d:Lcom/umeng/common/net/a$a;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Lcom/umeng/common/net/d;Landroid/content/Context;ILcom/umeng/common/net/a$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 695
    iput-object p1, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    .line 696
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 697
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    .line 698
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/umeng/common/net/d$c;->f:Landroid/app/NotificationManager;

    .line 700
    iput p3, p0, Lcom/umeng/common/net/d$c;->a:I

    .line 701
    iput-object p4, p0, Lcom/umeng/common/net/d$c;->d:Lcom/umeng/common/net/a$a;

    .line 702
    iput-object p5, p0, Lcom/umeng/common/net/d$c;->b:Ljava/lang/String;

    .line 703
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 713
    .line 714
    aget-object v0, p1, v4

    aget-object v1, p1, v3

    aget-object v2, p1, v5

    invoke-static {v0, v1, v2}, Lcom/umeng/common/util/DeltaUpdate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 715
    new-instance v1, Ljava/io/File;

    aget-object v2, p1, v5

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 717
    if-ne v0, v3, :cond_1

    .line 718
    new-instance v1, Ljava/io/File;

    aget-object v2, p1, v3

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/umeng/common/util/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 719
    iget-object v2, p0, Lcom/umeng/common/net/d$c;->d:Lcom/umeng/common/net/a$a;

    iget-object v2, v2, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    invoke-static {}, Lcom/umeng/common/net/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file patch error"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    .line 724
    :cond_0
    invoke-static {}, Lcom/umeng/common/net/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file patch success"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 726
    :cond_1
    invoke-static {}, Lcom/umeng/common/net/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file patch error"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 734
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 735
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080082

    iget-object v2, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/common/a/c;->l(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 740
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 742
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/common/net/d$c;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    iget-object v2, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 747
    iget-object v3, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    iget-object v6, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/common/a/c;->l(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 752
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 753
    iget-object v2, p0, Lcom/umeng/common/net/d$c;->f:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/umeng/common/net/d$c;->a:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 754
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    iget-object v2, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;)Z

    move-result v0

    .line 755
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/common/net/d$c;->d:Lcom/umeng/common/net/a$a;

    iget-boolean v0, v0, Lcom/umeng/common/net/a$a;->h:Z

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->f:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/umeng/common/net/d$c;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 757
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 759
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    const-string v1, "filename"

    iget-object v2, p0, Lcom/umeng/common/net/d$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 764
    iput v8, v1, Landroid/os/Message;->what:I

    .line 765
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 766
    iget v2, p0, Lcom/umeng/common/net/d$c;->a:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 767
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    invoke-static {v0}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/d$c;->d:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    invoke-static {v0}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/d$c;->d:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    iget-object v1, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/common/net/d$c;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    iget-object v1, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/common/net/d$c;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->f:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/umeng/common/net/d$c;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 780
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 781
    const-string v1, "filename"

    iget-object v2, p0, Lcom/umeng/common/net/d$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 785
    iput v8, v1, Landroid/os/Message;->what:I

    .line 786
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 787
    iget v2, p0, Lcom/umeng/common/net/d$c;->a:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 788
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 791
    :try_start_1
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    invoke-static {v0}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/d$c;->d:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 792
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    invoke-static {v0}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/d$c;->d:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 794
    :cond_3
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    iget-object v1, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/common/net/d$c;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 795
    :catch_1
    move-exception v0

    .line 796
    iget-object v0, p0, Lcom/umeng/common/net/d$c;->c:Lcom/umeng/common/net/d;

    iget-object v1, p0, Lcom/umeng/common/net/d$c;->e:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/common/net/d$c;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 687
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/common/net/d$c;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 687
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/common/net/d$c;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 708
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 709
    return-void
.end method
