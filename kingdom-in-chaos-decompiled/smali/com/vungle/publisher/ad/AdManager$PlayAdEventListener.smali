.class Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;
.super Lcom/vungle/publisher/bk;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ad/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayAdEventListener"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/vungle/publisher/bk;-><init>()V

    .line 336
    const-string v0, "VunglePrepare"

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/af;)V
    .locals 2

    .prologue
    .line 358
    const-string v0, "VunglePrepare"

    const-string v1, "play ad failure - unregistering play ad listener"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;->d()V

    .line 360
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/m;)V
    .locals 2

    .prologue
    .line 352
    const-string v0, "VunglePrepare"

    const-string v1, "sent ad report - unregistering play ad listener"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;->b:Lcom/vungle/publisher/ad/AdManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ad/AdManager;->a(Z)Lcom/vungle/publisher/db/model/LocalAd;

    .line 354
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;->d()V

    .line 355
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/x;)V
    .locals 2
    .param p1, "startPlayAdEvent"    # Lcom/vungle/publisher/x;

    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/x;->a()Lcom/vungle/publisher/db/model/Ad;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/vungle/publisher/db/model/Ad$a;->f:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/Ad;->b(Lcom/vungle/publisher/db/model/Ad$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    const-string v0, "VunglePrepare"

    const-string v1, "error processing start play ad event"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
