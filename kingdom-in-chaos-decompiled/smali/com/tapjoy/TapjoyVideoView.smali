.class public Lcom/tapjoy/TapjoyVideoView;
.super Landroid/app/Activity;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;,
        Lcom/tapjoy/TapjoyVideoView$RemainingTime;
    }
.end annotation


# static fields
.field private static final BUNDLE_DIALOG_SHOWING:Ljava/lang/String; = "dialog_showing"

.field private static final BUNDLE_SEEK_TIME:Ljava/lang/String; = "seek_time"

.field private static final COUNTDOWN_IMAGE:Ljava/lang/String; = "countdown_image.png"

.field private static final DIALOG_CONNECTIVITY_LOST_ID:I = 0x1

.field private static final DIALOG_WARNING_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoView"

.field private static streamingVideo:Z

.field private static textSize:I

.field private static videoData:Lcom/tapjoy/OldTapjoyVideoData;

.field private static videoErrorOccurred:Z


# instance fields
.field private allowBackKey:Z

.field private cancelMessage:Ljava/lang/String;

.field private clickRequestSuccess:Z

.field private connectivityMessage:Ljava/lang/String;

.field private countdownImage:Landroid/widget/ImageView;

.field private countdownTextMargin:I

.field private countdownTextSize:I

.field dialog:Landroid/app/Dialog;

.field private dialogShowing:Z

.field private didStartPlaying:Z

.field private firstQuartileSent:Z

.field final mHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;

.field private messageText:Landroid/widget/TextView;

.field private midpointSent:Z

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private seekTime:I

.field private sendClick:Z

.field private shouldDismiss:Z

.field private tapjoyImage:Landroid/widget/ImageView;

.field private thirdQuartileSent:Z

.field private timeRemaining:I

.field timer:Ljava/util/Timer;

.field private timerText:Landroid/widget/TextView;

.field private trackingUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoBroadcastReceiver:Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;

.field private videoIsComplete:Z

.field private videoMessage:Ljava/lang/String;

.field private videoURL:Ljava/lang/String;

.field private videoView:Landroid/widget/VideoView;

.field private watermark:Landroid/graphics/Bitmap;

.field private webviewURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->videoErrorOccurred:Z

    .line 69
    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    .line 95
    const/16 v0, 0xf

    sput v0, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    .line 45
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    .line 46
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    .line 47
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->webviewURL:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoMessage:Ljava/lang/String;

    .line 50
    const-string v0, "Currency will not be awarded, are you sure you want to cancel the video?"

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->cancelMessage:Ljava/lang/String;

    .line 51
    const-string v0, "A network connection is necessary to view videos. You will be able to complete the offer and receive your reward on the next connect."

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->connectivityMessage:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->trackingUrls:Ljava/util/HashMap;

    .line 58
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->firstQuartileSent:Z

    .line 59
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->midpointSent:Z

    .line 60
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->thirdQuartileSent:Z

    .line 61
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->didStartPlaying:Z

    .line 63
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoIsComplete:Z

    .line 66
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    .line 73
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    .line 77
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->sendClick:Z

    .line 78
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    .line 80
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->shouldDismiss:Z

    .line 81
    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    .line 82
    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 97
    const/16 v0, 0x32

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextSize:I

    .line 98
    const/4 v0, -0x5

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextMargin:I

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->mHandler:Landroid/os/Handler;

    .line 627
    new-instance v0, Lcom/tapjoy/TapjoyVideoView$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyVideoView$3;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->mUpdateResults:Ljava/lang/Runnable;

    .line 867
    return-void
.end method

.method static synthetic access$1000(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->midpointSent:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/tapjoy/TapjoyVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->midpointSent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->thirdQuartileSent:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/tapjoy/TapjoyVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->thirdQuartileSent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    return v0
.end method

.method static synthetic access$1302(Lcom/tapjoy/TapjoyVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/tapjoy/TapjoyVideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideoView;->finishWithResult(Z)V

    return-void
.end method

.method static synthetic access$200()Lcom/tapjoy/OldTapjoyVideoData;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tapjoy/TapjoyVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->getRemainingVideoTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->didStartPlaying:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tapjoy/TapjoyVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->didStartPlaying:Z

    return p1
.end method

.method static synthetic access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->firstQuartileSent:Z

    return v0
.end method

.method static synthetic access$902(Lcom/tapjoy/TapjoyVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->firstQuartileSent:Z

    return p1
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 907
    :cond_0
    return-void
.end method

.method private finishWithResult(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 536
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 537
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 538
    const-string v1, "result_string1"

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "result_string2"

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v1, "callback_id"

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "callback_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TapjoyVideoView;->setResult(ILandroid/content/Intent;)V

    .line 542
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->finish()V

    .line 543
    return-void
.end method

.method private fireTrackingEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 579
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/TapjoyVideoView$2;-><init>(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 596
    :cond_0
    return-void
.end method

.method private getRemainingVideoTime()I
    .locals 3

    .prologue
    .line 604
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit16 v0, v1, 0x3e8

    .line 606
    .local v0, "timeRemaining":I
    if-gez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 609
    :cond_0
    return v0
.end method

.method private initVideoView()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/16 v12, 0xc

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 345
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 346
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 348
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    if-nez v6, :cond_2

    .line 353
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    .line 356
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getWatermarkImage()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->watermark:Landroid/graphics/Bitmap;

    .line 358
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->watermark:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 359
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->watermark:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 362
    .local v2, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 363
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 364
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v6, Landroid/widget/VideoView;

    invoke-direct {v6, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    .line 370
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 371
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 372
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 375
    sget-boolean v6, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    if-eqz v6, :cond_3

    .line 377
    const-string v6, "VideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streaming video: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 386
    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 387
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->getDuration()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    .line 395
    const-string v6, "VideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoView.getDuration(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v8}, Landroid/widget/VideoView;->getDuration()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v6, "VideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeRemaining: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    .line 399
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 400
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    sget v7, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 401
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    const-string v7, "#535256"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    const-string v7, "default"

    invoke-static {v7, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 404
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownImage:Landroid/widget/ImageView;

    .line 405
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setId(I)V

    .line 408
    const-string v6, "countdown_image.png"

    invoke-static {v6, p0}, Lcom/tapjoy/TapjoyUtil;->loadBitmapFromJar(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    .local v0, "countdownBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 411
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 414
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 415
    .local v1, "countdownImageParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 416
    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 417
    iget v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextMargin:I

    iget v7, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextMargin:I

    invoke-virtual {v1, v6, v9, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 418
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    .end local v1    # "countdownImageParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextSize:I

    iget v7, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextSize:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 423
    .local v5, "timerTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 424
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 425
    iget v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextMargin:I

    iget v7, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextMargin:I

    invoke-virtual {v5, v6, v9, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 426
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    .line 429
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 430
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    sget v7, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 431
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    const-string v7, "default"

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 433
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->videoMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextSize:I

    invoke-direct {v4, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 437
    .local v4, "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v4, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 438
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 439
    iget v6, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextMargin:I

    invoke-virtual {v4, v9, v9, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    .end local v0    # "countdownBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "timerTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->startVideo()V

    .line 447
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 448
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->countdownImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 450
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->timerText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 451
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->messageText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 452
    return-void

    .line 382
    .restart local v2    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const-string v6, "VideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cached video: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendTrackingEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 552
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 554
    .local v3, "timeStamp":J
    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->trackingUrls:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 555
    .local v2, "jsonString":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 556
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 557
    .local v6, "urls":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 558
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 559
    .local v5, "urlString":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 562
    const-string v7, "[TIMESTAMP]"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 563
    invoke-direct {p0, v5, p1}, Lcom/tapjoy/TapjoyVideoView;->fireTrackingEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    .end local v1    # "i":I
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "timeStamp":J
    .end local v5    # "urlString":Ljava/lang/String;
    .end local v6    # "urls":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "VideoView"

    const-string v8, "Bad video tracking urls array"

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private showVideoCompletionScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 457
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->shouldDismiss:Z

    if-eqz v1, :cond_0

    .line 459
    invoke-direct {p0, v3}, Lcom/tapjoy/TapjoyVideoView;->finishWithResult(Z)V

    .line 470
    :goto_0
    return-void

    .line 463
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "view_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v1, "url"

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->webviewURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "legacy_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyVideoView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startVideo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 478
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 481
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 484
    const-string v0, "VideoView"

    const-string v1, "dialog is showing -- don\'t start"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->cancelTimer()V

    .line 500
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    .line 501
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$RemainingTime;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TapjoyVideoView$RemainingTime;-><init>(Lcom/tapjoy/TapjoyVideoView;Lcom/tapjoy/TapjoyVideoView$1;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 504
    iput-boolean v6, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    .line 507
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->sendClick:Z

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$1;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 526
    iput-boolean v6, p0, Lcom/tapjoy/TapjoyVideoView;->sendClick:Z

    .line 528
    :cond_0
    return-void

    .line 488
    :cond_1
    const-string v0, "VideoView"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v6}, Landroid/widget/VideoView;->seekTo(I)V

    .line 490
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 493
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->videoNotifierStart()V

    goto :goto_0
.end method


# virtual methods
.method public convertToDp(I)I
    .locals 2
    .param p1, "input"    # I

    .prologue
    .line 237
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 319
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 321
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 326
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 328
    :cond_0
    if-eqz v0, :cond_3

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "result":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "offer_wall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/tapjoy/TapjoyVideoView;->finishWithResult(Z)V

    .line 341
    :cond_2
    :goto_1
    return-void

    .line 328
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 337
    .restart local v1    # "result":Ljava/lang/String;
    :cond_4
    const-string v2, "tjvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->initVideoView()V

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 706
    const-string v0, "VideoView"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->cancelTimer()V

    .line 710
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->showVideoCompletionScreen()V

    .line 712
    sget-boolean v0, Lcom/tapjoy/TapjoyVideoView;->videoErrorOccurred:Z

    if-nez v0, :cond_0

    .line 714
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->videoNotifierComplete()V

    .line 715
    const-string v0, "complete"

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V

    .line 717
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$4;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$4;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 729
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->videoErrorOccurred:Z

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoIsComplete:Z

    .line 731
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 106
    const-string v4, "VideoView"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {v9}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 111
    if-eqz p1, :cond_0

    .line 113
    const-string v4, "VideoView"

    const-string v5, "*** Loading saved data from bundle ***"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v4, "seek_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 115
    const-string v4, "dialog_showing"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 120
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_7

    .line 123
    const-string v4, "VIDEO_URL"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    .line 126
    new-instance v4, Lcom/tapjoy/OldTapjoyVideoData;

    invoke-direct {v4}, Lcom/tapjoy/OldTapjoyVideoData;-><init>()V

    sput-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    .line 127
    sget-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tapjoy/OldTapjoyVideoData;->setVideoURL(Ljava/lang/String;)V

    .line 129
    const-string v4, "VIDEO_MESSAGE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    const-string v4, "VIDEO_MESSAGE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoMessage:Ljava/lang/String;

    .line 132
    :cond_1
    const-string v4, "VIDEO_DATA"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    const-string v4, "VIDEO_DATA"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/OldTapjoyVideoData;

    sput-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    .line 136
    :cond_2
    const-string v4, "CACHED_VIDEO_LOCATION"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    sget-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    const-string v5, "CACHED_VIDEO_LOCATION"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/OldTapjoyVideoData;->setLocalFilePath(Ljava/lang/String;)V

    .line 140
    :cond_3
    const-string v4, "VIDEO_ALLOW_BACK_BUTTON"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    const-string v4, "VIDEO_ALLOW_BACK_BUTTON"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    .line 144
    :cond_4
    const-string v4, "VIDEO_CANCEL_MESSAGE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 145
    const-string v4, "VIDEO_CANCEL_MESSAGE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->cancelMessage:Ljava/lang/String;

    .line 148
    :cond_5
    const-string v4, "VIDEO_SHOULD_DISMISS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 149
    const-string v4, "VIDEO_SHOULD_DISMISS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tapjoy/TapjoyVideoView;->shouldDismiss:Z

    .line 152
    :cond_6
    const-string v4, "VIDEO_TRACKING_URLS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 153
    const-string v4, "VIDEO_TRACKING_URLS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->trackingUrls:Ljava/util/HashMap;

    .line 157
    :cond_7
    const-string v4, "VideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialogShowing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", seekTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    if-eqz v4, :cond_e

    .line 162
    sget-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v4}, Lcom/tapjoy/OldTapjoyVideoData;->getClickURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 163
    iput-boolean v7, p0, Lcom/tapjoy/TapjoyVideoView;->sendClick:Z

    .line 164
    :cond_8
    sput-boolean v8, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    .line 167
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getInstance()Lcom/tapjoy/TapjoyVideo;

    move-result-object v4

    if-nez v4, :cond_9

    .line 169
    const-string v4, "VideoView"

    const-string v5, "null video"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyVideoView;->finishWithResult(Z)V

    .line 234
    :goto_0
    return-void

    .line 175
    :cond_9
    sget-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v4}, Lcom/tapjoy/OldTapjoyVideoData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    .line 176
    sget-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v4}, Lcom/tapjoy/OldTapjoyVideoData;->getWebviewURL()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->webviewURL:Ljava/lang/String;

    .line 179
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    .line 181
    :cond_a
    const-string v4, "VideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playing video at location:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v6}, Lcom/tapjoy/OldTapjoyVideoData;->getVideoURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v4, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v4}, Lcom/tapjoy/OldTapjoyVideoData;->getVideoURL()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    .line 183
    sput-boolean v7, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    .line 186
    :cond_b
    const-string v4, "VideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoPath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_c
    :goto_1
    invoke-virtual {p0, v7}, Lcom/tapjoy/TapjoyVideoView;->requestWindowFeature(I)Z

    .line 200
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 201
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Lcom/tapjoy/TapjoyVideoView;->setContentView(Landroid/view/View;)V

    .line 206
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v9, :cond_d

    .line 208
    new-instance v1, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 210
    .local v1, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    invoke-virtual {v1}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v0

    .line 212
    .local v0, "deviceScreenLayoutSize":I
    const-string v4, "VideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceScreenLayoutSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v4, 0x4

    if-ne v0, v4, :cond_d

    .line 218
    const/16 v4, 0x20

    sput v4, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    .line 222
    .end local v0    # "deviceScreenLayoutSize":I
    .end local v1    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    :cond_d
    iget v4, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextSize:I

    invoke-virtual {p0, v4}, Lcom/tapjoy/TapjoyVideoView;->convertToDp(I)I

    move-result v4

    iput v4, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextSize:I

    .line 223
    iget v4, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextMargin:I

    invoke-virtual {p0, v4}, Lcom/tapjoy/TapjoyVideoView;->convertToDp(I)I

    move-result v4

    iput v4, p0, Lcom/tapjoy/TapjoyVideoView;->countdownTextMargin:I

    .line 226
    new-instance v4, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;-><init>(Lcom/tapjoy/TapjoyVideoView;Lcom/tapjoy/TapjoyVideoView$1;)V

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoBroadcastReceiver:Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;

    .line 227
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoBroadcastReceiver:Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/tapjoy/TapjoyVideoView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->initVideoView()V

    .line 231
    const-string v4, "VideoView"

    const-string v5, "onCreate DONE"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {v9}, Lcom/tapjoy/TapjoyConnectCore;->viewDidOpen(I)V

    goto/16 :goto_0

    .line 190
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 192
    sput-boolean v7, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    .line 193
    iput-boolean v8, p0, Lcom/tapjoy/TapjoyVideoView;->sendClick:Z

    .line 195
    const-string v4, "VideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playing video only: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 775
    const-string v0, "VideoView"

    const-string v1, "dialog onCreateDialog"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    .line 861
    :goto_0
    return-object v0

    .line 782
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    .line 861
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    goto :goto_0

    .line 785
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Cancel Video?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->cancelMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "End"

    new-instance v2, Lcom/tapjoy/TapjoyVideoView$6;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideoView$6;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Resume"

    new-instance v2, Lcom/tapjoy/TapjoyVideoView$5;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideoView$5;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    .line 812
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$7;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$7;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 827
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 828
    iput-boolean v3, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    goto :goto_1

    .line 831
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Network Connection Lost"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->connectivityMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Okay"

    new-instance v2, Lcom/tapjoy/TapjoyVideoView$8;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideoView$8;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    .line 844
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$9;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$9;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 855
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 856
    iput-boolean v3, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    goto :goto_1

    .line 782
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 287
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoBroadcastReceiver:Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillClose(I)V

    .line 291
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    .line 685
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError, what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->videoErrorOccurred:Z

    .line 689
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideo;->videoNotifierError(I)V

    .line 691
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->cancelTimer()V

    .line 695
    if-ne p2, v0, :cond_0

    const/16 v1, -0x3ec

    if-ne p3, v1, :cond_0

    .line 699
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->didStartPlaying:Z

    if-eqz v0, :cond_0

    .line 887
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 890
    const-string v0, "stall"

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V

    .line 897
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 892
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 894
    const-string v0, "resume"

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 736
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 738
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoIsComplete:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/tapjoy/TapjoyVideoView;->videoErrorOccurred:Z

    if-eqz v1, :cond_2

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 741
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 743
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->cancelTimer()V

    .line 745
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->showVideoCompletionScreen()V

    .line 769
    :cond_1
    :goto_0
    return v0

    .line 749
    :cond_2
    sget-boolean v1, Lcom/tapjoy/TapjoyVideoView;->videoErrorOccurred:Z

    if-nez v1, :cond_3

    .line 750
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->cancelMessage:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->cancelMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 755
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 756
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 758
    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    .line 759
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    .line 761
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAUSE VIDEO time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", elapsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 769
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 246
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "VideoView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 251
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 252
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 677
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 678
    const-string v0, "VideoView"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 260
    const-string v0, "VideoView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->setRequestedOrientation(I)V

    .line 267
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    if-lez v0, :cond_1

    .line 269
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 274
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 279
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 301
    const-string v0, "VideoView"

    const-string v1, "*** onSaveInstanceState ***"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "dialog_showing"

    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    const-string v0, "seek_time"

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 311
    const-string v0, "VideoView"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 313
    return-void
.end method
