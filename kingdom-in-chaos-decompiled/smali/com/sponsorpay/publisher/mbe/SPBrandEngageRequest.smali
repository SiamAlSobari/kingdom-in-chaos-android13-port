.class public Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;
.super Ljava/lang/Object;
.source "SPBrandEngageRequest.java"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SPBrandEngageRequest"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBrandEngageClient:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

.field private mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field private mListener:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;)V
    .locals 0
    .param p1, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "brandEngageClient"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;
    .param p4, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 35
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mActivity:Landroid/app/Activity;

    .line 36
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mBrandEngageClient:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 37
    iput-object p4, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mListener:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    .line 38
    return-void
.end method

.method private getMBEActivity()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mBrandEngageClient:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canStartEngagement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const-string v0, "SPBrandEngageRequest"

    const-string v1, "Undefined error"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public askForOffers()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mBrandEngageClient:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z

    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mBrandEngageClient:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->requestOffers(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)Z

    .line 43
    return-void
.end method

.method public didChangeStatus(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V
    .locals 2
    .param p1, "newStatus"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    .prologue
    .line 65
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ERROR:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    if-ne p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mListener:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    const-string v1, "An error happened while trying to get offers from mBE"

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;->onSPBrandEngageError(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public didReceiveOffers(Z)V
    .locals 2
    .param p1, "areOffersAvaliable"    # Z

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mListener:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->getMBEActivity()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;->onSPBrandEngageOffersAvailable(Landroid/content/Intent;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->mListener:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    invoke-interface {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;->onSPBrandEngageOffersNotAvailable()V

    goto :goto_0
.end method
