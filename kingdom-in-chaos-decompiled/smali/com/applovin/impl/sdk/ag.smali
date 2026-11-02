.class Lcom/applovin/impl/sdk/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/sdk/ad;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/impl/sdk/ad;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/impl/sdk/ad;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad;->c(Lcom/applovin/impl/sdk/ad;)Lcom/applovin/sdk/AppLovinAdClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdClickListener;->adClicked(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
