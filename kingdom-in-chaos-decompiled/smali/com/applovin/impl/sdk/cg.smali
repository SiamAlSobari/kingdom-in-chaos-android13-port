.class Lcom/applovin/impl/sdk/cg;
.super Lcom/applovin/impl/sdk/cq;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cf;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cf;Ljava/lang/String;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cg;->a:Lcom/applovin/impl/sdk/cf;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/cq;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cg;->a:Lcom/applovin/impl/sdk/cf;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/cf;->a(Lcom/applovin/impl/sdk/cf;I)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/cg;->a:Lcom/applovin/impl/sdk/cf;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cf;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cg;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/br;->u:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;ILcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cg;->a:Lcom/applovin/impl/sdk/cf;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/cf;->a(Lcom/applovin/impl/sdk/cf;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cg;->a:Lcom/applovin/impl/sdk/cf;

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/cf;->a(Lcom/applovin/impl/sdk/cf;I)V

    goto :goto_0
.end method
