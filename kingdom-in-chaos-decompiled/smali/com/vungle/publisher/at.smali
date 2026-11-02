.class public interface abstract Lcom/vungle/publisher/at;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/av;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/at$b;,
        Lcom/vungle/publisher/at$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/db/model/Ad",
        "<TA;TV;TR;>;V:",
        "Lcom/vungle/publisher/db/model/Video",
        "<TA;TV;TR;>;R:",
        "Lcom/vungle/publisher/protocol/message/RequestAdResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/av",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/vungle/publisher/at$a;)V
.end method

.method public abstract c()Lcom/vungle/publisher/db/model/Ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lcom/vungle/publisher/at$a;
.end method

.method public abstract f()Lcom/vungle/publisher/at$b;
.end method
