.class final Lcom/vungle/publisher/display/view/VideoFragment$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/display/view/VideoFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/display/view/VideoFragment;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/display/view/VideoFragment;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/vungle/publisher/display/view/VideoFragment$1;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 235
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$1;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {v0}, Lcom/vungle/publisher/display/view/VideoFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mute clicked"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment$1;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {v2}, Lcom/vungle/publisher/display/view/VideoFragment;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->d(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/vungle/publisher/display/view/VideoFragment;->f()I

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2}, Lcom/vungle/publisher/display/view/VideoFragment;->e()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v2, Lcom/vungle/publisher/display/view/VideoFragment;->l:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v2}, Lcom/vungle/publisher/display/view/VideoFragment;->d()V

    :cond_0
    invoke-virtual {v2, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->e(Z)V

    .line 237
    return-void

    .line 235
    :cond_1
    const-string v0, "un"

    goto :goto_0

    :cond_2
    move v0, v1

    .line 236
    goto :goto_1
.end method
