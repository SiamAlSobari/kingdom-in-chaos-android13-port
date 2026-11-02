.class public Lcom/testin/agent/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/testin/agent/a/h;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/testin/agent/a/h;->f:Z

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/testin/agent/e/g;->a(Landroid/app/Application;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/testin/agent/a/h;->f:Z

    :cond_0
    return-void
.end method
