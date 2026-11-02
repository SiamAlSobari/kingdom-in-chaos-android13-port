.class Lcom/applovin/impl/sdk/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cx;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cy;->a:Lcom/applovin/impl/sdk/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cy;->a:Lcom/applovin/impl/sdk/cx;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/cx;->a(Lcom/applovin/impl/sdk/cx;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cy;->a:Lcom/applovin/impl/sdk/cx;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/cx;->a(Lcom/applovin/impl/sdk/cx;Lorg/json/JSONObject;)V

    return-void
.end method
