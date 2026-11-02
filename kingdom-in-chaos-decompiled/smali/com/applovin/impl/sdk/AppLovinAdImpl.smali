.class public Lcom/applovin/impl/sdk/AppLovinAdImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/ax;
.implements Lcom/applovin/sdk/AppLovinAd;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdSize;

.field private final b:Lcom/applovin/sdk/AppLovinAdType;

.field private final c:J

.field private final d:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:F

.field private final h:F

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:Lcom/applovin/impl/adview/v;

.field protected final videoFilename:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;Lcom/applovin/impl/adview/v;FFIJLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No type specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p3, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    iput-object p4, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->videoFilename:Ljava/lang/String;

    iput-wide p10, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    iput p7, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:F

    iput p9, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:I

    iput-object p12, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Lcom/applovin/impl/adview/v;

    iput p8, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    iput-object p13, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;Lcom/applovin/impl/adview/v;FFIJLjava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/e;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/applovin/impl/sdk/AppLovinAdImpl;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;Lcom/applovin/impl/adview/v;FFIJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getHtmlSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAdIdNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    return-wide v0
.end method

.method public getClCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseStyle()Lcom/applovin/impl/adview/v;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Lcom/applovin/impl/adview/v;

    return-object v0
.end method

.method public getCompletionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCountdownLength()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:I

    return v0
.end method

.method public getHtmlSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getParametrizedCompletionUrl(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCompletionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{CLCODE}"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getClCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pv"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPoststitialCloseDelay()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    return v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public getTarget()Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    return-object v0
.end method

.method public getType()Lcom/applovin/sdk/AppLovinAdType;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    return-object v0
.end method

.method public getVideoCloseDelay()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:F

    return v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->videoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isVideoAd()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->videoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
