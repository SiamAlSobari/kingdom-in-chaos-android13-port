.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$2;
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
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$2;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 197
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 202
    :pswitch_0
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Timeout reached, canceling request..."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$2;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$3(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;I)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$2;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 208
    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$2(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
