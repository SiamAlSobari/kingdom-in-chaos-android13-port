.class public Lcom/wwcd/ResourceNotExistException;
.super Lcom/wwcd/SuperException;
.source "ResourceNotExistException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/wwcd/SuperException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
