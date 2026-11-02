.class Lcom/sponsorpay/mediation/SPMediationCoordinator$1;
.super Ljava/util/HashMap;
.source "SPMediationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/mediation/SPMediationCoordinator;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/sponsorpay/mediation/SPMediationAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30be10da6905b68aL


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/mediation/SPMediationCoordinator;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/SPMediationCoordinator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator$1;->this$0:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    .line 37
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Lcom/sponsorpay/mediation/SPMediationAdapter;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/SPMediationCoordinator$1;->get(Ljava/lang/Object;)Lcom/sponsorpay/mediation/SPMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdapter;)Lcom/sponsorpay/mediation/SPMediationAdapter;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/sponsorpay/mediation/SPMediationAdapter;

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sponsorpay/mediation/SPMediationCoordinator$1;->put(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdapter;)Lcom/sponsorpay/mediation/SPMediationAdapter;

    move-result-object v0

    return-object v0
.end method
