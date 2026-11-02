.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8$1;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;->showJSDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8$1;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8$1;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;->access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    move-result-object v0

    const-string v1, "CLOSE_ABORTED"

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$18(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8$1;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;->access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$14(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Z)V

    .line 832
    return-void
.end method
