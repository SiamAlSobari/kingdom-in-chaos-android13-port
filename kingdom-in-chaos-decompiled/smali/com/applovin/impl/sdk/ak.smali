.class Lcom/applovin/impl/sdk/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/applovin/impl/sdk/ad;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ak;->c:Lcom/applovin/impl/sdk/ad;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ak;->a:Lcom/applovin/sdk/AppLovinAd;

    iput-object p3, p0, Lcom/applovin/impl/sdk/ak;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ak;->c:Lcom/applovin/impl/sdk/ad;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad;->a(Lcom/applovin/impl/sdk/ad;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ak;->a:Lcom/applovin/sdk/AppLovinAd;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ak;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method
