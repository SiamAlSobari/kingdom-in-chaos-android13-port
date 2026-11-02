.class Lcom/tapjoy/TapjoyVideoView$3;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const/4 v5, 0x1

    .line 632
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$500(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v4}, Lcom/tapjoy/TapjoyVideoView;->access$400(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    int-to-float v0, v2

    .line 636
    .local v0, "duration":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 639
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$700(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "start"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 642
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$702(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    int-to-float v1, v2

    .line 646
    .local v1, "timeElapsed":F
    div-float v2, v0, v6

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$900(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video 1st quartile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "firstQuartile"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 650
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$902(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 653
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$1000(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 655
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video midpoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "midpoint"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 657
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$1002(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 660
    :cond_2
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v0

    div-float/2addr v2, v6

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$1100(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 662
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video 3rd quartile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "thirdQuartile"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$1102(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 667
    .end local v1    # "timeElapsed":F
    :cond_3
    return-void
.end method
