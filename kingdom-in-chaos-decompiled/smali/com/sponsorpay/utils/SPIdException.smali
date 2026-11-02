.class public Lcom/sponsorpay/utils/SPIdException;
.super Ljava/lang/Exception;
.source "SPIdException.java"


# static fields
.field private static final serialVersionUID:J = 0x3be2b0dfe56c2d76L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
