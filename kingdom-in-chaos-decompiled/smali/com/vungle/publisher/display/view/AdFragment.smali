.class public abstract Lcom/vungle/publisher/display/view/AdFragment;
.super Landroid/support/v4/app/Fragment;
.source "vungle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 21
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "gained"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " window focus"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void

    .line 21
    :cond_0
    const-string v0, "lost"

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
