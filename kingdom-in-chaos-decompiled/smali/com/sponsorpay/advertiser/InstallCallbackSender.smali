.class public Lcom/sponsorpay/advertiser/InstallCallbackSender;
.super Lcom/sponsorpay/advertiser/AbstractCallbackSender;
.source "InstallCallbackSender.java"


# static fields
.field private static final INSTALLS_URL_KEY:Ljava/lang/String; = "installs"


# direct methods
.method public constructor <init>(Lcom/sponsorpay/credentials/SPCredentials;Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;)V
    .locals 0
    .param p1, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p2, "state"    # Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;-><init>(Lcom/sponsorpay/credentials/SPCredentials;Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getAnswerReceived()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sponsorpay/advertiser/InstallCallbackSender;->mState:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->getCallbackReceivedSuccessfulResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "installs"

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected processRequest(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "callbackWasSuccessful"    # Ljava/lang/Boolean;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sponsorpay/advertiser/InstallCallbackSender;->mState:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->setCallbackReceivedSuccessfulResponse(Ljava/lang/String;Z)V

    .line 56
    return-void
.end method
