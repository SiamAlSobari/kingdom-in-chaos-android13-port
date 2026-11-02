.class public final Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileVersion;
.super Ljava/lang/Object;
.source "TrustDefenderMobileVersion.java"


# static fields
.field public static final numeric:Ljava/lang/Integer;

.field public static final string:Ljava/lang/String; = "2.5-16"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const v0, 0xb202

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileVersion;->numeric:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
