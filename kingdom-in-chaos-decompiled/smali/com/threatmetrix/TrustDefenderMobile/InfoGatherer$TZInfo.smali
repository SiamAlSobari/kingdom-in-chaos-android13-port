.class final Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;
.super Ljava/lang/Object;
.source "InfoGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TZInfo"
.end annotation


# instance fields
.field dstDiff:I

.field gmtOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;->gmtOffset:I

    .line 130
    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;->dstDiff:I

    return-void
.end method
