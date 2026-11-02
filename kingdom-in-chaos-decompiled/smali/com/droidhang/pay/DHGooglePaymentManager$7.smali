.class Lcom/droidhang/pay/DHGooglePaymentManager$7;
.super Ljava/lang/Object;
.source "DHGooglePaymentManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/pay/DHGooglePaymentManager;->alertBillingNotSupport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

.field final synthetic val$helpUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/droidhang/pay/DHGooglePaymentManager;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$7;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    iput-object p2, p0, Lcom/droidhang/pay/DHGooglePaymentManager$7;->val$helpUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/droidhang/pay/DHGooglePaymentManager$7;->val$helpUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$7;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-static {v1}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$400(Lcom/droidhang/pay/DHGooglePaymentManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method
