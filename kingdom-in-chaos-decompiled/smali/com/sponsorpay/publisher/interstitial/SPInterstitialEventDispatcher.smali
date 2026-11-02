.class public Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;
.super Landroid/os/AsyncTask;
.source "SPInterstitialEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sponsorpay/utils/UrlBuilder;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUCCESSFUL_HTTP_STATUS_CODE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SPInterstitialEventDispatcher"

.field private static final TRACKERL_URL_KEY:Ljava/lang/String; = "tracker"

.field private static additionalParamKey:[Ljava/lang/String;

.field private static additionalParamValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ad_format"

    aput-object v1, v0, v2

    const-string v1, "rewarded"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->additionalParamKey:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "interstitial"

    aput-object v1, v0, v2

    const-string v1, "0"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->additionalParamValues:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    return-void
.end method

.method private static appendTrackingParametersToURL(Lcom/sponsorpay/utils/UrlBuilder;Lorg/json/JSONObject;)V
    .locals 6
    .param p0, "builder"    # Lcom/sponsorpay/utils/UrlBuilder;
    .param p1, "trackingParameters"    # Lorg/json/JSONObject;

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    return-void

    .line 84
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 87
    .local v3, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "exception":Lorg/json/JSONException;
    const-string v4, "SPInterstitialEventDispatcher"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "tracker"

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUrlBuilder(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)Lcom/sponsorpay/utils/UrlBuilder;
    .locals 5
    .param p0, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    .param p3, "event"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .prologue
    .line 62
    invoke-static {}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 63
    const-string v3, "request_id"

    invoke-virtual {v2, v3, p1}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 64
    const-string v3, "event"

    invoke-virtual {p3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 65
    sget-object v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->additionalParamKey:[Ljava/lang/String;

    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->additionalParamValues:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/UrlBuilder;->mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    .line 68
    .local v0, "builder":Lcom/sponsorpay/utils/UrlBuilder;
    if-eqz p2, :cond_0

    .line 69
    const-string v2, "ad_id"

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getAdId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 70
    const-string v3, "provider_type"

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getProviderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    .line 72
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getTrackingParameters()Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    .local v1, "trackingParameters":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 74
    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->appendTrackingParametersToURL(Lcom/sponsorpay/utils/UrlBuilder;Lorg/json/JSONObject;)V

    .line 78
    .end local v1    # "trackingParameters":Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method

.method public static trigger(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V
    .locals 7
    .param p0, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    .param p3, "event"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 44
    :cond_0
    const-string v0, "SPInterstitialEventDispatcher"

    const-string v1, "The event cannot be sent, a required field is missing."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 46
    :cond_1
    if-eqz p2, :cond_2

    .line 47
    const-string v0, "SPInterstitialEventDispatcher"

    .line 48
    const-string v1, "Notifiying tracker of event=%s with request_id=%s for ad_id=%s and provider_type=%s "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    aput-object p3, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getAdId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    .line 50
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getProviderType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_1
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;-><init>()V

    new-array v1, v6, [Lcom/sponsorpay/utils/UrlBuilder;

    invoke-static {p0, p1, p2, p3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->getUrlBuilder(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "SPInterstitialEventDispatcher"

    .line 53
    const-string v1, "Notifiying tracker of event=%s with request_id=%s"

    new-array v2, v4, [Ljava/lang/Object;

    .line 54
    aput-object p3, v2, v5

    aput-object p1, v2, v6

    .line 52
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sponsorpay/utils/UrlBuilder;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Lcom/sponsorpay/utils/UrlBuilder;

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "SPInterstitialEventDispatcher"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 107
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 109
    .local v1, "returnValue":Ljava/lang/Boolean;
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "url":Ljava/lang/String;
    const-string v4, "SPInterstitialEventDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending event to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :try_start_0
    invoke-static {v2}, Lcom/sponsorpay/utils/SPHttpConnection;->getConnection(Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sponsorpay/utils/SPHttpConnection;->open()Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sponsorpay/utils/SPHttpConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SPInterstitialEventDispatcher"

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An exception occurred when trying to send advertiser callback: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/sponsorpay/utils/UrlBuilder;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEventDispatcher;->doInBackground([Lcom/sponsorpay/utils/UrlBuilder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
