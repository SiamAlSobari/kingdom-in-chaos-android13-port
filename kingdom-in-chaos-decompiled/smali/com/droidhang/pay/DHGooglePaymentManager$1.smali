.class Lcom/droidhang/pay/DHGooglePaymentManager$1;
.super Ljava/lang/Object;
.source "DHGooglePaymentManager.java"

# interfaces
.implements Lcom/droidhang/pay/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/pay/DHGooglePaymentManager;->initPurchase()V
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
    .line 74
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$1;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/droidhang/pay/util/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/droidhang/pay/util/IabResult;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1}, Lcom/droidhang/pay/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager$1;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-static {v0, v1}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$002(Lcom/droidhang/pay/DHGooglePaymentManager;Z)Z

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager$1;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-static {v0}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$100(Lcom/droidhang/pay/DHGooglePaymentManager;)Lcom/droidhang/pay/util/IabHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager$1;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-static {v0, v1}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$002(Lcom/droidhang/pay/DHGooglePaymentManager;Z)Z

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager$1;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-static {v0}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$100(Lcom/droidhang/pay/DHGooglePaymentManager;)Lcom/droidhang/pay/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$1;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-static {v1}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$200(Lcom/droidhang/pay/DHGooglePaymentManager;)Lcom/droidhang/pay/util/IabHelper$QueryInventoryFinishedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhang/pay/util/IabHelper;->queryInventoryAsync(Lcom/droidhang/pay/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
