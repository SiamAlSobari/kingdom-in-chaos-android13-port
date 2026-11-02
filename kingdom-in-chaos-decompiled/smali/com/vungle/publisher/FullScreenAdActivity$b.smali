.class final Lcom/vungle/publisher/FullScreenAdActivity$b;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/display/view/VideoFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/FullScreenAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/FullScreenAdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/vungle/publisher/FullScreenAdActivity$b;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 351
    const-string v0, "VungleAd"

    const-string v1, "video.onCancel()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$b;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v0}, Lcom/vungle/publisher/FullScreenAdActivity;->a()V

    .line 353
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 357
    const-string v0, "VungleAd"

    const-string v1, "video.onCta()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$b;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    iget-object v0, v0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v1, Lcom/vungle/publisher/db/model/AdReportEvent$a;->e:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$b;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->l:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)V

    .line 360
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 364
    const-string v0, "VungleAd"

    const-string v1, "video.onNext()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$b;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v0}, Lcom/vungle/publisher/FullScreenAdActivity;->a()V

    .line 366
    return-void
.end method
