.class public Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/applovin/sdk/AppLovinAdSize;

.field private c:Lcom/applovin/sdk/AppLovinAdType;

.field private d:Ljava/lang/String;

.field private e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

.field private f:Lcom/applovin/impl/adview/v;

.field private g:F

.field private h:F

.field private i:I

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/applovin/impl/sdk/AppLovinAdImpl;
    .locals 15

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->b:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->c:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v4, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    iget-object v6, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->f:Lcom/applovin/impl/adview/v;

    iget v7, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->g:F

    iget v8, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->h:F

    iget v9, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->i:I

    iget-wide v10, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->j:J

    iget-object v12, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->k:Ljava/lang/String;

    iget-object v13, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->l:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/applovin/impl/sdk/AppLovinAdImpl;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;Lcom/applovin/impl/adview/v;FFIJLjava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/e;)V

    return-object v0
.end method

.method public setClCode(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setCloseStyle(Lcom/applovin/impl/adview/v;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->f:Lcom/applovin/impl/adview/v;

    return-object p0
.end method

.method public setCompletionUrl(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setCountdownLength(I)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->i:I

    return-object p0
.end method

.method public setCurrentAdIdNumber(J)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->j:J

    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setPoststitialCloseDelay(F)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->h:F

    return-object p0
.end method

.method public setSize(Lcom/applovin/sdk/AppLovinAdSize;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->b:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p0
.end method

.method public setTarget(Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    return-object p0
.end method

.method public setType(Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->c:Lcom/applovin/sdk/AppLovinAdType;

    return-object p0
.end method

.method public setVideoCloseDelay(F)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->g:F

    return-object p0
.end method

.method public setVideoFilename(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
