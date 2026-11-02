.class Lcom/applovin/impl/sdk/ce;
.super Lcom/applovin/impl/sdk/cq;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cd;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cd;Ljava/lang/String;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ce;->a:Lcom/applovin/impl/sdk/cd;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/cq;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->a:Lcom/applovin/impl/sdk/cd;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cd;->b(Lcom/applovin/impl/sdk/cd;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ce;->a:Lcom/applovin/impl/sdk/cd;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cd;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->a:Lcom/applovin/impl/sdk/cd;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cd;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/br;->aF:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;IZLcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->a:Lcom/applovin/impl/sdk/cd;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cd;->b(Lcom/applovin/impl/sdk/cd;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ce;->a:Lcom/applovin/impl/sdk/cd;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cd;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    return-void
.end method
