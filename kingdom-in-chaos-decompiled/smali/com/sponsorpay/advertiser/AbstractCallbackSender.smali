.class public abstract Lcom/sponsorpay/advertiser/AbstractCallbackSender;
.super Landroid/os/AsyncTask;
.source "AbstractCallbackSender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTALL_SUBID_KEY:Ljava/lang/String; = "subid"

.field protected static final SUCCESSFUL_ANSWER_RECEIVED_KEY:Ljava/lang/String; = "answer_received"

.field protected static final SUCCESSFUL_HTTP_STATUS_CODE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AbstractCallbackSender"


# instance fields
.field private mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field private mCustomParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/credentials/SPCredentials;Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;)V
    .locals 0
    .param p1, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p2, "state"    # Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->mState:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    .line 66
    iput-object p1, p0, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 67
    return-void
.end method

.method private buildUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->getParams()Ljava/util/Map;

    move-result-object v2

    .line 91
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 92
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->mCustomParams:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->mCustomParams:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 99
    :cond_1
    const-string v3, "answer_received"

    .line 100
    invoke-virtual {p0}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->getAnswerReceived()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v3, p0, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->mState:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    invoke-virtual {v3}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->getInstallSubId()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "installSubId":Ljava/lang/String;
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const-string v3, "subid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "callbackUrl":Ljava/lang/String;
    const-string v3, "AbstractCallbackSender"

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Callback will be sent to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v6, "AbstractCallbackSender"

    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, "returnValue":Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->buildUrl()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "callbackUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/sponsorpay/utils/SPHttpConnection;->getConnection(Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sponsorpay/utils/SPHttpConnection;->open()Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sponsorpay/utils/SPHttpConnection;->getResponseCode()I

    move-result v2

    .line 141
    .local v2, "responseStatusCode":I
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 142
    const-string v4, "AbstractCallbackSender"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Server returned status code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-static {v4, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2    # "responseStatusCode":I
    :goto_1
    return-object v3

    .restart local v2    # "responseStatusCode":I
    :cond_0
    move v4, v5

    .line 141
    goto :goto_0

    .line 144
    .end local v2    # "responseStatusCode":I
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 146
    const-string v4, "AbstractCallbackSender"

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An exception occurred when trying to send advertiser callback: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAnswerReceived()Ljava/lang/String;
.end method

.method protected abstract getBaseUrl()Ljava/lang/String;
.end method

.method protected abstract getParams()Ljava/util/Map;
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
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "callbackWasSuccessful"    # Ljava/lang/Boolean;

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->processRequest(Ljava/lang/Boolean;)V

    .line 164
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected abstract processRequest(Ljava/lang/Boolean;)V
.end method

.method public setCustomParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->mCustomParams:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public trigger()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/advertiser/AbstractCallbackSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method
