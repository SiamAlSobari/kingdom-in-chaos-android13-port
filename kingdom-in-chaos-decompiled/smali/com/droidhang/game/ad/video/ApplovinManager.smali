.class public Lcom/droidhang/game/ad/video/ApplovinManager;
.super Lcom/droidhang/game/ad/video/AbstractVideoAd;
.source "ApplovinManager.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# instance fields
.field appLovinAdLoadListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field myIncent:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/droidhang/game/ad/video/AbstractVideoAd;-><init>()V

    .line 15
    new-instance v0, Lcom/droidhang/game/ad/video/ApplovinManager$1;

    invoke-direct {v0, p0}, Lcom/droidhang/game/ad/video/ApplovinManager$1;-><init>(Lcom/droidhang/game/ad/video/ApplovinManager;)V

    iput-object v0, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->appLovinAdLoadListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 69
    const-string v0, "dh"

    const-string v1, "Applovin adDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 75
    const-string v0, "dh"

    const-string v1, "adHidden"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/droidhang/game/ad/video/ApplovinManager;->watchComplete()V

    .line 77
    iget-object v0, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->myIncent:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v1, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->appLovinAdLoadListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 78
    return-void
.end method

.method public isAdReady()Z
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->myIncent:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    .line 59
    .local v0, "ready":Z
    const-string v1, "dh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appLovin ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-nez v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->myIncent:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v2, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->appLovinAdLoadListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-virtual {v1, v2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 63
    :cond_0
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "applovin"

    return-object v0
.end method

.method public onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/droidhang/game/ad/video/VideoAdCallback;

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V

    .line 29
    iget-object v0, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->myIncent:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 31
    iget-object v0, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->myIncent:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v1, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->appLovinAdLoadListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 32
    return-void
.end method

.method public preload()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public showVideoAd()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "dh"

    const-string v1, "show Applovin videoAd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/droidhang/game/ad/video/ApplovinManager;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/game/ad/video/ApplovinManager$2;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/video/ApplovinManager$2;-><init>(Lcom/droidhang/game/ad/video/ApplovinManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method
