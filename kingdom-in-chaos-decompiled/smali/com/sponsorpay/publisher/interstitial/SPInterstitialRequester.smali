.class public Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequester;
.super Landroid/os/AsyncTask;
.source "SPInterstitialRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sponsorpay/utils/UrlBuilder;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERSTITIAL_URL_KEY:Ljava/lang/String; = "interstitial"

.field private static final TAG:Ljava/lang/String; = "SPInterstitialRequester"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    return-void
.end method

.method private static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "interstitial"

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestAds(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/credentials/SPCredentials;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequester;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p2}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    .line 44
    const-string v2, "request_id"

    invoke-virtual {v1, v2, p1}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenOrientation()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    .line 48
    .local v0, "urlBuilder":Lcom/sponsorpay/utils/UrlBuilder;
    new-instance v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequester;

    invoke-direct {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequester;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sponsorpay/utils/UrlBuilder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequester;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/sponsorpay/utils/UrlBuilder;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequester;->doInBackground([Lcom/sponsorpay/utils/UrlBuilder;)[Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sponsorpay/utils/UrlBuilder;)[Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    .locals 24
    .param p1, "params"    # [Lcom/sponsorpay/utils/UrlBuilder;

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    const-string v22, "SPInterstitialRequester"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 61
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 63
    .local v10, "interstitialAds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;>;"
    const/16 v21, 0x0

    :try_start_0
    aget-object v21, p1, v21

    invoke-virtual/range {v21 .. v21}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v17

    .line 64
    .local v17, "requestUrl":Ljava/lang/String;
    const-string v21, "SPInterstitialRequester"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Querying URL: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static/range {v17 .. v17}, Lcom/sponsorpay/utils/SPHttpConnection;->getConnection(Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sponsorpay/utils/SPHttpConnection;->open()Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sponsorpay/utils/SPHttpConnection;->getBodyContent()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "bodyContent":Ljava/lang/String;
    invoke-static {v6}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 70
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    move-result-object v8

    .line 71
    .local v8, "hostInfo":Lcom/sponsorpay/utils/HostInfo;
    invoke-virtual {v8}, Lcom/sponsorpay/utils/HostInfo;->getScreenOrientation()Ljava/lang/String;

    move-result-object v19

    .line 72
    .local v19, "screenOrientation":Ljava/lang/String;
    const-string v21, "SPInterstitialRequester"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Parsing ads reponse\n"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v12, "json":Lorg/json/JSONObject;
    const-string v21, "ads"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 76
    .local v5, "ads":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    move/from16 v0, v21

    if-lt v9, v0, :cond_1

    .line 109
    .end local v5    # "ads":Lorg/json/JSONArray;
    .end local v6    # "bodyContent":Ljava/lang/String;
    .end local v8    # "hostInfo":Lcom/sponsorpay/utils/HostInfo;
    .end local v9    # "i":I
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v17    # "requestUrl":Ljava/lang/String;
    .end local v19    # "screenOrientation":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    return-object v21

    .line 77
    .restart local v5    # "ads":Lorg/json/JSONArray;
    .restart local v6    # "bodyContent":Ljava/lang/String;
    .restart local v8    # "hostInfo":Lcom/sponsorpay/utils/HostInfo;
    .restart local v9    # "i":I
    .restart local v12    # "json":Lorg/json/JSONObject;
    .restart local v17    # "requestUrl":Ljava/lang/String;
    .restart local v19    # "screenOrientation":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 78
    .local v13, "jsonAd":Lorg/json/JSONObject;
    const-string v21, "provider_type"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 79
    .local v16, "providerType":Ljava/lang/String;
    const-string v21, "ad_id"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "adId":Ljava/lang/String;
    const-string v21, "tracking_params"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 81
    .local v20, "trackingParameters":Lorg/json/JSONObject;
    new-instance v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v4, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 83
    .local v3, "ad":Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    invoke-virtual {v13}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v15

    .line 84
    .local v15, "names":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-lt v11, v0, :cond_3

    .line 91
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getContextData()Ljava/util/Map;

    move-result-object v21

    const-string v22, "orientation"

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 92
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getContextData()Ljava/util/Map;

    move-result-object v21

    const-string v22, "orientation"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    invoke-virtual {v8}, Lcom/sponsorpay/utils/HostInfo;->getRotation()I

    move-result v18

    .line 96
    .local v18, "rotation":I
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getContextData()Ljava/util/Map;

    move-result-object v21

    const-string v22, "rotation"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v10, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 85
    .end local v18    # "rotation":I
    :cond_3
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 86
    .local v14, "key":Ljava/lang/String;
    const-string v21, "ad_id"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "provider_type"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "tracking_params"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 87
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v14, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->setContextData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 84
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 101
    .end local v3    # "ad":Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    .end local v4    # "adId":Ljava/lang/String;
    .end local v5    # "ads":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v13    # "jsonAd":Lorg/json/JSONObject;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "names":Lorg/json/JSONArray;
    .end local v16    # "providerType":Ljava/lang/String;
    .end local v20    # "trackingParameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v21, "SPInterstitialRequester"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 105
    .end local v6    # "bodyContent":Ljava/lang/String;
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v8    # "hostInfo":Lcom/sponsorpay/utils/HostInfo;
    .end local v17    # "requestUrl":Ljava/lang/String;
    .end local v19    # "screenOrientation":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 106
    .local v7, "e":Ljava/io/IOException;
    const-string v21, "SPInterstitialRequester"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequester;->onPostExecute([Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V

    return-void
.end method

.method protected onPostExecute([Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V
    .locals 1
    .param p1, "result"    # [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 114
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-virtual {v0, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->processAds([Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V

    .line 115
    return-void
.end method
