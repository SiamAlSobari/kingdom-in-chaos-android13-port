.class public Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;
.super Ljava/lang/Object;
.source "SPInterstitialClient.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialClientState:[I = null

.field private static synthetic $SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialEvent:[I = null

.field public static final INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

.field public static final SP_REQUEST_ID_PARAMETER_KEY:Ljava/lang/String; = "request_id"

.field private static final TAG:Ljava/lang/String; = "SPInterstitialClient"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

.field private mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

.field private mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field private mCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestId:Ljava/lang/String;

.field private mRequestListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

.field private mState:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialClientState()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->$SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialClientState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->values()[Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_SHOW_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->REQUESTING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->VALIDATING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->$SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialClientState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialEvent()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->$SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialEvent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->values()[Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->NotIntegrated:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowClick:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowClose:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowImpression:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationNoFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationRequest:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->$SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialEvent:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mState:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 65
    return-void
.end method

.method private canChangeParameters()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mState:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canChangeParameters()Z

    move-result v0

    return v0
.end method

.method private setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V
    .locals 2
    .param p1, "newState"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mState:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 141
    invoke-static {}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->$SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialClientState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mState:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mActivity:Landroid/app/Activity;

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startQueryingForAds(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)V
    .locals 2
    .param p1, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .line 100
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 101
    iput-object p2, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mActivity:Landroid/app/Activity;

    .line 102
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mRequestId:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mRequestId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mCustomParameters:Ljava/util/Map;

    invoke-static {p1, v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequester;->requestAds(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->REQUESTING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 105
    return-void
.end method


# virtual methods
.method public availableAd(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V
    .locals 4
    .param p1, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 167
    if-eqz p1, :cond_1

    .line 168
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .line 169
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mRequestListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mRequestListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;->onSPInterstitialAdAvailable(Landroid/content/Intent;)V

    .line 172
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_SHOW_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mRequestListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mRequestListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    invoke-interface {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;->onSPInterstitialAdNotAvailable()V

    .line 178
    :cond_2
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    goto :goto_0
.end method

.method public canRequestAds()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mState:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canRequestAds()Z

    move-result v0

    return v0
.end method

.method public fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V
    .locals 1
    .param p1, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    .param p2, "event"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V
    .locals 3
    .param p1, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    .param p2, "event"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mRequestId:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->trigger(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    .line 246
    invoke-static {}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->$SWITCH_TABLE$com$sponsorpay$publisher$interstitial$SPInterstitialEvent()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 248
    :pswitch_1
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 249
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;->onSPInterstitialAdClosed(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;)V

    goto :goto_0

    .line 254
    :pswitch_2
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 255
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;->onSPInterstitialAdClosed(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;)V

    goto :goto_0

    .line 261
    :pswitch_3
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 262
    const-string v0, "SPInterstitialClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred. Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    invoke-interface {v0, p3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;->onSPInterstitialAdError(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processAds([Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V
    .locals 1
    .param p1, "ads"    # [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 155
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->VALIDATING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 156
    invoke-static {p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdsProcessor;->processAds([Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V

    .line 157
    return-void
.end method

.method public requestAds(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)Z
    .locals 3
    .param p1, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->availableAd(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V

    .line 94
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->canRequestAds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->startQueryingForAds(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "SPInterstitialClient"

    const-string v2, "SPInterstitialClient cannot request offers at this point. It might be requesting offers right now or an offer might be currently being presented to the user."

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdStateListener(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    .line 287
    return-void
.end method

.method public setCustomParameters(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->canChangeParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mCustomParameters:Ljava/util/Map;

    .line 130
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 131
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 133
    :cond_0
    const-string v0, "SPInterstitialClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequestListener(Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mRequestListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    .line 279
    return-void
.end method

.method public showInterstitial(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mState:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canShowAds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    sget-object v1, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    .line 207
    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .line 206
    invoke-virtual {v1, p1, v2}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->showInterstitial(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z

    move-result v0

    .line 208
    .local v0, "showAd":Z
    if-eqz v0, :cond_1

    .line 209
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mAdStateListener:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    invoke-interface {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;->onSPInterstitialAdShown()V

    .line 212
    :cond_0
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setState(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 216
    .end local v0    # "showAd":Z
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validateAd(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z
    .locals 2
    .param p1, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 192
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    .line 193
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->mActivity:Landroid/app/Activity;

    .line 192
    invoke-virtual {v0, v1, p1}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->validateInterstitialNetwork(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z

    move-result v0

    return v0
.end method
