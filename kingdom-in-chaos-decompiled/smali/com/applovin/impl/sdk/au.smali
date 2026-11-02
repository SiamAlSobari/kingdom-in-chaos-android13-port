.class Lcom/applovin/impl/sdk/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/aq;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/au;->a:Lcom/applovin/impl/sdk/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/au;->a:Lcom/applovin/impl/sdk/aq;

    iget-object v0, v0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ap;->f(Lcom/applovin/impl/sdk/ap;)Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/au;->a:Lcom/applovin/impl/sdk/aq;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ap;->e(Lcom/applovin/impl/sdk/ap;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    return-void
.end method
