.class public Lcom/sponsorpay/advertiser/ActionCallbackSender;
.super Lcom/sponsorpay/advertiser/AbstractCallbackSender;
.source "ActionCallbackSender.java"


# static fields
.field private static final ACTIONS_URL_KEY:Ljava/lang/String; = "actions"

.field private static final ACTION_ID_KEY:Ljava/lang/String; = "action_id"


# instance fields
.field protected mActionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;)V
    .locals 0
    .param p1, "actionId"    # Ljava/lang/String;
    .param p2, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p3, "state"    # Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    .prologue
    .line 46
    invoke-direct {p0, p2, p3}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;-><init>(Lcom/sponsorpay/credentials/SPCredentials;Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;)V

    .line 47
    iput-object p1, p0, Lcom/sponsorpay/advertiser/ActionCallbackSender;->mActionId:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected getAnswerReceived()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sponsorpay/advertiser/ActionCallbackSender;->mState:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    iget-object v1, p0, Lcom/sponsorpay/advertiser/ActionCallbackSender;->mActionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->getCallbackReceivedSuccessfulResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "actions"

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
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
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "action_id"

    iget-object v2, p0, Lcom/sponsorpay/advertiser/ActionCallbackSender;->mActionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object v0
.end method

.method protected processRequest(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "callbackWasSuccessful"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sponsorpay/advertiser/ActionCallbackSender;->mState:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    iget-object v1, p0, Lcom/sponsorpay/advertiser/ActionCallbackSender;->mActionId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->setCallbackReceivedSuccessfulResponse(Ljava/lang/String;Z)V

    .line 70
    return-void
.end method
