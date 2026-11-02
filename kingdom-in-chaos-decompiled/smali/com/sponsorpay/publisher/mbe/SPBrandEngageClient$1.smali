.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;
.super Landroid/content/BroadcastReceiver;
.source "SPBrandEngageClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 175
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 178
    .line 179
    const-string v1, "noConnectivity"

    .line 178
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 179
    if-eqz v1, :cond_1

    .line 180
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    move-result-object v1

    sget-object v2, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    if-ne v1, v2, :cond_0

    .line 182
    const-string v1, "SPBrandEngageClient"

    const-string v2, "Connection has been lost"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$1(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1$1;

    invoke-direct {v2, p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1$1;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    return-void

    .line 178
    .end local v0    # "isConnected":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
