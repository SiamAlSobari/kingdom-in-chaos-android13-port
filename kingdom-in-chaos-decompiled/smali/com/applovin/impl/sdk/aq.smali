.class Lcom/applovin/impl/sdk/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ap;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ap;->a(Lcom/applovin/impl/sdk/ap;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ap;->b(Lcom/applovin/impl/sdk/ap;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/br;->X:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ap;->b(Lcom/applovin/impl/sdk/ap;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/br;->Y:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ap;->b(Lcom/applovin/impl/sdk/ap;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/br;->Z:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/ar;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/ar;-><init>(Lcom/applovin/impl/sdk/aq;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ap;->b(Lcom/applovin/impl/sdk/ap;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/br;->aa:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/au;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/au;-><init>(Lcom/applovin/impl/sdk/aq;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
