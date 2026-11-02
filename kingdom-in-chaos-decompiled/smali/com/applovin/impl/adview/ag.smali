.class Lcom/applovin/impl/adview/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/af;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/af;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ag;->a:Lcom/applovin/impl/adview/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ag;->a:Lcom/applovin/impl/adview/af;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/af;->a(Lcom/applovin/impl/adview/af;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ag;->a:Lcom/applovin/impl/adview/af;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/af;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ag;->a:Lcom/applovin/impl/adview/af;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/af;->a(Lcom/applovin/impl/adview/af;I)V

    return-void
.end method
