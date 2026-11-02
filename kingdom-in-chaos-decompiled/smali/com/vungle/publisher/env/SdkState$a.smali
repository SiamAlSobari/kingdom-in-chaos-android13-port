.class public final Lcom/vungle/publisher/env/SdkState$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/env/SdkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/cp",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Lcom/vungle/publisher/cp;

    const-class v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/cp;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState$a;->a:Lcom/vungle/publisher/cp;

    .line 373
    return-void
.end method
