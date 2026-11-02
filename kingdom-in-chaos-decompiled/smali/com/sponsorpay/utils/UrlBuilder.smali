.class public Lcom/sponsorpay/utils/UrlBuilder;
.super Ljava/lang/Object;
.source "UrlBuilder.java"


# static fields
.field private static final ADVERTISING_ID_KEY:Ljava/lang/String; = "google_ad_id"

.field private static final ADVERTISING_ID_LIMITED_TRACKING_ENABLED_KEY:Ljava/lang/String; = "google_ad_id_limited_tracking_enabled"

.field private static final APPID_KEY:Ljava/lang/String; = "appid"

.field private static final APP_BUNDLE_NAME_KEY:Ljava/lang/String; = "app_bundle_name"

.field private static final APP_VERSION_KEY:Ljava/lang/String; = "app_version"

.field private static final CARRIER_COUNTRY_KEY:Ljava/lang/String; = "carrier_country"

.field private static final CARRIER_NAME_KEY:Ljava/lang/String; = "carrier_name"

.field private static final CURRENCY_KEY:Ljava/lang/String; = "currency"

.field private static final LANGUAGE_KEY:Ljava/lang/String; = "language"

.field private static final MANUFACTURER_KEY:Ljava/lang/String; = "manufacturer"

.field private static final NETWORK_CONNECTION_TYPE_KEY:Ljava/lang/String; = "network_connection_type"

.field private static final OS_VERSION_KEY:Ljava/lang/String; = "os_version"

.field private static final PHONE_VERSION_KEY:Ljava/lang/String; = "phone_version"

.field private static final SCREEN_DENSITY_CATEGORY_KEY:Ljava/lang/String; = "screen_density_category"

.field private static final SCREEN_DENSITY_X_KEY:Ljava/lang/String; = "screen_density_x"

.field private static final SCREEN_DENSITY_Y_KEY:Ljava/lang/String; = "screen_density_y"

.field private static final SCREEN_HEIGHT_KEY:Ljava/lang/String; = "screen_height"

.field private static final SCREEN_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final SCREEN_WIDTH_KEY:Ljava/lang/String; = "screen_width"

.field private static final SDK_RELEASE_VERSION_KEY:Ljava/lang/String; = "sdk_version"

.field private static final TAG:Ljava/lang/String; = "UrlBuilder"

.field private static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field private static final URL_CLIENT_KEY:Ljava/lang/String; = "client"

.field private static final URL_CLIENT_VALUE:Ljava/lang/String; = "sdk"

.field public static final URL_PARAM_ALLOW_CAMPAIGN_KEY:Ljava/lang/String; = "allow_campaign"

.field public static final URL_PARAM_CURRENCY_NAME_KEY:Ljava/lang/String; = "currency"

.field public static final URL_PARAM_OFFSET_KEY:Ljava/lang/String; = "offset"

.field private static final URL_PARAM_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final URL_PARAM_VALUE_ON:Ljava/lang/String; = "on"

.field private static final URL_PLATFORM_KEY:Ljava/lang/String; = "platform"

.field private static final URL_PLATFORM_VALUE:Ljava/lang/String; = "android"

.field private static final USERID_KEY:Ljava/lang/String; = "uid"


# instance fields
.field private mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field private mCurrency:Ljava/lang/String;

.field private mExtraKeysValues:Ljava/util/Map;
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

.field private mResourceUrl:Ljava/lang/String;

.field private mShouldAddScreenMetrics:Z

.field private mShouldAddScreenOrientation:Z

.field private mShouldAddSignature:Z

.field private mShouldAddTimestamp:Z

.field private mShouldAddUserId:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)V
    .locals 2
    .param p1, "resourceUrl"    # Ljava/lang/String;
    .param p2, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-boolean v1, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddScreenMetrics:Z

    .line 170
    iput-boolean v1, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddScreenOrientation:Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddUserId:Z

    .line 174
    iput-boolean v1, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddTimestamp:Z

    .line 176
    iput-boolean v1, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddSignature:Z

    .line 183
    iput-object p1, p0, Lcom/sponsorpay/utils/UrlBuilder;->mResourceUrl:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/sponsorpay/utils/UrlBuilder;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 185
    return-void
.end method

.method private getCurrentUnixTimestampAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 342
    const/16 v0, 0x3e8

    .line 343
    .local v0, "MILLISECONDS_IN_SECOND":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getExtraKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mExtraKeysValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mExtraKeysValues:Ljava/util/Map;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mExtraKeysValues:Ljava/util/Map;

    return-object v0
.end method

.method public static mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_0

    .line 143
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "SponsorPay SDK: When specifying Custom Parameters using two arrays of Keys and Values, both must have the same length."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    array-length v4, p0

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 148
    .local v2, "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_1

    .line 161
    return-object v2

    .line 149
    :cond_1
    aget-object v1, p0, v0

    .line 150
    .local v1, "k":Ljava/lang/String;
    aget-object v3, p1, v0

    .line 152
    .local v3, "v":Ljava/lang/String;
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "SponsorPay SDK: When specifying Custom Parameters using two arrays of Keys and Values, none of their elements can be empty or null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    :cond_3
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;
    .locals 1
    .param p0, "resourceUrl"    # Ljava/lang/String;
    .param p1, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;

    .prologue
    .line 360
    new-instance v0, Lcom/sponsorpay/utils/UrlBuilder;

    invoke-direct {v0, p0, p1}, Lcom/sponsorpay/utils/UrlBuilder;-><init>(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)V

    return-object v0
.end method

.method public static validateKeyValueParams(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "kvParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 118
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    :cond_1
    return-void

    .line 118
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SponsorPay SDK: Custom Parameters cannot have an empty or null Key or Value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sponsorpay/utils/UrlBuilder;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "extraKeysValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/sponsorpay/utils/UrlBuilder;->getExtraKeys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 191
    :cond_0
    return-object p0
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/sponsorpay/utils/UrlBuilder;->getExtraKeys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    return-object p0
.end method

.method public addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddScreenMetrics:Z

    .line 203
    return-object p0
.end method

.method public addScreenOrientation()Lcom/sponsorpay/utils/UrlBuilder;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddScreenOrientation:Z

    .line 208
    return-object p0
.end method

.method public addSignature()Lcom/sponsorpay/utils/UrlBuilder;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddSignature:Z

    .line 229
    iput-boolean v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddTimestamp:Z

    .line 230
    return-object p0
.end method

.method public addTimestamp()Lcom/sponsorpay/utils/UrlBuilder;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddTimestamp:Z

    .line 223
    return-object p0
.end method

.method public buildUrl()Ljava/lang/String;
    .locals 11

    .prologue
    .line 240
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v4, "keyValueParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->getParameters()Ljava/util/Map;

    move-result-object v6

    .line 243
    .local v6, "spExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 244
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 247
    :cond_0
    iget-boolean v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddUserId:Z

    if-eqz v8, :cond_1

    .line 248
    const-string v8, "uid"

    iget-object v9, p0, Lcom/sponsorpay/utils/UrlBuilder;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v9}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_1
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    move-result-object v3

    .line 253
    .local v3, "hostInfo":Lcom/sponsorpay/utils/HostInfo;
    const-string v8, "sdk_version"

    const-string v9, "7.0.1"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v8, "appid"

    iget-object v9, p0, Lcom/sponsorpay/utils/UrlBuilder;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v9}, Lcom/sponsorpay/credentials/SPCredentials;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v8, "platform"

    const-string v9, "android"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v8, "client"

    const-string v9, "sdk"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v8, "os_version"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v8, "phone_version"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getPhoneVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v8, "language"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getLanguageSetting()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v8, "carrier_name"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getCarrierName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v8, "carrier_country"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getCarrierCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v8, "network_connection_type"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getConnectionType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v8, "manufacturer"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v8, "app_bundle_name"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getAppBundleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v8, "app_version"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mCurrency:Ljava/lang/String;

    invoke-static {v8}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 273
    const-string v8, "currency"

    iget-object v9, p0, Lcom/sponsorpay/utils/UrlBuilder;->mCurrency:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    iget-boolean v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddScreenMetrics:Z

    if-eqz v8, :cond_3

    .line 277
    const-string v8, "screen_width"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getScreenWidth()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v8, "screen_height"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getScreenHeight()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v8, "screen_density_x"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getScreenDensityX()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v8, "screen_density_y"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getScreenDensityY()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v8, "screen_density_category"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getScreenDensityCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_3
    iget-boolean v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddScreenOrientation:Z

    if-eqz v8, :cond_4

    .line 285
    const-string v8, "orientation"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getScreenOrientation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_4
    iget-object v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mExtraKeysValues:Ljava/util/Map;

    if-eqz v8, :cond_5

    .line 289
    iget-object v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mExtraKeysValues:Ljava/util/Map;

    invoke-static {v8}, Lcom/sponsorpay/utils/UrlBuilder;->validateKeyValueParams(Ljava/util/Map;)V

    .line 290
    iget-object v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mExtraKeysValues:Ljava/util/Map;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 293
    :cond_5
    iget-boolean v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddTimestamp:Z

    if-eqz v8, :cond_6

    .line 294
    const-string v8, "timestamp"

    invoke-direct {p0}, Lcom/sponsorpay/utils/UrlBuilder;->getCurrentUnixTimestampAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_6
    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "advertisingId":Ljava/lang/String;
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 299
    const-string v8, "google_ad_id"

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v8, "google_ad_id_limited_tracking_enabled"

    invoke-virtual {v3}, Lcom/sponsorpay/utils/HostInfo;->isAdvertisingIdLimitedTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :goto_0
    iget-object v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mResourceUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 307
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 309
    .local v1, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    .line 313
    iget-boolean v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddSignature:Z

    if-eqz v8, :cond_7

    .line 314
    iget-object v8, p0, Lcom/sponsorpay/utils/UrlBuilder;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v8}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "secretKey":Ljava/lang/String;
    invoke-static {v5}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 316
    const-string v8, "signature"

    .line 317
    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SignatureTools;->generateSignatureForParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 316
    invoke-virtual {v1, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 324
    .end local v5    # "secretKey":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 326
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 302
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v8, "google_ad_id"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v8, "google_ad_id_limited_tracking_enabled"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 309
    .restart local v1    # "builder":Landroid/net/Uri$Builder;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 310
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 320
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "secretKey":Ljava/lang/String;
    :cond_a
    const-string v8, "UrlBuilder"

    const-string v9, "It was impossible to add the signature, the SecretKey has not been provided"

    invoke-static {v8, v9}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public sendUserId(Z)Lcom/sponsorpay/utils/UrlBuilder;
    .locals 0
    .param p1, "shouldSend"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/sponsorpay/utils/UrlBuilder;->mShouldAddUserId:Z

    .line 213
    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sponsorpay/utils/UrlBuilder;->mCurrency:Ljava/lang/String;

    .line 218
    return-object p0
.end method
