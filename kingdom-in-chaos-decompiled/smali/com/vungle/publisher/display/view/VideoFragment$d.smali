.class final Lcom/vungle/publisher/display/view/VideoFragment$d;
.super Landroid/os/Handler;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/display/view/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/display/view/VideoFragment;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/display/view/VideoFragment;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/vungle/publisher/display/view/VideoFragment$d;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 904
    :try_start_0
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment$d;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-nez v4, :cond_2

    :goto_0
    iget-object v1, v2, Lcom/vungle/publisher/display/view/VideoFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const-string v5, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "volume change "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v0, "un"

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "mute"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/publisher/display/view/VideoFragment;->d()V

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/display/view/VideoFragment;->e(Z)V

    :cond_1
    int-to-float v0, v4

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(F)F

    move-result v0

    if-ge v4, v3, :cond_4

    iget-object v1, v2, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v2, Lcom/vungle/publisher/db/model/AdReportEvent$a;->n:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    .line 909
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 904
    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    iget-object v1, v2, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v2, Lcom/vungle/publisher/db/model/AdReportEvent$a;->o:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 906
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 907
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "error handling volume change: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_5

    const-string v0, "null message"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
