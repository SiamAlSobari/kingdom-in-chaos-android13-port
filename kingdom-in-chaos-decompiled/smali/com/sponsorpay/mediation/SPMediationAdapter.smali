.class public abstract Lcom/sponsorpay/mediation/SPMediationAdapter;
.super Ljava/lang/Object;
.source "SPMediationAdapter.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$sponsorpay$mediation$SPMediationAdFormat:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$sponsorpay$mediation$SPMediationAdFormat()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationAdapter;->$SWITCH_TABLE$com$sponsorpay$mediation$SPMediationAdFormat:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sponsorpay/mediation/SPMediationAdFormat;->values()[Lcom/sponsorpay/mediation/SPMediationAdFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sponsorpay/mediation/SPMediationAdFormat;->Interstitial:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {v1}, Lcom/sponsorpay/mediation/SPMediationAdFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sponsorpay/mediation/SPMediationAdFormat;->RewardedVideo:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {v1}, Lcom/sponsorpay/mediation/SPMediationAdFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/sponsorpay/mediation/SPMediationAdapter;->$SWITCH_TABLE$com$sponsorpay$mediation$SPMediationAdFormat:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private runNotifyingThread([Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "classes"    # [Ljava/lang/Class;

    .prologue
    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 142
    .local v7, "stacktrace":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x4

    aget-object v6, v7, v0

    .line 143
    .local v6, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "methodName":Ljava/lang/String;
    new-instance v0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;

    const-string v2, "EventBroadcaster"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/mediation/SPMediationAdapter$1;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->start()V

    .line 159
    return-void
.end method


# virtual methods
.method public abstract getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter",
            "<+",
            "Lcom/sponsorpay/mediation/SPMediationAdapter;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getListeners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter",
            "<+",
            "Lcom/sponsorpay/mediation/SPMediationAdapter;",
            ">;"
        }
    .end annotation
.end method

.method protected varargs notifyListeners([Ljava/lang/Object;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 128
    if-eqz p1, :cond_1

    .line 129
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/Class;

    .line 130
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 136
    .end local v1    # "i":I
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->runNotifyingThread([Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 137
    return-void

    .line 131
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    .restart local v0    # "classes":[Ljava/lang/Class;
    goto :goto_1
.end method

.method protected notifyListeners([Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "classes"    # [Ljava/lang/Class;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/sponsorpay/mediation/SPMediationAdapter;->runNotifyingThread([Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 123
    return-void
.end method

.method public showInterstitial(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;

    move-result-object v0

    .line 106
    .local v0, "interstitialMediationAdapter":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<+Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1, p2}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->show(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z

    move-result v1

    .line 109
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract startAdapter(Landroid/app/Activity;)Z
.end method

.method public startVideoEngagement(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "engagementEvent"    # Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, "contextData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    move-result-object v0

    .line 83
    .local v0, "videoMediationAdapter":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<+Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->startVideo(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;Ljava/util/Map;)V

    .line 87
    :cond_0
    return-void
.end method

.method public supportMediationFormat(Lcom/sponsorpay/mediation/SPMediationAdFormat;)Z
    .locals 4
    .param p1, "format"    # Lcom/sponsorpay/mediation/SPMediationAdFormat;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-static {}, Lcom/sponsorpay/mediation/SPMediationAdapter;->$SWITCH_TABLE$com$sponsorpay$mediation$SPMediationAdFormat()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sponsorpay/mediation/SPMediationAdFormat;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public validateInterstitialNetwork(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;

    move-result-object v0

    .line 97
    .local v0, "interstitialMediationAdapter":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<+Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1, p2}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->isAdAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z

    move-result v1

    .line 100
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public validateVideoNetwork(Landroid/content/Context;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "validationEvent"    # Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "contextData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    move-result-object v0

    .line 74
    .local v0, "videoMediationAdapter":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<+Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1, p2, p3}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->videosAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;Ljava/util/Map;)V

    .line 77
    :cond_0
    return-void
.end method
