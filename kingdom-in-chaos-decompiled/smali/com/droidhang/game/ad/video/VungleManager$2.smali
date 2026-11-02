.class Lcom/droidhang/game/ad/video/VungleManager$2;
.super Ljava/lang/Object;
.source "VungleManager.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhang/game/ad/video/VungleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/game/ad/video/VungleManager;


# direct methods
.method constructor <init>(Lcom/droidhang/game/ad/video/VungleManager;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/droidhang/game/ad/video/VungleManager$2;->this$0:Lcom/droidhang/game/ad/video/VungleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd(Z)V
    .locals 2
    .param p1, "wasCallToActionClicked"    # Z

    .prologue
    .line 78
    const-string v0, "dh"

    const-string v1, "vungle, onAdEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager$2;->this$0:Lcom/droidhang/game/ad/video/VungleManager;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/VungleManager;->watchComplete()V

    .line 80
    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 1
    .param p1, "isAdPlayable"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager$2;->this$0:Lcom/droidhang/game/ad/video/VungleManager;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/VungleManager;->adLoaded()V

    .line 88
    :cond_0
    return-void
.end method

.method public onAdStart()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "dh"

    const-string v1, "vungle, onAdStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "dh"

    const-string v1, "vungle, onAdUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager$2;->this$0:Lcom/droidhang/game/ad/video/VungleManager;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/VungleManager;->watchError()V

    .line 73
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 3
    .param p1, "isCompletedView"    # Z
    .param p2, "watchedMillis"    # I
    .param p3, "videoDurationMillis"    # I

    .prologue
    .line 59
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vungle, onVideoView,isCompletedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
