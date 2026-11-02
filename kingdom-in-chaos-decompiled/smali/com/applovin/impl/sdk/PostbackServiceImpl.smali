.class public Lcom/applovin/impl/sdk/PostbackServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/PostbackServiceImpl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method


# virtual methods
.method public dispatchPostbackAsync(Ljava/lang/String;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 3

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "PostbackService"

    const-string v2, "Ignoring enqueued postback request to invalid URL"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/cd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    new-instance v2, Lcom/applovin/impl/sdk/bl;

    invoke-direct {v2, p0, p2}, Lcom/applovin/impl/sdk/bl;-><init>(Lcom/applovin/impl/sdk/PostbackServiceImpl;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/applovin/impl/sdk/cd;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cj;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/ck;->c:Lcom/applovin/impl/sdk/ck;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;)V

    goto :goto_0
.end method
