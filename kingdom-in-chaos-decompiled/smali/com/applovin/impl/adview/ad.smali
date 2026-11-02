.class Lcom/applovin/impl/adview/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/u;

.field final synthetic b:Lcom/applovin/impl/adview/x;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/x;Lcom/applovin/impl/adview/u;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ad;->b:Lcom/applovin/impl/adview/x;

    iput-object p2, p0, Lcom/applovin/impl/adview/ad;->a:Lcom/applovin/impl/adview/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ad;->a:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->performClick()Z

    return-void
.end method
