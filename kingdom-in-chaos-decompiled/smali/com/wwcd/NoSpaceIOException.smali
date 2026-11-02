.class public Lcom/wwcd/NoSpaceIOException;
.super Lcom/wwcd/SuperIOException;
.source "NoSpaceIOException.java"


# static fields
.field static MSG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "No space left on device"

    sput-object v0, Lcom/wwcd/NoSpaceIOException;->MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/wwcd/SuperIOException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method
