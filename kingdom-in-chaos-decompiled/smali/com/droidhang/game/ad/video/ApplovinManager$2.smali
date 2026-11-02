.class Lcom/droidhang/game/ad/video/ApplovinManager$2;
.super Ljava/lang/Object;
.source "ApplovinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/video/ApplovinManager;->showVideoAd()V
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
    .line 43
    iput-object p1, p0, Lcom/droidhang/game/ad/video/ApplovinManager$2;->this$0:Lcom/droidhang/game/ad/video/ApplovinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/droidhang/game/ad/video/ApplovinManager$2;->this$0:Lcom/droidhang/game/ad/video/ApplovinManager;

    iget-object v0, v0, Lcom/droidhang/game/ad/video/ApplovinManager;->myIncent:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v1, p0, Lcom/droidhang/game/ad/video/ApplovinManager$2;->this$0:Lcom/droidhang/game/ad/video/ApplovinManager;

    iget-object v1, v1, Lcom/droidhang/game/ad/video/ApplovinManager;->_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/droidhang/game/ad/video/ApplovinManager$2;->this$0:Lcom/droidhang/game/ad/video/ApplovinManager;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 47
    return-void
.end method
