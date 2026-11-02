.class Lcom/applovin/impl/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private final c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    invoke-static {}, Lcom/applovin/sdk/AppLovinAdType;->allTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdType;

    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/g;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/g;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/g;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/g;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/g;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/f;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/f;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/f;->b(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/f;Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 2

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->z:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->B:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->D:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/br;->G:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p2, v0}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/br;->aD:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/br;->K:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/br;->aE:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/br;->J:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v3}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/f;Lcom/applovin/sdk/AppLovinAdSize;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->b(Lcom/applovin/sdk/AppLovinAdSize;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Lcom/applovin/sdk/AppLovinAdSize;)J
    .locals 2

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->A:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->C:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->E:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/f;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method private b(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 6

    new-instance v1, Lcom/applovin/impl/sdk/d;

    invoke-direct {v1, p1, p2}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c;->b(Lcom/applovin/impl/sdk/d;)Lcom/applovin/impl/sdk/ax;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using pre-loaded ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c;->f(Lcom/applovin/impl/sdk/d;)V

    return-void

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/cf;

    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/cf;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cj;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/ck;->a:Lcom/applovin/impl/sdk/ck;

    invoke-virtual {v2, v0, v3}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/f;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/f;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->c(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private c(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->b(Lcom/applovin/sdk/AppLovinAdSize;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/applovin/impl/sdk/j;

    invoke-direct {v2, p0, p1}, Lcom/applovin/impl/sdk/j;-><init>(Lcom/applovin/impl/sdk/f;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cj;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/sdk/ck;->a:Lcom/applovin/impl/sdk/ck;

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x2

    add-long/2addr v0, v7

    mul-long/2addr v0, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;J)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/f;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    iget-object v1, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/sdk/AppLovinAd;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/applovin/impl/sdk/i;->d:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad type specificed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v3, "AppLovinAdService"

    const-string v4, "Banners, MRecs and Leaderboards are deprecated and will be removed in a future SDK version!"

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    iget-object v3, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/applovin/impl/sdk/i;->d:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    :goto_0
    iget-object v4, v0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    iget-object v0, v0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/sdk/AppLovinAd;

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    invoke-interface {p3, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AppLovinAdService"

    const-string v5, "Loading next ad..."

    invoke-interface {v2, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lcom/applovin/impl/sdk/i;->e:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/applovin/impl/sdk/i;->e:Z

    new-instance v2, Lcom/applovin/impl/sdk/h;

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/applovin/impl/sdk/h;-><init>(Lcom/applovin/impl/sdk/f;Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/g;)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/f;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    new-instance v4, Lcom/applovin/impl/sdk/d;

    invoke-direct {v4, p1, p2}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-virtual {v0, v4, v2}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/d;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AppLovinAdService"

    const-string v4, "Attaching load listener to initial preload task..."

    invoke-interface {v0, v2, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AppLovinAdService"

    const-string v5, "Skipped attach of initial preload callback."

    invoke-interface {v0, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/applovin/impl/sdk/f;->b(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    move-object v0, v1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AppLovinAdService"

    const-string v5, "Task merge not necessary."

    invoke-interface {v0, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/applovin/impl/sdk/f;->b(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :cond_a
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/f;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method public addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad listener specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added update listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/sdk/j;-><init>(Lcom/applovin/impl/sdk/f;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cj;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/ck;->a:Lcom/applovin/impl/sdk/ck;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c;->e(Lcom/applovin/impl/sdk/d;)Z

    move-result v0

    return v0
.end method

.method public loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/f;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public preloadAd(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c;->f(Lcom/applovin/impl/sdk/d;)V

    return-void
.end method

.method public removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    iget-object v1, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed update listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
