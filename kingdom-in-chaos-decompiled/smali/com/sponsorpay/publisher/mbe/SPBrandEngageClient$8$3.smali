.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8$3;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8$3;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8$3;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;->access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$8;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$14(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Z)V

    .line 842
    return-void
.end method
