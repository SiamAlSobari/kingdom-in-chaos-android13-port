.class public Lcom/applovin/sdk/AppLovinSdkSettings;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->b:J

    return-void
.end method


# virtual methods
.method public getAutoPreloadSizes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoPreloadTypes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerAdRefreshSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->b:J

    return-wide v0
.end method

.method public isVerboseLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->a:Z

    return v0
.end method

.method public setAutoPreloadSizes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->c:Ljava/lang/String;

    return-void
.end method

.method public setAutoPreloadTypes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->d:Ljava/lang/String;

    return-void
.end method

.method public setBannerAdRefreshSeconds(J)V
    .locals 0

    iput-wide p1, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->b:J

    return-void
.end method

.method public setVerboseLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/sdk/AppLovinSdkSettings;->a:Z

    return-void
.end method
