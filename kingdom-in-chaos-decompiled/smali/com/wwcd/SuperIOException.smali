.class public Lcom/wwcd/SuperIOException;
.super Lcom/wwcd/SuperException;
.source "SuperIOException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/wwcd/SuperException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wwcd/SuperException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method

.method public static newIOException(Ljava/lang/Throwable;)Lcom/wwcd/SuperIOException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 14
    sget-object v0, Lcom/wwcd/NoSpaceIOException;->MSG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/wwcd/NoSpaceIOException;

    invoke-direct {v0, p0}, Lcom/wwcd/NoSpaceIOException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/wwcd/SuperIOException;

    invoke-direct {v0, p0}, Lcom/wwcd/SuperIOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
