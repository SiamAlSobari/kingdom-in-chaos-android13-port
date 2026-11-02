.class public Lcom/vungle/publisher/display/view/VideoFragment;
.super Lcom/vungle/publisher/display/view/AdFragment;
.source "vungle"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/display/view/VideoFragment$Factory;,
        Lcom/vungle/publisher/display/view/VideoFragment$d;,
        Lcom/vungle/publisher/display/view/VideoFragment$c;,
        Lcom/vungle/publisher/display/view/VideoFragment$b;,
        Lcom/vungle/publisher/display/view/VideoFragment$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Bitmap;

.field private final C:Lcom/nineoldandroids/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nineoldandroids/animation/TypeEvaluator",
            "<*>;"
        }
    .end annotation
.end field

.field private final D:Landroid/os/Handler;

.field private final E:Ljava/lang/Runnable;

.field private F:Lcom/vungle/publisher/audio/VolumeChangeContentObserver;

.field private G:Landroid/app/AlertDialog;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private O:I

.field a:Lcom/vungle/publisher/a;

.field b:Lcom/vungle/publisher/reporting/AdReportEventListener;

.field c:Lcom/vungle/publisher/display/view/VideoFragment$a;

.field d:Lcom/vungle/publisher/db/model/Video;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/db/model/Video",
            "<***>;"
        }
    .end annotation
.end field

.field e:Landroid/widget/ImageView;

.field f:Lcom/nineoldandroids/animation/ObjectAnimator;

.field g:Lcom/nineoldandroids/animation/ObjectAnimator;

.field h:Landroid/view/TouchDelegate;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field j:Lcom/nineoldandroids/animation/ObjectAnimator;

.field k:Lcom/vungle/publisher/display/view/AlertDialogFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Landroid/media/AudioManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/image/BitmapFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/display/view/CountdownProgressView$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Lcom/vungle/publisher/display/view/DisplayUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field p:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Lcom/vungle/publisher/audio/VolumeChangeContentObserver$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/display/view/VideoFragment$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private s:Landroid/widget/ImageView;

.field private t:Lcom/vungle/publisher/display/view/CountdownProgressView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/widget/VideoView;

.field private x:Landroid/view/ViewGroup;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/AdFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->C:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->D:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$c;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/display/view/VideoFragment$c;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->E:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 917
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->m:Lcom/vungle/publisher/image/BitmapFactory;

    invoke-interface {v1, p1}, Lcom/vungle/publisher/image/BitmapFactory;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 383
    :catch_0
    move-exception v1

    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error loading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 414
    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 415
    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 417
    return-object v0
.end method

.method static synthetic a(Lcom/vungle/publisher/display/view/VideoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->H:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 772
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v1

    .line 773
    mul-int/lit16 v2, p1, 0x3e8

    const/4 v0, 0x0

    add-int/lit16 v3, v2, -0x2ee

    if-le p2, v3, :cond_0

    if-lt p2, v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 774
    :cond_0
    :goto_0
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 775
    invoke-static {p0, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 777
    :cond_1
    return-void

    .line 773
    :cond_2
    sub-int v0, p2, v3

    int-to-float v0, v0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method private a(Lcom/nineoldandroids/animation/ObjectAnimator;I)V
    .locals 6

    .prologue
    .line 554
    const/high16 v2, 0x44000000    # 512.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;IIIF)V

    .line 555
    return-void
.end method

.method private a(Lcom/nineoldandroids/animation/ObjectAnimator;IIIF)V
    .locals 3

    .prologue
    .line 567
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "animateBar startColor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", durationMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 569
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    .line 570
    int-to-float v0, p4

    mul-float/2addr v0, p5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 572
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->C:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 573
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 574
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/display/view/VideoFragment;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->J:Z

    return v0
.end method

.method static synthetic a(Lcom/vungle/publisher/display/view/VideoFragment;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    return p1
.end method

.method static synthetic b(Lcom/vungle/publisher/display/view/VideoFragment;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->j(Z)V

    return-void
.end method

.method static synthetic c(Lcom/vungle/publisher/display/view/VideoFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->k()V

    return-void
.end method

.method static synthetic d(Lcom/vungle/publisher/display/view/VideoFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic e(Lcom/vungle/publisher/display/view/VideoFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/vungle/publisher/display/view/VideoFragment;)Lcom/vungle/publisher/display/view/CountdownProgressView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->t:Lcom/vungle/publisher/display/view/CountdownProgressView;

    return-object v0
.end method

.method private f(Z)V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->g(Z)V

    .line 635
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->d()V

    .line 636
    return-void
.end method

.method static synthetic g(Lcom/vungle/publisher/display/view/VideoFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->D:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->D:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method private g(Z)V
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->l:Landroid/media/AudioManager;

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 640
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 492
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 493
    :goto_0
    iput-boolean v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    .line 494
    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    .line 506
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 492
    goto :goto_0

    :cond_2
    move v1, v2

    .line 494
    goto :goto_1

    .line 497
    :cond_3
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/display/view/VideoFragment;->c(I)V

    .line 498
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 499
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 500
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/display/view/VideoFragment;->b(I)V

    .line 502
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->D:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->E:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/y;

    invoke-direct {v1}, Lcom/vungle/publisher/y;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private h(Z)V
    .locals 4

    .prologue
    .line 745
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 746
    :goto_0
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "cta button "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iput-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->J:Z

    .line 748
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->y:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 749
    return-void

    .line 745
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 746
    :cond_1
    const-string v1, "disabled"

    goto :goto_1

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method private i()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 510
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->g()V

    .line 511
    return-void
.end method

.method private i(Z)V
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->J:Z

    if-eq p1, v0, :cond_0

    .line 753
    invoke-direct {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->h(Z)V

    .line 755
    :cond_0
    return-void
.end method

.method private j(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 822
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isBackButtonImmediatelyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 823
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    const-string v0, "VungleAd"

    const-string v1, "exiting video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 828
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 829
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    :goto_2
    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    .line 830
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 838
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 822
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 829
    :cond_4
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/display/view/AlertDialogFactory;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    new-instance v3, Lcom/vungle/publisher/display/view/VideoFragment$5;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/display/view/VideoFragment$5;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-interface {v2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogBodyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-interface {v2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/vungle/publisher/display/view/AlertDialogFactory$1;

    invoke-direct {v5, v0, v3}, Lcom/vungle/publisher/display/view/AlertDialogFactory$1;-><init>(Lcom/vungle/publisher/display/view/AlertDialogFactory;Lcom/vungle/publisher/display/view/AlertDialogFactory$a;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-interface {v2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vungle/publisher/display/view/AlertDialogFactory$2;

    invoke-direct {v2, v0, v3}, Lcom/vungle/publisher/display/view/AlertDialogFactory$2;-><init>(Lcom/vungle/publisher/display/view/AlertDialogFactory;Lcom/vungle/publisher/display/view/AlertDialogFactory$a;)V

    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/vungle/publisher/display/view/AlertDialogFactory$3;

    invoke-direct {v1, v0, v3}, Lcom/vungle/publisher/display/view/AlertDialogFactory$3;-><init>(Lcom/vungle/publisher/display/view/AlertDialogFactory;Lcom/vungle/publisher/display/view/AlertDialogFactory$a;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 833
    :cond_5
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->s:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->k()V

    goto :goto_3
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->s:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 815
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->b(Z)V

    .line 816
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 817
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->m:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)V

    sget-object v1, Lcom/vungle/publisher/db/model/AdReportEvent$a;->b:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    .line 818
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->c:Lcom/vungle/publisher/display/view/VideoFragment$a;

    invoke-interface {v0}, Lcom/vungle/publisher/display/view/VideoFragment$a;->a()V

    .line 819
    return-void
.end method


# virtual methods
.method final a(F)F
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->e()I

    move-result v0

    .line 660
    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 678
    const-string v0, "VungleAd"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->j(Z)V

    .line 680
    return-void
.end method

.method final a(Lcom/nineoldandroids/animation/ObjectAnimator;F)V
    .locals 6

    .prologue
    .line 563
    const/4 v2, 0x0

    const/high16 v3, 0x44000000    # 512.0f

    const/16 v4, 0x2ed

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;IIIF)V

    .line 564
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 467
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->a(Z)V

    .line 468
    if-eqz p1, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->h()V

    .line 477
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    const-string v1, "VungleAd"

    const-string v2, "exception in onWindowFocusChanged"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 692
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->f()I

    move-result v0

    if-nez v0, :cond_1

    .line 694
    const-string v0, "VungleAd"

    const-string v1, "volume up - pending unmute"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/display/view/VideoFragment;->d(Z)V

    .line 696
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 701
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 698
    :cond_1
    const-string v0, "VungleAd"

    const-string v1, "volume up"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    const-string v0, "videoFragment"

    return-object v0
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;I)V

    .line 550
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->j:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;I)V

    .line 551
    return-void
.end method

.method final b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->g()V

    .line 515
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->c(Z)I

    move-result v1

    .line 516
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/event/EventBus;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vungle/publisher/h;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/h;-><init>(I)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 518
    iput-boolean v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    iput v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->O:I

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    return-void

    .line 516
    :cond_0
    new-instance v0, Lcom/vungle/publisher/l;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/l;-><init>(I)V

    goto :goto_0
.end method

.method final c(Z)I
    .locals 5

    .prologue
    .line 523
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 524
    :goto_0
    iget v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->O:I

    .line 525
    if-le v0, v1, :cond_1

    .line 526
    iput v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->O:I

    .line 531
    :goto_1
    return v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 528
    :cond_1
    if-ge v0, v1, :cond_2

    .line 529
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "watched millis decreased from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method final c(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v3, v3, Lcom/vungle/publisher/db/model/Video;->h:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v3, v3, Lcom/vungle/publisher/db/model/Video;->i:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->e:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    :goto_0
    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->i(Z)V

    .line 727
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->k:Ljava/lang/Integer;

    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;II)V

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->t:Lcom/vungle/publisher/display/view/CountdownProgressView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;II)V

    .line 729
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 726
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->e:Landroid/widget/ImageView;

    iget v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->L:I

    invoke-static {v2, v3, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;II)V

    iget v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->I:I

    mul-int/lit16 v2, v2, 0x3e8

    if-lt p1, v2, :cond_5

    :goto_3
    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->i(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 727
    :cond_6
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->l:Ljava/lang/Integer;

    goto :goto_2
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->K:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->f()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->u:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->B:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 644
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->A:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method final d(Z)V
    .locals 0

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->K:Z

    .line 630
    invoke-direct {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->f(Z)V

    .line 631
    return-void
.end method

.method final e()I
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->l:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method final e(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 669
    if-eqz p1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v1, Lcom/vungle/publisher/db/model/AdReportEvent$a;->j:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->k:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)V

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v1, Lcom/vungle/publisher/db/model/AdReportEvent$a;->f:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)V

    goto :goto_0
.end method

.method final f()I
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->l:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 163
    invoke-static {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment$Factory;->a(Lcom/vungle/publisher/display/view/VideoFragment;Landroid/os/Bundle;)V

    .line 164
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v3, Lcom/vungle/publisher/db/model/AdReportEvent$a;->l:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 169
    new-instance v4, Landroid/widget/VideoView;

    invoke-direct {v4, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    .line 170
    new-instance v5, Lcom/vungle/publisher/bc;

    invoke-direct {v5, v3}, Lcom/vungle/publisher/bc;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vungle/publisher/display/view/VideoFragment;->s:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->n:Lcom/vungle/publisher/display/view/CountdownProgressView$Factory;

    new-instance v6, Lcom/vungle/publisher/display/view/CountdownProgressView;

    iget-object v0, v0, Lcom/vungle/publisher/display/view/CountdownProgressView$Factory;->a:Lcom/vungle/publisher/image/BitmapFactory;

    invoke-direct {v6, v3, v0}, Lcom/vungle/publisher/display/view/CountdownProgressView;-><init>(Landroid/content/Context;Lcom/vungle/publisher/image/BitmapFactory;)V

    iput-object v6, p0, Lcom/vungle/publisher/display/view/VideoFragment;->t:Lcom/vungle/publisher/display/view/CountdownProgressView;

    .line 172
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vungle/publisher/display/view/VideoFragment;->u:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {v4}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    const/4 v8, -0x1

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 178
    const/4 v8, -0x1

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 179
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vungle/publisher/display/view/VideoFragment;->v:Landroid/view/ViewGroup;

    .line 183
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 186
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    const/16 v9, 0xf

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 196
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 199
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 200
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v6}, Lcom/vungle/publisher/display/view/CountdownProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 210
    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 212
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 216
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->o:Lcom/vungle/publisher/display/view/DisplayUtils;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/display/view/DisplayUtils;->a(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 217
    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->o:Lcom/vungle/publisher/display/view/DisplayUtils;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/vungle/publisher/display/view/DisplayUtils;->a(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 218
    invoke-virtual {v8, v0, v3, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 219
    invoke-virtual {v9, v0, v3, v0, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 220
    const-string v0, "vg_mute_on.png"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->A:Landroid/graphics/Bitmap;

    const-string v0, "vg_mute_off.png"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->B:Landroid/graphics/Bitmap;

    .line 221
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->s:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->u:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 222
    const-string v0, "vg_close.png"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    :cond_1
    const-string v0, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "video play URI = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    invoke-virtual {v6}, Lcom/vungle/publisher/db/model/Video;->i()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/Video;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 228
    invoke-static {v9}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 229
    invoke-static {v8}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->j:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 230
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v3, v3, Lcom/vungle/publisher/db/model/Video;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "vg_cta.png"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->y:Landroid/graphics/Bitmap;

    const-string v0, "vg_cta_disabled.png"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v3, v0, Lcom/vungle/publisher/db/model/Video;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->j:Ljava/lang/Integer;

    if-nez v3, :cond_4

    if-eqz v0, :cond_b

    const-string v3, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "overriding cta enabled from null to "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :goto_0
    const-string v6, "VungleAd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cta shown at "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds; enabled at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_6

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->I:I

    if-nez v3, :cond_7

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->L:I

    new-instance v3, Lcom/vungle/publisher/bc;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vungle/publisher/bc;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->e:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_8

    :cond_2
    const-string v0, "VungleAd"

    const-string v6, "cta clickable area not scaled"

    invoke-static {v0, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    iget-object v6, v6, Lcom/vungle/publisher/db/model/Video;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v3, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->g:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->g:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    :goto_4
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$4;

    invoke-direct {v0, p0, v3}, Lcom/vungle/publisher/display/view/VideoFragment$4;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_3
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$b;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/display/view/VideoFragment$b;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$1;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/display/view/VideoFragment$1;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isSoundEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->K:Z

    .line 240
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$2;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/display/view/VideoFragment$2;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 251
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 252
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 256
    :goto_5
    return-void

    .line 230
    :cond_4
    if-nez v0, :cond_5

    const-string v0, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "overriding cta shown from null to "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v6, v8, :cond_b

    const-string v6, "VungleAd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "overriding cta shown from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    :cond_8
    new-instance v6, Lcom/vungle/publisher/display/view/VideoFragment$3;

    invoke-direct {v6, p0, v0, v3}, Lcom/vungle/publisher/display/view/VideoFragment$3;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;Ljava/lang/Float;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "VungleAd"

    const-string v2, "exception in onActivityCreated"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 230
    :cond_9
    :try_start_1
    iget v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->L:I

    iget v6, p0, Lcom/vungle/publisher/display/view/VideoFragment;->I:I

    if-lt v0, v6, :cond_a

    move v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->h(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 795
    const-string v0, "VungleAd"

    const-string v1, "video.onCompletion"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->b(Z)V

    .line 797
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->c:Lcom/vungle/publisher/display/view/VideoFragment$a;

    invoke-interface {v0}, Lcom/vungle/publisher/display/view/VideoFragment$a;->c()V

    .line 798
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->q:Lcom/vungle/publisher/audio/VolumeChangeContentObserver$Factory;

    new-instance v1, Lcom/vungle/publisher/display/view/VideoFragment$d;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/display/view/VideoFragment$d;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    new-instance v2, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;

    iget-object v0, v0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver$Factory;->a:Landroid/media/AudioManager;

    invoke-direct {v2, v0, v1}, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->F:Lcom/vungle/publisher/audio/VolumeChangeContentObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "VungleAd"

    const-string v2, "exception in onCreate"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->x:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 802
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video.onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->b(Z)V

    .line 804
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->c:Lcom/vungle/publisher/display/view/VideoFragment$a;

    invoke-interface {v0}, Lcom/vungle/publisher/display/view/VideoFragment$a;->c()V

    .line 805
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 446
    const-string v0, "VungleAd"

    const-string v1, "video onPause"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/display/view/AdFragment;->onPause()V

    .line 449
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->i()V

    .line 451
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->F:Lcom/vungle/publisher/audio/VolumeChangeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->g(Z)V

    .line 454
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/u;

    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/vungle/publisher/u;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    const-string v1, "VungleAd"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->g()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 423
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "video ready: duration "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->t:Lcom/vungle/publisher/display/view/CountdownProgressView;

    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/display/view/CountdownProgressView;->setMax(I)V

    .line 425
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/event/EventBus;

    new-instance v2, Lcom/vungle/publisher/k;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/k;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 426
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->h()V

    .line 427
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 432
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/display/view/AdFragment;->onResume()V

    .line 433
    const-string v0, "VungleAd"

    const-string v1, "video onResume"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->K:Z

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->f(Z)V

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(F)F

    move-result v1

    sget-object v2, Lcom/vungle/publisher/db/model/AdReportEvent$a;->m:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    .line 436
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->F:Lcom/vungle/publisher/audio/VolumeChangeContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    const-string v1, "VungleAd"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->g()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    const-string v0, "adId"

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/vungle/publisher/db/model/Video;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/Video;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "adConfig"

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    const-string v0, "adStarted"

    iget-boolean v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string v1, "VungleAd"

    const-string v2, "exception in onSaveInstanceState"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
