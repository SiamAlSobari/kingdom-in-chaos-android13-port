.class public Lcom/droidhang/game/ad/InterstitialAdManager;
.super Ljava/lang/Object;
.source "InterstitialAdManager.java"


# static fields
.field private static ADS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/droidhang/game/ad/interstitial/IInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private static _activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getShowOrder()[Lcom/droidhang/game/ad/interstitial/IInterstitial;
    .locals 10

    .prologue
    .line 36
    const-string v7, "inmobi"

    invoke-static {v7}, Lcom/droidhang/game/ad/AdRatioManager;->getInterstitialRatio(Ljava/lang/String;)I

    move-result v3

    .line 37
    .local v3, "inMobiRatio":I
    const-string v7, "admob"

    invoke-static {v7}, Lcom/droidhang/game/ad/AdRatioManager;->getInterstitialRatio(Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "admobRatio":I
    const-string v7, "applovin"

    invoke-static {v7}, Lcom/droidhang/game/ad/AdRatioManager;->getInterstitialRatio(Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, "applovinRatio":I
    const-string v7, "dh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    add-int v8, v3, v0

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 44
    .local v6, "value":I
    const-string v7, "dh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-ge v6, v3, :cond_1

    .line 46
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "inmobi"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 47
    .local v2, "first":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    add-int v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 48
    const-string v7, "dh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-ge v6, v0, :cond_0

    .line 50
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "admob"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 51
    .local v4, "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "applovin"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 80
    .local v5, "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    :goto_0
    const/4 v7, 0x3

    new-array v7, v7, [Lcom/droidhang/game/ad/interstitial/IInterstitial;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v5, v7, v8

    return-object v7

    .line 53
    .end local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    .end local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    :cond_0
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "admob"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 54
    .restart local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "applovin"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .restart local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    goto :goto_0

    .line 56
    .end local v2    # "first":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    .end local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    .end local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    :cond_1
    add-int v7, v3, v0

    if-ge v6, v7, :cond_3

    .line 57
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "admob"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 58
    .restart local v2    # "first":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    add-int v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 59
    const-string v7, "dh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-ge v6, v3, :cond_2

    .line 61
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "inmobi"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 62
    .restart local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "applovin"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .restart local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    goto :goto_0

    .line 64
    .end local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    .end local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    :cond_2
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "inmobi"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 65
    .restart local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "applovin"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .restart local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    goto :goto_0

    .line 68
    .end local v2    # "first":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    .end local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    .end local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    :cond_3
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "applovin"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 69
    .restart local v2    # "first":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    add-int v8, v3, v0

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 70
    const-string v7, "dh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-ge v6, v3, :cond_4

    .line 72
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "inmobi"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 73
    .restart local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "admob"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .restart local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    goto/16 :goto_0

    .line 75
    .end local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    .end local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    :cond_4
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "inmobi"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .line 76
    .restart local v5    # "third":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v7, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v8, "admob"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .restart local v4    # "second":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    goto/16 :goto_0
.end method

.method public static init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "iadId"    # Lcom/droidhang/game/ad/IAdId;

    .prologue
    .line 20
    sput-object p0, Lcom/droidhang/game/ad/InterstitialAdManager;->_activity:Landroid/app/Activity;

    .line 22
    new-instance v0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;

    invoke-direct {v0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;-><init>()V

    .line 23
    .local v0, "interstitial":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v1, Lcom/droidhang/game/ad/InterstitialAdManager;->_activity:Landroid/app/Activity;

    invoke-static {}, Lcom/droidhang/game/ad/AdmobIDManager;->getAdmobInterstitialAdId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;

    .end local v0    # "interstitial":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    invoke-direct {v0}, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;-><init>()V

    .line 27
    .restart local v0    # "interstitial":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v1, Lcom/droidhang/game/ad/InterstitialAdManager;->_activity:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/droidhang/game/ad/IAdId;->getInMobiInterstitialAdId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/droidhang/game/ad/interstitial/AppLovinInterstitial;

    .end local v0    # "interstitial":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    invoke-direct {v0}, Lcom/droidhang/game/ad/interstitial/AppLovinInterstitial;-><init>()V

    .line 31
    .restart local v0    # "interstitial":Lcom/droidhang/game/ad/interstitial/IInterstitial;
    sget-object v1, Lcom/droidhang/game/ad/InterstitialAdManager;->_activity:Landroid/app/Activity;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static isAdReady()Z
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v1, "inmobi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    invoke-interface {v0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->isready()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    invoke-interface {v0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->isready()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/droidhang/game/ad/InterstitialAdManager;->ADS:Ljava/util/HashMap;

    const-string v1, "applovin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhang/game/ad/interstitial/IInterstitial;

    invoke-interface {v0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->isready()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static show(Lcom/droidhang/game/ad/interstitial/IInterstitial;)Z
    .locals 3
    .param p0, "interstitial"    # Lcom/droidhang/game/ad/interstitial/IInterstitial;

    .prologue
    .line 102
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show ad, name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {p0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->isready()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p0}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->show()V

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showInterstitial()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-static {}, Lcom/droidhang/game/ad/InterstitialAdManager;->getShowOrder()[Lcom/droidhang/game/ad/interstitial/IInterstitial;

    move-result-object v0

    .line 87
    .local v0, "interstitials":[Lcom/droidhang/game/ad/interstitial/IInterstitial;
    const-string v1, "dh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-interface {v3}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-interface {v3}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-interface {v3}, Lcom/droidhang/game/ad/interstitial/IInterstitial;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/droidhang/game/ad/InterstitialAdManager;->show(Lcom/droidhang/game/ad/interstitial/IInterstitial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    aget-object v1, v0, v5

    invoke-static {v1}, Lcom/droidhang/game/ad/InterstitialAdManager;->show(Lcom/droidhang/game/ad/interstitial/IInterstitial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/droidhang/game/ad/InterstitialAdManager;->show(Lcom/droidhang/game/ad/interstitial/IInterstitial;)Z

    .line 95
    :cond_0
    return-void
.end method
