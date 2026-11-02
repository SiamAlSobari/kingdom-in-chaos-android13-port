.class Lcom/applovin/impl/sdk/cf;
.super Lcom/applovin/impl/sdk/bq;

# interfaces
.implements Lcom/applovin/impl/sdk/cz;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdSize;

.field private final b:Lcom/applovin/sdk/AppLovinAdType;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "FetchNextAd"

    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/sdk/bq;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/cf;->d:Z

    iput-object p1, p0, Lcom/applovin/impl/sdk/cf;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p2, p0, Lcom/applovin/impl/sdk/cf;->b:Lcom/applovin/sdk/AppLovinAdType;

    iput-object p3, p0, Lcom/applovin/impl/sdk/cf;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/bw;)V
    .locals 7

    const-string v0, "ad_session_start"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/bw;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v1, v2, v0

    const-wide/32 v3, 0xea60

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v5, Lcom/applovin/impl/sdk/br;->x:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v5}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    mul-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    const-string v0, "ad_session_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/bw;->b(Ljava/lang/String;J)V

    const-string v0, "ad_imp_session"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/bw;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cf;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cf;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cf;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cf;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cf;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ad: server returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/cf;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/q;->b(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cf;->e:Ljava/lang/String;

    const-string v3, "Unable process a failure to recieve an ad"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/cf;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cj;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/ck;->a:Lcom/applovin/impl/sdk/ck;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/q;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method private d(Ljava/util/Map;)V
    .locals 3

    const-string v0, "api_did"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_key"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSdkKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "6.0.1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->F:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "plugin_version"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "accept"

    invoke-direct {p0}, Lcom/applovin/impl/sdk/cf;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "preloading"

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/cf;->d:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "size"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "format"

    const-string v1, "json"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->N:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bw;

    move-result-object v0

    const-string v1, "li"

    const-string v2, "ad_imp"

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/bw;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "si"

    const-string v2, "ad_imp_session"

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/bw;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private f(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->N:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/m;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private g(Ljava/util/Map;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/cf;->h(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/a;->a(Ljava/util/Map;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "network"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cf;->j(Ljava/util/Map;)V

    const-string v0, "vz"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/da;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/cf;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/cf;->e:Ljava/lang/String;

    const-string v4, "Unable to populate device information"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 3

    const-string v0, "custom_size,launch_app"

    invoke-static {}, Lcom/applovin/impl/sdk/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cf;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/applovin/impl/sdk/cf;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/n;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",widget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private h(Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/cf;->c()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->a()Lcom/applovin/impl/sdk/u;

    move-result-object v0

    const-string v1, "brand"

    iget-object v2, v0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/da;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "carrier"

    iget-object v2, v0, Lcom/applovin/impl/sdk/u;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/da;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "locale"

    iget-object v2, v0, Lcom/applovin/impl/sdk/u;->h:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    iget-object v2, v0, Lcom/applovin/impl/sdk/u;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/da;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os"

    iget-object v2, v0, Lcom/applovin/impl/sdk/u;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/da;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "revision"

    iget-object v0, v0, Lcom/applovin/impl/sdk/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/da;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cf;->i(Ljava/util/Map;)V

    return-void
.end method

.method private i(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const-string v1, "dx"

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dy"

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private j(Ljava/util/Map;)V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/cf;->c()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->c()Lcom/applovin/impl/sdk/s;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/impl/sdk/s;->b:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/applovin/impl/sdk/s;->a:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bu;

    move-result-object v0

    sget-object v3, Lcom/applovin/impl/sdk/br;->aZ:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "idfa"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "dnt"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/bq;
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/co;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/co;-><init>(Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    instance-of v0, v0, Lcom/applovin/impl/sdk/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast v0, Lcom/applovin/impl/sdk/v;

    new-instance v1, Lcom/applovin/impl/sdk/d;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cf;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/applovin/impl/sdk/cf;->b:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-interface {v0, v1, p1}, Lcom/applovin/impl/sdk/v;->a(Lcom/applovin/impl/sdk/d;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cf;->f(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cf;->g(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cf;->e(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cf;->d(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/cf;->b(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/cf;->c(Ljava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/cf;->d:Z

    return-void
.end method

.method b()V
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/bq;->b()V

    const/16 v0, -0x19a

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/cf;->b(I)V

    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->b:Lcom/applovin/sdk/AppLovinAdType;

    if-eqz v0, :cond_0

    const-string v0, "require"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->b:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected c(Ljava/util/Map;)V
    .locals 4

    invoke-static {}, Lcom/applovin/impl/sdk/cu;->a()Lcom/applovin/impl/sdk/cu;

    move-result-object v0

    const-string v1, "tFNA"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/cu;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/cw;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "etf"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cw;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ntf"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/cu;->a()Lcom/applovin/impl/sdk/cu;

    move-result-object v0

    const-string v1, "tRA"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/cu;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/cw;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "etr"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cw;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ntr"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fvr"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cw;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/cf;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/cf;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/applovin/impl/sdk/da;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    const-string v0, "2.0/ad"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "tFNA"

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/cf;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->e:Ljava/lang/String;

    const-string v2, "Preloading next ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bw;

    move-result-object v0

    const-string v1, "ad_req"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bw;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/cf;->a(Lcom/applovin/impl/sdk/bw;)V

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/cg;

    const-string v1, "RepeatFetchNextAd"

    sget-object v2, Lcom/applovin/impl/sdk/br;->i:Lcom/applovin/impl/sdk/bt;

    iget-object v3, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/applovin/impl/sdk/cg;-><init>(Lcom/applovin/impl/sdk/cf;Ljava/lang/String;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    sget-object v1, Lcom/applovin/impl/sdk/br;->l:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/cq;->a(Lcom/applovin/impl/sdk/bt;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cq;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->e:Ljava/lang/String;

    const-string v2, "Fetching next ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cf;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/cf;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/cf;->b(I)V

    goto :goto_1
.end method
