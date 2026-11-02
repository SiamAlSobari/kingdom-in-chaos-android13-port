.class Lcom/applovin/impl/sdk/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/impl/sdk/ad;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/ad;

    iput-object p2, p0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/sdk/AppLovinAd;

    iput p3, p0, Lcom/applovin/impl/sdk/am;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/ad;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad;->a(Lcom/applovin/impl/sdk/ad;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/sdk/AppLovinAd;

    iget v2, p0, Lcom/applovin/impl/sdk/am;->b:I

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    return-void
.end method
