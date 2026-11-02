.class final Lcom/hz/game/be/util/AdMgr$1;
.super Ljava/lang/Object;
.source "AdMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hz/game/be/util/AdMgr;->enable(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enable:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/hz/game/be/util/AdMgr$1;->val$enable:I

    iput p2, p0, Lcom/hz/game/be/util/AdMgr$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, -0x2

    .line 60
    iget v1, p0, Lcom/hz/game/be/util/AdMgr$1;->val$enable:I

    if-nez v1, :cond_1

    .line 61
    invoke-static {}, Lcom/hz/game/be/util/AdMgr;->access$000()Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/hz/game/be/util/AdMgr;->access$000()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/hz/game/be/util/AdMgr;->access$000()Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/hz/game/be/util/AdMgr$1;->val$pos:I

    packed-switch v1, :pswitch_data_0

    .line 74
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    :goto_1
    invoke-static {}, Lcom/hz/game/be/util/AdMgr;->access$000()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-static {}, Lcom/hz/game/be/util/AdMgr;->access$000()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 70
    :pswitch_0
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
