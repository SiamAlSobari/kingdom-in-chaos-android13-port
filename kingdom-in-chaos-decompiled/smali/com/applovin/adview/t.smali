.class final Lcom/applovin/adview/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinSdk;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/t;->a:Lcom/applovin/sdk/AppLovinSdk;

    iput-object p2, p0, Lcom/applovin/adview/t;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;

    invoke-direct {v0}, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;-><init>()V

    iget-object v1, p0, Lcom/applovin/adview/t;->a:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/applovin/adview/t;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/applovin/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->show()V

    return-void
.end method
