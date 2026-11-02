.class public Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobInterstitial.java"

# interfaces
.implements Lcom/droidhang/game/ad/interstitial/IInterstitial;


# static fields
.field private static _isready:Z


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _ads:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_isready:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_activity:Landroid/app/Activity;

    .line 22
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    .line 23
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 25
    invoke-virtual {p0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->loadAd()V

    .line 26
    return-void
.end method

.method public isready()Z
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_isready:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 30
    .local v0, "ret":Z
    :goto_0
    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->loadAd()V

    .line 33
    :cond_0
    return v0

    .line 29
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "dh"

    const-string v1, "admob, loadAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$2;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$2;-><init>(Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    :cond_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "admob"

    return-object v0
.end method

.method public onAdClosed()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "dh"

    const-string v1, "admob, onAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_isready:Z

    .line 57
    invoke-virtual {p0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->loadAd()V

    .line 58
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 75
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admob, onAdFailedToLoad,error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->loadAd()V

    .line 79
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "dh"

    const-string v1, "admob, onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_isready:Z

    .line 51
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$1;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$1;-><init>(Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    :cond_0
    return-void
.end method
