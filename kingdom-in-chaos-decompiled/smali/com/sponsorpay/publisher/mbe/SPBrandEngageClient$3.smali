.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$3;
.super Landroid/os/Handler;
.source "SPBrandEngageClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$3;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 213
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 216
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 232
    const-string v1, "SPBrandEngageClient"

    const-string v2, "Unknow message what field"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 218
    :sswitch_0
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$3;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$4(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$3;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$4(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/sponsorpay/utils/SPHttpConnection;->createUserSegmentationMapForHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$3;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1, v3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$5(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/webkit/WebView;)V

    .line 224
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$3;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1, v3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$6(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/app/Activity;)V

    goto :goto_0

    .line 229
    .end local v0    # "url":Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$3;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$7(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    goto :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x20a -> :sswitch_1
    .end sparse-switch
.end method
