.class public Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;
.super Lcom/sponsorpay/utils/SignedResponseRequester;
.source "SPCurrencyServerRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;,
        Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/utils/SignedResponseRequester",
        "<",
        "Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENCY_ID_KEY:Ljava/lang/String; = "currency_id"

.field private static final CURRENCY_NAME_KEY:Ljava/lang/String; = "currency_name"

.field private static final DELTA_OF_COINS_KEY:Ljava/lang/String; = "delta_of_coins"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final IS_DEFAULT_KEY:Ljava/lang/String; = "is_default"

.field private static final LATEST_TRANSACTION_ID_KEY:Ljava/lang/String; = "latest_transaction_id"

.field public static TAG:Ljava/lang/String; = null

.field private static final URL_PARAM_KEY_LAST_TRANSACTION_ID:Ljava/lang/String; = "ltid"

.field private static final VCS_URL_KEY:Ljava/lang/String; = "vcs"


# instance fields
.field private mResultListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;

.field private mSecurityToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "SPCurrencyServerRequester"

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;
    .param p2, "securityToken"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sponsorpay/utils/SignedResponseRequester;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->mResultListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;

    .line 118
    iput-object p2, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->mSecurityToken:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private static buildUrlAndMakeServerRequest(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;
    .param p1, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p2, "transactionId"    # Ljava/lang/String;
    .param p3, "currencyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;",
            "Lcom/sponsorpay/credentials/SPCredentials;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string p2, "ltid"

    .line 83
    :cond_0
    const-string v2, "vcs"

    invoke-static {v2}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "baseUrl":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 85
    const-string v3, "ltid"

    invoke-virtual {v2, v3, p2}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2, p4}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/sponsorpay/utils/UrlBuilder;->addSignature()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    .line 90
    .local v1, "urlBuilder":Lcom/sponsorpay/utils/UrlBuilder;
    invoke-static {p3}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const-string v2, "currency_id"

    invoke-virtual {v1, v2, p3}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    .line 94
    :cond_1
    new-instance v2, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;

    invoke-virtual {p1}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sponsorpay/utils/UrlBuilder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method

.method private parseErrorResponse(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    .locals 7
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "errorCode":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v4, "jsonResponse":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "errorMessage":Ljava/lang/String;
    sget-object v3, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->SERVER_RETURNED_ERROR:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v4    # "jsonResponse":Lorg/json/JSONObject;
    .local v3, "errorType":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    :goto_0
    new-instance v5, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    invoke-direct {v5, v3, v1, v2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 160
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "errorType":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->TAG:Ljava/lang/String;

    const-string v6, "An exception was triggered while parsing error response"

    invoke-static {v5, v6, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    sget-object v3, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 164
    .restart local v3    # "errorType":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "errorMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private parseResponse(ILjava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;
    .param p3, "responseSignature"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lcom/sponsorpay/utils/SignedServerResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/sponsorpay/utils/SignedServerResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "signedServerResponse":Lcom/sponsorpay/utils/SignedServerResponse;
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->hasErrorStatusCode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->parseErrorResponse(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->mSecurityToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->verifySignature(Lcom/sponsorpay/utils/SignedServerResponse;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    new-instance v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    .line 138
    sget-object v2, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 139
    const/4 v3, 0x0

    const-string v4, "The signature received in the request did not match the expected one"

    .line 137
    invoke-direct {v1, v2, v3, v4}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->parseSuccessfulResponse(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    move-result-object v1

    goto :goto_0
.end method

.method private parseSuccessfulResponse(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    .locals 12
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 171
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    .local v10, "jsonResponse":Lorg/json/JSONObject;
    const-string v0, "delta_of_coins"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 173
    .local v1, "deltaOfCoins":D
    const-string v0, "latest_transaction_id"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "latestTransactionId":Ljava/lang/String;
    const-string v0, "currency_id"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "currencyId":Ljava/lang/String;
    const-string v0, "currency_name"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "currencyName":Ljava/lang/String;
    const-string v0, "is_default"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 178
    .local v6, "idDefault":Z
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    invoke-direct/range {v0 .. v6}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "deltaOfCoins":D
    .end local v3    # "latestTransactionId":Ljava/lang/String;
    .end local v4    # "currencyId":Ljava/lang/String;
    .end local v5    # "currencyName":Ljava/lang/String;
    .end local v6    # "idDefault":Z
    .end local v10    # "jsonResponse":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v7

    .line 180
    .local v7, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_INVALID_RESPONSE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 181
    .local v9, "errorType":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "errorMessage":Ljava/lang/String;
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    const/4 v11, 0x0

    invoke-direct {v0, v9, v11, v8}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestCurrency(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;
    .param p1, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p2, "transactionId"    # Ljava/lang/String;
    .param p3, "currencyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;",
            "Lcom/sponsorpay/credentials/SPCredentials;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p4, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->buildUrlAndMakeServerRequest(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected noConnectionResponse(Ljava/lang/Throwable;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 221
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->noConnectionResponse(Ljava/lang/Throwable;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V
    .locals 1
    .param p1, "result"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->mResultListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;->onSPCurrencyServerResponseReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V

    .line 195
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->onPostExecute(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V

    return-void
.end method

.method protected parsedSignedResponse(Lcom/sponsorpay/utils/SignedServerResponse;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    .locals 4
    .param p1, "signedServerResponse"    # Lcom/sponsorpay/utils/SignedServerResponse;

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "response":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/sponsorpay/utils/SignedServerResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sponsorpay/utils/SignedServerResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p1}, Lcom/sponsorpay/utils/SignedServerResponse;->getResponseSignature()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-direct {p0, v1, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->parseResponse(ILjava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    move-result-object v0

    .line 211
    :cond_0
    if-nez v0, :cond_1

    .line 212
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    .end local v0    # "response":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 213
    const-string v2, ""

    const-string v3, "Unknow error"

    .line 212
    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .restart local v0    # "response":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic parsedSignedResponse(Lcom/sponsorpay/utils/SignedServerResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->parsedSignedResponse(Lcom/sponsorpay/utils/SignedServerResponse;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    move-result-object v0

    return-object v0
.end method
