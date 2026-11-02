.class public Lcom/droidhang/game/ad/interstitial/AppLovinInterstitial;
.super Ljava/lang/Object;
.source "AppLovinInterstitial.java"

# interfaces
.implements Lcom/droidhang/game/ad/interstitial/IInterstitial;


# instance fields
.field private _activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/droidhang/game/ad/interstitial/AppLovinInterstitial;->_activity:Landroid/app/Activity;

    .line 19
    return-void
.end method

.method public isready()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AppLovinInterstitial;->_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialAd;->isAdReadyToDisplay(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "applovin"

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AppLovinInterstitial;->_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialAd;->show(Landroid/app/Activity;)V

    .line 29
    return-void
.end method
