.class Lcom/applovin/impl/sdk/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/as;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/as;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/at;->a:Lcom/applovin/impl/sdk/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->a:Lcom/applovin/impl/sdk/as;

    iget-object v0, v0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    iget-object v0, v0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ap;->c(Lcom/applovin/impl/sdk/ap;)V

    return-void
.end method
