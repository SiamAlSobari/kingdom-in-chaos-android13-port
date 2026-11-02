.class Lcom/droidhang/pay/DHGooglePaymentManager$6;
.super Ljava/lang/Object;
.source "DHGooglePaymentManager.java"

# interfaces
.implements Lcom/droidhang/pay/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhang/pay/DHGooglePaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/pay/DHGooglePaymentManager;


# direct methods
.method constructor <init>(Lcom/droidhang/pay/DHGooglePaymentManager;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$6;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/droidhang/pay/util/IabResult;Lcom/droidhang/pay/util/Purchase;)V
    .locals 1
    .param p1, "result"    # Lcom/droidhang/pay/util/IabResult;
    .param p2, "purchase"    # Lcom/droidhang/pay/util/Purchase;

    .prologue
    .line 249
    invoke-virtual {p1}, Lcom/droidhang/pay/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager$6;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-virtual {v0, p2}, Lcom/droidhang/pay/DHGooglePaymentManager;->checkPayment(Lcom/droidhang/pay/util/Purchase;)V

    goto :goto_0
.end method
