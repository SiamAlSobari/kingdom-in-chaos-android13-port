.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$4;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->prepareEngagement()V
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
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$4;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 335
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$4;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$8(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$4;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$4(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 337
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$4;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$9(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$4;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$10(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$4;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$11(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    return-void
.end method
