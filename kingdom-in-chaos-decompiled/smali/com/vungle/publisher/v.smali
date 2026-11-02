.class public abstract Lcom/vungle/publisher/v;
.super Lcom/vungle/publisher/bj;
.source "vungle"


# instance fields
.field public final a:Lcom/vungle/publisher/ci;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vungle/publisher/bj;-><init>()V

    .line 10
    new-instance v0, Lcom/vungle/publisher/ci;

    invoke-direct {v0}, Lcom/vungle/publisher/ci;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/v;->a:Lcom/vungle/publisher/ci;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/vungle/publisher/ci;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/bj;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/v;->a:Lcom/vungle/publisher/ci;

    .line 15
    return-void
.end method
