.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1$1;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1$1;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1$1;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;->access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$1;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_OFFLINE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$2(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    .line 188
    return-void
.end method
