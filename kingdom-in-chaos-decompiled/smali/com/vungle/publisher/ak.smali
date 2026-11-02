.class public Lcom/vungle/publisher/ak;
.super Lcom/vungle/publisher/g;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/am;


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/db/model/Ad;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vungle/publisher/g;-><init>(Lcom/vungle/publisher/db/model/Ad;)V

    .line 14
    iput-boolean p2, p0, Lcom/vungle/publisher/ak;->b:Z

    .line 15
    return-void
.end method
