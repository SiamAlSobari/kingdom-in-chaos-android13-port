.class Lcom/applovin/impl/sdk/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/applovin/impl/sdk/aa;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aa;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ac;->b:Lcom/applovin/impl/sdk/aa;

    iput p2, p0, Lcom/applovin/impl/sdk/ac;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ac;->b:Lcom/applovin/impl/sdk/aa;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->a(Lcom/applovin/impl/sdk/aa;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/ac;->a:I

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void
.end method
