.class final Lcom/vungle/publisher/display/view/VideoFragment$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 240
    iput-object p1, p0, Lcom/vungle/publisher/display/view/VideoFragment$2;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    const-string v2, "VungleAd"

    const-string v3, "video onTouch"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment$2;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    iget-object v2, v2, Lcom/vungle/publisher/display/view/VideoFragment;->h:Landroid/view/TouchDelegate;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment$2;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    iget-object v2, v2, Lcom/vungle/publisher/display/view/VideoFragment;->h:Landroid/view/TouchDelegate;

    invoke-virtual {v2, p2}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment$2;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v4, v3, Lcom/vungle/publisher/display/view/VideoFragment;->j:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x2ed

    cmp-long v2, v5, v7

    if-nez v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    const-string v5, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, "toggle bar animation"

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, " - reversing "

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string v2, "hide"

    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " animation"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->cancel()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v4

    sub-float/2addr v2, v4

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/vungle/publisher/display/view/VideoFragment;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v3, v0, v2}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;F)V

    iget-object v0, v3, Lcom/vungle/publisher/display/view/VideoFragment;->j:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v3, v0, v2}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;F)V

    :goto_3
    iget-object v0, v3, Lcom/vungle/publisher/display/view/VideoFragment;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/vungle/publisher/display/view/VideoFragment;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, v3, Lcom/vungle/publisher/display/view/VideoFragment;->g:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/vungle/publisher/display/view/VideoFragment;->g:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v3, Lcom/vungle/publisher/display/view/VideoFragment;->g:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    :cond_2
    :goto_4
    return v1

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    const-string v2, "show"

    goto :goto_1

    :cond_5
    const-string v2, ""

    goto :goto_2

    :cond_6
    const/16 v0, 0x2ee

    invoke-virtual {v3, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->b(I)V

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_4
.end method
