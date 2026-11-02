.class public final Lcom/tapjoy/TapjoyConnect;
.super Ljava/lang/Object;
.source "TapjoyConnect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyConnect"

.field private static volatile hasConnected:Z

.field private static tapjoyCache:Lcom/tapjoy/TapjoyCache;

.field private static tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

.field private static tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

.field private static tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

.field private static tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

.field private static tapjoyOffers:Lcom/tapjoy/TJCOffers;

.field private static tapjoyPoints:Lcom/tapjoy/TJPoints;

.field private static tapjoyVideo:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    sput-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    .line 27
    sput-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 28
    sput-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    .line 29
    sput-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    .line 30
    sput-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 31
    sput-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 32
    sput-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyCache:Lcom/tapjoy/TapjoyCache;

    .line 33
    sput-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .param p5, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    .line 181
    .local p4, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    .line 183
    return-void
.end method

.method static synthetic access$002(Lcom/tapjoy/TJCOffers;)Lcom/tapjoy/TJCOffers;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCOffers;

    .prologue
    .line 20
    sput-object p0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tapjoy/TJPoints;)Lcom/tapjoy/TJPoints;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJPoints;

    .prologue
    .line 20
    sput-object p0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tapjoy/TapjoyFullScreenAd;)Lcom/tapjoy/TapjoyFullScreenAd;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFullScreenAd;

    .prologue
    .line 20
    sput-object p0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tapjoy/TapjoyDisplayAd;)Lcom/tapjoy/TapjoyDisplayAd;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;

    .prologue
    .line 20
    sput-object p0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 20
    sput-object p0, Lcom/tapjoy/TapjoyConnect;->tapjoyCache:Lcom/tapjoy/TapjoyCache;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tapjoy/TapjoyEvent;)Lcom/tapjoy/TapjoyEvent;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyEvent;

    .prologue
    .line 20
    sput-object p0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    return-object p0
.end method

.method static synthetic access$602(Lcom/tapjoy/TapjoyVideo;)Lcom/tapjoy/TapjoyVideo;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TapjoyVideo;

    .prologue
    .line 20
    sput-object p0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    return-object p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    return p0
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 41
    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 42
    return-void
.end method

.method public static getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;
    .locals 2

    .prologue
    .line 158
    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-nez v0, :cond_0

    .line 160
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "TapjoyConnect"

    const-string v1, "ERROR -- call requestTapjoyConnect and make sure to receive the Tapjoy connectSuccess response from the TapjoyConnectNotifier before calling any other Tapjoy methods"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    goto :goto_0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    return v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z

    move-result v0

    return v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p4, "publisherNotifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const/4 v7, 0x0

    .line 95
    const-string v0, "event"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    .line 99
    :try_start_0
    new-instance v0, Lcom/tapjoy/TapjoyConnect;

    new-instance v5, Lcom/tapjoy/TapjoyConnect$1;

    invoke-direct {v5, p0, p4}, Lcom/tapjoy/TapjoyConnect$1;-><init>(Landroid/content/Context;Lcom/tapjoy/TapjoyConnectNotifier;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/TapjoyConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;
    :try_end_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v6

    .line 136
    .local v6, "e":Lcom/tapjoy/TapjoyIntegrationException;
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntegrationException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz p4, :cond_0

    .line 138
    invoke-interface {p4}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    :cond_0
    move v0, v7

    .line 139
    goto :goto_0

    .line 141
    .end local v6    # "e":Lcom/tapjoy/TapjoyIntegrationException;
    :catch_1
    move-exception v6

    .line 143
    .local v6, "e":Lcom/tapjoy/TapjoyException;
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapjoyException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-eqz p4, :cond_1

    .line 145
    invoke-interface {p4}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    :cond_1
    move v0, v7

    .line 146
    goto :goto_0
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public appPause()V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appPause()V

    .line 192
    return-void
.end method

.method public appResume()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appResume()V

    .line 200
    return-void
.end method

.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 387
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJPoints;->awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V

    .line 390
    :cond_0
    return-void
.end method

.method public cacheVideos()V
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 576
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyVideo;->cacheVideos()V

    .line 578
    :cond_0
    return-void
.end method

.method public enableDisplayAdAutoRefresh(Z)V
    .locals 1
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 476
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 478
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->enableAutoRefresh(Z)V

    .line 480
    :cond_0
    return-void
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 1
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    return v0
.end method

.method public getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 524
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 528
    :cond_0
    return-void
.end method

.method public getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 491
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 495
    :cond_0
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currencyID"    # Ljava/lang/String;
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 542
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 544
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 546
    :cond_0
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 508
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 512
    :cond_0
    return-void
.end method

.method public getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 417
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 420
    :cond_0
    return-void
.end method

.method public getFullScreenAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 432
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 435
    :cond_0
    return-void
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 361
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPoints;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 364
    :cond_0
    return-void
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "price"    # F
    .param p3, "quantity"    # I
    .param p4, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 617
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/TapjoyEvent;->sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V

    .line 621
    :cond_0
    return-void
.end method

.method public sendSegmentationParams(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setSegmentationParams(Ljava/util/Hashtable;)V

    .line 630
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 631
    return-void
.end method

.method public sendShutDownEvent()V
    .locals 1

    .prologue
    .line 601
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyEvent;->sendShutDownEvent()V

    .line 605
    :cond_0
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 259
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    .line 260
    return-void
.end method

.method public setDisplayAdSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 463
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 465
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->setDisplayAdSize(Ljava/lang/String;)V

    .line 467
    :cond_0
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 399
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPoints;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 402
    :cond_0
    return-void
.end method

.method public setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyViewNotifier;

    .prologue
    .line 279
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V

    .line 280
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setVideoCacheCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 559
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 561
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoCacheCount(I)V

    .line 563
    :cond_0
    return-void
.end method

.method public setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    .line 586
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 588
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 590
    :cond_0
    return-void
.end method

.method public showFullScreenAd()V
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyFullScreenAd;->showFullScreenAd()V

    .line 447
    :cond_0
    return-void
.end method

.method public showOffers()V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 312
    :cond_0
    return-void
.end method

.method public showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    .line 334
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 337
    :cond_0
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z

    .prologue
    .line 322
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V

    .line 325
    :cond_0
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    .line 349
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V

    .line 352
    :cond_0
    return-void
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 374
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyConnect;->hasConnected:Z

    if-eqz v0, :cond_0

    .line 375
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJPoints;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 377
    :cond_0
    return-void
.end method
