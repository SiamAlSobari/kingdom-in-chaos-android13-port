.class public Lcom/droidhang/game/ad/VideoAdManager;
.super Ljava/lang/Object;
.source "VideoAdManager.java"


# static fields
.field private static ADS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/droidhang/game/ad/video/AbstractVideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getShowOrder()[Lcom/droidhang/game/ad/video/AbstractVideoAd;
    .locals 8

    .prologue
    .line 34
    const-string v5, "vungle"

    invoke-static {v5}, Lcom/droidhang/game/ad/AdRatioManager;->getVideoRatio(Ljava/lang/String;)I

    move-result v4

    .line 35
    .local v4, "vungleRatio":I
    const-string v5, "applovin"

    invoke-static {v5}, Lcom/droidhang/game/ad/AdRatioManager;->getVideoRatio(Ljava/lang/String;)I

    move-result v0

    .line 36
    .local v0, "applovinRatio":I
    const-string v5, "dh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    add-int v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 39
    .local v3, "value":I
    const-string v5, "dh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-ge v3, v4, :cond_0

    .line 41
    sget-object v5, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    const-string v6, "vungle"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhang/game/ad/video/AbstractVideoAd;

    .line 42
    .local v1, "first":Lcom/droidhang/game/ad/video/AbstractVideoAd;
    sget-object v5, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    const-string v6, "applovin"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhang/game/ad/video/AbstractVideoAd;

    .line 43
    .local v2, "second":Lcom/droidhang/game/ad/video/AbstractVideoAd;
    const-string v5, "dh"

    const-string v6, "vungle, applovin"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/droidhang/game/ad/video/AbstractVideoAd;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    return-object v5

    .line 45
    .end local v1    # "first":Lcom/droidhang/game/ad/video/AbstractVideoAd;
    .end local v2    # "second":Lcom/droidhang/game/ad/video/AbstractVideoAd;
    :cond_0
    sget-object v5, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    const-string v6, "vungle"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhang/game/ad/video/AbstractVideoAd;

    .line 46
    .restart local v2    # "second":Lcom/droidhang/game/ad/video/AbstractVideoAd;
    sget-object v5, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    const-string v6, "applovin"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhang/game/ad/video/AbstractVideoAd;

    .line 47
    .restart local v1    # "first":Lcom/droidhang/game/ad/video/AbstractVideoAd;
    const-string v5, "dh"

    const-string v6, "applovin, vungle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;Lcom/droidhang/game/ad/video/VideoAdCallback;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "iadId"    # Lcom/droidhang/game/ad/IAdId;
    .param p2, "videoAdCallback"    # Lcom/droidhang/game/ad/video/VideoAdCallback;

    .prologue
    .line 19
    new-instance v1, Lcom/droidhang/game/ad/video/VungleManager;

    invoke-direct {v1}, Lcom/droidhang/game/ad/video/VungleManager;-><init>()V

    .line 20
    .local v1, "videoManager":Lcom/droidhang/game/ad/video/VungleManager;
    invoke-interface {p1}, Lcom/droidhang/game/ad/IAdId;->getVungleVideoAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, p2}, Lcom/droidhang/game/ad/video/VungleManager;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V

    .line 21
    sget-object v2, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/droidhang/game/ad/video/VungleManager;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/droidhang/game/ad/video/ApplovinManager;

    invoke-direct {v0}, Lcom/droidhang/game/ad/video/ApplovinManager;-><init>()V

    .line 28
    .local v0, "applovinManager":Lcom/droidhang/game/ad/video/ApplovinManager;
    const-string v2, ""

    invoke-virtual {v0, p0, v2, p2}, Lcom/droidhang/game/ad/video/ApplovinManager;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V

    .line 29
    sget-object v2, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/ApplovinManager;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static isAdReady()Z
    .locals 1

    .prologue
    .line 76
    const-string v0, ""

    invoke-static {v0}, Lcom/droidhang/game/ad/VideoAdManager;->isAdReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAdReady(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-static {p0}, Lcom/droidhang/game/ad/VideoLimitManager;->shouldDisplay(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return v1

    :cond_0
    sget-object v0, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    const-string v2, "vungle"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhang/game/ad/video/AbstractVideoAd;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->isAdReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhang/game/ad/video/AbstractVideoAd;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static onPause()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    const-string v1, "vungle"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhang/game/ad/video/AbstractVideoAd;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->onPause()V

    .line 85
    return-void
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/droidhang/game/ad/VideoAdManager;->ADS:Ljava/util/HashMap;

    const-string v1, "vungle"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhang/game/ad/video/AbstractVideoAd;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->onResume()V

    .line 81
    return-void
.end method

.method public static playAd()V
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    invoke-static {v0}, Lcom/droidhang/game/ad/VideoAdManager;->playAd(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static playAd(Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lcom/droidhang/game/ad/VideoAdManager;->getShowOrder()[Lcom/droidhang/game/ad/video/AbstractVideoAd;

    move-result-object v0

    .line 59
    .local v0, "videoManagers":[Lcom/droidhang/game/ad/video/AbstractVideoAd;
    invoke-static {p0}, Lcom/droidhang/game/ad/VideoLimitManager;->setCurrentPlayKey(Ljava/lang/String;)V

    .line 61
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->isAdReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->showVideoAd()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->isAdReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/droidhang/game/ad/video/AbstractVideoAd;->showVideoAd()V

    goto :goto_0
.end method
