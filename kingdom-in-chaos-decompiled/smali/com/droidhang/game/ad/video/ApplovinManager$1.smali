.class Lcom/droidhang/game/ad/video/ApplovinManager$1;
.super Ljava/lang/Object;
.source "ApplovinManager.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhang/game/ad/video/ApplovinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/game/ad/video/ApplovinManager;


# direct methods
.method constructor <init>(Lcom/droidhang/game/ad/video/ApplovinManager;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/droidhang/game/ad/video/ApplovinManager$1;->this$0:Lcom/droidhang/game/ad/video/ApplovinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 18
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLovinAd adReceived\uff0cready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhang/game/ad/video/ApplovinManager$1;->this$0:Lcom/droidhang/game/ad/video/ApplovinManager;

    iget-object v2, v2, Lcom/droidhang/game/ad/video/ApplovinManager;->myIncent:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 22
    const-string v0, "dh"

    const-string v1, "AppLovinAd failedToReceiveAd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method
