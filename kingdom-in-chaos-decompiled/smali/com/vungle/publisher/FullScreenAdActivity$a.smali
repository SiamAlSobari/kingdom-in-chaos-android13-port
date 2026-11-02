.class final Lcom/vungle/publisher/FullScreenAdActivity$a;
.super Lcom/vungle/publisher/display/view/PostRollFragment$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/FullScreenAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/FullScreenAdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/vungle/publisher/FullScreenAdActivity$a;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-direct {p0}, Lcom/vungle/publisher/display/view/PostRollFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 327
    const-string v0, "VungleAd"

    const-string v1, "postRoll.onCancel()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$a;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/FullScreenAdActivity;->a(ZZ)V

    .line 329
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 333
    const-string v0, "VungleAd"

    const-string v1, "postRoll.onCta()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$a;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    iget-object v0, v0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->i:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)V

    .line 335
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$a;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    iget-object v0, v0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v1, Lcom/vungle/publisher/db/model/AdReportEvent$a;->d:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$a;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->i:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)V

    .line 337
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 341
    const-string v0, "VungleAd"

    const-string v1, "postRoll.onRepeat()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$a;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v0}, Lcom/vungle/publisher/FullScreenAdActivity;->b()V

    .line 343
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$a;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    iget-object v0, v0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    :try_start_0
    sget-object v1, Lcom/vungle/publisher/db/model/AdReportEvent$a;->i:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/AdReport;->q()Lcom/vungle/publisher/db/model/AdPlay;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/reporting/AdReportEventListener;->a:Lcom/vungle/publisher/db/model/AdPlay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    const-string v1, "VungleReport"

    const-string v2, "error reporting replay"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
