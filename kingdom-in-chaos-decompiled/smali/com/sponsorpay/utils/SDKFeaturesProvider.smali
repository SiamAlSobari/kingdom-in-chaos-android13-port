.class public Lcom/sponsorpay/utils/SDKFeaturesProvider;
.super Ljava/lang/Object;
.source "SDKFeaturesProvider.java"

# interfaces
.implements Lcom/sponsorpay/utils/SPParametersProvider;


# static fields
.field private static final FEATURES:[Ljava/lang/String;

.field private static final FEATURES_KEY:Ljava/lang/String; = "sdk_features"


# instance fields
.field private mParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MPI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/utils/SDKFeaturesProvider;->FEATURES:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/utils/SDKFeaturesProvider;->mParameters:Ljava/util/HashMap;

    .line 23
    iget-object v0, p0, Lcom/sponsorpay/utils/SDKFeaturesProvider;->mParameters:Ljava/util/HashMap;

    const-string v1, "sdk_features"

    const-string v2, ","

    sget-object v3, Lcom/sponsorpay/utils/SDKFeaturesProvider;->FEATURES:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
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
    .line 28
    iget-object v0, p0, Lcom/sponsorpay/utils/SDKFeaturesProvider;->mParameters:Ljava/util/HashMap;

    return-object v0
.end method
