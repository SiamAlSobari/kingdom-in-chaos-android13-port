.class public Lcom/hz/game/be/util/AdMgr;
.super Ljava/lang/Object;
.source "AdMgr.java"


# static fields
.field private static _init:Z

.field private static _layout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hz/game/be/util/AdMgr;->_init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/hz/game/be/util/AdMgr;->_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static enable(Landroid/app/Activity;II)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enable"    # I
    .param p2, "pos"    # I

    .prologue
    .line 54
    sget-boolean v0, Lcom/hz/game/be/util/AdMgr;->_init:Z

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/hz/game/be/util/AdMgr$1;

    invoke-direct {v0, p1, p2}, Lcom/hz/game/be/util/AdMgr$1;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 22
    const-string v2, "be"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK_INT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    .line 42
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/hz/game/be/util/AdMgr;->_init:Z

    .line 27
    sput-object p1, Lcom/hz/game/be/util/AdMgr;->_layout:Landroid/widget/RelativeLayout;

    .line 29
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 30
    .local v1, "adView":Lcom/google/android/gms/ads/AdView;
    invoke-static {}, Lcom/droidhang/game/ad/AdmobIDManager;->getAdmobBannerAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 31
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 33
    sget-object v2, Lcom/hz/game/be/util/AdMgr;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 36
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 39
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method

.method public static showFullAd()V
    .locals 2

    .prologue
    .line 45
    sget-boolean v0, Lcom/hz/game/be/util/AdMgr;->_init:Z

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "be"

    const-string v1, "11111111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/droidhang/game/ad/InterstitialAdManager;->showInterstitial()V

    .line 50
    const-string v0, "be"

    const-string v1, "22222222"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
