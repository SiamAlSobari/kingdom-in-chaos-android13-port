.class Lcom/applovin/impl/sdk/as;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ar;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    iget-object v0, v0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ap;->a(Lcom/applovin/impl/sdk/ap;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/at;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/at;-><init>(Lcom/applovin/impl/sdk/as;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
