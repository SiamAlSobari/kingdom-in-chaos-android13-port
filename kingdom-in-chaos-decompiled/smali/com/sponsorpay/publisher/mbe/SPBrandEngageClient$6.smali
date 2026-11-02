.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$6;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->checkForCoins()V
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
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$6;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$6;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$15(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    :try_start_0
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$6;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$9(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$6;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$15(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$6;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v4}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$16(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$6;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v6}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$17(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Ljava/lang/String;

    move-result-object v6

    .line 688
    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v7

    .line 692
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Error in VCS request"

    invoke-static {v0, v1, v7}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 695
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v0, "SPBrandEngageClient"

    const-string v1, "There\'s no VCS listener"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
