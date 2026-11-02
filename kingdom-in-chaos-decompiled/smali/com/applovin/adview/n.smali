.class Lcom/applovin/adview/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/applovin/adview/m;


# direct methods
.method constructor <init>(Lcom/applovin/adview/m;Z)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/n;->b:Lcom/applovin/adview/m;

    iput-boolean p2, p0, Lcom/applovin/adview/n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/adview/n;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/n;->b:Lcom/applovin/adview/m;

    iget-object v0, v0, Lcom/applovin/adview/m;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/s;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/n;->b:Lcom/applovin/adview/m;

    iget-object v0, v0, Lcom/applovin/adview/m;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/s;->setVisibility(I)V

    return-void
.end method
