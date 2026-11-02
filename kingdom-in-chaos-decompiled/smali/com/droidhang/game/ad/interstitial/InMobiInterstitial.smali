.class public Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"

# interfaces
.implements Lcom/droidhang/game/ad/interstitial/IInterstitial;
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _interstitial:Lcom/inmobi/monetization/IMInterstitial;

.field private _isready:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_isready:Z

    return-void
.end method

.method static synthetic access$000(Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;)Lcom/inmobi/monetization/IMInterstitial;
    .locals 1
    .param p0, "x0"    # Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_activity:Landroid/app/Activity;

    .line 29
    invoke-static {p1, p2}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/InMobi;->setLogLevel(Lcom/inmobi/commons/InMobi$LOG_LEVEL;)V

    .line 31
    new-instance v0, Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {v0, p1, p2}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 32
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0, p0}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->loadAd()V

    .line 34
    return-void
.end method

.method public isready()Z
    .locals 3

    .prologue
    .line 38
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inmobi ad state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v2}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->loadAd()V

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_isready:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$2;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$2;-><init>(Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "inmobi"

    return-object v0
.end method

.method public onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 77
    const-string v0, "dh"

    const-string v1, "InMobi, onDismissInterstitialScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_isready:Z

    .line 79
    invoke-virtual {p0}, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->loadAd()V

    .line 81
    return-void
.end method

.method public onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;
    .param p2, "arg1"    # Lcom/inmobi/monetization/IMErrorCode;

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_isready:Z

    .line 86
    const-string v0, "dh"

    const-string v1, "InMobi, onInterstitialFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 3
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 97
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InMobi, onAdLoaded,state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v2}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_isready:Z

    .line 99
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 104
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 109
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_interstitial:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$1;

    invoke-direct {v1, p0}, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$1;-><init>(Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    :cond_0
    return-void
.end method
