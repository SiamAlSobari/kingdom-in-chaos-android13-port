.class public Lcom/applovin/impl/sdk/cd;
.super Lcom/applovin/impl/sdk/bq;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/sdk/AppLovinPostbackListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    const-string v0, "TaskDispatchPostback"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/bq;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/cd;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/cd;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cd;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/cd;)Lcom/applovin/sdk/AppLovinPostbackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cd;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cd;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "TaskDispatchPostback"

    const-string v2, "Requested URL is not valid; nothing to do..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cd;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cd;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/ce;

    const-string v1, "RepeatTaskDispatchPostback"

    sget-object v2, Lcom/applovin/impl/sdk/br;->aG:Lcom/applovin/impl/sdk/bt;

    iget-object v3, p0, Lcom/applovin/impl/sdk/cd;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/applovin/impl/sdk/ce;-><init>(Lcom/applovin/impl/sdk/cd;Ljava/lang/String;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cq;->run()V

    goto :goto_0
.end method
