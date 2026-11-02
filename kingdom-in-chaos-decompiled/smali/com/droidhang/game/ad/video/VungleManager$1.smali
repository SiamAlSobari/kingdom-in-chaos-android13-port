.class Lcom/droidhang/game/ad/video/VungleManager$1;
.super Ljava/lang/Object;
.source "VungleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/video/VungleManager;->showVideoAd()V
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
    .line 25
    iput-object p1, p0, Lcom/droidhang/game/ad/video/VungleManager$1;->this$0:Lcom/droidhang/game/ad/video/VungleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/droidhang/game/ad/video/VungleManager$1;->this$0:Lcom/droidhang/game/ad/video/VungleManager;

    iget-object v0, v0, Lcom/droidhang/game/ad/video/VungleManager;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->playAd()V

    .line 29
    return-void
.end method
