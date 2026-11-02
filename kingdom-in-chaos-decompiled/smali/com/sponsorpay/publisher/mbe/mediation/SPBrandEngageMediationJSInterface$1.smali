.class Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface$1;
.super Landroid/os/Handler;
.source "SPBrandEngageMediationJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface$1;->this$0:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const-string v0, "SPBrandEngageMediationJSInterface"

    const-string v1, "Timeout reached, returning \"false\" as default"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface$1;->this$0:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->onReceiveValue(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1639
        :pswitch_0
    .end packed-switch
.end method
