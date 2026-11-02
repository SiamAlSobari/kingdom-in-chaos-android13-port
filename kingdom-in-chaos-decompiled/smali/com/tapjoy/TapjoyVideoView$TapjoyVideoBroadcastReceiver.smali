.class Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TapjoyVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapjoyVideoBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyVideoView;Lcom/tapjoy/TapjoyVideoView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyVideoView;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyVideoView$1;

    .prologue
    .line 867
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 871
    const-string v1, "noConnectivity"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 873
    .local v0, "noConnectivity":Z
    if-eqz v0, :cond_0

    .line 874
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 875
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyVideoView;->access$1302(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 876
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-virtual {v1, v3}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    .line 877
    const-string v1, "VideoView"

    const-string v2, "No network connectivity during video playback"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method
