.class Lcom/droidhang/game/ad/video/InmobiManager$2;
.super Ljava/lang/Object;
.source "InmobiManager.java"

# interfaces
.implements Lcom/inmobi/monetization/IMIncentivisedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/video/InmobiManager;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V
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
    .line 63
    iput-object p1, p0, Lcom/droidhang/game/ad/video/InmobiManager$2;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncentCompleted(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager$2;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/InmobiManager;->watchComplete()V

    .line 69
    const-string v0, "dh"

    const-string v1, "onIncentCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager$2;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/InmobiManager;->preload()V

    .line 71
    return-void
.end method
