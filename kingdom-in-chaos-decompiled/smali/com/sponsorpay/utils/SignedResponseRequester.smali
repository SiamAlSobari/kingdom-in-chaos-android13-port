.class public abstract Lcom/sponsorpay/utils/SignedResponseRequester;
.super Landroid/os/AsyncTask;
.source "SignedResponseRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sponsorpay/utils/UrlBuilder;",
        "Ljava/lang/Void;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static ACCEPT_LANGUAGE_HEADER_NAME:Ljava/lang/String; = null

.field private static final SIGNATURE_HEADER:Ljava/lang/String; = "X-Sponsorpay-Response-Signature"

.field public static TAG:Ljava/lang/String;

.field private static USER_AGENT_HEADER_NAME:Ljava/lang/String;

.field private static USER_AGENT_HEADER_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "SignedResponseRequester"

    sput-object v0, Lcom/sponsorpay/utils/SignedResponseRequester;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "User-Agent"

    sput-object v0, Lcom/sponsorpay/utils/SignedResponseRequester;->USER_AGENT_HEADER_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "Accept-Language"

    sput-object v0, Lcom/sponsorpay/utils/SignedResponseRequester;->ACCEPT_LANGUAGE_HEADER_NAME:Ljava/lang/String;

    .line 41
    const-string v0, "Android"

    sput-object v0, Lcom/sponsorpay/utils/SignedResponseRequester;->USER_AGENT_HEADER_VALUE:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    .local p0, "this":Lcom/sponsorpay/utils/SignedResponseRequester;, "Lcom/sponsorpay/utils/SignedResponseRequester<TV;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sponsorpay/utils/UrlBuilder;)Ljava/lang/Object;
    .locals 14
    .param p1, "params"    # [Lcom/sponsorpay/utils/UrlBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sponsorpay/utils/UrlBuilder;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sponsorpay/utils/SignedResponseRequester;, "Lcom/sponsorpay/utils/SignedResponseRequester<TV;>;"
    const/4 v11, 0x0

    .line 52
    const/4 v5, 0x0

    .line 54
    .local v5, "signedServerResponse":Lcom/sponsorpay/utils/SignedServerResponse;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sponsorpay/utils/SignedResponseRequester;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 56
    aget-object v9, p1, v11

    invoke-virtual {v9}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "requestUrl":Ljava/lang/String;
    sget-object v9, Lcom/sponsorpay/utils/SignedResponseRequester;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Request will be sent to URL + params: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 58
    invoke-static {v9, v10}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-static {v1}, Lcom/sponsorpay/utils/SPHttpConnection;->getConnection(Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v9

    .line 63
    sget-object v10, Lcom/sponsorpay/utils/SignedResponseRequester;->USER_AGENT_HEADER_NAME:Ljava/lang/String;

    sget-object v11, Lcom/sponsorpay/utils/SignedResponseRequester;->USER_AGENT_HEADER_VALUE:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/sponsorpay/utils/SPHttpConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v9

    .line 64
    sget-object v10, Lcom/sponsorpay/utils/SignedResponseRequester;->ACCEPT_LANGUAGE_HEADER_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sponsorpay/utils/SignedResponseRequester;->makeAcceptLanguageHeaderValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sponsorpay/utils/SPHttpConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v9

    .line 65
    invoke-virtual {v9}, Lcom/sponsorpay/utils/SPHttpConnection;->open()Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v0

    .line 66
    .local v0, "connection":Lcom/sponsorpay/utils/SPHttpConnection;
    invoke-virtual {v0}, Lcom/sponsorpay/utils/SPHttpConnection;->getResponseCode()I

    move-result v7

    .line 67
    .local v7, "statusCode":I
    invoke-virtual {v0}, Lcom/sponsorpay/utils/SPHttpConnection;->getBodyContent()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "responseBody":Ljava/lang/String;
    const-string v9, "X-Sponsorpay-Response-Signature"

    invoke-virtual {v0, v9}, Lcom/sponsorpay/utils/SPHttpConnection;->getHeader(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 69
    .local v4, "responseSignatureHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 70
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v3, v9

    .line 73
    .local v3, "responseSignature":Ljava/lang/String;
    :goto_0
    sget-object v9, Lcom/sponsorpay/utils/SignedResponseRequester;->TAG:Ljava/lang/String;

    .line 74
    const-string v10, "Server Response, status code: %d, response body: %s, signature: %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    .line 73
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v6, Lcom/sponsorpay/utils/SignedServerResponse;

    invoke-direct {v6, v7, v2, v3}, Lcom/sponsorpay/utils/SignedServerResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v5    # "signedServerResponse":Lcom/sponsorpay/utils/SignedServerResponse;
    .local v6, "signedServerResponse":Lcom/sponsorpay/utils/SignedServerResponse;
    invoke-virtual {p0, v6}, Lcom/sponsorpay/utils/SignedResponseRequester;->parsedSignedResponse(Lcom/sponsorpay/utils/SignedServerResponse;)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v6

    .end local v0    # "connection":Lcom/sponsorpay/utils/SPHttpConnection;
    .end local v2    # "responseBody":Ljava/lang/String;
    .end local v3    # "responseSignature":Ljava/lang/String;
    .end local v4    # "responseSignatureHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "signedServerResponse":Lcom/sponsorpay/utils/SignedServerResponse;
    .end local v7    # "statusCode":I
    .restart local v5    # "signedServerResponse":Lcom/sponsorpay/utils/SignedServerResponse;
    :goto_1
    return-object v9

    .line 71
    .restart local v0    # "connection":Lcom/sponsorpay/utils/SPHttpConnection;
    .restart local v2    # "responseBody":Ljava/lang/String;
    .restart local v4    # "responseSignatureHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "statusCode":I
    :cond_0
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "connection":Lcom/sponsorpay/utils/SPHttpConnection;
    .end local v2    # "responseBody":Ljava/lang/String;
    .end local v4    # "responseSignatureHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "statusCode":I
    :catch_0
    move-exception v8

    .line 81
    .local v8, "t":Ljava/lang/Throwable;
    sget-object v9, Lcom/sponsorpay/utils/SignedResponseRequester;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception triggered when executing request: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v8}, Lcom/sponsorpay/utils/SignedResponseRequester;->noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/sponsorpay/utils/UrlBuilder;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/utils/SignedResponseRequester;->doInBackground([Lcom/sponsorpay/utils/UrlBuilder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected hasErrorStatusCode(I)Z
    .locals 1
    .param p1, "responseStatusCode"    # I

    .prologue
    .line 115
    .local p0, "this":Lcom/sponsorpay/utils/SignedResponseRequester;, "Lcom/sponsorpay/utils/SignedResponseRequester<TV;>;"
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12b

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected makeAcceptLanguageHeaderValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 123
    .local p0, "this":Lcom/sponsorpay/utils/SignedResponseRequester;, "Lcom/sponsorpay/utils/SignedResponseRequester<TV;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "preferredLanguage":Ljava/lang/String;
    move-object v0, v2

    .line 126
    .local v0, "acceptLanguageLocaleValue":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "englishLanguageCode":Ljava/lang/String;
    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    move-object v0, v1

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 130
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", %s;q=0.8"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TV;"
        }
    .end annotation
.end method

.method protected abstract parsedSignedResponse(Lcom/sponsorpay/utils/SignedServerResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/utils/SignedServerResponse;",
            ")TV;"
        }
    .end annotation
.end method

.method protected verifySignature(Lcom/sponsorpay/utils/SignedServerResponse;Ljava/lang/String;)Z
    .locals 2
    .param p1, "signedServerResponse"    # Lcom/sponsorpay/utils/SignedServerResponse;
    .param p2, "mSecurityToken"    # Ljava/lang/String;

    .prologue
    .line 104
    .local p0, "this":Lcom/sponsorpay/utils/SignedResponseRequester;, "Lcom/sponsorpay/utils/SignedResponseRequester<TV;>;"
    invoke-virtual {p1}, Lcom/sponsorpay/utils/SignedServerResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sponsorpay/utils/SignatureTools;->generateSignatureForString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "generatedSignature":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sponsorpay/utils/SignedServerResponse;->getResponseSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
