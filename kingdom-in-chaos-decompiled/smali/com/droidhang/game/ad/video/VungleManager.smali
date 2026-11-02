.class public Lcom/droidhang/game/ad/video/VungleManager;
.super Lcom/droidhang/game/ad/video/AbstractVideoAd;
.source "VungleManager.java"


# instance fields
.field private final vungleListener:Lcom/vungle/publisher/EventListener;

.field final vunglePub:Lcom/vungle/publisher/VunglePub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/droidhang/game/ad/video/AbstractVideoAd;-><init>()V

    .line 10
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager;->vunglePub:Lcom/vungle/publisher/VunglePub;

    .line 55
    new-instance v0, Lcom/droidhang/game/ad/video/VungleManager$2;

    invoke-direct {v0, p0}, Lcom/droidhang/game/ad/video/VungleManager$2;-><init>(Lcom/droidhang/game/ad/video/VungleManager;)V

    iput-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager;->vungleListener:Lcom/vungle/publisher/EventListener;

    .line 13
    return-void
.end method


# virtual methods
.method public isAdReady()Z
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/droidhang/game/ad/video/VungleManager;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    .line 41
    .local v0, "ready":Z
    const-string v1, "dh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vungle ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "vungle"

    return-object v0
.end method

.method public onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/droidhang/game/ad/video/VideoAdCallback;

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V

    .line 18
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    const-string v0, "dh"

    const-string v1, "Vungle init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager;->vunglePub:Lcom/vungle/publisher/VunglePub;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/EventListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/droidhang/game/ad/video/VungleManager;->vungleListener:Lcom/vungle/publisher/EventListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 21
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onPause()V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onResume()V

    .line 53
    return-void
.end method

.method public preload()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public showVideoAd()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "dh"

    const-string v1, "show Vungle videoAd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/game/ad/video/VungleManager$1;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/video/VungleManager$1;-><init>(Lcom/droidhang/game/ad/video/VungleManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method
