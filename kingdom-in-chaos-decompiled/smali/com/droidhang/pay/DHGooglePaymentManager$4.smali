.class Lcom/droidhang/pay/DHGooglePaymentManager$4;
.super Ljava/lang/Object;
.source "DHGooglePaymentManager.java"

# interfaces
.implements Lcom/droidhang/pay/util/IabHelper$QueryInventoryFinishedListener;


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
    .line 210
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$4;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/droidhang/pay/util/IabResult;Lcom/droidhang/pay/util/Inventory;)V
    .locals 3
    .param p1, "result"    # Lcom/droidhang/pay/util/IabResult;
    .param p2, "inventory"    # Lcom/droidhang/pay/util/Inventory;

    .prologue
    .line 214
    iget-object v2, p0, Lcom/droidhang/pay/DHGooglePaymentManager$4;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-static {v2}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$100(Lcom/droidhang/pay/DHGooglePaymentManager;)Lcom/droidhang/pay/util/IabHelper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 228
    :cond_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p1}, Lcom/droidhang/pay/util/IabResult;->isFailure()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    invoke-virtual {p2}, Lcom/droidhang/pay/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhang/pay/util/Purchase;

    .line 221
    .local v1, "purchase":Lcom/droidhang/pay/util/Purchase;
    iget-object v2, p0, Lcom/droidhang/pay/DHGooglePaymentManager$4;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-virtual {v2, v1}, Lcom/droidhang/pay/DHGooglePaymentManager;->checkPayment(Lcom/droidhang/pay/util/Purchase;)V

    goto :goto_0
.end method
