.class public Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;
.super Ljava/lang/Object;
.source "SPCurrencyServerErrorResponse.java"

# interfaces
.implements Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;


# instance fields
.field private final mErrorCode:Ljava/lang/String;

.field private final mErrorMessage:Ljava/lang/String;

.field private final mErrorType:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->mErrorType:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 21
    iput-object p2, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->mErrorCode:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->mErrorMessage:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->mErrorMessage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getErrorType()Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->mErrorType:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    return-object v0
.end method
