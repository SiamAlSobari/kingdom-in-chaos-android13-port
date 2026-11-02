.class Lcom/droidhang/game/ad/video/InmobiManager$3;
.super Ljava/lang/Object;
.source "InmobiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/video/InmobiManager;->showVideoAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/game/ad/video/InmobiManager;


# direct methods
.method constructor <init>(Lcom/droidhang/game/ad/video/InmobiManager;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/droidhang/game/ad/video/InmobiManager$3;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager$3;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-static {v0}, Lcom/droidhang/game/ad/video/InmobiManager;->access$000(Lcom/droidhang/game/ad/video/InmobiManager;)Lcom/inmobi/monetization/IMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 98
    return-void
.end method
