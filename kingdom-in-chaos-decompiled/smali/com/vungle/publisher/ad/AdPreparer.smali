.class public Lcom/vungle/publisher/ad/AdPreparer;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepare ad request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdPreparer;->c:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    iget-object v1, p0, Lcom/vungle/publisher/ad/AdPreparer;->b:Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$Factory;

    invoke-virtual {v1, p1, v3, v3}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$Factory;->a(Ljava/lang/String;Lcom/vungle/publisher/at$b;Ljava/lang/Integer;)Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    move-result-object v1

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->g:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 34
    return-void
.end method
