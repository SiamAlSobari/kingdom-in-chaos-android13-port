.class public abstract Lcom/droidhang/game/ad/video/AbstractVideoAd;
.super Ljava/lang/Object;
.source "AbstractVideoAd.java"


# instance fields
.field protected _activity:Landroid/app/Activity;

.field protected _appID:Ljava/lang/String;

.field protected _callBack:Lcom/droidhang/game/ad/video/VideoAdCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected adLoaded()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/droidhang/game/ad/video/AbstractVideoAd;->_callBack:Lcom/droidhang/game/ad/video/VideoAdCallback;

    invoke-interface {v0}, Lcom/droidhang/game/ad/video/VideoAdCallback;->adLoaded()V

    .line 20
    return-void
.end method

.method public abstract isAdReady()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/droidhang/game/ad/video/VideoAdCallback;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/droidhang/game/ad/video/AbstractVideoAd;->_activity:Landroid/app/Activity;

    .line 14
    iput-object p3, p0, Lcom/droidhang/game/ad/video/AbstractVideoAd;->_callBack:Lcom/droidhang/game/ad/video/VideoAdCallback;

    .line 15
    iput-object p2, p0, Lcom/droidhang/game/ad/video/AbstractVideoAd;->_appID:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public abstract preload()V
.end method

.method public abstract showVideoAd()V
.end method

.method protected watchCancelled()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/droidhang/game/ad/video/AbstractVideoAd;->_callBack:Lcom/droidhang/game/ad/video/VideoAdCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/droidhang/game/ad/video/VideoAdCallback;->watchComplete(I)V

    .line 33
    return-void
.end method

.method protected watchComplete()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/droidhang/game/ad/video/AbstractVideoAd;->_callBack:Lcom/droidhang/game/ad/video/VideoAdCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/droidhang/game/ad/video/VideoAdCallback;->watchComplete(I)V

    .line 24
    invoke-static {}, Lcom/droidhang/game/ad/VideoLimitManager;->finishDisplay()V

    .line 25
    return-void
.end method

.method protected watchError()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/droidhang/game/ad/video/AbstractVideoAd;->_callBack:Lcom/droidhang/game/ad/video/VideoAdCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/droidhang/game/ad/video/VideoAdCallback;->watchComplete(I)V

    .line 29
    return-void
.end method
