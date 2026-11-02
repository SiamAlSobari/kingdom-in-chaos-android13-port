.class Lcom/applovin/impl/sdk/co;
.super Lcom/applovin/impl/sdk/bq;

# interfaces
.implements Lcom/applovin/impl/sdk/cz;


# instance fields
.field private final a:Ljava/util/Collection;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final d:Lcom/applovin/impl/sdk/x;

.field private i:Z

.field private j:Lcom/applovin/impl/sdk/d;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 3

    const-string v0, "RenderAd"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/bq;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    new-instance v0, Lcom/applovin/impl/sdk/d;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/co;->j:Lcom/applovin/impl/sdk/d;

    iput-object p1, p0, Lcom/applovin/impl/sdk/co;->b:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/applovin/impl/sdk/co;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/co;->e()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/co;->a:Ljava/util/Collection;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/co;->d:Lcom/applovin/impl/sdk/x;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdType;I)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p2, v1}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p2, v1}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Lcom/applovin/impl/adview/v;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/applovin/impl/adview/v;->b:Lcom/applovin/impl/adview/v;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/adview/v;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/applovin/impl/adview/v;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/applovin/impl/adview/v;->b:Lcom/applovin/impl/adview/v;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/adview/v;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/co;->d:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/co;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/applovin/impl/sdk/x;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/co;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from cache: file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/co;->d:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v3, v1, v2}, Lcom/applovin/impl/sdk/x;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 14

    const/4 v7, 0x0

    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    move-object v11, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/co;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "ad_target"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ad_target"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "ad_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ad_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinAdType;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    move-object v2, v0

    :goto_2
    new-instance v0, Lcom/applovin/impl/sdk/d;

    invoke-direct {v0, v11, v2}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/co;->j:Lcom/applovin/impl/sdk/d;

    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    :try_start_0
    iget-object v4, p0, Lcom/applovin/impl/sdk/co;->d:Lcom/applovin/impl/sdk/x;

    iget-object v5, p0, Lcom/applovin/impl/sdk/co;->h:Landroid/content/Context;

    invoke-virtual {v4, v5, v0}, Lcom/applovin/impl/sdk/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/co;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_3
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/co;->d()V

    :goto_4
    return-void

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    move-object v11, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->DEFAULT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    move-object v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :cond_3
    move-object v3, v0

    :cond_4
    const-wide/16 v4, -0x1

    const-string v0, "ad_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ad_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_5
    const-string v0, "countdown_length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_1
    const-string v0, "countdown_length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v6, v0

    :goto_5
    const-string v0, "close_delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    const-string v0, "close_delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v7

    :cond_6
    :goto_6
    const-string v0, "close_delay_graphic"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_3
    const-string v0, "close_delay_graphic"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    int-to-float v0, v0

    move v8, v0

    :goto_7
    const-string v0, "close_style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_4
    const-string v0, "close_style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/co;->a(I)Lcom/applovin/impl/adview/v;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    move-object v9, v0

    :goto_8
    const-string v10, ""

    const-string v0, "clcodes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_5
    const-string v0, "clcodes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    :goto_9
    const-string v10, ""

    const-string v13, "video_end_url"

    invoke-virtual {p1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    :try_start_6
    const-string v13, "video_end_url"

    invoke-virtual {p1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v10

    :cond_7
    :goto_a
    new-instance v13, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    invoke-direct {v13}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;-><init>()V

    invoke-virtual {v13, v12}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setHtml(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setSize(Lcom/applovin/sdk/AppLovinAdSize;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setType(Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setVideoFilename(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setTarget(Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setCloseStyle(Lcom/applovin/impl/adview/v;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v1

    int-to-float v2, v7

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setVideoCloseDelay(F)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setPoststitialCloseDelay(F)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setCountdownLength(I)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setCurrentAdIdNumber(J)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setClCode(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setCompletionUrl(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->build()Lcom/applovin/impl/sdk/AppLovinAdImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move v6, v7

    goto/16 :goto_5

    :cond_8
    move v6, v7

    goto/16 :goto_5

    :catch_2
    move-exception v0

    invoke-direct {p0, v3, v2, v7}, Lcom/applovin/impl/sdk/co;->a(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdType;I)F

    move-result v0

    move v8, v0

    goto/16 :goto_7

    :cond_9
    invoke-direct {p0, v3, v2, v7}, Lcom/applovin/impl/sdk/co;->a(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdType;I)F

    move-result v0

    move v8, v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    invoke-direct {p0, v3}, Lcom/applovin/impl/sdk/co;->a(Ljava/lang/String;)Lcom/applovin/impl/adview/v;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_8

    :cond_a
    invoke-direct {p0, v3}, Lcom/applovin/impl/sdk/co;->a(Ljava/lang/String;)Lcom/applovin/impl/adview/v;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v0, v10

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/co;->e:Ljava/lang/String;

    const-string v2, "No HTML received for requested ad"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/co;->d()V

    goto/16 :goto_4

    :catch_5
    move-exception v13

    goto :goto_a

    :catch_6
    move-exception v0

    goto/16 :goto_6

    :cond_c
    move-object v0, v10

    goto/16 :goto_9

    :cond_d
    move-object v0, v3

    goto/16 :goto_3
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->H:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/co;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/br;->I:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, v5, v3

    move v0, v1

    move v2, v1

    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    invoke-virtual {v4, v7, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move v0, v2

    :goto_2
    iget-object v9, p0, Lcom/applovin/impl/sdk/co;->a:Ljava/util/Collection;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-ge v0, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-le v0, v2, :cond_4

    if-eq v0, v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v4, v8, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/applovin/impl/sdk/co;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v2, v0, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/applovin/impl/sdk/co;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v9, p0, Lcom/applovin/impl/sdk/co;->e:Ljava/lang/String;

    const-string v10, "Unable to cache resource; ad HTML is invalid."

    invoke-interface {v8, v9, v10}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/Collection;
    .locals 5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/br;->ap:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v4, v2, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    instance-of v0, v0, Lcom/applovin/impl/sdk/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast v0, Lcom/applovin/impl/sdk/v;

    iget-object v1, p0, Lcom/applovin/impl/sdk/co;->j:Lcom/applovin/impl/sdk/d;

    const/4 v2, -0x6

    invoke-interface {v0, v1, v2}, Lcom/applovin/impl/sdk/v;->a(Lcom/applovin/impl/sdk/d;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/co;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/co;->e:Ljava/lang/String;

    const-string v3, "Unable process a failure to receive an ad"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "tRA"

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/co;->i:Z

    return v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/co;->e:Ljava/lang/String;

    const-string v2, "Rendering ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/co;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/co;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/co;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/co;->e:Ljava/lang/String;

    const-string v3, "Unable to parse ad service response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/co;->d()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/co;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/co;->e:Ljava/lang/String;

    const-string v3, "Ad response is not valid"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/co;->d()V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/co;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/co;->e:Ljava/lang/String;

    const-string v3, "Unable to render ad"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/co;->d()V

    goto :goto_0
.end method
