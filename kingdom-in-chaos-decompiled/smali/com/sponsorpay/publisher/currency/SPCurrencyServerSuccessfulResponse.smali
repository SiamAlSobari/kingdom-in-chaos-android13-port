.class public Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;
.super Ljava/lang/Object;
.source "SPCurrencyServerSuccessfulResponse.java"

# interfaces
.implements Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;


# instance fields
.field private mCurrencyId:Ljava/lang/String;

.field private mCurrencyName:Ljava/lang/String;

.field private mDeltaOfCoins:D

.field private mIsDefault:Z

.field private mLatestTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "deltaOfCoins"    # D
    .param p3, "latestTransactionId"    # Ljava/lang/String;
    .param p4, "currencyId"    # Ljava/lang/String;
    .param p5, "currencyName"    # Ljava/lang/String;
    .param p6, "isDefault"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mDeltaOfCoins:D

    .line 21
    iput-object p3, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mLatestTransactionId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mCurrencyId:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mCurrencyName:Ljava/lang/String;

    .line 24
    iput-boolean p6, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mIsDefault:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getCurrencyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mCurrencyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaOfCoins()D
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mDeltaOfCoins:D

    return-wide v0
.end method

.method public getLatestTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mLatestTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->mIsDefault:Z

    return v0
.end method
