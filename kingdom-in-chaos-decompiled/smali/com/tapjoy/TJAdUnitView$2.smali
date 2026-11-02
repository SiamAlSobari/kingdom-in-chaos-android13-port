.class Lcom/tapjoy/TJAdUnitView$2;
.super Ljava/lang/Object;
.source "TJAdUnitView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitView;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitView$2;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$2;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$100(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/TJAdUnitView$2$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnitView$2$1;-><init>(Lcom/tapjoy/TJAdUnitView$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 315
    return-void
.end method
