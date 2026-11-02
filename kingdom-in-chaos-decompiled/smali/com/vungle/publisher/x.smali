.class public final Lcom/vungle/publisher/x;
.super Lcom/vungle/publisher/g;
.source "vungle"


# instance fields
.field public final b:Lcom/vungle/publisher/a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;",
            "Lcom/vungle/publisher/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vungle/publisher/g;-><init>(Lcom/vungle/publisher/db/model/Ad;)V

    .line 11
    iput-object p2, p0, Lcom/vungle/publisher/x;->b:Lcom/vungle/publisher/a;

    .line 12
    return-void
.end method
