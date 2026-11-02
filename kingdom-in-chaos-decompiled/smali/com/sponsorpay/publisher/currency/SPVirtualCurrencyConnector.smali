.class public Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
.super Ljava/lang/Object;
.source "SPVirtualCurrencyConnector.java"

# interfaces
.implements Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    }
.end annotation


# static fields
.field private static final CURRENT_API_LEVEL_NOT_SUPPORTED_ERROR:Ljava/lang/String; = "Only devices running Android API level 10 and above are supported"

.field private static final DEFAULT_CURRENCY_ID_KEY_PREFIX:Ljava/lang/String; = "DEFAULT_CURRENCY_ID_KEY"

.field private static final STATE_LATEST_TRANSACTION_ID_KEY_PREFIX:Ljava/lang/String; = "STATE_LATEST_CURRENCY_TRANSACTION_ID_"

.field private static final STATE_LATEST_TRANSACTION_ID_KEY_SEPARATOR:Ljava/lang/String; = "_"

.field private static final STATE_TRANSACTION_CURRENCY_ID_KEY_PREFIX:Ljava/lang/String; = "STATE_LATEST_TRANSACTION_CURRENCY_ID_"

.field private static final TAG:Ljava/lang/String; = "SPVirtualCurrencyConnector"

.field private static final URL_PARAM_VALUE_NO_TRANSACTION:Ljava/lang/String; = "NO_TRANSACTION"

.field private static final VCS_TIMER:I = 0xf

.field private static cacheInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static showToastNotification:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field private mCurrency:Ljava/lang/String;

.field private mCurrencyId:Ljava/lang/String;

.field protected mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

.field protected mCustomParameters:Ljava/util/Map;
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

.field private mShouldShowNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->showToastNotification:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "credentialsToken"    # Ljava/lang/String;
    .param p3, "currencyServerListener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p2}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 106
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Security token has not been set on the credentials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .line 112
    return-void
.end method

.method private createyKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 403
    iget-object v2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v2}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    :goto_0
    return-object v2

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "defaultCurrencyId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private fetchLatestTransactionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "credentialsToken"    # Ljava/lang/String;
    .param p3, "currencyId"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p2}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    .line 238
    .local v0, "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    const-string v3, "SponsorPayPublisherState"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 239
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 240
    .local v2, "retval":Ljava/lang/String;
    invoke-static {p3}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const-string v3, "DEFAULT_CURRENCY_ID_KEY"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 244
    :cond_0
    invoke-static {p3}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    const-string v3, "NO_TRANSACTION"

    .line 251
    :goto_0
    return-object v3

    .line 248
    :cond_1
    invoke-static {v0, p3}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->generatePreferencesLatestTransactionIdKey(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    const-string v4, "NO_TRANSACTION"

    .line 248
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 251
    goto :goto_0
.end method

.method private fetchLatestTransactionIdForRequest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->fetchLatestTransactionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generatePreferencesLatestTransactionIdKey(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p1, "currencyId"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string p1, ""

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STATE_LATEST_CURRENCY_TRANSACTION_ID_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sponsorpay/credentials/SPCredentials;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    const-string v1, "STATE_LATEST_TRANSACTION_CURRENCY_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p1, "defaultIfNull"    # Ljava/util/Calendar;

    .prologue
    .line 383
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->createyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;

    .line 384
    .local v0, "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;

    .end local v0    # "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)V

    .line 386
    .restart local v0    # "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    invoke-static {v0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->access$1(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;Ljava/util/Calendar;)V

    .line 387
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->createyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_0
    invoke-static {v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->access$3(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)Ljava/util/Calendar;

    move-result-object v1

    return-object v1
.end method

.method private getCachedResponse()Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    .locals 3

    .prologue
    .line 393
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->createyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;

    .line 394
    .local v0, "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;

    .end local v0    # "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)V

    .line 396
    .restart local v0    # "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->access$1(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;Ljava/util/Calendar;)V

    .line 397
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->createyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_0
    invoke-static {v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->access$4(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    .line 346
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    const-string v2, "SponsorPayPublisherState"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 347
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "DEFAULT_CURRENCY_ID_KEY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onDeltaOfCoinsResponse(Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    .prologue
    const/4 v8, 0x1

    .line 259
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->saveLatestTransactionForCurrentUser(Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;)V

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "currencyName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrency:Ljava/lang/String;

    invoke-static {v3}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrency:Ljava/lang/String;

    .line 273
    :goto_0
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getDeltaOfCoins()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mShouldShowNotification:Z

    if-eqz v3, :cond_0

    .line 274
    sget-object v3, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v3}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 275
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getDeltaOfCoins()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v0, v4, v8

    .line 274
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 278
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "serverCurrencyResponseName":Ljava/lang/String;
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    :goto_1
    goto :goto_0

    .line 270
    :cond_2
    sget-object v3, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v3}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private saveLatestTransactionForCurrentUser(Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;)V
    .locals 5
    .param p1, "successfulResponse"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    .prologue
    .line 204
    iget-object v2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    const-string v3, "SponsorPayPublisherState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 205
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->generatePreferencesLatestTransactionIdKey(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const-string v2, "DEFAULT_CURRENCY_ID_KEY"

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    return-void
.end method

.method private setCachedResponse(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V
    .locals 3
    .param p1, "reponse"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    .prologue
    .line 374
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->createyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;

    .line 375
    .local v0, "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;

    .end local v0    # "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)V

    .line 377
    .restart local v0    # "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->createyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    invoke-static {v0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->access$2(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V

    .line 380
    return-void
.end method

.method private setDefaultCurrency(Ljava/lang/String;)V
    .locals 5
    .param p1, "defaultCurrencyId"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    const-string v3, "SponsorPayPublisherState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 353
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 354
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DEFAULT_CURRENCY_ID_KEY"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 355
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    return-void
.end method

.method private setTimerCalendar(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 365
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->createyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;

    .line 366
    .local v0, "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;

    .end local v0    # "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)V

    .line 368
    .restart local v0    # "pair":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->cacheInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->createyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    invoke-static {v0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->access$1(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;Ljava/util/Calendar;)V

    .line 371
    return-void
.end method

.method public static shouldShowToastNotification(Z)V
    .locals 0
    .param p0, "showNotification"    # Z

    .prologue
    .line 285
    sput-boolean p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->showToastNotification:Z

    .line 286
    return-void
.end method


# virtual methods
.method public fetchDeltaOfCoins()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->fetchDeltaOfCoinsForCurrentUserSinceTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public fetchDeltaOfCoinsForCurrentUserSinceTransactionId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "currencyId"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    new-instance v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    .line 161
    sget-object v4, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v5, ""

    const-string v6, "Only devices running Android API level 10 and above are supported"

    .line 160
    invoke-direct {v1, v4, v5, v6}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v1, "errorResponse":Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;
    iget-object v4, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    invoke-interface {v4, v1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;->onSPCurrencyServerError(Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;)V

    .line 192
    .end local v1    # "errorResponse":Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;
    :goto_0
    return-void

    .line 166
    :cond_0
    iput-object p2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyId:Ljava/lang/String;

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->getCachedCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    const-string v4, "SPVirtualCurrencyConnector"

    const-string v5, "The VCS was queried less than 15s ago.Replying with cached response"

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->getCachedResponse()Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    move-result-object v3

    .line 172
    .local v3, "response":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    if-eqz v3, :cond_1

    .line 173
    invoke-virtual {p0, v3}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->onSPCurrencyServerResponseReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v4, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .line 177
    new-instance v5, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    sget-object v6, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 178
    const-string v7, ""

    const-string v8, "Unknown error"

    .line 176
    invoke-direct {v5, v6, v7, v8}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;->onSPCurrencyServerError(Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;)V

    goto :goto_0

    .line 183
    .end local v3    # "response":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    :cond_2
    const/16 v4, 0xd

    const/16 v5, 0xf

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 184
    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->setTimerCalendar(Ljava/util/Calendar;)V

    .line 185
    sget-boolean v4, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->showToastNotification:Z

    iput-boolean v4, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mShouldShowNotification:Z

    .line 187
    move-object v2, p1

    .line 188
    .local v2, "ltid":Ljava/lang/String;
    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->fetchLatestTransactionIdForRequest()Ljava/lang/String;

    move-result-object v2

    .line 191
    :cond_3
    iget-object v4, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    iget-object v5, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyId:Ljava/lang/String;

    iget-object v6, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    invoke-static {p0, v4, v2, v5, v6}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->requestCurrency(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onSPCurrencyServerResponseReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V
    .locals 11
    .param p1, "response"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    .prologue
    .line 290
    instance-of v1, p1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    if-eqz v1, :cond_1

    move-object v9, p1

    .line 291
    check-cast v9, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    .line 292
    .local v9, "successfulResponse":Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;
    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "defaultCurrency":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "responseCurrencyId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-static {v7}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-direct {p0, v4}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->setDefaultCurrency(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    const-string v2, "SponsorPayPublisherState"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 303
    .local v8, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-static {v1, v4}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->generatePreferencesLatestTransactionIdKey(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {v9}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 306
    .local v10, "transactionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    invoke-static {p0, v1, v10, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->requestCurrency(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    .end local v4    # "responseCurrencyId":Ljava/lang/String;
    .end local v7    # "defaultCurrency":Ljava/lang/String;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .end local v9    # "successfulResponse":Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;
    .end local v10    # "transactionId":Ljava/lang/String;
    .end local p1    # "response":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    :goto_0
    return-void

    .line 308
    .restart local v4    # "responseCurrencyId":Ljava/lang/String;
    .restart local v7    # "defaultCurrency":Ljava/lang/String;
    .restart local v9    # "successfulResponse":Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;
    .restart local p1    # "response":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    :cond_0
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    const-wide/16 v1, 0x0

    .line 309
    invoke-virtual {v9}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v9}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->isDefault()Z

    move-result v6

    .line 308
    invoke-direct/range {v0 .. v6}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 312
    .local v0, "lastResponse":Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;
    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->setCachedResponse(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V

    .line 313
    invoke-direct {p0, v9}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->onDeltaOfCoinsResponse(Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;)V

    .line 314
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    invoke-interface {v1, v9}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;->onSPCurrencyDeltaReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;)V

    goto :goto_0

    .line 317
    .end local v0    # "lastResponse":Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;
    .end local v4    # "responseCurrencyId":Ljava/lang/String;
    .end local v7    # "defaultCurrency":Ljava/lang/String;
    .end local v9    # "successfulResponse":Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->setCachedResponse(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V

    .line 318
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    check-cast p1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    .end local p1    # "response":Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    invoke-interface {v1, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;->onSPCurrencyServerError(Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;)V

    goto :goto_0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrency:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setCustomParameters(Ljava/util/Map;)Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    .line 120
    return-object p0
.end method
