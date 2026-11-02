.class abstract Lcom/applovin/impl/sdk/bo;
.super Lcom/applovin/impl/sdk/bq;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/bq;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    .locals 8

    new-instance v0, Lcom/applovin/impl/sdk/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repeat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/bo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/br;->h:Lcom/applovin/impl/sdk/bt;

    iget-object v4, p0, Lcom/applovin/impl/sdk/bo;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/sdk/bp;-><init>(Lcom/applovin/impl/sdk/bo;Ljava/lang/String;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    sget-object v1, Lcom/applovin/impl/sdk/br;->k:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/cq;->a(Lcom/applovin/impl/sdk/bt;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cq;->run()V

    return-void
.end method
