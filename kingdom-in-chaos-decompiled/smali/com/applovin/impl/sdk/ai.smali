.class Lcom/applovin/impl/sdk/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:D

.field final synthetic c:Z

.field final synthetic d:Lcom/applovin/impl/sdk/ad;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ai;->d:Lcom/applovin/impl/sdk/ad;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/sdk/AppLovinAd;

    iput-wide p3, p0, Lcom/applovin/impl/sdk/ai;->b:D

    iput-boolean p5, p0, Lcom/applovin/impl/sdk/ai;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ai;->d:Lcom/applovin/impl/sdk/ad;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad;->d(Lcom/applovin/impl/sdk/ad;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/sdk/AppLovinAd;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/ai;->b:D

    iget-boolean v4, p0, Lcom/applovin/impl/sdk/ai;->c:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V

    return-void
.end method
