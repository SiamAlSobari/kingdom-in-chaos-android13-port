.class public Lcom/droidhang/game/ad/AdRatioManager;
.super Ljava/lang/Object;
.source "AdRatioManager.java"


# static fields
.field private static final AD_RATIO_KEY:Ljava/lang/String; = "INTERSTITIAL_AD_RATIO_KEY"

.field private static final InterstitialNames:[Ljava/lang/String;

.field private static final VIDEO_RATIO_KEY:Ljava/lang/String; = "VIDEO_RATIO_KEY"

.field private static final VideoNames:[Ljava/lang/String;

.field private static _activity:Landroid/app/Activity;

.field private static _interstitialRatioMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static _videoRatioMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "inmobi"

    aput-object v1, v0, v2

    const-string v1, "admob"

    aput-object v1, v0, v3

    const-string v1, "applovin"

    aput-object v1, v0, v4

    sput-object v0, Lcom/droidhang/game/ad/AdRatioManager;->InterstitialNames:[Ljava/lang/String;

    .line 18
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "inmobi"

    aput-object v1, v0, v2

    const-string v1, "vungle"

    aput-object v1, v0, v3

    const-string v1, "applovin"

    aput-object v1, v0, v4

    sput-object v0, Lcom/droidhang/game/ad/AdRatioManager;->VideoNames:[Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/droidhang/game/ad/AdRatioManager;->_interstitialRatioMap:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/droidhang/game/ad/AdRatioManager;->_videoRatioMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterstitialRatio(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v1, Lcom/droidhang/game/ad/AdRatioManager;->_interstitialRatioMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getVideoRatio(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v1, Lcom/droidhang/game/ad/AdRatioManager;->_videoRatioMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 53
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 56
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 24
    sput-object p0, Lcom/droidhang/game/ad/AdRatioManager;->_activity:Landroid/app/Activity;

    .line 25
    sget-object v0, Lcom/droidhang/game/ad/AdRatioManager;->_activity:Landroid/app/Activity;

    const-string v1, "INTERSTITIAL_AD_RATIO_KEY"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/droidhang/game/ad/AdRatioManager;->initInterstitialMap(Ljava/lang/String;Z)V

    .line 26
    sget-object v0, Lcom/droidhang/game/ad/AdRatioManager;->_activity:Landroid/app/Activity;

    const-string v1, "VIDEO_RATIO_KEY"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/droidhang/game/ad/AdRatioManager;->initVideoMap(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public static initInterstitialMap(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "setPref"    # Z

    .prologue
    .line 30
    sget-object v0, Lcom/droidhang/game/ad/AdRatioManager;->_interstitialRatioMap:Ljava/util/Map;

    sget-object v1, Lcom/droidhang/game/ad/AdRatioManager;->InterstitialNames:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/droidhang/game/ad/AdRatioManager;->initMap(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    sget-object v0, Lcom/droidhang/game/ad/AdRatioManager;->_activity:Landroid/app/Activity;

    const-string v1, "INTERSTITIAL_AD_RATIO_KEY"

    invoke-static {v0, v1, p0}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method private static initMap(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v7, 0x1e

    const/16 v6, 0x14

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-static {p2}, Lcom/wwcd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    aget-object v1, p1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    aget-object v1, p1, v4

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    aget-object v1, p1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "values":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 67
    aget-object v1, p1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    aget-object v1, p1, v4

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    aget-object v1, p1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_1
    aget-object v1, p1, v3

    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    aget-object v1, p1, v4

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    aget-object v1, p1, v5

    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static initVideoMap(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "setPref"    # Z

    .prologue
    .line 37
    sget-object v0, Lcom/droidhang/game/ad/AdRatioManager;->_videoRatioMap:Ljava/util/Map;

    sget-object v1, Lcom/droidhang/game/ad/AdRatioManager;->VideoNames:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/droidhang/game/ad/AdRatioManager;->initMap(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    sget-object v0, Lcom/droidhang/game/ad/AdRatioManager;->_activity:Landroid/app/Activity;

    const-string v1, "VIDEO_RATIO_KEY"

    invoke-static {v0, v1, p0}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method
