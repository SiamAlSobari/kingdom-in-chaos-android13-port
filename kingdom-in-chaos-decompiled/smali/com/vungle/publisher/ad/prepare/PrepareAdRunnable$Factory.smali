.class public Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$Factory;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vungle/publisher/at$b;Ljava/lang/Integer;)Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;

    .line 294
    invoke-static {v0, p1}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    invoke-static {v0, p2}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/at$b;

    .line 296
    invoke-static {v0, p3}, Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;->a(Lcom/vungle/publisher/ad/prepare/PrepareAdRunnable;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 297
    return-object v0
.end method
