.class public Lcom/sponsorpay/utils/SignedServerResponse;
.super Ljava/lang/Object;
.source "SignedServerResponse.java"


# instance fields
.field private mResponseBody:Ljava/lang/String;

.field private mResponseSignature:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mStatusCode"    # I
    .param p2, "mResponseBody"    # Ljava/lang/String;
    .param p3, "mResponseSignature"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/sponsorpay/utils/SignedServerResponse;->mStatusCode:I

    .line 20
    iput-object p2, p0, Lcom/sponsorpay/utils/SignedServerResponse;->mResponseBody:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/sponsorpay/utils/SignedServerResponse;->mResponseSignature:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sponsorpay/utils/SignedServerResponse;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sponsorpay/utils/SignedServerResponse;->mResponseSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sponsorpay/utils/SignedServerResponse;->mStatusCode:I

    return v0
.end method
