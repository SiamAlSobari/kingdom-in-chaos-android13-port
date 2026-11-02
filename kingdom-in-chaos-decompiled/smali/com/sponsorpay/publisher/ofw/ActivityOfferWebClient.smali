.class public Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;
.super Lcom/sponsorpay/utils/SPWebClient;
.source "ActivityOfferWebClient.java"


# instance fields
.field private mShouldHostActivityStayOpen:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "hostActivity"    # Landroid/app/Activity;
    .param p2, "shouldStayOpen"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/SPWebClient;-><init>(Landroid/app/Activity;)V

    .line 29
    iput-boolean p2, p0, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;->mShouldHostActivityStayOpen:Z

    .line 30
    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "OfferWall WebView triggered an error. Error code: %d, error description: %s. Failing URL: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    .line 73
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sparse-switch p2, :sswitch_data_0

    .line 86
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 89
    .local v0, "error":Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    :goto_0
    invoke-static {v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;->showDialog(Ljava/lang/String;)V

    .line 90
    return-void

    .line 83
    .end local v0    # "error":Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    :sswitch_0
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 84
    .restart local v0    # "error":Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSponsorPayExitScheme(ILjava/lang/String;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    .line 36
    .local v0, "hostActivity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "willCloseHostActivity":Z
    if-nez p2, :cond_3

    .line 44
    const/4 v1, 0x1

    .line 52
    :cond_2
    const-string v2, "SPWebClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Should stay open: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;->mShouldHostActivityStayOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    const-string v4, ", will close activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 46
    :cond_3
    iget-boolean v2, p0, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;->mShouldHostActivityStayOpen:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    .line 47
    :goto_1
    invoke-virtual {p0, p2}, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;->launchActivityWithUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 46
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected onTargetActivityStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

.method protected processSponsorPayScheme(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    return-void
.end method
