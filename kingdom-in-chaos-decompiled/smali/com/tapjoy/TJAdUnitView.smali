.class public Lcom/tapjoy/TJAdUnitView;
.super Landroid/app/Activity;
.source "TJAdUnitView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;
    }
.end annotation


# static fields
.field private static final CLOSE_BUTTON_OFFSET:I = 0xa

.field private static final DELAY_BEFORE_CLOSE_FADE_IN:J = 0x7d0L

.field private static final DURATION_OF_CLOSE_FADE_IN:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "TJAdUnitView"


# instance fields
.field protected bridge:Lcom/tapjoy/TJAdUnitJSBridge;

.field private callbackID:Ljava/lang/String;

.field private closeButton:Landroid/widget/ImageButton;

.field private closeButtonVisible:Z

.field private connectivityErrorMessage:Ljava/lang/String;

.field private event:Lcom/tapjoy/TJEvent;

.field private eventData:Lcom/tapjoy/TJEventData;

.field protected historyIndex:I

.field private isLegacyView:Z

.field protected layout:Landroid/widget/RelativeLayout;

.field protected offersURL:Ljava/lang/String;

.field protected pauseCalled:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field protected redirectedActivity:Z

.field protected skipOfferWall:Z

.field protected url:Ljava/lang/String;

.field private viewType:I

.field protected webView:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    .line 55
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    .line 56
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    .line 58
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->pauseCalled:Z

    .line 59
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->skipOfferWall:Z

    .line 61
    iput v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    .line 66
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    .line 70
    iput v0, p0, Lcom/tapjoy/TJAdUnitView;->historyIndex:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->closeButtonVisible:Z

    .line 82
    const-string v0, "A connection error occurred loading this content."

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->connectivityErrorMessage:Ljava/lang/String;

    .line 444
    return-void
.end method

.method static synthetic access$100(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TJAdUnitView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TJAdUnitView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 51
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    return v0
.end method

.method static synthetic access$500(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitView;->finishWithResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitView;->handleTJVideoURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->disable()V

    .line 902
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 905
    const-string v0, "offer_wall"

    invoke-direct {p0, v0}, Lcom/tapjoy/TJAdUnitView;->finishWithResult(Ljava/lang/String;)V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    if-eqz p0, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    goto :goto_0
.end method

.method private finishWithResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 803
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 804
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitView;->setResult(ILandroid/content/Intent;)V

    .line 806
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    .line 807
    return-void
.end method

.method private getCloseBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->closeButtonVisible:Z

    if-nez v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;->getTransparentCloseBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tj_close_button.png"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyUtil;->loadBitmapFromJar(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getTransparentCloseBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "closeBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getDeviceScreenDensityScale()F

    move-result v2

    .line 359
    .local v2, "scale":F
    mul-float v3, v4, v2

    float-to-int v3, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 364
    .end local v2    # "scale":F
    :goto_0
    return-object v3

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleTJVideoURL(Ljava/lang/String;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 639
    const/4 v9, 0x0

    .line 648
    .local v9, "index":I
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v12, "://"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v9, v0, v12

    .line 650
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 652
    .local v11, "source":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {v11, v0}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v10

    .line 654
    .local v10, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "video_id"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    .local v1, "videoID":Ljava/lang/String;
    const-string v0, "amount"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 656
    .local v3, "amount":Ljava/lang/String;
    const-string v0, "currency_name"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 657
    .local v2, "currencyName":Ljava/lang/String;
    const-string v0, "click_url"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 658
    .local v4, "clickURL":Ljava/lang/String;
    const-string v0, "video_complete_url"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 659
    .local v5, "videoCompleteURL":Ljava/lang/String;
    const-string v0, "video_url"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 661
    .local v6, "videoURL":Ljava/lang/String;
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video_id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "amount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currency_name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "click_url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video_complete_url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video_url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getInstance()Lcom/tapjoy/TapjoyVideo;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/tapjoy/TapjoyVideo;->startVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    const-string v0, "TJAdUnitView"

    const-string v12, "Video started successfully"

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :goto_0
    return-void

    .line 675
    :cond_0
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to play video: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v12, ""

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v12, "Unable to play video."

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v12, "OK"

    new-instance v13, Lcom/tapjoy/TJAdUnitView$4;

    invoke-direct {v13, p0}, Lcom/tapjoy/TJAdUnitView$4;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 686
    .local v7, "dialog":Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v8

    .line 690
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "e: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 790
    iget v1, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 792
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 793
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 794
    const-string v1, "callback_id"

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->callbackID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitView;->setResult(ILandroid/content/Intent;)V

    .line 798
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 799
    return-void
.end method

.method public handleClose()V
    .locals 4

    .prologue
    .line 846
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->videoPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->videoViewCleanup()V

    .line 892
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    if-eqz v2, :cond_2

    .line 854
    const-string v2, "TJAdUnitView"

    const-string v3, "customClose"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    if-eqz v2, :cond_1

    .line 860
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;->finishActivity()V

    goto :goto_0

    .line 864
    :cond_1
    const-string v2, "TJAdUnitView"

    const-string v3, "closeRequested..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested()V

    .line 870
    new-instance v1, Lcom/tapjoy/TJAdUnitView$5;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnitView$5;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    .line 883
    .local v1, "timerTask":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 884
    .local v0, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 890
    .end local v0    # "timer":Ljava/util/Timer;
    .end local v1    # "timerTask":Ljava/util/TimerTask;
    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;->finishActivity()V

    goto :goto_0
.end method

.method public handleWebViewOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v0, "TJAdUnitView"

    const-string v1, "handleWebViewOnPageFinished"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 418
    const-string v1, "TJAdUnitView"

    const-string v2, "handleWebViewError"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->connectivityErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/tapjoy/TJAdUnitView$3;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJAdUnitView$3;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 431
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 433
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected initUI()V
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 105
    const-string v1, "TJAdUnitView"

    const-string v2, "initUI"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v14, 0x0

    .line 107
    .local v14, "loadURL":Z
    const/4 v12, 0x0

    .line 108
    .local v12, "html":Ljava/lang/String;
    const/4 v7, 0x0

    .line 110
    .local v7, "baseURL":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJAdUnitView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 113
    .local v10, "extras":Landroid/os/Bundle;
    if-eqz v10, :cond_6

    .line 116
    const-string v1, "DISPLAY_AD_URL"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 118
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitView;->skipOfferWall:Z

    .line 119
    const-string v1, "DISPLAY_AD_URL"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    .line 135
    :cond_0
    :goto_0
    const-string v1, "tjevent"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJEventData;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    if-eqz v1, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v1, v1, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    .line 140
    :cond_1
    const-string v1, "view_type"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    .line 142
    const-string v1, "html"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 143
    const-string v1, "base_url"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    const-string v1, "url"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    .line 145
    const-string v1, "callback_id"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->callbackID:Ljava/lang/String;

    .line 146
    const-string v1, "legacy_view"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-nez v1, :cond_6

    .line 152
    new-instance v1, Lcom/tapjoy/mraid/view/MraidView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v2, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;-><init>(Lcom/tapjoy/TJAdUnitView;Lcom/tapjoy/TJAdUnitView$1;)V

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    .line 158
    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/tapjoy/TJEventData;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 161
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 163
    const-string v1, "TJAdUnitView"

    const-string v2, "Loading event data"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    if-eqz v1, :cond_2

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v2, v2, Lcom/tapjoy/TJEventData;->baseURL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v3, v3, Lcom/tapjoy/TJEventData;->httpResponse:Ljava/lang/String;

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 174
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-virtual {v1}, Lcom/tapjoy/TJEvent;->getCallback()Lcom/tapjoy/TJEventCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-virtual {v1}, Lcom/tapjoy/TJEvent;->getCallback()Lcom/tapjoy/TJEventCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-interface {v1, v2}, Lcom/tapjoy/TJEventCallback;->contentDidShow(Lcom/tapjoy/TJEvent;)V

    .line 213
    :cond_2
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJAdUnitView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 217
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJAdUnitView;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, 0x60000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 221
    .local v16, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 237
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitView;->setContentView(Landroid/view/View;)V

    .line 249
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    if-eqz v1, :cond_5

    if-eqz v14, :cond_5

    .line 252
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x101007a

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v13, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v13, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v13}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 263
    .end local v13    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v1

    if-nez v1, :cond_6

    .line 265
    new-instance v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/TJAdUnitView;->getCloseBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 267
    .local v8, "closeBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_e

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/tapjoy/TJAdUnitView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tapjoy/TJAdUnitView$1;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v9, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v9, "closeButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    const/16 v1, 0xb

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getDeviceScreenDensityScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v15, v1

    .line 284
    .local v15, "offset":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v15, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 296
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 297
    .local v11, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/tapjoy/TJAdUnitView$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/tapjoy/TJAdUnitView$2;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v11, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    .end local v8    # "closeBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "closeButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "handler":Landroid/os/Handler;
    .end local v15    # "offset":I
    .end local v16    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    :goto_3
    return-void

    .line 123
    :cond_7
    const-string v1, "URL_PARAMS"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitView;->skipOfferWall:Z

    .line 126
    const/16 v17, 0x0

    .line 127
    .local v17, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "URL_PARAMS"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .end local v17    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v17, Ljava/util/HashMap;

    .line 129
    .restart local v17    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "TJAdUnitView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "urlParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "get_offers/webpage?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 185
    .end local v17    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 187
    const-string v1, "TJAdUnitView"

    const-string v2, "Loading HTML data"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    if-eqz v1, :cond_a

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v2, v7

    move-object v3, v12

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_9
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 192
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v3, v12

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 196
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 198
    const-string v1, "TJAdUnitView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 203
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 205
    const-string v1, "TJAdUnitView"

    const-string v2, "Load Offer Wall URL"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 233
    .restart local v16    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 322
    .restart local v8    # "closeBitmap":Landroid/graphics/Bitmap;
    :cond_e
    const-string v1, "TJAdUnitView"

    const-string v2, "Error loading bitmap data for close button!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 918
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJAdUnitView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 919
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 812
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 814
    const-string v1, "TJAdUnitView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v0, 0x0

    .line 818
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 819
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 821
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "callback_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 823
    const-string v1, "TJAdUnitView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const-string v2, "callback_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "result"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "result_string1"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "result_string2"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 380
    const-string v0, "TJAdUnitView"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 389
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->initUI()V

    .line 390
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 88
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitView;->setTheme(I)V

    .line 95
    :goto_0
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TJAdUnitView onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->initUI()V

    .line 99
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitView;->requestWindowFeature(I)Z

    .line 92
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 698
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 700
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy isFinishing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 708
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->destroy()V

    .line 711
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(I)V

    .line 714
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->getCallback()Lcom/tapjoy/TJEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->getCallback()Lcom/tapjoy/TJEventCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-interface {v0, v1}, Lcom/tapjoy/TJEventCallback;->contentDidDisappear(Lcom/tapjoy/TJEvent;)V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->isPreloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 719
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCache;->decrementEventCacheCount()V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v0, v0, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->remove(Ljava/lang/String;)V

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_3

    .line 730
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 739
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 744
    :cond_3
    :goto_1
    return-void

    .line 741
    :catch_0
    move-exception v0

    goto :goto_1

    .line 732
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 832
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->handleClose()V

    .line 835
    const/4 v0, 0x1

    .line 838
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 749
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->pauseCalled:Z

    .line 755
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 408
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1}, Lcom/tapjoy/mraid/view/MraidView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 410
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 763
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 768
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    if-ne v0, v3, :cond_0

    .line 775
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    if-eqz v0, :cond_0

    .line 777
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume bridge.didLaunchOtherActivity callbackID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v4, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 783
    :cond_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 398
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1}, Lcom/tapjoy/mraid/view/MraidView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 400
    :cond_0
    return-void
.end method

.method public setCloseButtonVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 336
    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnitView;->closeButtonVisible:Z

    if-eq v1, p1, :cond_0

    .line 338
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnitView;->closeButtonVisible:Z

    .line 340
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;->getCloseBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    .local v0, "closeBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 349
    .end local v0    # "closeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
