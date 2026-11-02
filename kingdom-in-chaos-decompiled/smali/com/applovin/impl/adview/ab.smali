.class Lcom/applovin/impl/adview/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/adview/x;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/x;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ab;->b:Lcom/applovin/impl/adview/x;

    iput-object p2, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->b:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->f(Lcom/applovin/impl/adview/x;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->b:Lcom/applovin/impl/adview/x;

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/sdk/AppLovinAd;

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCloseStyle()Lcom/applovin/impl/adview/v;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/adview/x;->a(Lcom/applovin/impl/adview/x;Lcom/applovin/impl/adview/v;)V

    return-void
.end method
