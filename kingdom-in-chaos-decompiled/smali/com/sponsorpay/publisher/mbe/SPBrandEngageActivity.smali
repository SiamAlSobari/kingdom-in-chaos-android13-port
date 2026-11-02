.class public Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;
.super Landroid/app/Activity;
.source "SPBrandEngageActivity.java"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$sponsorpay$publisher$mbe$SPBrandEngageClientStatusListener$SPBrandEngageClientStatus:[I = null

.field private static final ENGAGMENT_ALREADY_CLOSE_KEY_BUNDLE:Ljava/lang/String; = "ENGAGMENT_ALREADY_CLOSE"

.field private static final PENDING_CLOSE_KEY_BUNDLE:Ljava/lang/String; = "PENDING_CLOSE"

.field private static final PLAY_THROUGH_MEDIATION_KEY_BUNDLE:Ljava/lang/String; = "PLAY_THROUGH_MEDIATION"


# instance fields
.field private mEngagementAlreadyClosed:Z

.field private mPendingClose:Z

.field private mPlayThroughMediation:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$sponsorpay$publisher$mbe$SPBrandEngageClientStatusListener$SPBrandEngageClientStatus()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->$SWITCH_TABLE$com$sponsorpay$publisher$mbe$SPBrandEngageClientStatusListener$SPBrandEngageClientStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->values()[Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->CLOSE_ABORTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->CLOSE_FINISHED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ERROR:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->PENDING_CLOSE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->STARTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->$SWITCH_TABLE$com$sponsorpay$publisher$mbe$SPBrandEngageClientStatusListener$SPBrandEngageClientStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPendingClose:Z

    .line 37
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mEngagementAlreadyClosed:Z

    .line 39
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPlayThroughMediation:Z

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPlayThroughMediation:Z

    return-void
.end method

.method static synthetic access$1(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->startEngagement()V

    return-void
.end method

.method private startEngagement()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPlayThroughMediation:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setRequestedOrientation(I)V

    .line 71
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z

    .line 72
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPlayThroughMediation:Z

    invoke-virtual {v0, p0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->startEngagement(Landroid/app/Activity;Z)Z

    .line 73
    return-void
.end method


# virtual methods
.method protected closeActivity()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mEngagementAlreadyClosed:Z

    .line 103
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->finish()V

    .line 104
    return-void
.end method

.method public didChangeStatus(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V
    .locals 2
    .param p1, "newStatus"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    .prologue
    .line 121
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->$SWITCH_TABLE$com$sponsorpay$publisher$mbe$SPBrandEngageClientStatusListener$SPBrandEngageClientStatus()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const-string v0, "CLOSE_FINISHED"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "CLOSE_ABORTED"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_2
    const-string v0, "ERROR"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPendingClose:Z

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public didReceiveOffers(Z)V
    .locals 0
    .param p1, "areOffersAvaliable"    # Z

    .prologue
    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 47
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    const-string v0, "PENDING_CLOSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPendingClose:Z

    .line 51
    const-string v0, "ENGAGMENT_ALREADY_CLOSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mEngagementAlreadyClosed:Z

    .line 52
    const-string v0, "PLAY_THROUGH_MEDIATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPlayThroughMediation:Z

    .line 53
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->startEngagement()V

    .line 63
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    new-instance v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;)V

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->playThroughMediation(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPendingClose:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPlayThroughMediation:Z

    if-nez v0, :cond_0

    .line 87
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mEngagementAlreadyClosed:Z

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->onPause()V

    .line 89
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->closeEngagement()V

    .line 91
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPendingClose:Z

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->closeEngagement()V

    .line 81
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "PENDING_CLOSE"

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPendingClose:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v0, "ENGAGMENT_ALREADY_CLOSE"

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mEngagementAlreadyClosed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v0, "PLAY_THROUGH_MEDIATION"

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->mPlayThroughMediation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method protected setResultAndClose(Ljava/lang/String;)V
    .locals 2
    .param p1, "intentExtra"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ENGAGEMENT_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setResult(ILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->closeActivity()V

    .line 144
    return-void
.end method
