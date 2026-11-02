.class Lcom/droidhang/pay/DHGooglePaymentManager$3;
.super Ljava/lang/Object;
.source "DHGooglePaymentManager.java"

# interfaces
.implements Lcom/droidhang/util/net/DHSimpleHttpObserver;


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
    .line 176
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$3;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncHttpComplete(Ljava/lang/String;ZLjava/lang/String;Lcom/droidhang/pay/util/Purchase;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "succeed"    # Z
    .param p3, "result"    # Ljava/lang/String;
    .param p4, "purchase"    # Lcom/droidhang/pay/util/Purchase;

    .prologue
    .line 179
    const-string v1, "http://payment.droidhang.com:8101/google_play/check"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "check"

    .line 180
    .local v0, "type":Ljava/lang/String;
    :goto_0
    const-string v1, "dh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", succeed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-nez p2, :cond_2

    .line 191
    :cond_0
    :goto_1
    return-void

    .line 179
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    const-string v0, "finish"

    goto :goto_0

    .line 184
    .restart local v0    # "type":Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_0

    .line 188
    const-string v1, "http://payment.droidhang.com:8101/google_play/check"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$3;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-virtual {v1, p3, p4}, Lcom/droidhang/pay/DHGooglePaymentManager;->checkSucceed(Ljava/lang/String;Lcom/droidhang/pay/util/Purchase;)V

    goto :goto_1
.end method
