.class final Lcom/vungle/publisher/async/ScheduledPriorityExecutor$c;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/async/ScheduledPriorityExecutor;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 160
    iput-object p1, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$c;->a:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    .line 161
    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$c$1;

    invoke-direct {v7, p1, p3}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$c$1;-><init>(Lcom/vungle/publisher/async/ScheduledPriorityExecutor;Ljava/lang/String;)V

    move-object v0, p0

    move v2, v1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$c;->allowCoreThreadTimeOut(Z)V

    .line 178
    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 183
    if-eqz p2, :cond_0

    .line 184
    const-string v0, "VungleAsync"

    invoke-static {v0, p2}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :cond_0
    return-void
.end method
