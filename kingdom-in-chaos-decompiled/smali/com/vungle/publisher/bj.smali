.class public abstract Lcom/vungle/publisher/bj;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/bl;


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/bj;-><init>(J)V

    .line 8
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/vungle/publisher/bj;->c:J

    .line 12
    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/vungle/publisher/bj;->c:J

    return-wide v0
.end method
