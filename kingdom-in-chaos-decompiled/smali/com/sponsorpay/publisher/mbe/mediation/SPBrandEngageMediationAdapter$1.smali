.class Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter$1;
.super Landroid/os/Handler;
.source "SPBrandEngageMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter$1;->this$0:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter$1;->this$0:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationTimeout:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter$1;->this$0:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventTimeout:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
