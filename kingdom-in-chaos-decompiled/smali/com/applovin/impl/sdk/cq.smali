.class abstract Lcom/applovin/impl/sdk/cq;
.super Lcom/applovin/impl/sdk/bq;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field private a:I

.field private final b:Lcom/applovin/impl/sdk/p;

.field private c:Lcom/applovin/impl/sdk/bt;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/bq;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/bt;

    iput p2, p0, Lcom/applovin/impl/sdk/cq;->a:I

    new-instance v0, Lcom/applovin/impl/sdk/cr;

    invoke-direct {v0, p0, p3, p1}, Lcom/applovin/impl/sdk/cr;-><init>(Lcom/applovin/impl/sdk/cq;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/impl/sdk/cq;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cq;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/cq;->a:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cq;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/cq;->a:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/cq;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/cq;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bu;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/bt;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bt;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bu;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/bt;

    return-void
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/cq;->a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method
