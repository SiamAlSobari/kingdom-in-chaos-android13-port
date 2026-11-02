.class Lcom/droidhang/pay/DHGooglePaymentManager$5;
.super Ljava/lang/Object;
.source "DHGooglePaymentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/pay/DHGooglePaymentManager;->purchase(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/droidhang/pay/DHGooglePaymentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$5;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    iput-object p2, p0, Lcom/droidhang/pay/DHGooglePaymentManager$5;->val$itemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/droidhang/pay/DHGooglePaymentManager$5;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager$5;->this$0:Lcom/droidhang/pay/DHGooglePaymentManager;

    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentManager$5;->val$itemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/droidhang/pay/DHGooglePaymentManager$5;->val$developerPayload:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/droidhang/pay/DHGooglePaymentManager;->access$300(Lcom/droidhang/pay/DHGooglePaymentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
