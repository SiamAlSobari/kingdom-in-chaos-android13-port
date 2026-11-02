.class Lcom/applovin/impl/adview/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/af;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/af;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ak;->a:Lcom/applovin/impl/adview/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ak;->a:Lcom/applovin/impl/adview/af;

    invoke-static {v0}, Lcom/applovin/impl/adview/af;->d(Lcom/applovin/impl/adview/af;)Lcom/applovin/impl/adview/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/impl/adview/w;->dismiss()V

    return-void
.end method
