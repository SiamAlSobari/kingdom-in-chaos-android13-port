.class public Lcom/droidhang/game/ad/video/InmobiManager;
.super Lcom/droidhang/game/ad/video/AbstractVideoAd;
.source "InmobiManager.java"


# instance fields
.field private _rewardedAd:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/droidhang/game/ad/video/AbstractVideoAd;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/droidhang/game/ad/video/InmobiManager;)Lcom/inmobi/monetization/IMInterstitial;
    .locals 1
    .param p0, "x0"    # Lcom/droidhang/game/ad/video/InmobiManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    return-object v0
.end method


# virtual methods
.method public isAdReady()Z
    .locals 3

    .prologue
    .line 85
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v2}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/droidhang/game/ad/video/InmobiManager;->preload()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "inmobi"

    return-object v0
.end method

.method public onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/droidhang/game/ad/video/VideoAdCallback;

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V

    .line 25
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_appID:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/inmobi/monetization/IMInterstitial;

    iget-object v1, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_appID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    .line 28
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    new-instance v1, Lcom/droidhang/game/ad/video/InmobiManager$1;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/video/InmobiManager$1;-><init>(Lcom/droidhang/game/ad/video/InmobiManager;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 63
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    new-instance v1, Lcom/droidhang/game/ad/video/InmobiManager$2;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/video/InmobiManager$2;-><init>(Lcom/droidhang/game/ad/video/InmobiManager;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMIncentivisedListener(Lcom/inmobi/monetization/IMIncentivisedListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/droidhang/game/ad/video/InmobiManager;->preload()V

    .line 75
    return-void
.end method

.method public preload()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "dh"

    const-string v1, "Inmobi video preload"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_rewardedAd:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    .line 81
    return-void
.end method

.method public showVideoAd()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/game/ad/video/InmobiManager$3;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/video/InmobiManager$3;-><init>(Lcom/droidhang/game/ad/video/InmobiManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
