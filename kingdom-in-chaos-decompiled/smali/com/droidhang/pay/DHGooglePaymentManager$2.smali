.class Lcom/droidhang/pay/DHGooglePaymentManager$2;
.super Ljava/lang/Object;
.source "DHGooglePaymentManager.java"

# interfaces
.implements Lcom/droidhang/pay/util/IabHelper$OnConsumeFinishedListener;


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
    .line 99
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$2;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/droidhang/pay/util/Purchase;Lcom/droidhang/pay/util/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/droidhang/pay/util/Purchase;
    .param p2, "result"    # Lcom/droidhang/pay/util/IabResult;

    .prologue
    .line 101
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consumption finished. Purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager$2;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-static {v0}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$100(Lcom/droidhang/pay/DHGooglePaymentManager;)Lcom/droidhang/pay/util/IabHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p2}, Lcom/droidhang/pay/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "dh"

    const-string v1, "Consumption successful. Provisioning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_1
    const-string v0, "dh"

    const-string v1, "End consumption flow."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while consuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
